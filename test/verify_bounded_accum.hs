{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.DesAction.Static
import Bind.Marshal.SerAction.Static

import Bind.Marshal.StdLib.Des 
import Bind.Marshal.StdLib.Ser 

import "monads-tf" Control.Monad.Trans

import Foreign.Ptr
import Foreign.Marshal.Alloc

des_byte_w32_accum :: Word32 -> StaticDesAction D1 Word32
des_byte_w32_accum a = do
    b <- des_byte
    static_return $! (a `shiftL` 8) .|. fromIntegral b

{-# NOINLINE t_0 #-}
t_0 :: StaticDesAction D4 Word32
t_0 = bounded_accum ( undefined :: D4 ) 4 des_byte_w32_accum 0

main = run_test $ do
    scratch_buffer <- liftIO $ mallocBytes 8 :: Test ( Ptr Word8 )
    verify "bounded_accum 4 (des_byte) == des_word32_be" $ \ ( w :: Word32 ) -> liftIOResult $ do
        let ser_buffer = BufferRegion scratch_buffer 4
        _ <- apply_ser_to_fixed_buffer ( ser_word32_be w ) ser_buffer
        let des_buffer = BufferRegion scratch_buffer 4
        ( maybe_w, _ ) <- apply_des_to_fixed_buffer t_0 des_buffer
        unless ( w == maybe_w ) 
            $ fail $ "serialized " ++ show w ++ " deserialized " ++ show maybe_w
                :: IO ()
        returnM succeeded :: IO PropertyResult
    liftIO $ free scratch_buffer :: Test ()
    returnM () :: Test ()

