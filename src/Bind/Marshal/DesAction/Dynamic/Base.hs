-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.DesAction.Dynamic.Base where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.DesAction.Base

-- A dynamic deserialization action...
type DynamicDesAction pre_s post_sa post_s bd a = DynAction pre_s post_sa post_s bd DesTag a 

-- ...consumes bytes from a buffer delegate

