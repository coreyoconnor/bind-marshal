{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.SerAction.Static
import Bind.Marshal.SerAction.Verify
import Bind.Marshal.StdLib.Ser

import FLVHeader.Data
import FLVHeader.Ser

import Foreign.Marshal.Array
import Foreign.Marshal.Alloc
import Foreign.Storable

import System.IO

ser_flv_header_1k = exactly_mapM_ (undefined :: D1000) ser_flv_header

main = run_test $ do
    verify "1k FLVHeaders" $ ser_1k_and_compare $ \(hs :: [FLVHeader]) byte_size storable_buffer ser_buffer -> do
        let ser_buf = SerBuffer ( ser_buffer ) 
                                ( ser_buffer `plusPtr` byte_size )
        _ <- apply_ser_to_fixed_buffer ser_buf (ser_flv_header_1k hs)
        return succeeded
    returnM () :: Test ()

