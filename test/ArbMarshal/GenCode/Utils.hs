-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE PackageImports #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module ArbMarshal.GenCode.Utils where

import "monads-tf" Control.Monad.State as State hiding (fail, (>>=))

