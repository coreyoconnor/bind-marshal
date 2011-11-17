-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.DesAction.Static
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StdLib.Packed

import "monads-tf" Control.Monad.Trans

import Foreign.Marshal.Alloc
import Foreign.Ptr

main = run_test $ do
    scratch_mem <- liftIO $ mallocBytes 16 :: Test ( Ptr Word8 )
    let dest_ptr = scratch_mem `plusPtr` 4
    verify "ser der isomorphism" $ \ ( v :: Word64 ) -> liftIOResult $ do
        let ser_buffer :: SerBuffer = BufferRegion dest_ptr 8
        _ <- apply_ser_to_fixed_buffer ( ser_packed_w64 v ) ser_buffer
        let des_buffer :: DesBuffer = BufferRegion dest_ptr 8
        ( u, _ ) <- apply_des_to_fixed_buffer ( des_packed_w64 ) des_buffer
        if v == u
            then return succeeded 
            else return $ failed { reason = "deserialized " ++ show u 
                                            ++ " when  " ++ show v
                                            ++ " was expected"
                                 }
    return ()

