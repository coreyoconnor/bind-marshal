-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.Prelude ( module Bind.Marshal.Prelude
                            , module Bind.Marshal.TypePrelude
                            , module Prelude
                            , module Bind.Marshal.Control.Monad.Parameterized
                            , module Data.Bool
                            , module Data.Bits
                            , module Data.Char
                            , module Data.Eq
                            , module Data.Functor
                            , module Data.Int
                            , module Data.List
                            , module Data.Monoid
                            , module Data.String
                            , module Data.Word
                            , module GHC.TypeLits
                            , module System.IO
                            )
    where

import Bind.Marshal.TypePrelude
import Bind.Marshal.Control.Monad.Parameterized

import Prelude hiding ( Monad(..)
                      , (=<<)
                      )

import Data.Bits
import Data.Bool
import Data.Char
import Data.Eq
import Data.Functor
import Data.Int 
import Data.List hiding ( product, sum )
import Data.Monoid
import Data.String
import Data.Word

import Foreign.C.Types ( CSize(..) )
import Foreign.Ptr

import GHC.TypeLits hiding ( isZero )

import System.IO

-- use the standard ifThenElse for now. 
-- TODO: Add a version that handles static actions more optimaly.
ifThenElse True   e1 _e2 = e1
ifThenElse False _e1  e2 = e2

-- | Type for size in bytes.
--
-- Just an alias of Int. Which does limit the size below the actual max size that a system could
-- represent. Not enough of a limitation to care right now.
type Size = Int

-- | Buffer regions use a BytePtr to represent the start of the region.
type BytePtr = Ptr Word8

