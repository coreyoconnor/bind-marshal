-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.SerAction.Dynamic ( module Bind.Marshal.SerAction.Dynamic
                                      , module Bind.Marshal.SerAction.Dynamic.Base
                                      )
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.Action.Static
import Bind.Marshal.Action.Monad
import Bind.Marshal.DataModel
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Dynamic.Base
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StaticProperties

import Data.Strict.Either
import Data.Strict.Tuple

import Foreign.Ptr

import GHC.Exts

import System.IO

{-# INLINE ser_to_buffer_delegate_ #-}
ser_to_buffer_delegate_ :: forall out_type buffer_delegate .
                            ( BufferDelegate buffer_delegate
                            ) => DynamicSerAction Sealed Sealed Sealed buffer_delegate out_type
                              -> buffer_delegate
                              -> IO out_type
ser_to_buffer_delegate_ (SealedSealedAction m) buffer_delegate = 
    let !bd_iter = BDIter 0 0 buffer_delegate nullAddr# nullAddr#
    in m (\v !bd_iter' -> finalize_region bd_iter' >> ( returnM v :: IO out_type) ) 
         bd_iter

{-# INLINE ser_to_buffer_delegate #-}
ser_to_buffer_delegate :: forall out_type buffer_delegate .
                            ( BufferDelegate buffer_delegate
                            ) => DynamicSerAction Sealed Sealed Sealed buffer_delegate out_type
                              -> buffer_delegate
                              -> IO (out_type, buffer_delegate)
ser_to_buffer_delegate (SealedSealedAction m) buffer_delegate = 
    let !bd_iter = BDIter 0 0 buffer_delegate nullAddr# nullAddr#
    in m (\v !bd_iter' -> do
            !bd' <- finalize_region bd_iter'
            returnM ( v, bd') :: IO (out_type, buffer_delegate)
         )
         bd_iter
