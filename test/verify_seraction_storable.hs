-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Storable

main = run_test $ do
    returnM () :: Test ()

