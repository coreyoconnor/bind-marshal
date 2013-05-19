-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.TypePrelude ( module Bind.Marshal.TypePrelude
                                )
where

type family Head (l :: [k]) :: k
type instance Head (h ': t) = h

type family Tail (l :: [k]) :: [k]
type instance Tail (h ': t) = t

type family Concat (l0 :: [k]) (l1 :: [k]) :: [k]
type instance Concat '[]  l1       = l1
type instance Concat (h0 ': t0) l1 = h0 ': (Concat t0 l1)

type family ReverseList (l :: [k]) :: [k]
type instance ReverseList '[]      = '[]
type instance ReverseList (h ': t) = Concat (ReverseList t) '[h]

