{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase6 where
import Control.Applicative
import Control.DeepSeq
import Control.Monad

import Data.Binary.Put
import Data.Binary.Get
import qualified Data.ByteString.Lazy as BS
import qualified Data.ByteString.Lazy.Internal as L
import qualified Data.ByteString.Internal as S
import Data.Monoid

import ArbMarshal
import ArbMarshal.GenCode.Utils

import Data.Word

des_static_structure = do 
    v_0 :: Word16 <- getWord16be
    v_1 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    v_3 :: Word8 <- getWord8
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    53710 :: Word16 <- getWord16be
    2052853940 :: Word32 <- getWord32be
    4613 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    3509453784 :: Word32 <- getWord32be
    244 :: Word8 <- getWord8
    23 :: Word8 <- getWord8
    3145218968 :: Word32 <- getWord32be
    v_7 :: Word16 <- getWord16be
    3524216542 :: Word32 <- getWord32be
    43731 :: Word16 <- getWord16be
    v_8 :: Word8 <- getWord8
    195 :: Word8 <- getWord8
    v_9 :: Word16 <- getWord16be
    2921892023 :: Word32 <- getWord32be
    51988 :: Word16 <- getWord16be
    231 :: Word8 <- getWord8
    14222 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    79 :: Word8 <- getWord8
    v_11 :: Word16 <- getWord16be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word16 <- getWord16be
    v_14 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    v_16 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    612609367 :: Word32 <- getWord32be
    v_18 :: Word16 <- getWord16be
    v_19 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    2669 :: Word16 <- getWord16be
    v_21 :: Word8 <- getWord8
    v_22 :: Word8 <- getWord8
    v_23 :: Word8 <- getWord8
    985832582 :: Word32 <- getWord32be
    2391881502 :: Word32 <- getWord32be
    16465 :: Word16 <- getWord16be
    1054352216 :: Word32 <- getWord32be
    197 :: Word8 <- getWord8
    30391 :: Word16 <- getWord16be
    3394836017 :: Word32 <- getWord32be
    v_24 :: Word32 <- getWord32be
    v_25 :: Word8 <- getWord8
    173 :: Word8 <- getWord8
    1328234999 :: Word32 <- getWord32be
    189 :: Word8 <- getWord8
    3739077621 :: Word32 <- getWord32be
    14208 :: Word16 <- getWord16be
    v_26 :: Word16 <- getWord16be
    v_27 :: Word32 <- getWord32be
    v_28 :: Word8 <- getWord8
    19 :: Word8 <- getWord8
    v_29 :: Word16 <- getWord16be
    219 :: Word8 <- getWord8
    221 :: Word8 <- getWord8
    55952 :: Word16 <- getWord16be
    18565 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    157 :: Word8 <- getWord8
    v_31 :: Word16 <- getWord16be
    v_32 :: Word32 <- getWord32be
    72 :: Word8 <- getWord8
    v_33 :: Word8 <- getWord8
    830212843 :: Word32 <- getWord32be
    v_34 :: Word16 <- getWord16be
    1353101976 :: Word32 <- getWord32be
    14539 :: Word16 <- getWord16be
    v_35 :: Word16 <- getWord16be
    11 :: Word8 <- getWord8
    v_36 :: Word16 <- getWord16be
    3057443612 :: Word32 <- getWord32be
    v_37 :: Word16 <- getWord16be
    v_38 :: Word16 <- getWord16be
    35 :: Word8 <- getWord8
    33855 :: Word16 <- getWord16be
    v_39 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word16Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word16Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 ] = vs 
    putWord16be v_0
    putWord16be v_1
    putWord8 v_2
    putWord8 v_3
    putWord8 v_4
    putWord8 v_5
    putWord16be 53710
    putWord32be 2052853940
    putWord16be 4613
    putWord8 v_6
    putWord32be 3509453784
    putWord8 (244 :: Word8)
    putWord8 (23 :: Word8)
    putWord32be 3145218968
    putWord16be v_7
    putWord32be 3524216542
    putWord16be 43731
    putWord8 v_8
    putWord8 (195 :: Word8)
    putWord16be v_9
    putWord32be 2921892023
    putWord16be 51988
    putWord8 (231 :: Word8)
    putWord16be 14222
    putWord32be v_10
    putWord8 (79 :: Word8)
    putWord16be v_11
    putWord16be v_12
    putWord16be v_13
    putWord16be v_14
    putWord8 v_15
    putWord8 v_16
    putWord32be v_17
    putWord32be 612609367
    putWord16be v_18
    putWord8 v_19
    putWord8 v_20
    putWord16be 2669
    putWord8 v_21
    putWord8 v_22
    putWord8 v_23
    putWord32be 985832582
    putWord32be 2391881502
    putWord16be 16465
    putWord32be 1054352216
    putWord8 (197 :: Word8)
    putWord16be 30391
    putWord32be 3394836017
    putWord32be v_24
    putWord8 v_25
    putWord8 (173 :: Word8)
    putWord32be 1328234999
    putWord8 (189 :: Word8)
    putWord32be 3739077621
    putWord16be 14208
    putWord16be v_26
    putWord32be v_27
    putWord8 v_28
    putWord8 (19 :: Word8)
    putWord16be v_29
    putWord8 (219 :: Word8)
    putWord8 (221 :: Word8)
    putWord16be 55952
    putWord16be 18565
    putWord16be v_30
    putWord8 (157 :: Word8)
    putWord16be v_31
    putWord32be v_32
    putWord8 (72 :: Word8)
    putWord8 v_33
    putWord32be 830212843
    putWord16be v_34
    putWord32be 1353101976
    putWord16be 14539
    putWord16be v_35
    putWord8 (11 :: Word8)
    putWord16be v_36
    putWord32be 3057443612
    putWord16be v_37
    putWord16be v_38
    putWord8 (35 :: Word8)
    putWord16be 33855
    putWord16be v_39
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word16Hole},Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Hole {byte_offset = 7, hole_type = Word8Hole},Value (Word16Value 53710),Value (Word32Value 2052853940),Value (Word16Value 4613),Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word32Value 3509453784),Value (Word8Value 244),Value (Word8Value 23),Value (Word32Value 3145218968),Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word32Value 3524216542),Value (Word16Value 43731),Hole {byte_offset = 35, hole_type = Word8Hole},Value (Word8Value 195),Hole {byte_offset = 37, hole_type = Word16Hole},Value (Word32Value 2921892023),Value (Word16Value 51988),Value (Word8Value 231),Value (Word16Value 14222),Hole {byte_offset = 48, hole_type = Word32Hole},Value (Word8Value 79),Hole {byte_offset = 53, hole_type = Word16Hole},Hole {byte_offset = 55, hole_type = Word16Hole},Hole {byte_offset = 57, hole_type = Word16Hole},Hole {byte_offset = 59, hole_type = Word16Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word8Hole},Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word32Value 612609367),Hole {byte_offset = 71, hole_type = Word16Hole},Hole {byte_offset = 73, hole_type = Word8Hole},Hole {byte_offset = 74, hole_type = Word8Hole},Value (Word16Value 2669),Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word8Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Value (Word32Value 985832582),Value (Word32Value 2391881502),Value (Word16Value 16465),Value (Word32Value 1054352216),Value (Word8Value 197),Value (Word16Value 30391),Value (Word32Value 3394836017),Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word8Hole},Value (Word8Value 173),Value (Word32Value 1328234999),Value (Word8Value 189),Value (Word32Value 3739077621),Value (Word16Value 14208),Hole {byte_offset = 118, hole_type = Word16Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Hole {byte_offset = 124, hole_type = Word8Hole},Value (Word8Value 19),Hole {byte_offset = 126, hole_type = Word16Hole},Value (Word8Value 219),Value (Word8Value 221),Value (Word16Value 55952),Value (Word16Value 18565),Hole {byte_offset = 134, hole_type = Word16Hole},Value (Word8Value 157),Hole {byte_offset = 137, hole_type = Word16Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word8Value 72),Hole {byte_offset = 144, hole_type = Word8Hole},Value (Word32Value 830212843),Hole {byte_offset = 149, hole_type = Word16Hole},Value (Word32Value 1353101976),Value (Word16Value 14539),Hole {byte_offset = 157, hole_type = Word16Hole},Value (Word8Value 11),Hole {byte_offset = 160, hole_type = Word16Hole},Value (Word32Value 3057443612),Hole {byte_offset = 166, hole_type = Word16Hole},Hole {byte_offset = 168, hole_type = Word16Hole},Value (Word8Value 35),Value (Word16Value 33855),Hole {byte_offset = 173, hole_type = Word16Hole}]}
