{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.Action.Verify
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Dynamic
import Bind.Marshal.SerAction.Static
import Bind.Marshal.SerAction.Verify
import Bind.Marshal.StdLib.Ser

import "monads-tf" Control.Monad.Trans

import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import System.IO

static_ser = do 
    ser (0 :: Int32)
    static_return ()

main = run_test $ do
    storable_buffer <- liftIO $ mallocBytes (4 * 1024) :: Test ( Ptr Word8 )
    ser_buffer <- liftIO $ mallocBytes (4 * 1024) :: Test ( Ptr Word8 )

    -- Replicate a single static test to just make sure the static serialization layer is OK.
    let compare_buffer_bytes byte_size = do
            assert_buffers_equal byte_size storable_buffer ser_buffer :: IO ()
            returnM succeeded :: IO PropertyResult

    verify "serialization of 1 Int32" $ liftIOResult $ do
        let storable_ptr = castPtr storable_buffer
        poke storable_ptr (0 :: Int32)
        let ser_buf = BufferRegion (ser_buffer) 4
        _ <- apply_ser_to_fixed_buffer static_ser ser_buf
        compare_buffer_bytes 4 :: IO PropertyResult

    -- Now perform some dynamic serializations.

    liftIO $ free ser_buffer :: Test()
    liftIO $ free storable_buffer :: Test()
    returnM () :: Test ()

