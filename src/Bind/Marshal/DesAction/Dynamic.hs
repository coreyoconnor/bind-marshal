{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
{-  In the deserialization case the memory buffer producer is copied from some byte source.
 -
 -  The byte source is either an iteratee or a sync read source.
 -      In the iteratee case:
 -          0. Enough bytes are copied from the iteratee buffer any pending static buffer actions
 -          have a complete input buffer.
 -          1. The buffer provided by the iteratee is consumed until there is not enough bytes for
 -          the next static buffer action.
 -          2. The memory buffer producer provides a buffer large enough for the next static buffer
 -          action.
 -          3. The iteratee bytes are copied into the buffer and the next static buffer action is
 -          now pending.
 -      In the case of a sync read source:
 -          0. The memory buffer producer provides a buffer large enough for the next static buffer
 -          action.
 -          1. The buffer is filled.
 -          2. The next static buffer action is executed.
 -          3. move onto evaluating the next static buffer action.
 -
 -  Sync read source implemented using the iteratee method.
 -}
module Bind.Marshal.DesAction.Dynamic ( module Bind.Marshal.DesAction.Dynamic
                                      , module Bind.Marshal.DesAction.Dynamic.Base
                                      )
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.Action.Static
import Bind.Marshal.Action.Monad
import Bind.Marshal.DataModel
import Bind.Marshal.DesAction.Dynamic.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.StdLib.Dynamic.FixedBuffer
import Bind.Marshal.StaticProperties

import Control.Applicative

import Data.IORef

import Data.Strict.Either
import Data.Strict.Tuple

import Foreign.Ptr

import GHC.Exts
import GHC.Prim

import System.IO

{-# INLINE des_from_buffer_delegate_ #-}
{-# SPECIALIZE INLINE des_from_buffer_delegate_ 
   :: forall out_type 
      .  DynAction_ Sealed Sealed Sealed (FixedBufferDelegate DesTag) DesTag out_type
      -> FixedBufferDelegate DesTag
      -> IO out_type
  #-}
des_from_buffer_delegate_ :: forall out_type buffer_delegate .
                            ( BufferDelegate buffer_delegate
                            ) => SealedDesAction buffer_delegate out_type
                              -> buffer_delegate
                              -> IO out_type
des_from_buffer_delegate_ (SealedSealedAction a) buffer_delegate = 
    let !bd_iter = BDIter 0 0 buffer_delegate nullAddr# nullAddr#
    in a (\v !bd_iter' -> finalize_region bd_iter' >> ( returnM v :: IO out_type) ) 
         bd_iter

{-# INLINE des_from_buffer_delegate #-}
{-# SPECIALIZE INLINE des_from_buffer_delegate 
   :: forall out_type 
      .  DynAction_ Sealed Sealed Sealed (FixedBufferDelegate DesTag) DesTag out_type
      -> FixedBufferDelegate DesTag
      -> IO (out_type, FixedBufferDelegate DesTag)
  #-}
des_from_buffer_delegate :: forall out_type buffer_delegate .
                            ( BufferDelegate buffer_delegate
                            ) => SealedDesAction buffer_delegate out_type
                              -> buffer_delegate
                              -> IO (out_type, buffer_delegate)
des_from_buffer_delegate (SealedSealedAction a) buffer_delegate = 
    let !bd_iter = BDIter 0 0 buffer_delegate nullAddr# nullAddr#
    in a (\v !bd_iter' -> do
            !bd' <- finalize_region bd_iter' 
            returnM ( v, bd') :: IO (out_type, buffer_delegate) 
         ) 
         bd_iter

