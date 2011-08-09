-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.StdLib.Dynamic.FixedBuffer where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.Action.Static
import Bind.Marshal.Action.Monad
import Bind.Marshal.DataModel
import Bind.Marshal.StaticProperties

import Control.Applicative

import Data.IORef

import Data.Strict.Either
import Data.Strict.Tuple

import Foreign.Ptr

import GHC.Exts
import GHC.Prim

import System.IO

fixed_buffer :: BufferRegion tag -> IO (FixedBufferDelegate tag)
fixed_buffer source_buffer@(BufferRegion ptr size) 
    | ptr == nullPtr = fail "Cannot construct a fixed buffer delegate from a nullPtr"
    | otherwise      = returnM $ FixedBufferDelegate source_buffer

data FixedBufferDelegate tag = FixedBufferDelegate {-# UNPACK #-} !(BufferRegion tag)

instance BufferDelegate (FixedBufferDelegate tag) where
    {-# INLINE gen_region #-}
    gen_region !max_required_size bd@(FixedBufferDelegate buf)
        = let !max_bytes_avail = buffer_region_size buf
              !(Ptr start_addr) = buffer_region_start buf
              !(Ptr end_addr) = buffer_region_end buf
          in case max_required_size > max_bytes_avail of
            True  -> fail $ "buffer cannot satisfy requirement for " 
                            ++ show max_required_size ++ " bytes."
            False -> returnM $! BDIter max_bytes_avail
                                       0
                                       bd
                                       start_addr 
                                       start_addr
    {-# INLINE finalize_region #-}
    finalize_region (BDIter _ _ (FixedBufferDelegate buf) start_addr curr_addr) 
        = returnM $! FixedBufferDelegate $! pop_bytes buf (I# (minusAddr# curr_addr start_addr))

