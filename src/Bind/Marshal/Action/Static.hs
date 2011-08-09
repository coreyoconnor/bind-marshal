-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE MagicHash #-}
{- | A memory action that operates on a statically sized buffer.
 -
 -}
module Bind.Marshal.Action.Static
    where

import Bind.Marshal.Prelude

import qualified Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.DataModel

import Data.Strict.Either
import Data.Strict.Tuple

import GHC.Prim
import GHC.Ptr

import System.IO

type StaticIter r = Addr# -> IO r

-- | A buffer static memory action. When executed:
newtype StaticMemAction buffer_iter_tag size a = StaticMemAction
    { static_eval :: forall c
        .  ( a      -> StaticIter c ) -- normal path
        -> ( String -> IO c )         -- failure path
        -> StaticIter c               -- cont
    }

{-# INLINE io_eval_static #-}
io_eval_static :: StaticMemAction tag size a -> Iter -> IO ( a, Iter )
io_eval_static (StaticMemAction ma) (Ptr !p) 
    = ma (\ !v !p' -> returnM (v, Ptr p')) fail p

instance Functor ( StaticMemAction buffer_iter_tag size ) where
    fmap f (StaticMemAction ma) = StaticMemAction (\ eval_cont -> ma (eval_cont . f) )

{- I would like to express a memory action monad using a single generic parameter. Then only
 - reference the particular type parameter holes via type equations.
 - I think this would enable using type variables more like structures.
 -
 - However, I was unable to do this because the type equation I found I needed:
 - type family ApplyReps def rep rep'
 - required def to be of arbitrary kind. Which I was unable to find a way to express.
 -
 - I believe this would be possible with kind polymorphism.
 -
 - I am, of course, perhaps missing some other way to correctly represent the same concept. :-)
 -}

{- The middle parameter is left abstract in order for bind expressions to be correctly derivable.
 - I am not sure why. I suspect the reason might be due to some ordering impossed on type deriving?
 - a_0 >>= fa_1 :: () -> t
 -  => third param to bind has a declared type constraint.
 -  H_typing_order: The constraints of the expression must satisfy the declared constraint before a parent
 -  expression can be typed.
 -  => expression a_0 >>= fa_1, in the type environment at that point has the type forall a. a
 -}

static_replicateM :: ( Pos n 
                     , size_2 ~ Add size_0 (Mul n size_1)
                     , Bind (StaticMemAction tag size_0)
                            (StaticMemAction tag size_1)
                            (StaticMemAction tag size_2)
                     ) => n 
                       -> StaticMemAction tag size_1  a
                       -> StaticMemAction tag size_2 [a]
static_replicateM _count f = undefined

