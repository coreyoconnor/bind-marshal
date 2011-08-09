-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.SerAction.Dynamic.Base where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.SerAction.Base

-- A dynamic deserialization action...
type DynamicSerAction pre_s post_sa post_s bd a = DynAction pre_s post_sa post_s bd SerTag a 

-- ...produces bytes from a buffer delegate

