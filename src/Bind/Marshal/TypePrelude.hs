{-# LANGUAGE FunctionalDependencies #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.TypePrelude ( module Bind.Marshal.TypePrelude
                                , module Data.TypeLevel.Bool
                                )
where

import Data.TypeLevel.Bool

-- Basic type level lists.
data Nil
data Cons t ts

type family Concat s0 s1 
type instance Concat Nil s1 = s1
type instance Concat ( Cons t s0 )  s1 = Cons t ( Concat s0 s1 )

type family Head s
type instance Head ( Cons t s ) = t

type family Tail s
type instance Tail ( Cons t s ) = s

type family ReverseList i
type instance ReverseList Nil           = Nil
type instance ReverseList (Cons t tSeq) = Concat (ReverseList tSeq) (Cons t Nil)

-- Useful in reifying a type-level structure to a data value
class ReifiesTo t r where
    reify :: t -> r

-- Add the identity function to ReifiesTo
instance ReifiesTo t t where
    reify v = v

class IsBool b
instance IsBool True
instance IsBool False

class IsBool b => TypeEq x y b | x y -> b
instance TypeEq x x True
instance ( IsBool b, False ~ b ) => TypeEq x y b

