-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

-- The current ghc compiler is not capable of solving some tests within a reasonable time.
#define ONLY_SMALL_CASES 1 
{-# LANGUAGE RankNTypes #-}
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import qualified Control.Monad

-- The type equations governing data models need to account for unifying data model transformations
-- from constraint sets that include monad constraints.
-- 
-- HWRLJKAL:FDJ
-- OK. How about this: The presence of a dynamic action cons implies that the action must be
-- executed in order to determine the marshalled byte size.
--
-- constrain on the Snoc between a dynamic buffer data model and a static buffer data model

#if 0
-- These type classes only provide documentation to the equations and some double-checking.
class StaticBufferAction sa
class DynamicBufferAction da
#endif

-- A data model consisting of a sequence of static buffer actions.
data SBCons a_0 sba_1

-- A data model consisting of a static buffer action sequence followed by any action.
-- this differs from the other ...Cons... forms in that the sb_0 is not a bare action tag but a
-- SBUnit or SBCons
data SBDCons sb_0 ba_1

-- A data model consisting of a dynamic buffer action followed by any action.
data DBDCons a_0 ba_1

-- presume whatever the dynamic action is we can use DARep to represent it.
data DummyAction

-- An empty data model is neither static or dynamic.
data DMNil

-- A data model consisting of a single static buffer action.
data SBUnit t

-- A data model consisting of a dynamic buffer action.
data DBUnit t

-- Examining some example cases.
--
-- dm_sync >> dm_sync
t_0 :: SBCons DummyAction (SBUnit DummyAction)
t_0 = undefined

-- dm_sync >> ( forM_ [1..4] $ \i -> dm_sync )
t_1 :: SBDCons (SBUnit DummyAction) -- for "dm_sync >>"
               (DBUnit DummyAction) -- for iterated "\i -> dm_sync"
t_1 = undefined

-- forM_ [1..4] $ \i -> dm_sync
t_2 :: DBUnit DummyAction
t_2 = undefined

-- ( forM_ [1..4] $ \i -> dm_sync ) >> dm_sync
t_3 :: DBDCons DummyAction -- for iterated "\i -> dm_sync"
               (SBUnit DummyAction) 
t_3 = undefined

#if DEV_NONCOMPILE_SWITCH
-- Ideally I would want the following type expressions to not compile:
-- However I don't know how the SBDCons type could enforce the structure of the required types it is
-- paramterized with. Can type classes be applied in this case?
t_4 :: SBDCons (DBUnit DummyAction) (SBUnit DummyAction)
t_4 = undefined
#endif

data DMAction tModel tRunState tModel' tRunState' a

instance Functor (DMAction tModel tRunState tModel' tRunState') where
    fmap = undefined

-- The DMApp type function governs the combining of 
type family DMApp dm a
type instance DMApp DMNil (SBUnit a_1) = SBUnit a_1
type instance DMApp DMNil (SBCons sa sb) = SBCons sa sb
-- XXX: type instance DMApp (SBUnit a_0) sb_as = SBCons a_0 sb_as
--
type instance DMApp (SBUnit a_0) (SBUnit a_1) = SBCons a_0 (SBUnit a_1)
type instance DMApp (SBCons a_1 sb_as_0) sb_as_1 = SBApp (SBCons a_1 sb_as_0) sb_as_1

class UnknownDMApp tModel_lhs tModel_rhs tModel

instance tModel_rhs ~ tModel => UnknownDMApp DMNil tModel_rhs tModel
instance tModel_lhs ~ tModel => UnknownDMApp tModel_lhs DMNil tModel

-- Somehow the rules governing sequencing need to be encoded into the bind instance...
-- Not really sure how that is possible. I though the UnknownDMApp would enable the introduction of
-- the rule inference.
instance ( UnknownDMApp tModel_0 implied_app1 tModel_1
         , UnknownDMApp tModel_2 implied_app2 tModel_3
         , DMApp tModel_1 implied_app2 ~ DMApp (DMApp tModel_0 implied_app1) implied_app2
         , tModel_0 ~ tModel_4
         , tModel_1 ~ tModel_2
         , tModel_3 ~ tModel_5
         ) => Bind (DMAction tModel_0 tRunState_0 tModel_1 tRunState_1)
                   (DMAction tModel_2 tRunState_2 tModel_3 tRunState_3)
                   (DMAction tModel_4 tRunState_4 tModel_5 tRunState_5)
    where
        (>>=) = undefined

instance Return (DMAction tModel tRunState tModel' tRunState') where
    returnM = undefined

sb_dummy :: ( tModel' ~ DMApp tModel (SBUnit DummyAction) 
            ) => DMAction tModel () tModel' () ()
sb_dummy = returnM ()

t_sb_0 :: DMAction DMNil () (SBUnit DummyAction) () ()
t_sb_0 = sb_dummy

type family SBApp sb_as_0 sb_as_1
type instance SBApp (SBUnit a_0) sb_as_1 = SBCons a_0 sb_as_1
type instance SBApp (SBCons a_0 sb_as_0) sb_as_1 = SBCons a_0 (SBApp sb_as_0 sb_as_1)

t_sb_1 :: DMAction DMNil () 
                  (SBCons DummyAction (SBUnit DummyAction)) () 
                  ()
t_sb_1 = sb_dummy >> sb_dummy

instance ( a_0 ~ a_2
         , SBCons a_2 sb_as_1 ~ SBApp (SBUnit a_0) a_1
         ) => UnknownDMApp (SBUnit a_0) a_1 (SBCons a_2 sb_as_1)

t_sb_1_alt :: DMAction DMNil () 
                      (SBCons DummyAction (SBUnit DummyAction)) () 
                      ()
t_sb_1_alt = do
    sb_dummy
    sb_dummy

t_sb_2 :: DMAction DMNil () 
                  (SBCons DummyAction (SBCons DummyAction (SBUnit DummyAction))) () 
                  ()
t_sb_2 = sb_dummy >> sb_dummy >> sb_dummy

instance ( a_0 ~ a_1
         , SBCons a_1 sb_as_2 ~ SBApp (SBCons a_0 sb_as_0) sb_as_1
         ) => UnknownDMApp (SBCons a_0 sb_as_0) sb_as_1 (SBCons a_1 sb_as_2)

t_sb_2_alt :: DMAction DMNil () 
                  (SBCons DummyAction (SBCons DummyAction (SBUnit DummyAction))) () 
                  ()
t_sb_2_alt = do
    sb_dummy
    sb_dummy
    sb_dummy

t_sb_3 :: DMAction DMNil () 
                  (SBCons DummyAction (SBCons DummyAction (SBCons DummyAction (SBUnit DummyAction)))) () 
                  ()
t_sb_3 = sb_dummy >> sb_dummy >> sb_dummy >> sb_dummy

t_sb_3_alt :: DMAction DMNil () 
                  (SBCons DummyAction (SBCons DummyAction (SBCons DummyAction (SBUnit DummyAction)))) () 
                  ()
t_sb_3_alt = do
    sb_dummy
    sb_dummy
    sb_dummy
    sb_dummy

#if !ONLY_SMALL_CASES
t_sb_4 = sb_dummy >> sb_dummy >> sb_dummy >> sb_dummy    
                 >> sb_dummy >> sb_dummy >> sb_dummy 
                 >> sb_dummy >> sb_dummy >> sb_dummy 
                 >> sb_dummy >> sb_dummy >> sb_dummy 
                 >> sb_dummy >> sb_dummy >> sb_dummy 
                 >> sb_dummy >> sb_dummy >> sb_dummy 
                 >> sb_dummy >> sb_dummy
#endif

-- Dynamic buffer actions should be introducable into the data model.
db_dummy :: ( tModel' ~ DBApp tModel (DBUnit DummyAction) 
            ) => DMAction tModel () tModel' () ()
db_dummy = returnM ()

type family DBApp as_0 as_1

type instance DBApp DMNil dm_rhs = dm_rhs

-- Pair each test with a type that should not be possible for the data model.
#if !DEV_NONCOMPILE_SWITCH
t_db_0 :: DMAction DMNil () (DBUnit DummyAction) () ()
#else
t_db_0 :: DMAction DMNil () (SBUnit DummyAction) () ()
#endif
t_db_0 = db_dummy

t_db_0_alt :: DMAction DMNil () (DBUnit DummyAction) () ()
t_db_0_alt = do
    db_dummy

type instance DMApp DMNil (DBUnit a_1) = DBUnit a_1
type instance DMApp DMNil (DBDCons da dm) = DBDCons da dm

-- A sequence of only dynamic buffer actions are treated identically to a sequence of static buffer
-- actions on the type level

t_db_1 :: DMAction DMNil () (DBDCons DummyAction (DBUnit DummyAction)) () ()
t_db_1 = db_dummy >> db_dummy

t_db_1_alt = do
    db_dummy
    db_dummy

type instance DBApp (DBUnit a_0) as_1 = DBDCons a_0 as_1

type instance DMApp (DBUnit a_0) (DBUnit a_1) = DBDCons a_0 (DBUnit a_1)

instance ( a_lhs ~ da_0
         , DBDCons da_0 (DBUnit da)  ~ DBApp (DBUnit a_0) db_rhs
         , db_rhs ~ DBUnit da
         ) => UnknownDMApp (DBUnit a_lhs) db_rhs (DBDCons da_0 (DBUnit da))

t_db_2 :: DMAction DMNil () (DBDCons DummyAction (DBDCons DummyAction (DBUnit DummyAction))) () ()
t_db_2 = db_dummy >> db_dummy >> db_dummy

t_db_2_alt :: DMAction DMNil () (DBDCons DummyAction (DBDCons DummyAction (DBUnit DummyAction))) () ()
t_db_2_alt = do
    db_dummy
    db_dummy
    db_dummy

type instance DMApp (DBDCons a_0 as_0) as_1 = DBApp (DBDCons a_0 as_0) as_1

type instance DBApp (DBDCons a_0 as_0) as_1 = DBDCons a_0 (DBApp as_0 as_1)

instance ( da_lhs ~ da
         , DBDCons da dm ~ DBApp (DBDCons da_lhs dm_lhs) dm_rhs
         ) => UnknownDMApp (DBDCons da_lhs dm_lhs) dm_rhs (DBDCons da dm)

instance ( a_lhs ~ da_0
         , DBDCons da_0 (DBDCons da_1 dm)  ~ DBApp (DBUnit a_lhs) db_rhs
         ) => UnknownDMApp (DBUnit a_lhs) db_rhs (DBDCons da_0 (DBDCons da_1 dm))

t_db_3 :: DMAction DMNil () (DBDCons DummyAction (DBDCons DummyAction (DBDCons DummyAction (DBUnit DummyAction)))) () ()
t_db_3 = db_dummy >> db_dummy >> db_dummy >> db_dummy

t_db_3_alt :: DMAction DMNil () (DBDCons DummyAction (DBDCons DummyAction (DBDCons DummyAction (DBUnit DummyAction)))) () ()
t_db_3_alt = do
    db_dummy
    db_dummy
    db_dummy
    db_dummy
    
-- The goal is to group static buffer actions while persisting dynamic buffer actions and cons.
-- A dynamic buffer action preceeding a static buffer action.
#if !DEV_NONCOMPILE_SWITCH
t_db_sb_0 :: DMAction DMNil () (DBDCons DummyAction (SBUnit DummyAction)) () ()
#else
t_db_sb_0 :: DMAction DMNil () (SBDCons (DBUnit DummyAction) (SBUnit DummyAction)) () ()
#endif
t_db_sb_0 = db_dummy >> sb_dummy

type instance DMApp (DBUnit a_0) (SBUnit a_1) = DBDCons a_0 (SBUnit a_1)

instance ( a_lhs ~ da_0
         , DBDCons da_0 (SBUnit sa) ~ DBApp (DBUnit a_0) sb_rhs
         , sb_rhs ~ SBUnit sa
         ) => UnknownDMApp (DBUnit a_lhs) db_rhs (DBDCons da_0 (SBUnit sa))

-- A static buffer action preceeding a dynamic buffer action.
#if !DEV_NONCOMPILE_SWITCH
t_sb_db_0 :: DMAction DMNil () (SBDCons (SBUnit DummyAction) (DBUnit DummyAction)) () ()
#else
t_sb_db_0 :: DMAction DMNil () (DBDCons DummyAction (DBUnit DummyAction)) () ()
#endif
t_sb_db_0 = sb_dummy >> db_dummy

type instance DBApp (SBUnit a_0) (DBUnit a_1) = SBDCons (SBUnit a_0) (DBUnit a_1)

instance ( sa_lhs ~ sa
         , SBDCons (SBUnit sa) (DBUnit da) ~ DBApp (SBUnit sa_lhs) db_rhs
         , db_rhs ~ DBUnit da
         ) => UnknownDMApp (SBUnit sa_lhs) db_rhs (SBDCons (SBUnit sa) (DBUnit da))

t_db_sb_1 = sb_dummy >> db_dummy >> sb_dummy

type instance DBApp (SBUnit a_0) (SBUnit a_1) = SBCons a_0 (SBUnit a_1)

-- static buffer actions should be grouped into a SBCons
t_db_sb_2 :: DMAction DMNil () (DBDCons DummyAction (SBCons DummyAction (SBUnit DummyAction))) () ()
t_db_sb_2 = db_dummy >> sb_dummy >> sb_dummy

#if 0
instance ( a_lhs ~ da
         , DBCons da (SBUnit sa) ~ DBApp (DBUnit a_lhs) sb_rhs
         ) => UnknownDMApp (SBUnit a_lhs) sb_rhs (SBCons da (SBUnit sa))

type instance DBApp (DBUnit a_0) (SBCons a_1 sb_1) = DBDCons a_0 (SBCons a_1 sb_1)

instance ( a_lhs ~ da
         , DBDCons da (SBCons sa sbs) ~ DBApp (DBUnit a_lhs) sb_rhs
         ) => UnknownDMApp (DBUnit a_lhs) sb_rhs (DBDCons da (SBCons sa sbs))

instance ( a_0 ~ a_1
         , as_0 ~ as_1
         ) => UnknownDMApp (SBCons a_0 as_0) (SBDCons (SBCons a_1 as_1) as_2)

-- t_sb_db_1 :: DMAction DMNil () (SBDCons (SBCons DummyAction (SBUnit DummyAction)) (DBUnit DummyAction)) () ()
t_sb_db_1 = sb_dummy >> sb_dummy >> db_dummy

#endif
main = run_test $ do
    returnM () :: Test ()

