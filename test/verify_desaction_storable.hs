-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Storable

main = run_test $ do
    returnM () :: Test ()

