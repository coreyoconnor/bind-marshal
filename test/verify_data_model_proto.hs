-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

-- The current ghc compiler is not capable of solving some tests within a reasonable time.
#define ONLY_SMALL_CASES 1 
{-# LANGUAGE RankNTypes #-}
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import qualified Control.Monad

-- | an empty data model
data DMNil

-- | An indivisible buffer static action.
data BSUnit rep

-- | A tag that indicates the child action is statically replicated
data Pos n => SReplicate n action

-- | A static sequence of buffer static actions.
data family BSSeq action bs_seq

-- | Which can be a unit action followed by a sequence.
data instance BSSeq (BSUnit rep) bs_seq 
    = BSUnitSeq rep bs_seq

-- | a replicated buffer static action followed by a sequence.
data instance BSSeq (SReplicate n (BSSeq action bs_seq_0)) bs_seq_1 
    = BSSeqReplicate n (BSSeq action bs_seq_0) bs_seq_1

-- A non-replicated sequence cannot be a node in a buffer static sequence. When a non-replicated
-- sequence is appended to a buffer static sequence the buffer static sequence takes the place of
-- the DMNil tail of the non-replicated sequence.
--
-- | A dynamic unit action is a static buffer action with no assurance on the number of times the
-- entire action is replicated.
data DynUnit rep

-- | A dynamic sequence is a sequence of static buffer actions with no assurance on the number of
-- times the entire action is replicated.
data family DynSeq action seq

-- | Which can be a buffer static unit action followed by a sequence
data instance DynSeq (BSUnit rep) seq 
    = DynBSUnitSeq rep seq

-- | A replicated buffer static unit action followed by a sequence
data instance DynSeq (SReplicate n (BSUnit rep)) seq 
    = DynBSUnitReplicate n rep seq

-- | A buffer static action followed by a sequence
data instance DynSeq (BSSeq action bs_seq) seq 
    = DynBSSeq action bs_seq seq

-- | A dynamic unit action followed by a sequence
data instance DynSeq (DynUnit action) seq 
    = DynUnitSeq action seq

-- | A statically replicated dynamic unit action.
data instance DynSeq (SReplicate n (DynUnit rep)) seq
    = DynUnitReplicate n rep seq

-- | A dynamic action followed by a sequence
data instance DynSeq (DynSeq action seq_0) seq_1
    = DynSeq (DynSeq action seq_0) seq_1

-- | A statically replicated dynamic action followed by a sequence
data instance DynSeq (SReplicate n (DynSeq action seq_0)) seq_1
    = DynReplicate n action seq_0 seq_1

-- | Two data models can be appended together. 
-- The resulting data model is the first data model's action sequence followed by the second data
-- model's action sequence. The final data model is dynamic or static as required by the rules
-- below.
--
-- These equations also normalizes the data models if required.
type family DMApp dm_0 dm_1

type instance DMApp DMNil dm_1 = dm_1
type instance DMApp dm_0 DMNil = dm_0

-- The rules all follow: if a static model is appended to a static model the result is also a static
-- model.
--
-- The non-replicated static buffer actions cases:
--      - unit action appended to unit action
type instance DMApp (BSUnit a_0) (BSUnit a_1)
    = BSSeq (BSUnit a_0) (BSSeq (BSUnit a_1) DMNil)

dmapp_sunit_sunit :: DMApp (BSUnit rep) (BSUnit rep)
dmapp_sunit_sunit = BSUnitSeq undefined (BSUnitSeq undefined undefined)

--      - unit action appended to static sequence
type instance DMApp (BSUnit a_0) (BSSeq a_1 bs_seq)
    = BSSeq (BSUnit a_0) (BSSeq a_1 bs_seq)

dmapp_bsunit_bsseq :: DMApp (BSUnit rep) (BSSeq (BSUnit rep) DMNil)
dmapp_bsunit_bsseq = BSUnitSeq undefined (BSUnitSeq undefined undefined)

dmapp_bsunit_bsseq_1 :: DMApp (BSUnit rep) (BSSeq (BSUnit rep) (BSSeq (BSUnit rep) DMNil))
dmapp_bsunit_bsseq_1 = BSUnitSeq undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined))

--      - static sequence appended to unit action
type instance DMApp (BSSeq a_0 bs_seq) (BSUnit a_1) 
    = BSSeq a_0 (DMApp bs_seq (BSSeq (BSUnit a_1) DMNil))

dmapp_bsseq_bsunit :: DMApp (BSSeq (BSUnit rep) DMNil) (BSUnit rep) 
dmapp_bsseq_bsunit = BSUnitSeq undefined (BSUnitSeq undefined undefined)

--      - static sequence appended to static sequence
type instance DMApp (BSSeq a_0 bs_seq_0) (BSSeq a_1 bs_seq_1) 
    = BSSeq a_0 (DMApp bs_seq_0 (BSSeq a_1 bs_seq_1))

dmapp_bsseq_bsseq :: DMApp (BSSeq (BSUnit rep) DMNil) (BSSeq (BSUnit rep) DMNil)
dmapp_bsseq_bsseq = BSUnitSeq undefined (BSUnitSeq undefined undefined)

dmapp_bsseq_bsseq_1 :: DMApp (BSSeq (BSUnit rep) DMNil) (BSSeq (BSUnit rep) (BSSeq (BSUnit rep) DMNil))
dmapp_bsseq_bsseq_1 = BSUnitSeq undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined))

--  In the case of replicated static buffer actions
--      - replicated unit action appended to unit action
type instance DMApp (SReplicate n (BSUnit a_0)) (BSUnit a_1)
    = BSSeq (SReplicate n (BSSeq (BSUnit a_0) DMNil)) 
            (BSSeq (BSUnit a_1) DMNil)

dmapp_rep_sunit_sunit :: DMApp (SReplicate D245 (BSUnit rep)) (BSUnit rep)
dmapp_rep_sunit_sunit = BSSeqReplicate undefined undefined (BSUnitSeq undefined undefined)

--      - replicated unit action appended to static sequence
type instance DMApp (SReplicate n (BSUnit a_0)) (BSSeq a_1 bs_seq)
    = BSSeq (SReplicate n (BSSeq (BSUnit a_0) DMNil)) 
            (BSSeq a_1 bs_seq)

dmapp_rep_bsunit_bsseq :: DMApp (SReplicate D4 (BSUnit rep_0)) (BSSeq (BSUnit rep_1) DMNil)
dmapp_rep_bsunit_bsseq = BSSeqReplicate undefined undefined (BSUnitSeq undefined undefined)

dmapp_rep_bsunit_bsseq_1 :: DMApp (SReplicate D4 (BSUnit rep_0)) (DMApp (BSUnit rep_1) (BSUnit rep2))
dmapp_rep_bsunit_bsseq_1 = BSSeqReplicate undefined undefined (BSUnitSeq undefined undefined)

--      - replicated unit action appended to replicated static sequence
type instance DMApp (SReplicate n_0 (BSUnit a_0)) (SReplicate n_1 (BSSeq a_1 bs_seq))
    = BSSeq (SReplicate n_0 (BSSeq (BSUnit a_0) DMNil)) 
            (BSSeq (SReplicate n_1 (BSSeq a_1 bs_seq)) DMNil)

dmapp_rep_bsunit_rep_bsseq :: DMApp (SReplicate D2 (BSUnit rep)) 
                                    (SReplicate D200 (BSSeq (BSUnit rep) 
                                                            (BSSeq (BSUnit rep) DMNil)
                                                     )
                                    )
dmapp_rep_bsunit_rep_bsseq = BSSeqReplicate undefined undefined 
                                (BSSeqReplicate undefined undefined undefined)

dmapp_rep_bsunit_rep_bsseq_1 :: DMApp (SReplicate D2 (BSUnit rep)) 
                                        (SReplicate D200 (DMApp (BSUnit rep)
                                                                (DMApp (BSUnit rep) (BSUnit rep))
                                                         )
                                        )
dmapp_rep_bsunit_rep_bsseq_1 = BSSeqReplicate undefined undefined 
                                (BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined)) undefined)

--      - unit action appended to replicated unit action
type instance DMApp (BSUnit a_0) (SReplicate n (BSUnit a_1))
    = BSSeq (BSUnit a_0) 
            (BSSeq (SReplicate n (BSSeq (BSUnit a_1) DMNil)) DMNil)

dmapp_sunit_rep_sunit :: DMApp (BSUnit rep) (SReplicate D212 (BSUnit rep))
dmapp_sunit_rep_sunit = BSUnitSeq undefined (BSSeqReplicate undefined undefined undefined)

--      - unit action appended to replicated static sequence
type instance DMApp (BSUnit a_0) (SReplicate n (BSSeq a_1 bs_seq))
    = BSSeq (BSUnit a_0)
            (BSSeq (SReplicate n (BSSeq a_1 bs_seq)) DMNil)

dmapp_bsunit_rep_bsseq :: DMApp (BSUnit rep) (SReplicate D200 (BSSeq (BSUnit rep) DMNil))
dmapp_bsunit_rep_bsseq = BSUnitSeq undefined (BSSeqReplicate undefined undefined undefined)

dmapp_bsunit_rep_bsseq_1 :: DMApp (BSUnit rep) (SReplicate D200 (DMApp (BSUnit rep) (BSUnit rep)))
dmapp_bsunit_rep_bsseq_1 = BSUnitSeq undefined (BSSeqReplicate undefined undefined undefined)

dmapp_bsunit_rep_bsseq_2 :: DMApp (BSUnit rep) (SReplicate D200 (DMApp (BSUnit rep) (DMApp (BSUnit rep) (BSUnit rep))))
dmapp_bsunit_rep_bsseq_2 = BSUnitSeq undefined (BSSeqReplicate undefined undefined undefined)

--      - static sequence appended to replicated unit action
type instance DMApp (BSSeq a_0 bs_seq_0) (SReplicate n_1 (BSUnit a_1))
    = BSSeq a_0 (DMApp bs_seq_0 
                       (BSSeq (SReplicate n_1 (BSSeq (BSUnit a_1) DMNil)) 
                              DMNil
                       )
                )

dmapp_bsseq_rep_sunit :: DMApp (DMApp (BSUnit rep_0) (BSUnit rep_1)) 
                               (SReplicate n_1 (BSUnit rep_2))
dmapp_bsseq_rep_sunit = BSUnitSeq undefined (BSUnitSeq undefined undefined )

dmapp_bsseq_rep_sunit_1 :: DMApp (BSSeq (BSUnit rep_0) (BSSeq (BSUnit rep_1) DMNil)) 
                                 (SReplicate n_1 (BSUnit rep_2))
dmapp_bsseq_rep_sunit_1 = BSUnitSeq undefined (BSUnitSeq undefined undefined )

dmapp_bsseq_rep_sunit_2 :: BSSeq (BSUnit rep_0) 
                                 (DMApp (BSUnit rep_1) 
                                        (SReplicate n_1 (BSUnit rep_2))
                                 )
dmapp_bsseq_rep_sunit_2 = BSUnitSeq undefined (BSUnitSeq undefined (BSSeqReplicate undefined undefined undefined))

dmapp_bsseq_rep_sunit_3 :: DMApp (DMApp (BSUnit rep_0) (BSUnit rep_1)) 
                                 (SReplicate n_1 (BSUnit rep_2))
dmapp_bsseq_rep_sunit_3 = BSUnitSeq undefined (BSUnitSeq undefined (BSSeqReplicate undefined undefined undefined))

--      - static sequence appended to replicated static sequence
type instance DMApp (BSSeq a_0 bs_seq_0) (SReplicate n_1 (BSSeq a_1 bs_seq_1))
    = BSSeq a_0 (DMApp bs_seq_0 
                       (BSSeq (SReplicate n_1 (BSSeq a_1 bs_seq_1))
                              DMNil
                       )
                )

dmapp_bsseq_rep_bsseq :: DMApp (DMApp (BSUnit rep_0) (BSUnit rep_1)) 
                               (SReplicate D200 (DMApp (BSUnit rep_2) 
                                                       (BSUnit rep_3)
                                                )
                               )
dmapp_bsseq_rep_bsseq = BSUnitSeq undefined (BSUnitSeq undefined (BSSeqReplicate undefined undefined undefined))

dmapp_bsseq_rep_bsseq_1 :: DMApp (DMApp (BSUnit rep_0) (DMApp (BSUnit rep_1) (BSUnit rep_3)))
                               (SReplicate D200 (DMApp (BSUnit rep_4) 
                                                       (DMApp (BSUnit rep_5)
                                                              (BSUnit rep_6)
                                                       )
                                                )
                               )
dmapp_bsseq_rep_bsseq_1 = BSUnitSeq undefined 
                                    (BSUnitSeq undefined 
                                               (BSUnitSeq undefined
                                                          (BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined)))
                                                                                    undefined
                                                          )
                                               )
                                    )

--      - replicated static sequence appended to unit action
type instance DMApp (SReplicate n_0 (BSSeq a_0 bs_seq_0)) (BSUnit a_1)
    = BSSeq (SReplicate n_0 (BSSeq a_0 bs_seq_0))
            (BSSeq (BSUnit a_1) DMNil)

dmapp_rep_bsseq_bsunit :: DMApp (SReplicate n (DMApp (BSUnit rep) (BSUnit rep)))
                                (BSUnit rep)
dmapp_rep_bsseq_bsunit = undefined

dmapp_rep_bsseq_bsunit_1 :: DMApp (SReplicate n (DMApp (BSUnit rep) (BSUnit rep)))
                                  (BSUnit rep)
dmapp_rep_bsseq_bsunit_1 = BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined))
                                                    (BSUnitSeq undefined undefined)

--      - replicated static sequence appended to static sequence
type instance DMApp (SReplicate n_0 (BSSeq a_0 bs_seq_0)) (BSSeq a_1 bs_seq_1)
    = BSSeq (SReplicate n_0 (BSSeq a_0 bs_seq_0))
            (BSSeq a_1 bs_seq_1)

dmapp_rep_bsseq_bsseq :: DMApp (SReplicate n (DMApp (BSUnit rep) (BSUnit rep)))
                               (DMApp (BSUnit rep) (BSUnit rep))
dmapp_rep_bsseq_bsseq = BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined))
                                                 (BSUnitSeq undefined (BSUnitSeq undefined undefined))

--      - replicated static sequence appended to replicate unit action
type instance DMApp (SReplicate n_0 (BSSeq a_0 bs_seq_0)) (SReplicate n_1 (BSUnit a_1))
    = BSSeq (SReplicate n_0 (BSSeq a_0 bs_seq_0))
            (BSSeq (SReplicate n_1 (BSSeq (BSUnit a_1) DMNil)) DMNil)

dmapp_rep_bsseq_rep_unit :: DMApp (SReplicate n_0 (DMApp (BSUnit rep) (BSUnit rep)))
                                  (SReplicate n_1 (BSUnit rep))
dmapp_rep_bsseq_rep_unit = BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined))
                                                    (BSSeqReplicate undefined (BSUnitSeq undefined undefined) undefined)


--      - replicated unit action appended to replicated unit action
type instance DMApp (SReplicate n_0 (BSUnit a_0)) (SReplicate n_1 (BSUnit a_1))
    = BSSeq (SReplicate n_0 (BSSeq (BSUnit a_0) DMNil))
            (BSSeq (SReplicate n_1 (BSSeq (BSUnit a_1) DMNil)) DMNil)

dmapp_rep_sunit_rep_sunit :: DMApp (SReplicate D245 (BSUnit rep)) (SReplicate D212 (BSUnit rep))
dmapp_rep_sunit_rep_sunit = BSSeqReplicate undefined undefined (BSSeqReplicate undefined undefined undefined)

--      - replicated static sequence appended to replicated static sequence
type instance DMApp (SReplicate n_0 (BSSeq a_0 bs_seq_0)) (SReplicate n_1 (BSSeq a_1 bs_seq_1))
    = BSSeq (SReplicate n_0 (BSSeq a_0 bs_seq_0)) 
            (BSSeq (SReplicate n_1 (BSSeq a_1 bs_seq_1)) DMNil)

dmapp_rep_bsseq_rep_bsseq :: DMApp (SReplicate n_0 (DMApp (BSUnit r_0) (BSUnit r_1)))
                                   (SReplicate n_1 (DMApp (BSUnit r_2) (BSUnit r_3)))
dmapp_rep_bsseq_rep_bsseq = BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined))
                             (BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined)) undefined)

dmapp_rep_bsunit_rep_bsseq_2 :: DMApp (SReplicate D2 (BSUnit rep)) 
                                        (DMApp (SReplicate D200 
                                                 (DMApp (BSUnit rep)
                                                        (DMApp (BSUnit rep) (BSUnit rep))
                                                 )
                                               )
                                               (SReplicate D20 (BSUnit rep))
                                        )
dmapp_rep_bsunit_rep_bsseq_2 = BSSeqReplicate undefined undefined 
                                (BSSeqReplicate undefined (BSUnitSeq undefined (BSUnitSeq undefined undefined))
                                                          (BSSeqReplicate undefined undefined undefined)
                                )

#if 0
-- For dynamic models the rules all follow: If a dynamic model is appended to dynamic model the
-- result is also a dynamic model.
-- 
-- The non-replicated cases:
--  - a dynamic unit appended to a dynamic unit
type instance DMApp (DynUnit a_0) (DynUnit a_1)
    = DynSeq (DynUnit a_0) (DynSeq (DynUnit a_1) DMNil)

dmapp_unit_unit :: DMApp (DynUnit rep) (DynUnit rep)
dmapp_unit_unit = undefined

--  - a dynamic unit appended to a dynamic sequence
--      - where the sequence starts with a unit
dmapp_unit_seq :: DMApp (DynUnit rep) (DynSeq action seq)
dmapp_unit_seq = undefined

-- For dynamic models the rules are:
-- if a dynamic model is appended to dynamic model the result is also a dynamic model
type instance DMApp (DBUnit a_0) (DBUnit a_1)
    = DBAction (DBUnit a_0) (DBUnit a_1)
type instance DMApp (DBUnit a) (DBAction d_a d_as) 
    = DBAction (DBUnit a) (DBAction d_a d_as)
type instance DMApp (DBAction s_a s_as) (DBUnit a) 
    = DBAction s_a (DMApp s_as (DBUnit a))
type instance DMApp (DBAction s_as_0 d_as_0) (DBAction s_as_1 d_as_1) 
    = DBAction s_as_0 (DMApp d_as_0 (DBAction s_as_1 d_as_1))

-- if a static model is appended to a dynamic model the result is a dynamic model
type instance DMApp (DBUnit a_0) (BSUnit a_1)
    = DBAction (DBUnit a_0) (BSUnit a_1)

type instance DMApp (DBAction (DBUnit a_0) (BSUnit a_1)) (BSUnit a_2)
    = DBAction (DBUnit a_0) (BSSeq (BSUnit a_1) (BSUnit a_2))
type instance DMApp (DBAction (DBUnit a_0) (BSSeq a_1 s_as)) (BSUnit a_2)
    = DBAction (DBUnit a_0) (DMApp (BSSeq a_1 s_as) (BSUnit a_2))

type instance DMApp (DBAction (DBUnit a_0) (DBUnit a_1)) (BSUnit a_2)
    = DBAction (DBUnit a_0) (DBAction (DBUnit a_1) (BSUnit a_2))
type instance DMApp (DBAction (DBUnit a_0) (DBAction a_1 d_as_1)) (BSUnit a_2)
    = DBAction (DBUnit a_0) (DMApp (DBAction a_1 d_as_1) (BSUnit a_2))
    
type instance DMApp (DBAction (BSUnit a_0) (DBUnit a_1)) (BSUnit a_2)
    = DBAction (BSUnit a_0) (DBAction (DBUnit a_1) (BSUnit a_2))
type instance DMApp (DBAction (BSUnit a_0) (DBAction a_1 d_as_1)) (BSUnit a_2)
    = DBAction (BSUnit a_0) (DMApp (DBAction a_1 d_as_1) (BSUnit a_2))

type instance DMApp (DBAction (BSSeq a_0 s_a_0) (DBUnit a_1)) (BSUnit a_2)
    = DBAction (BSSeq a_0 s_a_0) (DBAction (DBUnit a_1) (BSUnit a_2))
type instance DMApp (DBAction (BSSeq a_0 s_a_0) (DBAction a_1 d_a_1)) (BSUnit a_2)
    = DBAction (BSSeq a_0 s_a_0) (DMApp (DBAction a_1 d_a_1) (BSUnit a_2))

type instance DMApp (DBAction (DBUnit a_0) (DBUnit a_1)) (BSSeq a_2 s_as_2)
    = DBAction (DBUnit a_0) (DBAction (DBUnit a_1) (BSSeq a_2 s_as_2))
type instance DMApp (DBAction (DBUnit a_0) (DBAction a_1 d_as_1)) (BSSeq a_2 s_as_2)
    = DBAction (DBUnit a_0) (DMApp (DBAction a_1 d_as_1) (BSSeq a_2 s_as_2))

type instance DMApp (DBAction (DBUnit a_0) (BSUnit a_1)) (BSSeq a_2 s_as_2)
    = DBAction (DBUnit a_0) (DMApp (BSUnit a_1) (BSSeq a_2 s_as_2))
type instance DMApp (DBAction (DBUnit a_0) (BSSeq a_1 s_as_1)) (BSSeq a_2 s_as_2)
    = DBAction (DBUnit a_0) (DMApp (BSSeq a_1 s_as_1) (BSSeq a_2 s_as_2))

type instance DMApp (DBAction (BSUnit a_0) (DBUnit a_1)) (BSSeq a_2 s_as_2)
    = DBAction (BSUnit a_0) (DBAction (DBUnit a_1) (BSSeq a_2 s_as_2))
type instance DMApp (DBAction (BSUnit a_0) (DBAction a_1 d_as_1)) (BSSeq a_2 s_as_2)
    = DBAction (BSUnit a_0) (DMApp (DBAction a_1 d_as_1) (BSSeq a_2 s_as_2))

type instance DMApp (DBAction (BSSeq a_0 s_as_0) (DBUnit a_1)) (BSSeq a_2 s_as_2)
    = DBAction (BSSeq a_0 s_as_0) (DBAction (DBUnit a_1) (BSSeq a_2 s_as_2))
type instance DMApp (DBAction (BSSeq a_0 s_as_0) (DBAction a_1 d_as_1)) (BSSeq a_2 s_as_2)
    = DBAction (BSSeq a_0 s_as_0) (DMApp (DBAction a_1 d_as_1) (BSSeq a_2 s_as_2))

type instance DMApp (BSUnit a_0) (DBUnit a_1)
    = DBAction (BSUnit a_0) (DBUnit a_1)
type instance DMApp (BSSeq a_0 s_as_0) (DBUnit a_1)
    = DBAction (BSSeq a_0 s_as_0) (DBUnit a_1)

-- Examining only the types of some example cases.
--
-- sb >> sb
t_0 :: BSSeq a (BSUnit a)
t_0 = undefined

-- sb >> ( forM_ [1..4] $ \i -> sb )
t_1 :: DBAction (BSUnit a) -- for the sb >>
                (BSUnit a) -- for iterated "\i -> sb"
t_1 = undefined

-- forM_ [1..4] $ \i -> sb
t_2 :: DBAction (BSUnit a) DMNil
t_2 = undefined

-- ( forM_ [1..4] $ \i -> sb ) >> sb
t_3 :: DBAction (BSUnit a) -- for iterated "\i -> sb"
                (BSUnit a) -- for ">> sb"
t_3 = undefined

-- Now start examining monads expressing only static buffer actions.
--
-- Introduce a dummy static buffer unit action:
data DummyAction
sb :: ( tModel' ~ DMApp tModel (BSUnit DummyAction) 
      ) => DMAction tModel () tModel' () ()
sb = undefined

t_sb_0 :: DMAction DMNil () (BSUnit DummyAction) () ()
t_sb_0 = sb

type instance DMApp DMNil dm = dm
type instance DMApp dm DMNil = dm

t_sb_1 :: DMAction DMNil () 
                   (BSSeq (BSUnit DummyAction) 
                             (BSUnit DummyAction)
                   ) () 
                   ()
t_sb_1 = sb >> sb

instance ( model_0 ~ model_4
         , model_1 ~ model_2
         , model_3 ~ model_5
         ) => Bind (DMAction model_0 run_state_0 model_1 run_state_1)
                   (DMAction model_2 run_state_2 model_3 run_state_3)
                   (DMAction model_4 run_state_4 model_5 run_state_5)
    where
        (>>=) = undefined

t_sb_2 :: DMAction DMNil () 
                   (BSSeq (BSUnit DummyAction) 
                             (BSSeq (BSUnit DummyAction)
                                       (BSUnit DummyAction)
                             )
                   ) () 
                   ()
t_sb_2 = sb >> sb >> sb

#if 0
*Main> :info t_sb_2'
t_sb_2' ::
  DMAction
    tModel
    run_state_4
    (DMApp
       (DMApp (DMApp tModel (BSUnit DummyAction)) (BSUnit DummyAction))
       (BSUnit DummyAction))
    run_state_5
    ()
#endif
t_sb_2' = sb >> sb >> sb

t_sb_3 :: DMAction DMNil () 
                   (BSSeq (BSUnit DummyAction) 
                             (BSSeq (BSUnit DummyAction)
                                       (BSSeq (BSUnit DummyAction)
                                                 (BSUnit DummyAction)
                                       )
                             )
                   ) () 
                   ()
t_sb_3 = sb >> sb >> sb >> sb

t_sb_3' = sb >> sb >> sb >> sb

-- A dynamic buffer action
db :: ( tModel' ~ DMApp tModel (DBUnit DummyAction) 
      ) => DMAction tModel () tModel' () ()
db = undefined

t_db_0 :: DMAction DMNil () 
                   (DBUnit DummyAction) () 
                   ()
t_db_0 = db

t_db_1 :: DMAction DMNil () 
                   (DBAction (DBUnit DummyAction) 
                             (DBUnit DummyAction)
                   ) () 
                   ()
t_db_1 = db >> db

t_db_2 :: DMAction DMNil () 
                   (DBAction (DBUnit DummyAction) 
                             (DBAction (DBUnit DummyAction) 
                                       (DBUnit DummyAction)
                             ) 
                   ) 
                   () 
                   ()
t_db_2 = db >> db >> db

t_db_3 :: DMAction DMNil () 
                   (DBAction (DBUnit DummyAction) 
                             (DBAction (DBUnit DummyAction) 
                                       (DBAction (DBUnit DummyAction) 
                                                 (DBUnit DummyAction)
                                       ) 
                             ) 
                   ) 
                   () 
                   ()
t_db_3 = db >> db >> db >> db

t_db_3' = db >> db >> db >> db

t_db_0_sb_0 :: DMAction DMNil () (DBAction (DBUnit DummyAction) (BSUnit DummyAction)) () ()
t_db_0_sb_0 = db >> sb

t_db_1_sb_0 :: DMAction DMNil ()
                        (DBAction (DBUnit DummyAction)
                                  (DBAction (DBUnit DummyAction) 
                                            (BSUnit DummyAction)
                                  )
                        ) () 
                        ()
t_db_1_sb_0 = db >> db >> sb

t_db_2_sb_0 :: DMAction DMNil ()
                        (DBAction (DBUnit DummyAction)
                                  (DBAction (DBUnit DummyAction) 
                                            (DBAction (DBUnit DummyAction) 
                                                      (BSUnit DummyAction)
                                            )
                                  )
                        ) () 
                        ()
t_db_2_sb_0 = db >> db >> db >> sb

t_db_3_sb_0 :: DMAction DMNil ()
                        (DBAction (DBUnit DummyAction)
                                  (DBAction (DBUnit DummyAction) 
                                            (DBAction (DBUnit DummyAction) 
                                                      (DBAction (DBUnit DummyAction) 
                                                                (BSUnit DummyAction)
                                                      )
                                            )
                                  )
                        ) () 
                        ()
t_db_3_sb_0 = db >> db >> db >> db >> sb

t_db_4_sb_0 :: DMAction DMNil ()
                        (DBAction (DBUnit DummyAction)
                                  (DBAction (DBUnit DummyAction) 
                                            (DBAction (DBUnit DummyAction) 
                                                      (DBAction (DBUnit DummyAction) 
                                                                (DBAction (DBUnit DummyAction) 
                                                                          (BSUnit DummyAction)
                                                                )
                                                      )
                                            )
                                  )
                        ) () 
                        ()
t_db_4_sb_0 = db >> db >> db >> db >> db >> sb

t_db_0_sb_1 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                         (BSSeq (BSUnit DummyAction) 
                                                   (BSUnit DummyAction)
                                         )
                               ) 
                               () ()
t_db_0_sb_1 = db >> sb >> sb

t_db_0_sb_2 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                         (BSSeq (BSUnit DummyAction) 
                                                   (BSSeq (BSUnit DummyAction) 
                                                             (BSUnit DummyAction)
                                                   )
                                         )
                               ) 
                               () ()
t_db_0_sb_2 = db >> sb >> sb >> sb

t_db_1_sb_2 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                           (DBAction (DBUnit DummyAction)
                                                     (BSSeq (BSUnit DummyAction) 
                                                               (BSSeq (BSUnit DummyAction) 
                                                                         (BSUnit DummyAction)
                                                               )
                                                     )
                                           )
                               ) 
                               () ()
t_db_1_sb_2 = db >> db >> sb >> sb >> sb

t_db_2_sb_2 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                           (DBAction (DBUnit DummyAction)
                                                     (DBAction (DBUnit DummyAction)
                                                               (BSSeq (BSUnit DummyAction) 
                                                                         (BSSeq (BSUnit DummyAction) 
                                                                                   (BSUnit DummyAction)
                                                                         )
                                                               )
                                                     )
                                           )
                               ) 
                               () ()
t_db_2_sb_2 = db >> db >> db >> sb >> sb >> sb

t_db_0_sb_3 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                         (BSSeq (BSUnit DummyAction) 
                                                   (BSSeq (BSUnit DummyAction) 
                                                             (BSSeq (BSUnit DummyAction) 
                                                                       (BSUnit DummyAction)
                                                             )
                                                   )
                                         )
                               ) 
                               () ()
t_db_0_sb_3 = db >> sb >> sb >> sb >> sb

t_db_1_sb_3 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                           (DBAction (DBUnit DummyAction)
                                                     (BSSeq (BSUnit DummyAction) 
                                                               (BSSeq (BSUnit DummyAction) 
                                                                         (BSSeq (BSUnit DummyAction) 
                                                                                   (BSUnit DummyAction)
                                                                         )
                                                               )
                                                     )
                                           )
                                 ) 
                        () ()
t_db_1_sb_3 = db >> db >> sb >> sb >> sb >> sb

t_db_2_sb_3 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                           (DBAction (DBUnit DummyAction)
                                                     (DBAction (DBUnit DummyAction)
                                                               (BSSeq (BSUnit DummyAction) 
                                                                         (BSSeq (BSUnit DummyAction) 
                                                                                   (BSSeq (BSUnit DummyAction) 
                                                                                             (BSUnit DummyAction)
                                                                                   )
                                                                         )
                                                               )
                                                     )
                                           )
                                 ) 
                        () ()
t_db_2_sb_3 = db >> db >> db >> sb >> sb >> sb >> sb

t_db_0_sb_4 :: DMAction DMNil () (DBAction (DBUnit DummyAction) 
                                         (BSSeq (BSUnit DummyAction) 
                                                   (BSSeq (BSUnit DummyAction) 
                                                             (BSSeq (BSUnit DummyAction) 
                                                                       (BSSeq (BSUnit DummyAction) 
                                                                                 (BSUnit DummyAction)
                                                                       )
                                                             )
                                                   )
                                         )
                               ) 
                               () ()
t_db_0_sb_4 = db >> sb >> sb >> sb >> sb >> sb

t_db_1_sb_4 :: DMAction DMNil () 
                        (DBAction (DBUnit DummyAction) 
                                  (DBAction (DBUnit DummyAction)
                                            (BSSeq (BSUnit DummyAction) 
                                                      (BSSeq (BSUnit DummyAction) 
                                                                (BSSeq (BSUnit DummyAction) 
                                                                          (BSSeq (BSUnit DummyAction) 
                                                                                    (BSUnit DummyAction)
                                                                          )
                                                                )
                                                      )
                                            )
                                  )
                        ) () 
                        ()
t_db_1_sb_4 = db >> db >> sb >> sb >> sb >> sb >> sb

t_db_2_sb_4 :: DMAction DMNil () 
                        (DBAction (DBUnit DummyAction) 
                                  (DBAction (DBUnit DummyAction)
                                            (DBAction (DBUnit DummyAction)
                                                      (BSSeq (BSUnit DummyAction) 
                                                                (BSSeq (BSUnit DummyAction) 
                                                                          (BSSeq (BSUnit DummyAction) 
                                                                                    (BSSeq (BSUnit DummyAction) 
                                                                                              (BSUnit DummyAction)
                                                                                    )
                                                                          )
                                                                )
                                                      )
                                            )
                                  )
                        ) () 
                        ()
t_db_2_sb_4 = db >> db >> db >> sb >> sb >> sb >> sb >> sb

t_db_3_sb_4 :: DMAction DMNil () 
                        (DBAction (DBUnit DummyAction) 
                                  (DBAction (DBUnit DummyAction)
                                            (DBAction (DBUnit DummyAction)
                                                      (DBAction (DBUnit DummyAction)
                                                                (BSSeq (BSUnit DummyAction) 
                                                                          (BSSeq (BSUnit DummyAction) 
                                                                                    (BSSeq (BSUnit DummyAction) 
                                                                                              (BSSeq (BSUnit DummyAction) 
                                                                                                        (BSUnit DummyAction)
                                                                                              )
                                                                                    )
                                                                          )
                                                                )
                                                      )
                                            )
                                  )
                        ) () 
                        ()
t_db_3_sb_4 = db >> db >> db >> db >> sb >> sb >> sb >> sb >> sb

-- Likewise we want to properly group static buffer actions prefixing a dynamic buffer action
t_sb_0_db_0 :: DMAction DMNil ()
                        (DBAction (BSUnit DummyAction) (DBUnit DummyAction)
                        ) ()
                        ()
t_sb_0_db_0 = sb >> db

t_sb_0_db_1 :: DMAction DMNil ()
                        (DBAction (BSUnit DummyAction) 
                                  (DBAction (DBUnit DummyAction)
                                            (DBUnit DummyAction)
                                  )
                        ) ()
                        ()
t_sb_0_db_1 = sb >> db >> db

t_sb_1_db_0 :: DMAction DMNil ()
                        (DBAction (BSSeq (BSUnit DummyAction) 
                                            (BSUnit DummyAction)
                                  )
                                  (DBUnit DummyAction)
                        ) ()
                        ()
t_sb_1_db_0 = sb >> sb >> db

t_sb_2_db_0 :: DMAction DMNil ()
                        (DBAction (BSSeq (BSUnit DummyAction)
                                            (BSSeq (BSUnit DummyAction) 
                                                      (BSUnit DummyAction)
                                            )
                                  )
                                  (DBUnit DummyAction)
                        ) ()
                        ()
t_sb_2_db_0 = sb >> sb >> sb >> db

t_sb_2_db_1 :: DMAction DMNil ()
                      (DBAction (BSSeq (BSUnit DummyAction)
                                          (BSSeq (BSUnit DummyAction)
                                                    (BSUnit DummyAction)
                                          )
                                )
                                (DBAction (DBUnit DummyAction)
                                          (DBUnit DummyAction)
                                )
                      ) ()
                      ()
t_sb_2_db_1 = sb >> sb >> sb >> db >> db

t_sb_2_db_2 :: DMAction DMNil ()
                      (DBAction (BSSeq (BSUnit DummyAction)
                                          (BSSeq (BSUnit DummyAction)
                                                    (BSUnit DummyAction)
                                          )
                                )
                                (DBAction (DBUnit DummyAction)
                                          (DBAction (DBUnit DummyAction)
                                                    (DBUnit DummyAction)
                                          )
                                )
                      ) ()
                      ()
t_sb_2_db_2 = sb >> sb >> sb >> db >> db >> db

t_sb_3_db_0 :: DMAction DMNil ()
                      (DBAction (BSSeq (BSUnit DummyAction)
                                          (BSSeq (BSUnit DummyAction)
                                                    (BSSeq (BSUnit DummyAction)
                                                              (BSUnit DummyAction)
                                                    )
                                          )
                                )
                                (DBUnit DummyAction)
                      ) ()
                      ()
t_sb_3_db_0 = sb >> sb >> sb >> sb >> db

t_sb_3_db_1 :: DMAction DMNil ()
                      (DBAction (BSSeq (BSUnit DummyAction)
                                          (BSSeq (BSUnit DummyAction)
                                                    (BSSeq (BSUnit DummyAction)
                                                              (BSUnit DummyAction)
                                                    )
                                          )
                                )
                                (DBAction (DBUnit DummyAction)
                                          (DBUnit DummyAction)
                                )
                      ) ()
                      ()
t_sb_3_db_1 = sb >> sb >> sb >> sb >> db >> db

t_sb_3_db_2 :: DMAction DMNil ()
                      (DBAction (BSSeq (BSUnit DummyAction)
                                          (BSSeq (BSUnit DummyAction)
                                                    (BSSeq (BSUnit DummyAction)
                                                              (BSUnit DummyAction)
                                                    )
                                          )
                                )
                                (DBAction (DBUnit DummyAction)
                                          (DBAction (DBUnit DummyAction)
                                                    (DBUnit DummyAction)
                                          )
                                )
                      ) ()
                      ()
t_sb_3_db_2 = sb >> sb >> sb >> sb >> db >> db >> db

t_sb_3_db_3 :: DMAction DMNil ()
                      (DBAction (BSSeq (BSUnit DummyAction)
                                          (BSSeq (BSUnit DummyAction)
                                                    (BSSeq (BSUnit DummyAction)
                                                              (BSUnit DummyAction)
                                                    )
                                          )
                                )
                                (DBAction (DBUnit DummyAction)
                                          (DBAction (DBUnit DummyAction)
                                                    (DBAction (DBUnit DummyAction)
                                                              (DBUnit DummyAction)
                                                    )
                                          )
                                )
                      ) ()
                      ()
t_sb_3_db_3 = sb >> sb >> sb >> sb >> db >> db >> db >> db

-- Now for the bracket tests:
--  sb bracketed by db's
t_db_0_sb_0_db_0 :: DMAction DMNil ()
                             (DBAction (DBUnit DummyAction)
                                       (DBAction (BSUnit DummyAction)
                                                 (DBUnit DummyAction)
                                       )
                             ) ()
                             ()
t_db_0_sb_0_db_0 = db >> sb >> db

t_db_0_sb_1_db_0 :: DMAction DMNil ()
                             (DBAction (DBUnit DummyAction)
                                       (DBAction (BSSeq (BSUnit DummyAction)
                                                           (BSUnit DummyAction)
                                                 )
                                                 (DBUnit DummyAction)
                                       )
                             ) ()
                             ()
t_db_0_sb_1_db_0 = db >> sb >> sb >> db

t_db_0_sb_2_db_0 :: DMAction DMNil ()
                             (DBAction (DBUnit DummyAction)
                                       (DBAction (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                                 (DBUnit DummyAction)
                                       )
                             ) ()
                             ()
t_db_0_sb_2_db_0 = db >> sb >> sb >> sb >> db

t_db_0_sb_3_db_0 :: DMAction DMNil ()
                             (DBAction (DBUnit DummyAction)
                                       (DBAction (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSSeq (BSUnit DummyAction)
                                                                               (BSUnit DummyAction)
                                                                     )
                                                           )
                                                 )
                                                 (DBUnit DummyAction)
                                       )
                             ) ()
                             ()
t_db_0_sb_3_db_0 = db >> sb >> sb >> sb >> sb >> db

t_db_0_sb_4_db_0 :: DMAction DMNil ()
                             (DBAction (DBUnit DummyAction)
                                       (DBAction (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSSeq (BSUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSUnit DummyAction)
                                                                               )
                                                                     )
                                                           )
                                                 )
                                                 (DBUnit DummyAction)
                                       )
                             ) ()
                             ()
t_db_0_sb_4_db_0 = db >> sb >> sb >> sb >> sb >> sb >> db

t_db_1_sb_4_db_1 :: DMAction DMNil ()
                             (DBAction (DBUnit DummyAction)
                                 (DBAction (DBUnit DummyAction)
                                           (DBAction (BSSeq (BSUnit DummyAction)
                                                               (BSSeq (BSUnit DummyAction)
                                                                         (BSSeq (BSUnit DummyAction)
                                                                                   (BSSeq (BSUnit DummyAction)
                                                                                             (BSUnit DummyAction)
                                                                                   )
                                                                         )
                                                               )
                                                     )
                                                     (DBAction (DBUnit DummyAction)
                                                               (DBUnit DummyAction)
                                                     )
                                           )
                                 )
                             ) ()
                             ()
t_db_1_sb_4_db_1 = db >> db >> sb >> sb >> sb >> sb >> sb >> db >> db

t_db_2_sb_4_db_2 :: DMAction DMNil ()
                             (DBAction (DBUnit DummyAction)
                                 (DBAction (DBUnit DummyAction)
                                     (DBAction (DBUnit DummyAction)
                                               (DBAction (BSSeq (BSUnit DummyAction)
                                                                   (BSSeq (BSUnit DummyAction)
                                                                             (BSSeq (BSUnit DummyAction)
                                                                                       (BSSeq (BSUnit DummyAction)
                                                                                                 (BSUnit DummyAction)
                                                                                       )
                                                                             )
                                                                   )
                                                         )
                                                         (DBAction (DBUnit DummyAction)
                                                                   (DBAction (DBUnit DummyAction)
                                                                             (DBUnit DummyAction)
                                                                   )
                                                         )
                                               )
                                     )
                                 )
                             ) ()
                             ()
t_db_2_sb_4_db_2 = db >> db >> db >> sb >> sb >> sb >> sb >> sb >> db >> db >> db

t_sb_0_db_0_sb_0 :: DMAction DMNil ()
                             (DBAction (BSUnit DummyAction)
                                       (DBAction (DBUnit DummyAction)
                                                 (BSUnit DummyAction)
                                       )
                             ) ()
                             ()
t_sb_0_db_0_sb_0 = sb >> db >> sb

t_sb_0_db_1_sb_0 :: DMAction DMNil ()
                             (DBAction (BSUnit DummyAction)
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (BSUnit DummyAction)
                                                 )
                                       )
                             ) ()
                             ()
t_sb_0_db_1_sb_0 = sb >> db >> db >> sb

t_sb_0_db_2_sb_0 :: DMAction DMNil ()
                             (DBAction (BSUnit DummyAction)
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_0_db_2_sb_0 = sb >> db >> db >> db >> sb

t_sb_0_db_3_sb_0 :: DMAction DMNil ()
                             (DBAction (BSUnit DummyAction)
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSUnit DummyAction)
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_0_db_3_sb_0 = sb >> db >> db >> db >> db >> sb

t_sb_1_db_3_sb_0 :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSUnit DummyAction)
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSUnit DummyAction)
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_1_db_3_sb_0 = sb >> sb >> db >> db >> db >> db >> sb

t_sb_2_db_3_sb_0 :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSUnit DummyAction)
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSUnit DummyAction)
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_2_db_3_sb_0 = sb >> sb >> sb >> db >> db >> db >> db >> sb

t_sb_3_db_3_sb_0 :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSUnit DummyAction)
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_0 = sb >> sb >> sb >> sb >> db >> db >> db >> db >> sb

t_sb_3_db_3_sb_1 :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSUnit DummyAction)
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_1 = sb >> sb >> sb >> sb >> db >> db >> db >> db >> sb >> sb

t_sb_3_db_3_sb_2 :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSSeq (BSUnit DummyAction)
                                                                                                   (BSUnit DummyAction)
                                                                                         )
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2 = sb >> sb >> sb >> sb >> db >> db >> db >> db >> sb >> sb >> sb

t_sb_3_db_3_sb_2' :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSSeq (BSUnit DummyAction)
                                                                                                   (BSUnit DummyAction)
                                                                                         )
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2' = sb >> sb >> sb >> sb >> db >> db >> db >> db >> t_sb_2'

t_sb_3_db_3_sb_2'' :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSSeq (BSUnit DummyAction)
                                                                                                   (BSUnit DummyAction)
                                                                                         )
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2'' = t_sb_2' >> sb >> db >> db >> db >> db >> t_sb_2'

t_sb_3_db_3_sb_2''' :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSSeq (BSUnit DummyAction)
                                                                                                   (BSUnit DummyAction)
                                                                                         )
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2''' = t_sb_3' >> db >> db >> db >> db >> t_sb_2'

t_sb_3_db_3_sb_2'''' :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSSeq (BSUnit DummyAction)
                                                                                                   (BSUnit DummyAction)
                                                                                         )
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2'''' = t_sb_3' >> t_db_3' >> t_sb_2'

t_sb_3_db_3_sb_2''''' :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (BSSeq (BSUnit DummyAction)
                                                                                         (BSSeq (BSUnit DummyAction)
                                                                                                   (BSUnit DummyAction)
                                                                                         )
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2''''' = do
    t_sb_3'
    t_db_3' 
    t_sb_2'

t_sb_3_db_3_sb_2_db_0 :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (DBAction (BSSeq (BSUnit DummyAction)
                                                                                                   (BSSeq (BSUnit DummyAction)
                                                                                                             (BSUnit DummyAction)
                                                                                                   )
                                                                                         )
                                                                                         (DBUnit DummyAction)
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2_db_0 = sb >> sb >> sb >> sb >> db >> db >> db >> db >> sb >> sb >> sb >> db

t_sb_3_db_3_sb_2_db_3 :: DMAction DMNil ()
                             (DBAction (BSSeq (BSUnit DummyAction) 
                                                 (BSSeq (BSUnit DummyAction)
                                                           (BSSeq (BSUnit DummyAction)
                                                                     (BSUnit DummyAction)
                                                           )
                                                 )
                                       )
                                       (DBAction (DBUnit DummyAction)
                                                 (DBAction (DBUnit DummyAction)
                                                           (DBAction (DBUnit DummyAction)
                                                                     (DBAction (DBUnit DummyAction)
                                                                               (DBAction (BSSeq (BSUnit DummyAction)
                                                                                                   (BSSeq (BSUnit DummyAction)
                                                                                                             (BSUnit DummyAction)
                                                                                                   )
                                                                                         )
                                                                                         (DBAction (DBUnit DummyAction)
                                                                                                   (DBAction (DBUnit DummyAction)
                                                                                                             (DBAction (DBUnit DummyAction)
                                                                                                                       (DBUnit DummyAction)
                                                                                                             )
                                                                                                    )
                                                                                         )
                                                                               )
                                                                     )
                                                           )
                                                 )
                                       )
                             ) ()
                             ()
t_sb_3_db_3_sb_2_db_3 = sb >> sb >> sb >> sb >> db >> db >> db >> db >> sb >> sb >> sb >> db >> db >> db >> db

t_crazy_0 = do
    sb
    sb
    db
    db
    db
    db
    sb
    db
    sb
    db
    sb
    db
    db
    sb
#endif
main = run_test $ do
    returnM () :: Test ()

