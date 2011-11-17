-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.Prelude ( module Bind.Marshal.Prelude
                            , module Bind.Marshal.TypePrelude
                            , module Prelude
                            , module Bind.Marshal.Control.Monad.Parameterized
                            , module Data.Bool
                            , module Data.Char
                            , module Data.Eq
                            , module Data.Functor
                            , module Data.List
                            , module Data.Int
                            , module Data.String
                            , module Data.Word
                            , module NumericPrelude.Numeric
                            , module System.IO
                            )
    where

import Bind.Marshal.TypePrelude
import Bind.Marshal.Control.Monad.Parameterized

import Prelude ( ($)
               , ($!)
               , (.)
               , undefined
               , snd
               , id
               , const
               , toEnum
               , fromEnum
               , Enum(..)
               , Show(..)
               , Ord(..)
               )

import Data.Bool
import Data.Char
import Data.Eq
import Data.Functor
import Data.List hiding ( product, sum )
import Data.Int 
import Data.String
import Data.Word

import NumericPrelude.Numeric

import Foreign.C.Types ( CSize(..) )
import Foreign.Ptr

import System.IO

ifThenElse True   e1 _e2 = e1
ifThenElse False _e1  e2 = e2

-- type Size = CSize
-- XXXX
-- type Size = Word64
type Size = Int

data Length = Length 
    { unLength :: Size
    }
    deriving ( Show, Eq, Ord )

instance ReifiesTo Nil Length where
    reify _ = Length 0

instance ReifiesTo tSeq Length => ReifiesTo (Cons t tSeq) Length where
    reify _ = let reify_ :: tSeq -> Length = reify
              in Length $! 1 + (unLength $! reify_ undefined)

type BytePtr = Ptr Word8

