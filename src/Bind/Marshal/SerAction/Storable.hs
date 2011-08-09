-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.SerAction.Storable where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.SerAction.Base

import Control.DeepSeq

import Foreign.Ptr
import Foreign.Storable

import GHC.Prim
import GHC.Exts

import System.IO

{-# INLINE serialize_storable #-}
serialize_storable :: Storable t => t -> Addr# -> IO ()
serialize_storable !v !addr = poke (Ptr addr) v

