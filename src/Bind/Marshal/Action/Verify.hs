-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.Action.Verify 
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base

import Verify

import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable

import System.IO

type instance BufferReq () = D0

assert_buffers_equal byte_size buffer_0 buffer_1 = do
    bytes_0 :: [Word8] <- peekArray byte_size buffer_0
    bytes_1 :: [Word8] <- peekArray byte_size buffer_1
    unless (bytes_0 == bytes_1) 
        $ fail $ show bytes_0 ++ " /= " ++ show bytes_1 :: IO ()

