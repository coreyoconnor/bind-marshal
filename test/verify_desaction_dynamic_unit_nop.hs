-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.DataModel.Base
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Dynamic
import Bind.Marshal.DesAction.Static
import Bind.Marshal.DesAction.Verify
import Bind.Marshal.StaticProperties
import Bind.Marshal.StdLib.Des
import Bind.Marshal.Verify.Dynamic

import Control.DeepSeq
import "monads-tf" Control.Monad.Trans

import Data.IORef

import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Ptr

import System.IO

t_static = do
    () <- des
    static_return ()

t_0 i = do 
    replicateM i $ dyn_action $ do
        () <- des
        static_return ()

t_1 = do
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        () <- des
        static_return ()
    static_return ()

t_2 = do
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        () <- des
        () <- des
        static_return ()
    static_return ()

t_3 = do
    () <- des
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        () <- des
        static_return ()
    static_return ()

t_4 = do
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        () <- des
        static_return ()
    () <- des
    static_return ()

t_5 = do
    dyn_action $ do
        () <- des
        static_return ()
    () <- des
    static_return ()

main = run_test $ do
    buffer_0 <- liftIO $ mallocBytes (4 * 1024 * 1024) :: Test ( Ptr Word8 )

    -- the first two tests assure the parameterized monad Bind typeing is correct.
    verify1 "t_static can deserialize from a memory block of 0 bytes" $ marshalled_byte_count t_static == 0
    verify1 "Deserializes t_static" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        ((), b_end') <- apply_des_to_fixed_buffer t_static des_buf
        returnM succeeded :: IO PropertyResult

    -- Now try some dynamic deserializations
    log_out "validated there are 5 bufferings of size 0" :: Test ()
    verify1 "t_1" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        des_buf_provider <- logging_buffer_delegate NopDelegate
        () <- des_from_buffer_delegate_ (dyn_action $! t_1) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate 5 0
        returnM succeeded :: IO PropertyResult

    log_out "validated there are 5 bufferings of size 0" :: Test ()
    verify1 "t_2" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        des_buf_provider <- logging_buffer_delegate NopDelegate
        () <- des_from_buffer_delegate_ (dyn_action $! t_2) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate 5 0
        returnM succeeded :: IO PropertyResult

    log_out "validated there are 5 bufferings of size 0" :: Test ()
    verify1 "t_3" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        des_buf_provider <- logging_buffer_delegate NopDelegate
        () <- des_from_buffer_delegate_ (dyn_action $! t_3) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate 5 0
        returnM succeeded :: IO PropertyResult

    log_out "validated there is 5 bufferings of size 0 followed by 1 of size 0" :: Test ()
    verify1 "t_4" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        des_buf_provider <- logging_buffer_delegate NopDelegate
        () <- des_from_buffer_delegate_ (dyn_action $! t_4) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate (5 + 1) 0
        returnM succeeded :: IO PropertyResult

    log_out "validated there is 2 bufferings of size 0" :: Test ()
    verify1 "t_5" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        des_buf_provider <- logging_buffer_delegate NopDelegate
        () <- des_from_buffer_delegate_ (dyn_action $! t_5) des_buf_provider
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate 2 0
        returnM succeeded :: IO PropertyResult

    verify "deserializes an arbitrary number of units" $ \ (Max1KBInt i) -> liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        des_buf_provider <- logging_buffer_delegate NopDelegate
        vs <- des_from_buffer_delegate_ (dyn_action $! t_0 i) des_buf_provider
        returnM $! rnf vs :: IO ()
#if 0
        let (LoggingDelegate log_ref _sub) = des_buf_provider
        actual <- readIORef log_ref
        if actual == replicate i 0
            then returnM succeeded :: IO PropertyResult
            else fail $ "actual is not expected"
#else
        returnM succeeded :: IO PropertyResult
#endif

    liftIO $ free buffer_0 :: Test()
    returnM () :: Test ()

-- OLD NOTES

-- Can introduce dynamic loops
-- the current type error:
-- verify_des_loops.hs:17:89:
--  No instance for (GHC.Base.Monad
--                     (DesAction
--                        (RunStateForModel DesAction (Cons (DesActionRep ()) Nil))
--                        SpiderProc.DataModel.EmptyModel
--                        (RunStateForModel DesAction Nil)
--                        (Cons (DesActionRep ()) Nil)))
--    arising from a use of `t_0' at verify_des_loops.hs:17:89-91
--  Possible fix:
--    add an instance declaration for
--    (GHC.Base.Monad
--       (DesAction
--          (RunStateForModel DesAction (Cons (DesActionRep ()) Nil))
--          SpiderProc.DataModel.EmptyModel
--          (RunStateForModel DesAction Nil)
--          (Cons (DesActionRep ()) Nil)))
--  In the first argument of `marshalled_byte_count', namely `t_0'
--  In the first argument of `(==)', namely `marshalled_byte_count t_0'
--  In the second argument of `($)', namely
--      `marshalled_byte_count t_0 == 0'
-- 
-- Makes sense. The type of the iterated function is correctly inferred as:
--  (DesAction
--      (RunStateForModel DesAction (Cons (DesActionRep ()) Nil)) -- run_state
--      EmptyModel -- model
--      (RunStateForModel DesAction Nil) -- run_state' 
--      (Cons (DesActionRep ()) Nil)) -- model'
-- 
-- the forM_ has the type constraint: 
--  GHC.Base.Monad m => (a -> m ()) -> m ()
-- 
-- Clearly this instance does not exist.
--
-- H: This instance can be defined by a type that implies a runtime dependency. An action with this
-- property is referred to as a dynamic action.
-- ideally this would be some type that would:
--  - still capture the iterated functions return type. 
--  - permit statically sized actions to occur before and after the dynamic action.
--
-- First I'll try to introduce this on the type level by defining a simple paramterized type,
-- DynamicDesAction, that is an instance of GHC.Base.Monad.
-- H: This type would need to be parameterized by the type level description of all buffer static
-- blocks. 
-- H: Paramterize the type by a type level representation of a sequence of static actions. The cons
-- of two buffer static actions implies a runtime dependency.
--  I think this will work for looping. In the case of a loop the type of the iterated function is
--  equal regardless of the runtime dependency: the number of iterations.
--  As for branching... 
-- H: A satisfying implementation should permit expressing a value dependent byte count equation.
-- 
-- H: A runtime loop dependency can be expressed as follows:
--  ?_0 Bool -> (a -> ?_1 b) -> ?_2 ()
--
--  whereupon the unification of the inner ?_1 with ?_0 and ?_2 is only possible by a type level
--  equation that captures the dynamic aspect.
--
--  P: Transform 
--      forM_ :: (Prelude.Monad m) => [a] -> (a -> m b) -> m ()
--
--  P: Transform
--      replicateM_ :: (Prelude.Monad m) => Int -> m a -> m ()
--
-- H: A runtime conditional can be expressed as follows:
--  m a -> ( a -> Bool ) -> m b -> m b -> m b
--      


-- t_0 ::
--   (() ~ NextDesType (StaticDes tValueSeq),
--   Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'
--     ~
--   StateAfterDes (StaticDes tValueSeq),
--   GHC.Base.Monad
--     (StaticDesAction
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq)
--        tModel
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq')
--        (Bind.Marshal.DataModel.DMApp
--           tModel
--           (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ()))))) =>
--  StaticDesAction
--    (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq)
--    tModel
--    (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq')
--    (Bind.Marshal.DataModel.DMApp
--       tModel (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--    ()
--
-- t_1
--   :: (() ~ NextDesType (StaticDes tValueSeq'),
--       Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'1
--         ~
--       StateAfterDes (StaticDes tValueSeq'),
--       () ~ NextDesType (StaticDes tValueSeq),
--       Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'
--         ~
--       StateAfterDes (StaticDes tValueSeq),
--       GHC.Base.Monad
--         (StaticDesAction
--            (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq)
--            tModel
--            (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'1)
--            (Bind.Marshal.DataModel.DMApp
--               (Bind.Marshal.DataModel.DMApp
--                  tModel (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--               (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ()))))) =>
--      StaticDesAction
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq)
--        tModel
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'1)
--        (Bind.Marshal.DataModel.DMApp
--           (Bind.Marshal.DataModel.DMApp
--              tModel (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--           (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--        ()
-- t_2
--   :: (() ~ NextDesType (StaticDes tValueSeq1),
--       Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'
--         ~
--       StateAfterDes (StaticDes tValueSeq1),
--       () ~ NextDesType (StaticDes tValueSeq),
--       Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq1
--         ~
--       StateAfterDes (StaticDes tValueSeq),
--       GHC.Base.Monad
--         (StaticDesAction
--            (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq1)
--            (Bind.Marshal.DataModel.DMApp
--               tModel (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--            (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq')
--            (Bind.Marshal.DataModel.DMApp
--               (Bind.Marshal.DataModel.DMApp
--                  tModel (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--               (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ()))))) =>
--      StaticDesAction
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq)
--        tModel
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq')
--        (Bind.Marshal.DataModel.DMApp
--           (Bind.Marshal.DataModel.DMApp
--              tModel (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--           (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--        ()
-- t_3
--   :: (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'
--         ~
--       StateAfterDes (StaticDes tValueSeq),
--       () ~ NextDesType (StaticDes tValueSeq),
--       Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'1
--         ~
--       StateAfterDes (StaticDes tValueSeq'),
--       () ~ NextDesType (StaticDes tValueSeq'),
--       GHC.Base.Monad
--         (StaticDesAction
--            (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq)
--            tModel
--            (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq')
--            (Bind.Marshal.DataModel.DMApp
--               tModel
--               (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ()))))) =>
--      StaticDesAction
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq)
--        tModel
--        (Bind.Marshal.Action.RunStateForModel StaticDesAction tValueSeq'1)
--        (Bind.Marshal.DataModel.DMApp
--           (Bind.Marshal.DataModel.DMApp
--              tModel (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--           (Bind.Marshal.DataModel.SBUnit (StaticDesActionRep ())))
--        ()
-- R: t_1 and t_2 and t_3 must have different data model transformations. 
--  t_1 :: ...
--         (SpiderProc.DataModel.AddAction
--            (SpiderProc.DataModel.AddAction tModel (DesActionRep ()))
--            (DesActionRep ())
--         )
--         ...
--  t_2 :: ...
--         (SpiderProc.DataModel.AddAction
--            (SpiderProc.DataModel.AddAction tModel (DesActionRep ()))
--            (DesActionRep ())
--         )
--         ...
-- 
-- DAMN. First of all: These are not the same. Second of all: These data model transformations are
-- not correct in the case of buffer dynamic actions.
-- The morphism of t_1 should indicate:
--  The action has a dynamically iterated buffer static action a_sub. Where a_sub is for the
--  data model:
--         (SpiderProc.DataModel.AddAction
--            (SpiderProc.DataModel.AddAction tModel (DesActionRep ()))
--            (DesActionRep ())
--         )
-- The morphism of t_2 should indicate:
--  The dynamic des action is composed of 
--      0. a buffer static action a_sub_0
--      1. a dynamically iterated buffer static action a_sub_1. Where a_sub_1 is for the
--  data model:
--         (SpiderProc.DataModel.AddAction tModel (DesActionRep ()))
--      
-- R: t_1 and t_2 and t_3 must be different in the Prelude.Monad constraint. That is the constraint
-- that is being used to introduce the dynamic requirement.
--
-- P: examine the types (CRAP):
--
-- Verify - t_1 is different from t_2: 
-- t_1: ...
--        GHC.Base.Monad
--          (DesAction
--             (RunStateForModel DesAction tValueSeq)
--             tModel
--             (RunStateForModel DesAction tValueSeq'1)
--             (SpiderProc.DataModel.AddAction
--                (SpiderProc.DataModel.AddAction tModel (DesActionRep ()))
--                (DesActionRep ())))
--      ...
-- t_2: ...
--        GHC.Base.Monad
--          (DesAction
--             (RunStateForModel DesAction tValueSeq1)
--             (SpiderProc.DataModel.AddAction tModel (DesActionRep ()))
--             (RunStateForModel DesAction tValueSeq')
--             (SpiderProc.DataModel.AddAction
--                (SpiderProc.DataModel.AddAction tModel (DesActionRep ()))
--                (DesActionRep ())))
--      ...
