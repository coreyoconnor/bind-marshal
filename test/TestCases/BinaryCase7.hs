{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase7 where
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
    60125 :: Word16 <- getWord16be
    3072572163 :: Word32 <- getWord32be
    155 :: Word8 <- getWord8
    216 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    v_1 :: Word32 <- getWord32be
    29080 :: Word16 <- getWord16be
    450967872 :: Word32 <- getWord32be
    4013978738 :: Word32 <- getWord32be
    v_2 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    v_4 :: Word16 <- getWord16be
    28602 :: Word16 <- getWord16be
    1761831148 :: Word32 <- getWord32be
    56097 :: Word16 <- getWord16be
    144 :: Word8 <- getWord8
    1866030625 :: Word32 <- getWord32be
    v_5 :: Word32 <- getWord32be
    18331 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    v_7 :: Word16 <- getWord16be
    2368187773 :: Word32 <- getWord32be
    55569 :: Word16 <- getWord16be
    v_8 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    981332725 :: Word32 <- getWord32be
    3329558639 :: Word32 <- getWord32be
    v_11 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    1729238200 :: Word32 <- getWord32be
    v_13 :: Word16 <- getWord16be
    8179 :: Word16 <- getWord16be
    4176 :: Word16 <- getWord16be
    v_14 :: Word32 <- getWord32be
    v_15 :: Word16 <- getWord16be
    15 :: Word8 <- getWord8
    v_16 :: Word16 <- getWord16be
    575246075 :: Word32 <- getWord32be
    3334 :: Word16 <- getWord16be
    v_17 :: Word8 <- getWord8
    v_18 :: Word8 <- getWord8
    192 :: Word8 <- getWord8
    16074 :: Word16 <- getWord16be
    86 :: Word8 <- getWord8
    v_19 :: Word16 <- getWord16be
    v_20 :: Word32 <- getWord32be
    3965 :: Word16 <- getWord16be
    v_21 :: Word32 <- getWord32be
    6784 :: Word16 <- getWord16be
    76 :: Word8 <- getWord8
    129 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    4192106710 :: Word32 <- getWord32be
    3485311300 :: Word32 <- getWord32be
    2968056085 :: Word32 <- getWord32be
    4072964214 :: Word32 <- getWord32be
    847206522 :: Word32 <- getWord32be
    v_23 :: Word32 <- getWord32be
    1805344434 :: Word32 <- getWord32be
    v_24 :: Word32 <- getWord32be
    v_25 :: Word16 <- getWord16be
    35069 :: Word16 <- getWord16be
    v_26 :: Word8 <- getWord8
    v_27 :: Word8 <- getWord8
    619404241 :: Word32 <- getWord32be
    948252506 :: Word32 <- getWord32be
    43342 :: Word16 <- getWord16be
    v_28 :: Word8 <- getWord8
    v_29 :: Word32 <- getWord32be
    v_30 :: Word32 <- getWord32be
    v_31 :: Word8 <- getWord8
    3760600211 :: Word32 <- getWord32be
    18534 :: Word16 <- getWord16be
    117 :: Word16 <- getWord16be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word16 <- getWord16be
    284923463 :: Word32 <- getWord32be
    v_34 :: Word16 <- getWord16be
    v_35 :: Word32 <- getWord32be
    12685 :: Word16 <- getWord16be
    8499 :: Word16 <- getWord16be
    2230117417 :: Word32 <- getWord32be
    16382 :: Word16 <- getWord16be
    4 :: Word8 <- getWord8
    v_36 :: Word32 <- getWord32be
    v_37 :: Word16 <- getWord16be
    51238 :: Word16 <- getWord16be
    v_38 :: Word32 <- getWord32be
    1607987104 :: Word32 <- getWord32be
    3945436825 :: Word32 <- getWord32be
    v_39 :: Word32 <- getWord32be
    26577 :: Word16 <- getWord16be
    27570 :: Word16 <- getWord16be
    25763 :: Word16 <- getWord16be
    139 :: Word8 <- getWord8
    10 :: Word8 <- getWord8
    v_40 :: Word32 <- getWord32be
    2118202207 :: Word32 <- getWord32be
    v_41 :: Word16 <- getWord16be
    v_42 :: Word32 <- getWord32be
    61879 :: Word16 <- getWord16be
    v_43 :: Word8 <- getWord8
    v_44 :: Word8 <- getWord8
    3621106650 :: Word32 <- getWord32be
    29224 :: Word16 <- getWord16be
    v_45 :: Word32 <- getWord32be
    1435767336 :: Word32 <- getWord32be
    3084530162 :: Word32 <- getWord32be
    627018483 :: Word32 <- getWord32be
    v_46 :: Word8 <- getWord8
    v_47 :: Word32 <- getWord32be
    v_48 :: Word32 <- getWord32be
    v_49 :: Word32 <- getWord32be
    33500 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word32Value v_40 , Word16Value v_41 , Word32Value v_42 , Word8Value v_43 , Word8Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word32Value v_49 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word32Value v_40 , Word16Value v_41 , Word32Value v_42 , Word8Value v_43 , Word8Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word32Value v_49 ] = vs 
    putWord16be 60125
    putWord32be 3072572163
    putWord8 (155 :: Word8)
    putWord8 (216 :: Word8)
    putWord32be v_0
    putWord32be v_1
    putWord16be 29080
    putWord32be 450967872
    putWord32be 4013978738
    putWord32be v_2
    putWord32be v_3
    putWord16be v_4
    putWord16be 28602
    putWord32be 1761831148
    putWord16be 56097
    putWord8 (144 :: Word8)
    putWord32be 1866030625
    putWord32be v_5
    putWord16be 18331
    putWord8 v_6
    putWord16be v_7
    putWord32be 2368187773
    putWord16be 55569
    putWord32be v_8
    putWord8 v_9
    putWord32be v_10
    putWord32be 981332725
    putWord32be 3329558639
    putWord16be v_11
    putWord32be v_12
    putWord32be 1729238200
    putWord16be v_13
    putWord16be 8179
    putWord16be 4176
    putWord32be v_14
    putWord16be v_15
    putWord8 (15 :: Word8)
    putWord16be v_16
    putWord32be 575246075
    putWord16be 3334
    putWord8 v_17
    putWord8 v_18
    putWord8 (192 :: Word8)
    putWord16be 16074
    putWord8 (86 :: Word8)
    putWord16be v_19
    putWord32be v_20
    putWord16be 3965
    putWord32be v_21
    putWord16be 6784
    putWord8 (76 :: Word8)
    putWord8 (129 :: Word8)
    putWord32be v_22
    putWord32be 4192106710
    putWord32be 3485311300
    putWord32be 2968056085
    putWord32be 4072964214
    putWord32be 847206522
    putWord32be v_23
    putWord32be 1805344434
    putWord32be v_24
    putWord16be v_25
    putWord16be 35069
    putWord8 v_26
    putWord8 v_27
    putWord32be 619404241
    putWord32be 948252506
    putWord16be 43342
    putWord8 v_28
    putWord32be v_29
    putWord32be v_30
    putWord8 v_31
    putWord32be 3760600211
    putWord16be 18534
    putWord16be 117
    putWord16be v_32
    putWord16be v_33
    putWord32be 284923463
    putWord16be v_34
    putWord32be v_35
    putWord16be 12685
    putWord16be 8499
    putWord32be 2230117417
    putWord16be 16382
    putWord8 (4 :: Word8)
    putWord32be v_36
    putWord16be v_37
    putWord16be 51238
    putWord32be v_38
    putWord32be 1607987104
    putWord32be 3945436825
    putWord32be v_39
    putWord16be 26577
    putWord16be 27570
    putWord16be 25763
    putWord8 (139 :: Word8)
    putWord8 (10 :: Word8)
    putWord32be v_40
    putWord32be 2118202207
    putWord16be v_41
    putWord32be v_42
    putWord16be 61879
    putWord8 v_43
    putWord8 v_44
    putWord32be 3621106650
    putWord16be 29224
    putWord32be v_45
    putWord32be 1435767336
    putWord32be 3084530162
    putWord32be 627018483
    putWord8 v_46
    putWord32be v_47
    putWord32be v_48
    putWord32be v_49
    putWord16be 33500
    return ()

static_structure = StaticStructure {properties = [Value (Word16Value 60125),Value (Word32Value 3072572163),Value (Word8Value 155),Value (Word8Value 216),Hole {byte_offset = 8, hole_type = Word32Hole},Hole {byte_offset = 12, hole_type = Word32Hole},Value (Word16Value 29080),Value (Word32Value 450967872),Value (Word32Value 4013978738),Hole {byte_offset = 26, hole_type = Word32Hole},Hole {byte_offset = 30, hole_type = Word32Hole},Hole {byte_offset = 34, hole_type = Word16Hole},Value (Word16Value 28602),Value (Word32Value 1761831148),Value (Word16Value 56097),Value (Word8Value 144),Value (Word32Value 1866030625),Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word16Value 18331),Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word16Hole},Value (Word32Value 2368187773),Value (Word16Value 55569),Hole {byte_offset = 64, hole_type = Word32Hole},Hole {byte_offset = 68, hole_type = Word8Hole},Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word32Value 981332725),Value (Word32Value 3329558639),Hole {byte_offset = 81, hole_type = Word16Hole},Hole {byte_offset = 83, hole_type = Word32Hole},Value (Word32Value 1729238200),Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word16Value 8179),Value (Word16Value 4176),Hole {byte_offset = 97, hole_type = Word32Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Value (Word8Value 15),Hole {byte_offset = 104, hole_type = Word16Hole},Value (Word32Value 575246075),Value (Word16Value 3334),Hole {byte_offset = 112, hole_type = Word8Hole},Hole {byte_offset = 113, hole_type = Word8Hole},Value (Word8Value 192),Value (Word16Value 16074),Value (Word8Value 86),Hole {byte_offset = 118, hole_type = Word16Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Value (Word16Value 3965),Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word16Value 6784),Value (Word8Value 76),Value (Word8Value 129),Hole {byte_offset = 134, hole_type = Word32Hole},Value (Word32Value 4192106710),Value (Word32Value 3485311300),Value (Word32Value 2968056085),Value (Word32Value 4072964214),Value (Word32Value 847206522),Hole {byte_offset = 158, hole_type = Word32Hole},Value (Word32Value 1805344434),Hole {byte_offset = 166, hole_type = Word32Hole},Hole {byte_offset = 170, hole_type = Word16Hole},Value (Word16Value 35069),Hole {byte_offset = 174, hole_type = Word8Hole},Hole {byte_offset = 175, hole_type = Word8Hole},Value (Word32Value 619404241),Value (Word32Value 948252506),Value (Word16Value 43342),Hole {byte_offset = 186, hole_type = Word8Hole},Hole {byte_offset = 187, hole_type = Word32Hole},Hole {byte_offset = 191, hole_type = Word32Hole},Hole {byte_offset = 195, hole_type = Word8Hole},Value (Word32Value 3760600211),Value (Word16Value 18534),Value (Word16Value 117),Hole {byte_offset = 204, hole_type = Word16Hole},Hole {byte_offset = 206, hole_type = Word16Hole},Value (Word32Value 284923463),Hole {byte_offset = 212, hole_type = Word16Hole},Hole {byte_offset = 214, hole_type = Word32Hole},Value (Word16Value 12685),Value (Word16Value 8499),Value (Word32Value 2230117417),Value (Word16Value 16382),Value (Word8Value 4),Hole {byte_offset = 229, hole_type = Word32Hole},Hole {byte_offset = 233, hole_type = Word16Hole},Value (Word16Value 51238),Hole {byte_offset = 237, hole_type = Word32Hole},Value (Word32Value 1607987104),Value (Word32Value 3945436825),Hole {byte_offset = 249, hole_type = Word32Hole},Value (Word16Value 26577),Value (Word16Value 27570),Value (Word16Value 25763),Value (Word8Value 139),Value (Word8Value 10),Hole {byte_offset = 261, hole_type = Word32Hole},Value (Word32Value 2118202207),Hole {byte_offset = 269, hole_type = Word16Hole},Hole {byte_offset = 271, hole_type = Word32Hole},Value (Word16Value 61879),Hole {byte_offset = 277, hole_type = Word8Hole},Hole {byte_offset = 278, hole_type = Word8Hole},Value (Word32Value 3621106650),Value (Word16Value 29224),Hole {byte_offset = 285, hole_type = Word32Hole},Value (Word32Value 1435767336),Value (Word32Value 3084530162),Value (Word32Value 627018483),Hole {byte_offset = 301, hole_type = Word8Hole},Hole {byte_offset = 302, hole_type = Word32Hole},Hole {byte_offset = 306, hole_type = Word32Hole},Hole {byte_offset = 310, hole_type = Word32Hole},Value (Word16Value 33500)]}
