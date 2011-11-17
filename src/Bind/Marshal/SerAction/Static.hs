{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.SerAction.Static ( module Bind.Marshal.SerAction.Static
                                     , module Bind.Marshal.SerAction.Base
                                     )
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.DataModel
import Bind.Marshal.SerAction.Base

import Control.DeepSeq
import Control.Exception ( evaluate )

import Data.Strict.Either
import Data.Strict.Tuple

import GHC.Exts
import GHC.Prim

import System.IO ( IO(..) )

type StaticSerAction size a = StaticMemAction SerTag size a

-- | ser serializes the value with type t to at most BufferReq t bytes.
{-# INLINE ser #-}
ser :: forall t .
       ( CanSerialize t
       , Nat (BufferReq t)
       ) => t 
         -> StaticSerAction (BufferReq t) ()
ser v = case toInt (undefined :: (BufferReq t)) of
    I# type_size -> StaticMemAction 
                    ( \ eval_cont _fail_cont !p -> do
                        !i <- serialize v p
                        eval_cont i (plusAddr# p type_size)
                    )

-- | To execute a serialization action:
--  - determine the final data model of the serialization action monad by fixing the initial data
--  model as DMNil.
--  - evaluate the action via CPS
{-# INLINE apply_ser_to_fixed_buffer #-}
apply_ser_to_fixed_buffer :: forall size out_type . 
                              ( Nat size
                              )
                              => StaticSerAction size
                                                 out_type
                              -> SerBuffer
                              -> IO ( out_type, SerBuffer )
apply_ser_to_fixed_buffer (StaticMemAction ma) !buffer =
    case toInt (undefined :: size) of
        !required_size -> case required_size > (buffer_region_size buffer) of
            -- XXX: Implement serializtion to temp buffer and check for overflow before failing
            True -> fail $! "serialization requires " 
                            ++ show required_size 
                            ++ " bytes but buffer has only "
                            ++ show (buffer_region_size buffer)
                            ++ " bytes available."
            False -> apply_ser_to_fixed_buffer_unsafe (StaticMemAction ma) buffer

{-# INLINE apply_ser_to_fixed_buffer_unsafe #-}
apply_ser_to_fixed_buffer_unsafe :: forall size out_type .
                                 StaticSerAction size
                                                 out_type
                              -> SerBuffer
                              -> IO ( out_type, SerBuffer )
apply_ser_to_fixed_buffer_unsafe (StaticMemAction ma) !buffer =
    case buffer_region_start buffer of
        Ptr start_addr -> case buffer_region_end buffer of
            Ptr end_addr -> ma 
                            (\ !v !p -> returnM ( v
                                                , BufferRegion (Ptr p)
                                                               (I# (minusAddr# end_addr p))
                                                )
                            )
                            fail
                            start_addr

{-# INLINE apply_ser_to_fixed_buffer_unsafe_ #-}
apply_ser_to_fixed_buffer_unsafe_ :: forall size out_type .
                                 StaticSerAction size
                                                 out_type
                              -> SerBuffer
                              -> IO ( out_type )
apply_ser_to_fixed_buffer_unsafe_ (StaticMemAction ma) !buffer =
    case buffer_region_start buffer of
        Ptr start_addr -> ma (\ !v !_ -> returnM v ) fail start_addr

