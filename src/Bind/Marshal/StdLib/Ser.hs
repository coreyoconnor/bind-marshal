-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.StdLib.Ser where

import Bind.Marshal.Prelude

import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Static
import Bind.Marshal.SerAction.Storable
import Bind.Marshal.StdLib.Types

import Data.Bits ( (.&.), shiftR )

import GHC.Prim
import GHC.Types
import GHC.Word

instance CanSerialize Int32 where
    {-# INLINE serialize #-}
    serialize = serialize_storable

instance CanSerialize Word8 where
    {-# INLINE serialize #-}
    serialize = serialize_storable

instance CanSerialize Word16 where
    {-# INLINE serialize #-}
    serialize = serialize_storable

instance CanSerialize Word32 where
    {-# INLINE serialize #-}
    serialize = serialize_storable

{-# INLINE ser_word16_be #-}
ser_word16_be :: Word16 -> StaticSerAction D2 ()
ser_word16_be !w = do
    case (w .&. 0xFF00) `shiftR` 8 of
        !w_high -> ser ( toEnum $! fromEnum w_high :: Word8) 
    case w .&. 0x00FF of
        !w_low -> ser ( toEnum $! fromEnum w_low :: Word8) 

{-# INLINE shiftr_w32 #-}
shiftr_w32 :: Word32 -> Int -> Word32
shiftr_w32 (W32# w) (I# i) = W32# (w `uncheckedShiftRL#`   i)

{-# INLINE ser_word32_be #-}
ser_word32_be :: Word32 -> StaticSerAction D4 ()
ser_word32_be !w = do
    case fromIntegral $! shiftr_w32 w 24 of
        !(w_0 :: Word8) -> ser w_0 
    case fromIntegral $! shiftr_w32 w 16 of
        !(w_1 :: Word8) -> ser w_1
    case fromIntegral $! shiftr_w32 w 8 of
        !(w_2 :: Word8) -> ser w_2
    case fromIntegral w of
        !(w_3 :: Word8) -> ser w_3

