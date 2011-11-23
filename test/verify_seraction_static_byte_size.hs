{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

#define DISABLE_FLV_CASE 0
#define ONLY_SMALL_CASES 1
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Static
import Bind.Marshal.SerAction.Verify.Static
import Bind.Marshal.StaticProperties
import Bind.Marshal.StdLib.Ser

#if !DISABLE_FLV_CASE
import FLVHeader.Data
import FLVHeader.Ser
#endif

t_0 = do
    ser ()

t_1 = do 
    ser (0 :: Int32)
    return ()

t_2 (y :: Int32) = do 
    ser y
    return ()

t_3 = do
    ser (0 :: Int32)
    ser (1 :: Int32)
    ser (2 :: Int32)
    ser (3 :: Int32)
    ser (4 :: Int32)
    ser (5 :: Word32)
    ser (6 :: Word32)
    return ()

#if !ONLY_SMALL_CASES
t_4 = do
    ser (0 :: Int32)
    ser (1 :: Int32)
    ser (2 :: Int32)
    ser (3 :: Int32)
    ser (4 :: Int32)
    ser (5 :: Word32)
    ser (6 :: Word32)
    ser (7 :: Word32)
    ser (8 :: Word32)
    ser (9 :: Word32)
    ser (10 :: Word8)
    ser (11 :: Word8)
    ser (12 :: Word8)
    ser (13 :: Word8)
    ser (14 :: Word8)
    return ()

t_5 a b c d e f g h i j k l m n o = do
    ser (a :: Int32)
    ser (b :: Int32)
    ser (c :: Int32)
    ser (d :: Int32)
    ser (e :: Int32)
    ser (f :: Word32)
    ser (g :: Word32)
    ser (h :: Word32)
    ser (i :: Word32)
    ser (j :: Word32)
    ser (k :: Word8)
    ser (l :: Word8)
    ser (m :: Word8)
    ser (n :: Word8)
    ser (o :: Word8)
    return ()
#endif

main = run_test $ do
    verify1 "t_0 can serialize to a memory block of 0 bytes" $ marshalled_byte_count t_0 == 0
    verify1 "t_1 can serialize to a memory block of 4 byte" $ marshalled_byte_count t_1 == 4
    verify1 "t_2 can serialize to a memory block of 4 byte" $ \i -> marshalled_byte_count (t_2 i) == 4
    verify1 "t_3 can serialize to a memory block of 28 bytes" $ marshalled_byte_count t_3 == 28
#if !DISABLE_FLV_CASE 
    verify1 "FLVHeader can serialize to a memory block of 9 byte" 
        $ \( h :: FLVHeader) -> marshalled_byte_count (ser_flv_header h) == 9
#endif
    returnM () :: Test ()

