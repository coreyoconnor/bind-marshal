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
import Bind.Marshal.Verify

import "monads-tf" Control.Monad.Trans

import Foreign.Ptr
import Foreign.Marshal.Alloc

import System.IO

t_0 = do
    static_return ()

t_1 = do
    forM_ [ 0 :: Int32 .. 10 ] $ \i -> dyn_action $ do
        ser i

main = run_test $ do
    ser_ptr <- liftIO $ mallocBytes (1024 * 4) :: Test ( Ptr Word8 )
    
    verify1 "empty static" $ liftIOResult $ do
        let ser_buffer = BufferRegion nullPtr 0
        ((), !ser_buffer') <- apply_ser_to_fixed_buffer t_0 ser_buffer
        returnM succeeded :: IO PropertyResult

    verify1 "any sized buffer request fails" $ liftIOResult $ do
        buffer_handler <- fixed_buffer (BufferRegion ser_ptr 0)
        assert_throws "buffer overflow" $ ser_to_buffer_delegate t_1 buffer_handler
        returnM succeeded :: IO PropertyResult

    liftIO $ free ser_ptr :: Test ()

    returnM () :: Test ()

