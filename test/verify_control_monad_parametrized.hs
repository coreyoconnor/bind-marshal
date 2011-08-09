-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Control.Monad.Parameterized
import Bind.Marshal.Verify

import Prelude ( ($) )

main = run_test $ do
    returnM () :: Test ()

