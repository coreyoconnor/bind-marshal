{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

-- A fixed deserialization buffer provider can only provided a fixed number of bytes to a
-- deserialization action. Requesting more bytes than in the buffer should fail.
-- 
-- This might actually work as a test of laziness as well: The laziness is such that the
-- deserialization monad is not executed until the vs value is demanded?
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

import Control.DeepSeq
import Control.Exception
import "monads-tf" Control.Monad.Trans

import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Ptr

import System.IO

t_static = do
    () <- des
    static_return ()

t_0 i = do 
    rs <- replicateM i $ dyn_action $ do
        x :: Word32 <- des
        static_return x
    rs `deepseq` static_return ()

main = run_test $ do
    -- allocate enough space for the action, even though the buffer region specified will be
    -- significantly less. This way if the deserialization fails to fail it doesn't run off into a
    -- page the program doesn't have mapped. 
    buffer_0 <- liftIO $ mallocBytes (1024 * 4) :: Test ( Ptr Word8 )
    verify1 "0 sized buffer" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 0
        des_buf_provider <- fixed_buffer des_buf
        assert_throws "des from 0 sized buffer fails" $ do
            des_from_buffer_delegate (dyn_action $! t_0 1024) des_buf_provider 
    verify1 "too small buffer" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 (4 * 100)
        des_buf_provider <- fixed_buffer des_buf
        assert_throws "des from too small sized buffer fails" $ do
            des_from_buffer_delegate (dyn_action $! t_0 1024) des_buf_provider 
    returnM () :: Test ()

