-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.DesAction.Storable where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.DesAction.Base

import Control.DeepSeq

import Foreign.Ptr
import Foreign.Storable

import GHC.Prim
import GHC.Exts

import System.IO

deserialize_storable :: forall t . ( NFData t, Storable t ) => Addr# -> IO t
deserialize_storable !addr = do
    !v <- peek (Ptr addr)
    returnM $! deepseq v v :: IO t

