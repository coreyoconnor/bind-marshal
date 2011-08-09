-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.StdLib.Des where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.DesAction.Storable
import Bind.Marshal.StdLib.Types

import Data.Bits ( (.|.), shiftL )

-- Int32
instance CanDeserialize Int32 where
    deserialize = deserialize_storable

-- Word32
instance CanDeserialize Word32 where
    deserialize = deserialize_storable

-- Word16
instance CanDeserialize Word16 where
    deserialize = deserialize_storable

-- Word8
instance CanDeserialize Word8 where
    deserialize = deserialize_storable

{-# INLINE des_word16_be #-}
des_word16_be :: StaticDesAction D2 Word16
des_word16_be = do
    v_high :: Word8 <- des
    v_low :: Word8 <- des
    case (toEnum $! fromEnum v_high) `shiftL` 8 of
        v_out_high -> case toEnum $! fromEnum v_low of
            v_out_low -> static_return (v_out_high .|. v_out_low)

{-# INLINE des_word32_be #-}
des_word32_be :: StaticDesAction D4 Word32
des_word32_be = do
    v_0 :: Word8 <- des
    v_1 :: Word8 <- des
    v_2 :: Word8 <- des
    v_3 :: Word8 <- des
    case (toEnum $! fromEnum v_0) `shiftL` 24 of
        out_0 -> case (toEnum $! fromEnum v_1) `shiftL` 16 of
            out_1 -> case (toEnum $! fromEnum v_2) `shiftL` 8 of
                out_2 -> case toEnum $! fromEnum v_3 of
                    out_3 -> static_return $! out_0 .|. out_1 .|. out_2 .|. out_3

