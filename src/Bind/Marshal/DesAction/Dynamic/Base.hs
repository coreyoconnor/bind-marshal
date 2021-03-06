{-# LANGUAGE RankNTypes #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.DesAction.Dynamic.Base where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.DesAction.Base

-- | A dynamic deserialization action consumes bytes from a buffer delegate
type DesAction a = forall bd . DynAction bd DesTag a 

type SealedDesAction bd a = DynAction_ Sealed Sealed Sealed bd DesTag a


