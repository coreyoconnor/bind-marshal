-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.DesAction.Verify.Static where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.Action.Verify
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static

instance CanDeserialize () where
    deserialize !p = returnM ()

