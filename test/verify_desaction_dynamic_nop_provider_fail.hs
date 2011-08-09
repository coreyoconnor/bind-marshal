-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

-- The easiest failure case to work with is requesting a non-zero buffer from the NopProvider.  this
-- should always fail.
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
import Bind.Marshal.Verify.Dynamic

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
    replicateM i $ dyn_action $ do
        x :: Word32 <- des
        static_return x

main = run_test $ do
    verify1 "t_1" $ liftIOResult $ do
        let des_buf_provider = NopDelegate
        assert_throws "NopProvider did not fail on > 0 sized request" $ do 
            vs <- des_from_buffer_delegate (dyn_action $! t_0 1024) des_buf_provider 
            fail "expected exception" :: IO PropertyResult
    returnM () :: Test ()

