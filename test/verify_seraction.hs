{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.SerAction

import Foreign.Storable
import Foreign.Marshal.Alloc

import System.IO

main = run_test $ do
    returnM () :: Test ()

