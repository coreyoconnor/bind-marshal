-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.SerAction.Base where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base

import Control.DeepSeq

import System.IO

import GHC.Prim

type SerBuffer = BufferRegion

type SerializeAction t = t -> Addr# -> IO ()

class CanSerialize t where
    serialize :: SerializeAction t

