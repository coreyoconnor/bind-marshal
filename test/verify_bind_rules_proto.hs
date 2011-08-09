-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# OPTIONS_GHC -fglasgow-exts #-}
{-# LANGUAGE OverlappingInstances #-}
{-# LANGUAGE IncoherentInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Prelude ( error )

import Verify

main = run_test $ do
    returnM () :: Test ()

-- we have a few non-parameterize functor types
data Foo a
data Bar a

-- We have only one memory action with embedded data model
data Static m m' a

-- The static memory actions embedded in a dynamic memory action have their data models reified to values.
--
-- Currently the Dyn data type just specifies the list of static action blocks. While the actual
-- data type should specify something similar.
--
data Dyn a = Dyn [Block]

-- Only static buffer blocks possible
data Block = SB Int

-- and two Peano number like type equations.
data SZ
data SSucc tag n

-- data models can be extended (incremented) using 
type family Succ tag n

type instance Succ tag SZ = SSucc tag SZ
type instance Succ tag_1 (SSucc tag_0 n) = SSucc tag_1 (SSucc tag_0 n)

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
incr_m :: Static m (SSucc Tag m) ()
incr_m = undefined

-- and equations that are only valid on one of the specific cases of a pft paired with a proper m
-- and m'
only_static :: Static SZ m' () -> ()
only_static = undefined

only_dynamic :: Dyn () -> ()
only_dynamic = undefined

-- Minimally satisfactory cases to verify:
--
--  DONE single_static
--  DONE single_dyn
--  DONE Zab'd single_dyn
--
--  DONE single_static `bind` single_static
--  DONE multi_static `bind` single_static
--  DONE single_static `bind` multi_static
--  DONE multi_static `bind` multi_static
--
--  DONE single_dyn `bind` single_dyn
--  DONE single_dyn `bind` multi_dyn
--  DONE multi_dyn `bind` single_dyn
--  DONE multi_dyn `bind` multi_dyn
--
--  DONE single_dyn `bind` single_static
--  DONE zab'd single_dyn `bind` single_static
--  DONE single_dyn `bind` multi_static
--  DONE zab'd single_dyn `bind` multi_static
--  DONE multi_dyn `bind` single_static
--  DONE multi_dyn `bind` multi_static
-- 
--  DONE single_static `bind` single_dyn 
--  DONE single_static `bind` zab'd single_dyn 
--  DONE multi_static `bind` single_dyn 
--  DONE single_static `bind` multi_dyn 
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
t_0 :: ()
t_0 = force_0 incr_m

force_0 :: T0X m' => Static SZ m' () -> () 
force_0 = only_static

class T0X x
instance T0X (SSucc Tag SZ)

-- XXX This cannot work without being able to defaul the pft of incr_m!
-- A bit of a programmer burden. OH WELLZ
#if HAS_INCR_M_DEFAULTING
t_1 :: ()
t_1 = force_1 incr_m

force_1 :: T1X m' => Dyn DE m' () -> () 
force_1 = only_dynamic

class T1X x
instance T1X (DAppSS DE (SSucc Tag SZ))
#else

t_1 :: ()
t_1 = force_1 (static_block incr_m)

force_1 :: Dyn () -> () 
force_1 = has_blocks [SB 1]

has_blocks :: [Block] -> Dyn () -> ()
has_blocks _ _ = error "not implemented"

#endif

-- these should not work
#if 0
t_fail_0 :: ()
t_fail_0 = only_dynamic x
    where
        x :: Static SZ (SSucc Tag SZ) () = incr_m

t_fail_1 :: ()
t_fail_1 = only_static x
    where
        x :: Dyn DZ (DSucc (SSucc Tag SZ) DZ) () = incr_m
#endif

-- Now there is a third equation that can operate on ALL of these types
-- where one of the types can determine the relationship each of the types must have to each other.
class CanBind f_0 f_1 f_2 | f_0 f_1 -> f_2 where
    bind :: f_0 a -> f_1 b -> f_2 b
    bind = undefined

-- We have a type class that all non-parameterized functor types belong
-- that has a non-parameterized variant of bind.
--
-- however this is all defined external to this library!
class Zab (m :: * -> *) where
    zab_bind :: m a -> m b -> m b
    zab_bind = undefined

instance Zab Foo
instance Zab Bar

t_2 :: ()
t_2 = only_static_2 t_2_sub

t_2_sub = bind incr_m incr_m

only_static_2 :: T2X m' => Static SZ m' () -> ()
only_static_2 = only_static

class T2X x
instance T2X (SSucc Tag (SSucc Tag SZ))

-- H: A static with a fixed model is a Zab as well.
-- instance Zab (Static SZ m')

-- So for a sequence like the following:
--
-- (some sequence of 'incr_m's) `incr_m` (an equation requiring a Zab)
--
-- the goal is to have the result then be
-- DSeq (SSucc ... SZ) (DSeq (whatever the "inside" equation requires))

-- A function that deserializes statically then uses that result to in a dynamic deserialization
--  s_des >>= (\v -> d_des v)
-- 
-- followed by a static deserialization
--
--  s_des_0 >>= (\v -> d_des v >>= const s_des_1 )
--  s_des_0 >>= (\v -> d_des v >> s_des_1 )
--  (s_des_0 >>= d_des) >> s_des_1
--
-- Assuming d_des is a type with the constraint Zab and that zab introduces a Zab constraint
--
--  (s_des_0 >>= zab any_des) >> s_des_1
--
-- so let's consider a static action followed by a Zab'd any_action.
--
-- a simple equation that introducs the Zab constraint
zab :: Zab m => m () -> m ()
zab = undefined

-- here is one ambiguous case.
#if HAS_INCR_M_DEFAULTING
t_3 :: ()
t_3 = force_3 t_3_sub

t_3_sub = zab incr_m
#else
-- instead we require a manual lifting of the Static to a Dyn.
t_3 :: ()
t_3 = force_3 t_3_sub

t_3_sub = zab (static_block incr_m)
#endif

static_block :: Static SZ m' a -> Dyn a
static_block = undefined -- reify m'

force_3 :: Dyn () -> ()
force_3 = undefined

-- the desire is to have a sequence of incr_m's be considered a SSucc up until an equation that
-- requires a type within Zab. (which, a Dyn is.)
instance Zab Dyn

t_4 :: ()
t_4 = force_4 t_4_sub

t_4_sub = bind incr_m (zab (static_block incr_m))

force_4 :: Dyn () -> ()
force_4 = undefined

instance ( m_0 ~ SZ
         ) =>
         CanBind (Static m_0 m_1) Dyn Dyn

#if HAS_INCR_M_DEFAULTING
type family DApp m_0 m_1

type instance DApp DE (DAppSD m_0 m_1) 
    = DAppSD DE (DAppSD m_0 m_1)
#endif

#if INCOHERENT
instance ( f_0 ~ Static SZ m_1
         , m_2 ~ DE
         , m' ~ DApp m (DAppSD m_1 m_3)
         ) => CanBind f_0 
                      (Dyn m_2 m_3) 
                      (Dyn m m') 
#endif

t_5 :: ()
t_5 = force_5 t_5_sub

t_5_sub = bind (zab $ static_block incr_m) (static_block incr_m)

force_5 :: Dyn () -> ()
force_5 = undefined

instance CanBind Dyn Dyn Dyn

#if HAS_INCR_M_DEFAULTING
class T5X x

instance T5X (DAppSD DE (DAppDS (DAppSS DE (SSucc Tag SZ)) (SSucc Tag SZ)))

type instance DApp DE (DAppDS m_0 m_1) 
    = DAppSD DE (DAppDS m_0 m_1)
#endif

{- not needed. the Bind introduced to resolve t_7 is general enough to capture this case as well.
instance ( f_1 ~ Static SZ m_3
         , m_0 ~ DE
         , m' ~ DApp m (DAppDS m_1 m_3)
         ) => CanBind (Dyn m_0 m_1)
                      f_1
                      (Dyn m m') 
-}

t_6 :: ()
t_6 = force_6 t_6_sub

-- instance TTrue ~ TFalse => Zab (pft m m')

-- once again, the sole incr_m must be enclosed in a static_block
t_6_sub = bind (zab $ static_block $ incr_m) (bind (bind incr_m incr_m) incr_m)

force_6 :: Dyn () -> ()
force_6 = undefined

#if HAVE_TYPE_FAMILY_DEFAULTING

type family IsDyn (f :: * -> *)
type instance IsDyn Dyn = TTrue
type instance IsDyn (Static m m') = TFalse

instance ( is_dyn ~ IsDyn f_2
         , m_1 ~ m2 
         , CanBind' (Static m_0 m_1) (Static m_2 m_3) f_2 is_dyn
         ) => CanBind (Static m_0 m_1) (Static m_2 m_3) f_2
    where
        bind = bind' (undefined :: is_dyn)

class CanBind' (s_0 :: * -> *) (s_1 :: * -> *) (f_2 :: * -> *) is_dyn where
    bind' :: is_dyn -> s_0 a -> s_1 b -> f_2 b
#else

instance ( m_2 ~ SZ ) => CanBind Dyn (Static m_2 m_3) Dyn

instance ( m_0 ~ m_4
         , m_1 ~ m_2
         , m_3 ~ m_5
         ) =>
         CanBind (Static m_0 m_1) (Static m_2 m_3) (Static m_4 m_5)
#endif

class T6X x

t_7 :: ()
t_7 = force_7 t_7_sub

t_7_sub = (zab (static_block incr_m) `bind` (static_block incr_m)) `bind` (bind incr_m incr_m)

force_7 :: Dyn () -> ()
force_7 = undefined

t_7_alt :: ()
t_7_alt = force_7_alt t_7_alt_sub

t_7_alt_sub = zab (static_block incr_m) `bind` (static_block incr_m `bind` (bind incr_m incr_m))

force_7_alt :: Dyn () -> ()
force_7_alt = undefined

t_8 :: ()
t_8 = force_8 t_8_sub

t_8_sub = (bind incr_m incr_m) `bind` (bind incr_m incr_m)

force_8 :: T8X m' => Static SZ m' () -> ()
force_8 = undefined

class T8X m
instance T8X (SSucc Tag (SSucc Tag (SSucc Tag (SSucc Tag SZ))))

t_9 :: ()
t_9 = force_9 t_9_sub

t_9_sub = (bind incr_m incr_m) `bind` incr_m

force_9 :: T9X m' => Static SZ m' () -> ()
force_9 = only_static

class T9X x

instance T9X (SSucc Tag (SSucc Tag (SSucc Tag SZ)))

t_10 :: ()
t_10 = force_10 t_10_sub

t_10_sub = (zab $ static_block $ incr_m) `bind` (zab $ static_block $ incr_m)

force_10 :: Dyn () -> ()
force_10 = undefined

t_11 :: ()
t_11 = force_11 t_11_sub

t_11_sub = ((zab $ static_block $ incr_m) `bind` (zab $ static_block $ incr_m)) `bind` (zab $ static_block $ incr_m)

force_11 :: Dyn () -> ()
force_11 = undefined

t_12 :: ()
t_12 = force_12 t_12_sub

t_12_sub = (zab $ static_block $ incr_m) `bind` ((zab $ static_block $ incr_m) `bind` (zab $ static_block $ incr_m))

force_12 :: Dyn () -> ()
force_12 = undefined

t_13 :: ()
t_13 = force_13 t_13_sub

t_13_sub = ((zab $ static_block $ incr_m) `bind` (zab $ static_block $ incr_m))  `bind` ((zab $ static_block $ incr_m) `bind` (zab $ static_block $ incr_m))

force_13 :: Dyn () -> ()
force_13 = undefined

t_14 :: ()
t_14 = force_14 t_14_sub

t_14_sub = incr_m `bind` (incr_m `bind` incr_m)

force_14 :: T14X m' => Static SZ m' () -> ()
force_14 = undefined

class T14X m
instance T14X (SSucc Tag (SSucc Tag (SSucc Tag SZ)))

t_15 :: ()
t_15 = force_15 t_15_sub

t_15_sub = (zab $ static_block incr_m) `bind` incr_m

force_15 :: Dyn () -> ()
force_15 = undefined

t_16 :: ()
t_16 = force_16 t_16_sub

t_16_sub = (zab $ static_block incr_m) `bind` (incr_m `bind` incr_m)

force_16 :: Dyn () -> ()
force_16 = undefined

t_17 :: ()
t_17 = force_17 t_17_sub

t_17_sub = ((zab $ static_block incr_m) `bind` (zab $ static_block incr_m)) `bind` incr_m

force_17 :: Dyn () -> ()
force_17 = undefined

t_18 :: ()
t_18 = force_18 t_18_sub

t_18_sub = ((zab $ static_block incr_m) `bind` (zab $ static_block incr_m)) `bind` (incr_m `bind` incr_m)

force_18 :: Dyn () -> ()
force_18 = undefined

t_19 :: ()
t_19 = force_19 t_19_sub

t_19_sub = incr_m `bind` (zab $ static_block incr_m)

force_19 :: Dyn () -> ()
force_19 = undefined

t_20 :: ()
t_20 = force_20 t_20_sub

t_20_sub = incr_m `bind` ((zab $ static_block incr_m) `bind` (zab $ static_block incr_m))

force_20 :: Dyn () -> ()
force_20 = undefined

t_21 :: ()
t_21 = force_21 t_21_sub

t_21_sub = (incr_m `bind` incr_m) `bind` ((zab $ static_block incr_m) `bind` (zab $ static_block incr_m))

force_21 :: Dyn () -> ()
force_21 = undefined

#if INCOHERENT
instance ( m_0 ~ DE
         , m_2 ~ DE
         , m' ~ DApp m (DAppDD m_1 m_3)
         ) => CanBind (Dyn m_0 m_1)
                      (Dyn m_2 m_3) 
                      (Dyn m m') 
#endif

#if HAS_INCR_M_DEFAULTING
class CanBind' pft_0 m_0 m_1 
                    pft_0_is_dyn 
               pft_1 m_2 m_3
                    pft_1_is_static 
               pft_2 m_4 m_5
                    pft_2_is_static 
    where
    bind' :: pft_0_is_dyn -> pft_1_is_static -> pft_2_is_static 
             -> pft_0 m_0 m_1 a -> pft_1 m_2 m_3 b -> pft_2 m_4 m_5 b
    bind' _ _ = undefined

class IsF0Dyn (maybe_action :: * -> * -> * -> *) truth | maybe_action -> truth
instance truth ~ TTrue  => IsF0Dyn Dyn truth
instance truth ~ TFalse  => IsF0Dyn Static truth

class IsF1Static (maybe_action :: * -> * -> * -> *) truth | maybe_action -> truth
instance truth ~ TTrue  => IsF1Static Static truth
instance truth ~ TFalse  => IsF1Static Dyn truth

class IsF2Static (maybe_action :: * -> * -> * -> *) truth | maybe_action -> truth
instance truth ~ TTrue  => IsF2Static Static truth
instance truth ~ TFalse  => IsF2Static Dyn truth

instance ( IsF0Dyn pft_0 f_0_is_dyn
         , IsF1Static pft_1 f_1_is_static
         , IsF2Static pft_2 f_2_is_static
         , CanBind' pft_0 m_0 m_1 f_0_is_dyn 
                    pft_1 m_2 m_3 f_1_is_static
                    pft_2 m_4 m_5 f_2_is_static
         , pft_0 m_0 m_1 ~ f_0
         , pft_1 m_2 m_3 ~ f_1
         , pft_2 m_4 m_5 ~ f_2
         ) => CanBind f_0 f_1 f_2
    where
    bind = bind' (undefined :: f_0_is_dyn) 
                 (undefined :: f_1_is_static)
                 (undefined :: f_2_is_static)

instance ( pft_0 ~ Static
         , pft_0_is_dyn ~ TFalse
         , pft_1 ~ Static
         , pft_1_is_static ~ TTrue
         , m_0 ~ m_4
         , m_1 ~ m_2
         , m_3 ~ m_5
         ) => CanBind' pft_0 m_0 m_1 
                            pft_0_is_dyn 
                       pft_1 m_2 m_3
                            pft_1_is_static
                       Static m_4 m_5
                            TTrue 

{-
instance ( pft_0 ~ Static
         , pft_0_is_dyn ~ TFalse
         , m_0 ~ SZ
         , m_2 ~ DE
         , m_5 ~ DApp m_4 (DAppSD m_1 m_3)
         ) => CanBind' pft_0 m_0 m_1 
                            pft_0_is_dyn 
                       Dyn m_2 m_3
                            TFalse
                       Dyn m_4 m_5
                            TFalse 

instance ( -- pft_0 ~ Static
         -- , pft_0_is_dyn ~ TFalse
          m_0 ~ SZ
         , m_2 ~ SZ
         , m_5 ~ DApp m_4 (DAppSS m_1 m_3)
         ) => CanBind' pft_0 m_0 m_1 
                            pft_0_is_dyn 
                       Static m_2 m_3
                            TTrue
                       Dyn m_4 m_5
                            TFalse 

-}
instance ( pft_1 ~ Static
         , pft_1_is_static ~ TTrue
         , m_0 ~ DE
         , m_2 ~ SZ
         , m_5 ~ DApp m_4 (DAppDS m_1 m_3)
         ) => CanBind' Dyn m_0 m_1 
                            TTrue 
                       pft_1 m_2 m_3
                            pft_1_is_static
                       Dyn m_4 m_5
                            TFalse 

instance ( m_0 ~ DE
         , m_2 ~ DE
         , m_5 ~ DApp m_4 (DAppDD m_1 m_3)
         ) => CanBind' Dyn m_0 m_1 
                            TTrue 
                       Dyn m_2 m_3
                            TFalse
                       Dyn m_4 m_5
                            TFalse 

instance ( m_0 ~ DE
         , m_2 ~ SZ
         , m_5 ~ DApp m_4 (DAppDS m_1 m_3)
         ) => CanBind' Dyn m_0 m_1 
                            TTrue 
                       Static m_2 m_3
                            TTrue
                       Dyn m_4 m_5
                            TFalse

#endif 

{- these cases need to be merged in a resolvable fashion.
 -
instance ( pft_0 ~ Static
         , pft_1 ~ Static
         , m_0 ~ m
         , m_1 ~ m_2
         , m_3 ~ m'
         , f_0 ~ pft_0 m_0 m_1
         , f_1 ~ pft_1 m_2 m_3
         ) => CanBind f_0
                      f_1
                      (Static m m') 

instance ( f_1 ~ Static SZ m_3
         , m_0 ~ DE
         , m' ~ DApp m (DAppDS m_1 m_3)
         , f_0 ~ Dyn m m'
         ) => CanBind (Dyn m_0 m_1)
                      f_1
                      f_0
-}

-- bind would be easiest to define if the types of the input arguments were, effectively, fixed. 
-- I would like to define this in a similar fashion. Expand out the types of the action model.
--
-- However in this case I am not sure expanding out the parameters is even possible.
--
-- First only the result type can be matched against with the current CanBind class.
-- I can easily think of a formulation *if type families could be included*. However type families
-- cannot occur in instance heads.
--
-- with type families:
--
-- For a static data model as the left parameter (therefore the sequence in the current DSeq node):
-- Dyn m (DynApp m (implied data model))
-- where implied data model is the model produced from a Static SZ s_m as the left param (as given)
-- and *any* action as the right param.
--
-- H: it is *any* that requires the type family abstraction.
--
-- Expanding out the right hand type cases:
--  - a dynamic action the data model would be something like
--
--  DSeq (sequence before Static SZ) (DSeq (Satic SZ s_m) (sequence following Static SZ))
--
--  Hm... Up til now I have respresented m and m' as the input and result to  a type equation that
--  appends the action's sequence to m to form m'
--
-- perhaps I could just keep m' as an expanded-out DynApp?
-- Actually, an expanded out DynApp is pretty much a data family no?
--

--  when applied to bind
--
--  bind (some action monad) (Zab m => some action monad)
--             m_l                          m_r
--
--  what happens?
--
--  cases of m_l:
--      just incr_m :: pft m (Succ Tag m) ()
--      bind ( incr_m :: pft m (Succ Tag m) () ) (Zab => pft1 m (Succ Tag m1) ()) :: f_2 ()
-- H0: add type equations for IsZab and IsStatic. Bind just introduces the pipelining of those
-- constraints to a Bind'
--

#if 0
t_4 :: Foo ()
t_4 = bind foo foo

t_5 :: Bar ()
t_5 = bind bar bar
#endif

