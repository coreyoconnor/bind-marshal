{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Dynamic
import Bind.Marshal.SerAction.Static
import Bind.Marshal.SerAction.Verify
import Bind.Marshal.StdLib.Ser

main = run_test $ do
    returnM () :: Test ()

