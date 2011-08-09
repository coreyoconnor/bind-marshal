-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.SerAction.Verify.Static where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.Action.Verify
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Static

instance CanSerialize () where
    serialize () !p = returnM ()

