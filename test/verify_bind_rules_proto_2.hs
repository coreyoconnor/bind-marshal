-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# OPTIONS_GHC -fglasgow-exts #-}
{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE OverlappingInstances #-}
{-# LANGUAGE IncoherentInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
import Bind.Marshal.Prelude hiding ( Succ(..) )
import Bind.Marshal.Verify

import Data.Monoid

import Prelude ( error )

import Verify

-- we have a few non-parameterize functor types
data Foo a
data Bar a

-- We have an action with an embedded data model.
-- This can only have static actions appended to either end.
data Static m m' a

-- A static memory actions can be embedded in a dynamic memory action have their data models reified to values.
--
-- Currently the Dyn data type specifies a list of static action ops delineated by "buffering"
-- ops. The actual data type would contain something isomorphic, in addition to the CPS evaluators.
--
data Dyn pre_s post_s_m post_s_m' a = Dyn [Op]

data Op = SB Int
    deriving (Show, Eq)

-- and two Peano number like type equations.
data SZ
data Succ tag n

-- simple reification to integers just for verification
class ReifyM m where
    reify_m :: m -> Int

instance ReifyM SZ where
    reify_m _ = 0

instance ReifyM pred => ReifyM (Succ Tag pred) where
    reify_m _ = 1 + reify_m (undefined :: pred)

data Tag

-- and we have equations on the non-parameterized functor types
foo :: Foo ()
foo = undefined

bar :: Bar ()
bar = undefined

-- incr_m ONLY applies to Static
-- The previous formulation had this apply to both Static and Dyn and the goal was to coerce the
-- compiler into choosing the most appropriate one during type inference. This, I think, is
-- currently impossible. For simple cases the pft type of incr_m could not default to Static when
-- necessary. The type ended up being ambiguous and this resulted in the type inference engine
-- unable to resolve the Bind instances required. While Bing and Zab can introduce a type constraint
-- that fixed the pft type of incr_m. An individual incr_m could not default the pft type.
--
incr_m :: Static (Succ Tag m) m ()
incr_m = undefined

-- A "fixed" dyn block is a Dyn where the pre model is SZ (Meaning that there is no pre model) and
-- the post model is empty.
class FixedAction (action :: * -> *) where
    fixed_block :: action a -> Dyn SZ post_m_tail post_m_tail a

-- A static block can lifted to a "fixed" Dyn by reifying the static's model
instance ( m_tail ~ SZ, ReifyM m ) => FixedAction (Static m m_tail) where
    fixed_block _ = 
        let block_size = reify_m (undefined :: m)
        in Dyn [SB block_size]

-- A dynamic block can be lifted to a "fixed" Dyn by capping the post_m_tail with SZ and then
-- reifying the pre_m model.
instance ( post_m_tail ~ SZ, ReifyM pre_m ) => FixedAction (Dyn pre_m post_m post_m_tail) where
    -- The cases where pre_count or post_count are 0 can actually be handled on the type level.
    -- However the fixing of dynamic action always implies buffer handling. So the optimization of
    -- elminating some case handling is tiny compared to the cost of the required buffer handling.
    -- Therefor I currently do not think the optimization is worth it. Especially since this would
    -- require a type-level dispatch via context constraints into the following cases:
    --  no pre and no post
    --  no pre and post
    --  pre and no post
    --  pre and post
    fixed_block (Dyn mid_ops) = 
        let pre_count = reify_m (undefined :: pre_m)
            pre_ops = case pre_count of
                        0 -> []
                        i -> [SB i]
            mid_ops' = pre_ops `mappend` mid_ops
        in Dyn mid_ops'

assert_ops_are :: forall pre_m post_m . ( ReifyM pre_m, ReifyM post_m ) => [Op] -> Dyn pre_m post_m SZ () -> Test ()
assert_ops_are required_ops (Dyn tail_ops) = do
    let pre_count = reify_m (undefined :: pre_m)
    let pre_ops = case pre_count of
                    0 -> []
                    i -> [SB i]
    let actual_ops = pre_ops `mappend` tail_ops
    verify1 ("expected ops " ++ show required_ops ++ " equals actual " ++ show actual_ops) $ required_ops == actual_ops
    returnM () :: Test ()

-- and equations that are only valid on one of the specific cases of a pft paired with a proper m
-- and m'
only_static :: Static m' SZ () -> Test ()
only_static = undefined

only_dynamic :: Dyn pre_m post_m SZ () -> Test ()
only_dynamic = undefined

-- Minimally satisfactory cases to verify:
--
--  DONE single_static
--  DONE single_dyn
--  Zab'd single_dyn
--
--  single_static `bind` single_static
--  multi_static `bind` single_static
--  single_static `bind` multi_static
--  multi_static `bind` multi_static
--
--  single_dyn `bind` single_dyn
--  single_dyn `bind` multi_dyn
--  multi_dyn `bind` single_dyn
--  multi_dyn `bind` multi_dyn
--
--  single_dyn `bind` single_static
--  zab'd single_dyn `bind` single_static
--  single_dyn `bind` multi_static
--  zab'd single_dyn `bind` multi_static
--  multi_dyn `bind` single_static
--  multi_dyn `bind` multi_static
-- 
--  single_static `bind` single_dyn 
--  single_static `bind` zab'd single_dyn 
--  multi_static `bind` single_dyn 
--  single_static `bind` multi_dyn 
--  multi_static `bind` multi_dyn 
--
-- Just placing the types that should be inferred is insufficient as that permits qualified types
-- being instantiated with the provided types and trivally type check.
-- 
-- An assert is required that verifies the type is exactly a given type.
-- THis is tricky.. I think that a type class where the only instance is the desired type then
-- adding that type class as a constraint on the inferred type will work.
--
-- ???: In order to validate the type class constraint the type will have to be inferred.

-- These should work as expected
t_0 :: Test ()
t_0 = force_0 incr_m

force_0 :: T0A0 m => Static m SZ () -> Test () 
force_0 _ = returnM ()

class T0A0 x
instance T0A0 (Succ Tag SZ)

t_1 :: Test ()
t_1 = force_1 (fixed_block incr_m)

force_1 :: ( T1A0 pre_m, T1A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test () 
force_1 = assert_ops_are [SB 1]

class T1A0 m
instance T1A0 SZ

class T1A1 m
instance T1A1 m

-- Now there is a third equation that can operate on ALL of these types
-- where one of the types can determine the relationship each of the types must have to each other.
class CanBind f_0 f_1 f_2 | f_0 f_1 -> f_2 where
    bind :: f_0 a -> f_1 b -> f_2 b
    bind = undefined

instance ( m_0 ~ m_4
         , m_1 ~ m_2
         , m_3 ~ m_5
         ) =>
         CanBind (Static m_0 m_1) (Static m_2 m_3) (Static m_4 m_5)

instance ( m_1 ~ pre_m
         , pre_m' ~ m_0
         ) =>
         CanBind (Static m_0 m_1) (Dyn pre_m post_m post_m_final) (Dyn pre_m' post_m post_m_final)
    where
    bind _ (Dyn ops_rhs) = Dyn ops_rhs

instance ( post_m_final_0 ~ pre_m_1
         , pre_m_2 ~ pre_m_0
         , post_m_2 ~ post_m_1
         , post_m_final_2 ~ post_m_final_1
         ) => CanBind (Dyn pre_m_0 post_m_0 post_m_final_0) 
                      (Dyn pre_m_1 post_m_1 post_m_final_1) 
                      (Dyn pre_m_2 post_m_2 post_m_final_2)
    where
    bind (Dyn ops_lhs) (Dyn ops_rhs) = Dyn (ops_lhs `mappend` ops_rhs)

-- necessary to insert buffering for post_m_2
instance ( pre_m_2 ~ pre_m_0
         , post_m_2 ~ m_2
         , post_m_final_2 ~ m_3
         , post_m_final_0 ~ SZ
         , ReifyM post_m_2
         ) => CanBind (Dyn pre_m_0 post_m_final_0 post_m_final_0) 
                      (Static m_2 m_3)
                      (Dyn pre_m_2 post_m_2 post_m_final_2)
    where
    bind (Dyn ops_pre) _ = 
        let post_block_count = reify_m ( undefined :: post_m_2 )
            ops_post = [SB post_block_count]
        in Dyn (ops_pre `mappend` ops_post)

instance ( pre_m_2 ~ pre_m_0
         , post_m_2 ~ (Succ tag post_m_0')
         , post_m_final_0 ~ m_2
         , post_m_final_2 ~ m_3
         ) => CanBind (Dyn pre_m_0 (Succ tag post_m_0') post_m_final_0) 
                      (Static m_2 m_3)
                      (Dyn pre_m_2 post_m_2 post_m_final_2)
    where
    bind (Dyn ops_pre) _ = Dyn ops_pre

-- We have a type class that all non-parameterized functor types belong
-- that has a non-parameterized variant of bind.
--
-- however this is all defined external to this library!
class Zab (m :: * -> *) where
    zab_bind :: m a -> m b -> m b
    zab_bind = undefined

instance Zab Foo
instance Zab Bar

instance Zab (Dyn SZ post_m_tail post_m_tail)

-- a simple equation that introducs the Zab constraint
zab :: Zab m => m () -> m ()
zab = id

t_2 :: Test ()
t_2 = only_static_2 t_2_sub

t_2_sub = bind incr_m incr_m

only_static_2 :: T2A0 m => Static m SZ () -> Test ()
only_static_2 _ = returnM () :: Test ()

class T2A0 x
instance T2A0 (Succ Tag (Succ Tag SZ))

-- we require a manual lifting of the Static to a Dyn.
t_3 :: Test ()
t_3 = force_3 t_3_sub

t_3_sub = zab (fixed_block incr_m)

force_3 :: ( T3A0 pre_m, T3A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_3 = assert_ops_are [SB 1]

class T3A0 m
instance T3A0 SZ

class T3A1 m
instance T3A1 SZ

t_4 :: Test ()
t_4 = force_4 t_4_sub

t_4_sub = bind incr_m (zab (fixed_block incr_m))

force_4 :: ( T4A0 pre_m, T4A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_4 = assert_ops_are [SB 1, SB 1]

class T4A0 m
instance T4A0 (Succ Tag SZ)

class T4A1 m
instance T4A1 SZ

t_5 :: Test ()
t_5 = force_5 t_5_sub

t_5_sub = bind (zab $ fixed_block incr_m) (fixed_block incr_m)

force_5 :: ( T5A0 pre_m, T5A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_5 = assert_ops_are [SB 1, SB 1]

class T5A0 m
instance T5A0 SZ

class T5A1 m
instance T5A1 SZ

t_6 :: Test ()
t_6 = force_6 t_6_sub

-- once again, the sole incr_m must be enclosed in a fixed_block
t_6_sub = bind (zab $ fixed_block $ incr_m) (bind (bind incr_m incr_m) incr_m)

force_6 :: ( T6A0 pre_m, T6A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_6 = assert_ops_are [SB 1, SB 3]

class T6A0 m
instance T6A0 SZ

class T6A1 m
instance T6A1 (Succ Tag (Succ Tag (Succ Tag SZ)))

t_7 :: Test ()
t_7 = force_7 t_7_sub

t_7_sub = (zab (fixed_block incr_m) `bind` (fixed_block incr_m)) `bind` (bind incr_m incr_m)

force_7 :: ( T7A0 pre_m, T7A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_7 = assert_ops_are [SB 1, SB 1, SB 2]

t_7_alt :: Test ()
t_7_alt = force_7_alt t_7_alt_sub

t_7_alt_sub = zab (fixed_block incr_m) `bind` (fixed_block incr_m `bind` (bind incr_m incr_m))

force_7_alt :: ( T7A0 pre_m, T7A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_7_alt = assert_ops_are [SB 1, SB 1, SB 2]

class T7A0 m
instance T7A0 SZ

class T7A1 m
instance T7A1 (Succ Tag (Succ Tag SZ))

t_8 :: Test ()
t_8 = force_8 t_8_sub

t_8_sub = (bind incr_m incr_m) `bind` (bind incr_m incr_m)

force_8 :: T8A0 m => Static m SZ () -> Test ()
force_8 _ = returnM ()

class T8A0 m
instance T8A0 (Succ Tag (Succ Tag (Succ Tag (Succ Tag SZ))))

t_9 :: Test ()
t_9 = force_9 t_9_sub

t_9_sub = (bind incr_m incr_m) `bind` incr_m

force_9 :: ( T9A0 m, ReifyM m ) => Static m SZ () -> Test ()
force_9 _ = returnM ()

class T9A0 x
instance T9A0 (Succ Tag (Succ Tag (Succ Tag SZ)))

t_10 :: Test ()
t_10 = force_10 t_10_sub

t_10_sub = (zab $ fixed_block $ incr_m) `bind` (zab $ fixed_block $ incr_m)

force_10 :: ( T10A0 pre_m, T10A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_10 = assert_ops_are [SB 1, SB 1]

class T10A0 m
instance T10A0 SZ

class T10A1 m
instance T10A1 SZ

t_11 :: Test ()
t_11 = force_11 t_11_sub

t_11_sub = ((zab $ fixed_block $ incr_m) `bind` (zab $ fixed_block $ incr_m)) 
                `bind` (zab $ fixed_block $ incr_m)

force_11 :: ( T11A0 pre_m, T11A0 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_11 = assert_ops_are [SB 1, SB 1, SB 1]

class T11A0 m
instance T11A0 SZ

class T11A1 m
instance T11A1 SZ

t_12 :: Test ()
t_12 = force_12 t_12_sub

t_12_sub = (zab $ fixed_block $ incr_m) `bind` ((zab $ fixed_block $ incr_m) `bind` (zab $ fixed_block $ incr_m))

force_12 :: ( T12A0 pre_m, T12A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_12 = assert_ops_are [SB 1, SB 1, SB 1]

class T12A0 m
instance T12A0 SZ

class T12A1 m
instance T12A1 SZ

t_13 :: Test ()
t_13 = force_13 t_13_sub

t_13_sub = ((zab $ fixed_block $ incr_m) `bind` (zab $ fixed_block $ incr_m))  `bind` ((zab $ fixed_block $ incr_m) `bind` (zab $ fixed_block $ incr_m))

force_13 :: ( T13A0 pre_m, T13A1 post_m, ReifyM pre_m, ReifyM post_m )  => Dyn pre_m post_m SZ () -> Test ()
force_13 = assert_ops_are [SB 1, SB 1, SB 1, SB 1]

class T13A0 m
instance T13A0 SZ

class T13A1 m
instance T13A1 SZ

t_14 :: Test ()
t_14 = force_14 t_14_sub

t_14_sub = incr_m `bind` (incr_m `bind` incr_m)

force_14 :: T14A0 m => Static m SZ () -> Test ()
force_14 _ = returnM ()

class T14A0 m
instance T14A0 (Succ Tag (Succ Tag (Succ Tag SZ)))

t_15 :: Test ()
t_15 = force_15 t_15_sub

t_15_sub = (zab $ fixed_block incr_m) `bind` incr_m

force_15 :: ( T15A0 pre_m, T15A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_15 = assert_ops_are [SB 1, SB 1]

class T15A0 m
instance T15A0 SZ

class T15A1 m
instance T15A1 (Succ Tag SZ)

t_16 :: Test ()
t_16 = force_16 t_16_sub

t_16_sub = (zab $ fixed_block incr_m) `bind` (incr_m `bind` incr_m)

force_16 :: ( T16A0 pre_m, T16A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_16 = assert_ops_are [SB 1, SB 2]

class T16A0 m
instance T16A0 SZ

class T16A1 m
instance T16A1 (Succ Tag (Succ Tag SZ))

t_17 :: Test ()
t_17 = force_17 t_17_sub

t_17_sub = ((zab $ fixed_block incr_m) `bind` (zab $ fixed_block incr_m)) `bind` incr_m

force_17 :: ( T17A0 pre_m, T17A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_17 = assert_ops_are [SB 1, SB 1, SB 1]

class T17A0 m
instance T17A0 SZ

class T17A1 m
instance T17A1 (Succ Tag SZ)

t_18 :: Test ()
t_18 = force_18 t_18_sub

t_18_sub = ((zab $ fixed_block incr_m) `bind` (zab $ fixed_block incr_m)) `bind` (incr_m `bind` incr_m)

force_18 :: ( T18A0 pre_m, T18A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_18 = assert_ops_are [SB 1, SB 1, SB 2]

class T18A0 m
instance T18A0 SZ

class T18A1 m
instance T18A1 (Succ Tag (Succ Tag SZ))

t_19 :: Test ()
t_19 = force_19 t_19_sub

t_19_sub = incr_m `bind` (zab $ fixed_block incr_m)

force_19 :: ( T19A0 pre_m, T19A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_19 = assert_ops_are [SB 1, SB 1]

class T19A0 m
instance T19A0 (Succ Tag SZ)

class T19A1 m
instance T19A1 SZ

t_20 :: Test ()
t_20 = force_20 t_20_sub

t_20_sub = incr_m `bind` ((zab $ fixed_block incr_m) `bind` (zab $ fixed_block incr_m))

force_20 :: ( T20A0 pre_m , T20A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_20 = assert_ops_are [SB 1, SB 1, SB 1]

class T20A0 m
instance T20A0 (Succ Tag SZ)

class T20A1 m
instance T20A1 SZ

t_21 :: Test ()
t_21 = force_21 t_21_sub

t_21_sub = (incr_m `bind` incr_m) `bind` ((zab $ fixed_block incr_m) `bind` (zab $ fixed_block incr_m))

force_21 :: ( T21A0 pre_m, T21A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_21 = assert_ops_are [SB 2, SB 1, SB 1]

class T21A0 m
instance T21A0 (Succ Tag (Succ Tag SZ))

class T21A1 m
instance T21A1 SZ

t_22 :: Test ()
t_22 = force_22 t_22_sub

t_22_sub = (incr_m `bind` incr_m) 
    `bind` ((zab $ fixed_block incr_m) 
            `bind` incr_m
            `bind` incr_m
            `bind` incr_m
            `bind` incr_m
            `bind` (zab $ fixed_block incr_m)
            `bind` incr_m
            `bind` (zab $ fixed_block incr_m)
            `bind` incr_m
            `bind` incr_m
            `bind` (zab $ fixed_block incr_m)
            `bind` incr_m
            `bind` incr_m
            `bind` incr_m
           )

force_22 :: ( T22A0 pre_m, T22A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_22 = assert_ops_are [ SB 2
                          , SB 1
                          , SB 4
                          , SB 1
                          , SB 1
                          , SB 1
                          , SB 2
                          , SB 1
                          , SB 3
                          ]

class T22A0 m
instance T22A0 (Succ Tag (Succ Tag SZ))

class T22A1 m
instance T22A1 (Succ Tag (Succ Tag (Succ Tag SZ)))

t_23 :: Test ()
t_23 = force_23 t_23_sub

t_23_sub = (incr_m `bind` incr_m) 
    `bind` (zab ( fixed_block (incr_m `bind` zab (fixed_block incr_m)) ) 
           )

force_23 :: ( T23A0 pre_m, T23A1 post_m, ReifyM pre_m, ReifyM post_m ) => Dyn pre_m post_m SZ () -> Test ()
force_23 = assert_ops_are [ SB 2
                          , SB 1
                          , SB 1
                          ]

class T23A0 m
instance T23A0 (Succ Tag (Succ Tag SZ))

class T23A1 m
instance T23A1 SZ

main = run_test $ do
    t_0
    t_1
    t_2
    t_3
    t_4
    t_5
    t_6
    t_7
    t_7_alt
    t_8
    t_9
    t_10
    t_11
    t_12
    t_13
    t_14
    t_15
    t_16
    t_17
    t_18
    t_19
    t_20
    t_21
    t_22
    t_23
    returnM () :: Test ()

