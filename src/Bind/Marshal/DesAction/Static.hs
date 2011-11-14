-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.DesAction.Static
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.DataModel
import Bind.Marshal.DesAction.Base

import Control.DeepSeq
import Control.Exception ( evaluate )

import Data.IORef

import Data.Strict.Either
import Data.Strict.Tuple

import GHC.Err ( error )
import GHC.Exts
import GHC.Prim

import System.IO ( IO(..) )

type StaticDesAction size a = StaticMemAction DesTag size a

-- | 'des' is a deserialization action that has a static buffer requirement. However the resulting
-- action monad of a 'des' can be dynamic or static.
{-# INLINE des #-}
des :: forall t . 
        ( CanDeserialize t
        , Nat (BufferReq t)
        ) => StaticDesAction (BufferReq t) t
des = case toInt (undefined :: (BufferReq t)) of
    I# type_size -> StaticMemAction 
                    ( \ eval_cont _fail_cont !p -> do
                        !v <- deserialize p
                        eval_cont v (plusAddr# p type_size)
                    )

{-# INLINE drop #-}
drop :: forall n . Nat n => StaticDesAction n ()
drop = case toInt (undefined :: n ) of
    I# drop_bytes -> StaticMemAction
                     ( \ eval_cont _fail_cont !p -> eval_cont () 
                                                              (plusAddr# p drop_bytes) 
                     )

-- | executes a deserialization action given a pre-allocated buffer of fixed sized.
{-# INLINE apply_des_to_fixed_buffer #-}
apply_des_to_fixed_buffer :: forall size out_type .
                              ( NFData out_type
                              , Nat size
                              ) 
                              => StaticDesAction size
                                                 out_type
                              -> DesBuffer
                              -> IO ( out_type, DesBuffer )
apply_des_to_fixed_buffer (StaticMemAction ma) !buffer =
    case toInt (undefined :: size) of
        !required_size -> case required_size > (buffer_region_size buffer) of
            True -> fail $! "deserialization requires " 
                            ++ show required_size 
                            ++ " bytes but buffer has only "
                            ++ show (buffer_region_size buffer)
                            ++ " bytes available."
            False -> apply_des_to_fixed_buffer_unsafe (StaticMemAction ma) buffer

{-# INLINE apply_des_to_fixed_buffer_unsafe #-}
-- | executes a deserialization action given a pre-allocated buffer of fixed sized.
--
-- Assumes the provided buffer has enough bytes for the deserialization action.
apply_des_to_fixed_buffer_unsafe :: forall size out_type 
                                    . StaticDesAction size out_type
                                    -> DesBuffer
                                    -> IO ( out_type, DesBuffer )
apply_des_to_fixed_buffer_unsafe (StaticMemAction ma) !buffer =
    case buffer_region_start buffer of
        Ptr start_addr -> case buffer_region_end buffer of
            Ptr end_addr ->  ma (\ !v !p -> returnM ( v
                                                    , BufferRegion (Ptr p)
                                                                   (I# (minusAddr# end_addr p))
                                                    )
                                )
                                fail
                                start_addr

