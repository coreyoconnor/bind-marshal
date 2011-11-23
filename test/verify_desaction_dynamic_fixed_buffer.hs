{-# LANGUAGE RebindableSyntax #-}
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
import Bind.Marshal.StdLib.Dynamic.FixedBuffer
import Bind.Marshal.Verify.Dynamic

import Control.DeepSeq
import "monads-tf" Control.Monad.Trans

import Data.IORef

import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Ptr

import System.IO

t_static = do
    _ :: Word32 <- des
    return ()

t_0 i = do 
    replicateM i $ dyn_action $ do
        _ :: Word32 <- des
        return ()

validate_t_0 :: BytePtr -> Test TestResult
validate_t_0 buffer_0 = 
    verify "deserializes an arbitrary number of units" $ \ (Max1KBInt i) -> liftIOResult $ do
        validate_t_0_inner buffer_0 i

{-# NOINLINE validate_t_0_inner #-}
validate_t_0_inner :: BytePtr -> Int -> IO PropertyResult
validate_t_0_inner buffer_0 i =  do
    let b = castPtr buffer_0
        des_buf = BufferRegion b (i * 4)
    des_buf_provider <- fixed_buffer des_buf
    vs <- des_from_buffer_delegate_ (dyn_action $! t_0 i) des_buf_provider
    deepseq vs $! returnM succeeded  :: IO PropertyResult

t_1 = do
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        _ :: Word32 <- des
        return ()
    return ()

t_2 = do
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        _ :: Word32 <- des
        _ :: Word32 <- des
        return ()
    return ()

t_3 = do
    _ :: Word32 <- des
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        _ :: Word32 <- des
        return ()
    return ()

t_4 = do
    forM_ [0..4] $ \(i :: Int) -> dyn_action $ do
        _ :: Word32 <- des
        return ()
    _ :: Word32 <- des
    return ()

t_5 = do
    dyn_action $ do
        _ :: Word32 <- des
        return ()
    _ :: Word32 <- des
    return ()

{-# NOINLINE replicate_print #-}
replicate_print i = do
    replicateM i $ do
        putStr "."
    returnM () :: IO ()

main = run_test $ do
    buffer_0 <- liftIO $ mallocBytes (4 * 1024 * 1024) :: Test ( Ptr Word8 )

    verify1 "-" $ \ (Max1KBInt i) -> liftIOResult $ do
        replicate_print i 
        returnM succeeded :: IO PropertyResult

    -- the first two tests assure the parameterized monad Bind typeing is correct.
    verify1 "t_static can deserialize from a memory block of 4 bytes" $ marshalled_byte_count t_static == 4
    verify1 "Deserializes t_static" $ liftIOResult $ do
        let b = castPtr buffer_0
        let des_buf = BufferRegion b 4
        ((), b_end') <- apply_des_to_fixed_buffer t_static des_buf
        returnM succeeded :: IO PropertyResult

    -- Now try some dynamic deserializations
    log_out "validated there are 5 bufferings of size 4" :: Test ()
    verify1 "t_1" $ liftIOResult $ do
        let b = castPtr buffer_0
            des_buf = BufferRegion b 20
        des_buf_provider <- logging_buffer_delegate =<< fixed_buffer des_buf
        () <- des_from_buffer_delegate_ (dyn_action $! t_1) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate 5 4
        returnM succeeded :: IO PropertyResult

    log_out "validated there are 5 bufferings of size 8" :: Test ()
    verify1 "t_2" $ liftIOResult $ do
        let b = castPtr buffer_0
            des_buf = BufferRegion b 40
        des_buf_provider <- logging_buffer_delegate =<< fixed_buffer des_buf
        () <- des_from_buffer_delegate_ (dyn_action $! t_2) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate 5 8
        returnM succeeded :: IO PropertyResult

    log_out "validated there is 1 buffering of size 4 followed by 5 of size 4" :: Test ()
    verify1 "t_3" $ liftIOResult $ do
        let b = castPtr buffer_0
            des_buf = BufferRegion b 24
        des_buf_provider <- logging_buffer_delegate =<< fixed_buffer des_buf
        () <- des_from_buffer_delegate_ (dyn_action $! t_3) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate (1 + 5) 4
        returnM succeeded :: IO PropertyResult

    log_out "validated there is 5 bufferings of size 4 followed by 1 of size 4" :: Test ()
    verify1 "t_4" $ liftIOResult $ do
        let b = castPtr buffer_0
            des_buf = BufferRegion b 24
        des_buf_provider <- logging_buffer_delegate =<< fixed_buffer des_buf
        () <- des_from_buffer_delegate_ (dyn_action $! t_4) des_buf_provider 
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate (5 + 1) 4
        returnM succeeded :: IO PropertyResult

    log_out "validated there is 2 bufferings of size 4" :: Test ()
    verify1 "t_5" $ liftIOResult $ do
        let b = castPtr buffer_0
            des_buf = BufferRegion b 8
        des_buf_provider <- logging_buffer_delegate =<< fixed_buffer des_buf
        () <- des_from_buffer_delegate_ (dyn_action $! t_5) des_buf_provider
        dump_request_log des_buf_provider
        -- verify_logged_requests des_buf_provider $ replicate 2 4
        returnM succeeded :: IO PropertyResult

    validate_t_0 buffer_0

    liftIO $ free buffer_0 :: Test()
    returnM () :: Test ()

