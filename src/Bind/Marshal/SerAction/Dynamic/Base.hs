-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.SerAction.Dynamic.Base where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.SerAction.Base

-- | A dynamic serialization action produces bytes from a buffer delegate
type DynamicSerAction bd a = DynAction bd SerTag a 

type SealedDynamicSerAction bd a = DynAction_ Sealed Sealed Sealed bd SerTag a

