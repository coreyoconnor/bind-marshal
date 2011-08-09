-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.StdLib.Types where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base

import Data.Int

type instance BufferReq Word8 = D1
type instance BufferReq Word16 = D2
type instance BufferReq Word32 = D4

type instance BufferReq Int8 = D1
type instance BufferReq Int16 = D2
type instance BufferReq Int32 = D4

