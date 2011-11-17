{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.DesAction.Verify
import Bind.Marshal.StdLib.Des

import FLVHeader.Data
import FLVHeader.Des

import Foreign.Marshal.Array
import Foreign.Marshal.Alloc
import Foreign.Storable

import System.IO

des_word32_1k = static_replicateM (undefined :: D1000) $ do
    v :: Word32 <- des
    static_return v

des_flv_header_1k = static_replicateM (undefined :: D1000) des_flv_header

main = run_test $ do
    verify "1k Word32" $ des_1k_and_compare $ \byte_size des_buffer -> do
        (r, _) <- apply_des_to_fixed_buffer des_buffer des_word32_1k
        return (r :: [Word32])
    verify "1k FLVHeaders" $ des_1k_and_compare $ \byte_size des_buffer -> do
        (r, _) <- apply_des_to_fixed_buffer des_buffer des_flv_header_1k
        return (r :: [FLVHeader])
    returnM () :: Test ()

