{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Dynamic
import Bind.Marshal.SerAction.Static
import Bind.Marshal.SerAction.Verify
import Bind.Marshal.StdLib.Dynamic.FixedBuffer
import Bind.Marshal.StdLib.Ser

import "monads-tf" Control.Monad.Trans

import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import System.IO


t_1 = do
    forM_ [1 :: Int32 .. 10] $ \i -> dyn_action $ do
        ser i

main = run_test $ do
    storable_ptr <- liftIO $ mallocBytes (4 * 1024) :: Test ( Ptr Word8 )
    ser_ptr <- liftIO $ mallocBytes (4 * 1024) :: Test ( Ptr Word8 )
    
    verify1 "0 sized region fails" $ liftIOResult $ do
        ser_handler <- fixed_buffer $ BufferRegion ser_ptr 0
        assert_throws "buffer underrun" $ ser_to_buffer_delegate t_1 ser_handler

    verify1 "too small sized region fails" $ liftIOResult $ do
        ser_handler <- fixed_buffer $ BufferRegion ser_ptr 5
        assert_throws "buffer underrun" $ ser_to_buffer_delegate t_1 ser_handler

    liftIO $ free ser_ptr :: Test ()
    liftIO $ free storable_ptr :: Test ()
    returnM () :: Test ()

