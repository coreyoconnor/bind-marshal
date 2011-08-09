-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.DesAction.Base where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base

import Control.DeepSeq

import GHC.Prim

import System.IO

data DesTag

type DesBuffer = BufferRegion DesTag

type DeserializeAction t = Addr# -> IO t

class CanDeserialize t where
    deserialize :: DeserializeAction t

