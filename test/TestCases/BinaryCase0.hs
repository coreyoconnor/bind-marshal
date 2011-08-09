{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase0 where
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
    154 :: Word8 <- getWord8
    60456 :: Word16 <- getWord16be
    30 :: Word8 <- getWord8
    193 :: Word8 <- getWord8
    151139490 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    4 :: Word8 <- getWord8
    v_2 :: Word32 <- getWord32be
    1176619845 :: Word32 <- getWord32be
    178 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    4055394780 :: Word32 <- getWord32be
    11491 :: Word16 <- getWord16be
    3329088736 :: Word32 <- getWord32be
    16407 :: Word16 <- getWord16be
    v_4 :: Word16 <- getWord16be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    v_7 :: Word16 <- getWord16be
    179 :: Word8 <- getWord8
    1251394852 :: Word32 <- getWord32be
    601180003 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    1989047817 :: Word32 <- getWord32be
    34 :: Word8 <- getWord8
    v_9 :: Word8 <- getWord8
    188925259 :: Word32 <- getWord32be
    3088317435 :: Word32 <- getWord32be
    203 :: Word8 <- getWord8
    128 :: Word8 <- getWord8
    3306394667 :: Word32 <- getWord32be
    32748 :: Word16 <- getWord16be
    v_10 :: Word8 <- getWord8
    23683 :: Word16 <- getWord16be
    v_11 :: Word32 <- getWord32be
    252 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    45 :: Word8 <- getWord8
    v_13 :: Word32 <- getWord32be
    105 :: Word8 <- getWord8
    v_14 :: Word32 <- getWord32be
    27342 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    v_17 :: Word32 <- getWord32be
    0 :: Word8 <- getWord8
    v_18 :: Word32 <- getWord32be
    9432 :: Word16 <- getWord16be
    203 :: Word8 <- getWord8
    47302 :: Word16 <- getWord16be
    37522 :: Word16 <- getWord16be
    v_19 :: Word32 <- getWord32be
    v_20 :: Word32 <- getWord32be
    1575200506 :: Word32 <- getWord32be
    v_21 :: Word8 <- getWord8
    16431 :: Word16 <- getWord16be
    v_22 :: Word16 <- getWord16be
    v_23 :: Word32 <- getWord32be
    19 :: Word8 <- getWord8
    191 :: Word8 <- getWord8
    226 :: Word8 <- getWord8
    v_24 :: Word8 <- getWord8
    204 :: Word8 <- getWord8
    v_25 :: Word16 <- getWord16be
    217 :: Word8 <- getWord8
    110 :: Word8 <- getWord8
    v_26 :: Word16 <- getWord16be
    137 :: Word8 <- getWord8
    3876738985 :: Word32 <- getWord32be
    v_27 :: Word32 <- getWord32be
    v_28 :: Word16 <- getWord16be
    v_29 :: Word32 <- getWord32be
    1296152054 :: Word32 <- getWord32be
    v_30 :: Word32 <- getWord32be
    v_31 :: Word8 <- getWord8
    2564929105 :: Word32 <- getWord32be
    v_32 :: Word8 <- getWord8
    v_33 :: Word8 <- getWord8
    v_34 :: Word32 <- getWord32be
    v_35 :: Word8 <- getWord8
    2805119020 :: Word32 <- getWord32be
    v_36 :: Word16 <- getWord16be
    209 :: Word8 <- getWord8
    v_37 :: Word16 <- getWord16be
    v_38 :: Word32 <- getWord32be
    v_39 :: Word32 <- getWord32be
    6687 :: Word16 <- getWord16be
    2322597726 :: Word32 <- getWord32be
    v_40 :: Word16 <- getWord16be
    v_41 :: Word32 <- getWord32be
    v_42 :: Word32 <- getWord32be
    v_43 :: Word16 <- getWord16be
    182 :: Word8 <- getWord8
    5 :: Word8 <- getWord8
    125 :: Word8 <- getWord8
    v_44 :: Word16 <- getWord16be
    2201642759 :: Word32 <- getWord32be
    23206 :: Word16 <- getWord16be
    v_45 :: Word32 <- getWord32be
    52331 :: Word16 <- getWord16be
    v_46 :: Word8 <- getWord8
    v_47 :: Word32 <- getWord32be
    v_48 :: Word32 <- getWord32be
    250 :: Word8 <- getWord8
    10712 :: Word16 <- getWord16be
    7377 :: Word16 <- getWord16be
    v_49 :: Word16 <- getWord16be
    187 :: Word8 <- getWord8
    63669 :: Word16 <- getWord16be
    v_50 :: Word8 <- getWord8
    v_51 :: Word16 <- getWord16be
    855016789 :: Word32 <- getWord32be
    57589 :: Word16 <- getWord16be
    v_52 :: Word8 <- getWord8
    v_53 :: Word8 <- getWord8
    9 :: Word8 <- getWord8
    v_54 :: Word8 <- getWord8
    1986088679 :: Word32 <- getWord32be
    v_55 :: Word8 <- getWord8
    v_56 :: Word32 <- getWord32be
    v_57 :: Word8 <- getWord8
    7445 :: Word16 <- getWord16be
    v_58 :: Word16 <- getWord16be
    v_59 :: Word32 <- getWord32be
    return  [ Word16Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word16Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word8Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word8Value v_54 , Word8Value v_55 , Word32Value v_56 , Word8Value v_57 , Word16Value v_58 , Word32Value v_59 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word16Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word8Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word8Value v_54 , Word8Value v_55 , Word32Value v_56 , Word8Value v_57 , Word16Value v_58 , Word32Value v_59 ] = vs 
    putWord16be v_0
    putWord8 (154 :: Word8)
    putWord16be 60456
    putWord8 (30 :: Word8)
    putWord8 (193 :: Word8)
    putWord32be 151139490
    putWord8 v_1
    putWord8 (4 :: Word8)
    putWord32be v_2
    putWord32be 1176619845
    putWord8 (178 :: Word8)
    putWord16be v_3
    putWord32be 4055394780
    putWord16be 11491
    putWord32be 3329088736
    putWord16be 16407
    putWord16be v_4
    putWord16be v_5
    putWord8 v_6
    putWord16be v_7
    putWord8 (179 :: Word8)
    putWord32be 1251394852
    putWord32be 601180003
    putWord16be v_8
    putWord32be 1989047817
    putWord8 (34 :: Word8)
    putWord8 v_9
    putWord32be 188925259
    putWord32be 3088317435
    putWord8 (203 :: Word8)
    putWord8 (128 :: Word8)
    putWord32be 3306394667
    putWord16be 32748
    putWord8 v_10
    putWord16be 23683
    putWord32be v_11
    putWord8 (252 :: Word8)
    putWord8 v_12
    putWord8 (45 :: Word8)
    putWord32be v_13
    putWord8 (105 :: Word8)
    putWord32be v_14
    putWord16be 27342
    putWord8 v_15
    putWord32be v_16
    putWord32be v_17
    putWord8 (0 :: Word8)
    putWord32be v_18
    putWord16be 9432
    putWord8 (203 :: Word8)
    putWord16be 47302
    putWord16be 37522
    putWord32be v_19
    putWord32be v_20
    putWord32be 1575200506
    putWord8 v_21
    putWord16be 16431
    putWord16be v_22
    putWord32be v_23
    putWord8 (19 :: Word8)
    putWord8 (191 :: Word8)
    putWord8 (226 :: Word8)
    putWord8 v_24
    putWord8 (204 :: Word8)
    putWord16be v_25
    putWord8 (217 :: Word8)
    putWord8 (110 :: Word8)
    putWord16be v_26
    putWord8 (137 :: Word8)
    putWord32be 3876738985
    putWord32be v_27
    putWord16be v_28
    putWord32be v_29
    putWord32be 1296152054
    putWord32be v_30
    putWord8 v_31
    putWord32be 2564929105
    putWord8 v_32
    putWord8 v_33
    putWord32be v_34
    putWord8 v_35
    putWord32be 2805119020
    putWord16be v_36
    putWord8 (209 :: Word8)
    putWord16be v_37
    putWord32be v_38
    putWord32be v_39
    putWord16be 6687
    putWord32be 2322597726
    putWord16be v_40
    putWord32be v_41
    putWord32be v_42
    putWord16be v_43
    putWord8 (182 :: Word8)
    putWord8 (5 :: Word8)
    putWord8 (125 :: Word8)
    putWord16be v_44
    putWord32be 2201642759
    putWord16be 23206
    putWord32be v_45
    putWord16be 52331
    putWord8 v_46
    putWord32be v_47
    putWord32be v_48
    putWord8 (250 :: Word8)
    putWord16be 10712
    putWord16be 7377
    putWord16be v_49
    putWord8 (187 :: Word8)
    putWord16be 63669
    putWord8 v_50
    putWord16be v_51
    putWord32be 855016789
    putWord16be 57589
    putWord8 v_52
    putWord8 v_53
    putWord8 (9 :: Word8)
    putWord8 v_54
    putWord32be 1986088679
    putWord8 v_55
    putWord32be v_56
    putWord8 v_57
    putWord16be 7445
    putWord16be v_58
    putWord32be v_59
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word8Value 154),Value (Word16Value 60456),Value (Word8Value 30),Value (Word8Value 193),Value (Word32Value 151139490),Hole {byte_offset = 11, hole_type = Word8Hole},Value (Word8Value 4),Hole {byte_offset = 13, hole_type = Word32Hole},Value (Word32Value 1176619845),Value (Word8Value 178),Hole {byte_offset = 22, hole_type = Word16Hole},Value (Word32Value 4055394780),Value (Word16Value 11491),Value (Word32Value 3329088736),Value (Word16Value 16407),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word16Hole},Value (Word8Value 179),Value (Word32Value 1251394852),Value (Word32Value 601180003),Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word32Value 1989047817),Value (Word8Value 34),Hole {byte_offset = 59, hole_type = Word8Hole},Value (Word32Value 188925259),Value (Word32Value 3088317435),Value (Word8Value 203),Value (Word8Value 128),Value (Word32Value 3306394667),Value (Word16Value 32748),Hole {byte_offset = 76, hole_type = Word8Hole},Value (Word16Value 23683),Hole {byte_offset = 79, hole_type = Word32Hole},Value (Word8Value 252),Hole {byte_offset = 84, hole_type = Word8Hole},Value (Word8Value 45),Hole {byte_offset = 86, hole_type = Word32Hole},Value (Word8Value 105),Hole {byte_offset = 91, hole_type = Word32Hole},Value (Word16Value 27342),Hole {byte_offset = 97, hole_type = Word8Hole},Hole {byte_offset = 98, hole_type = Word32Hole},Hole {byte_offset = 102, hole_type = Word32Hole},Value (Word8Value 0),Hole {byte_offset = 107, hole_type = Word32Hole},Value (Word16Value 9432),Value (Word8Value 203),Value (Word16Value 47302),Value (Word16Value 37522),Hole {byte_offset = 118, hole_type = Word32Hole},Hole {byte_offset = 122, hole_type = Word32Hole},Value (Word32Value 1575200506),Hole {byte_offset = 130, hole_type = Word8Hole},Value (Word16Value 16431),Hole {byte_offset = 133, hole_type = Word16Hole},Hole {byte_offset = 135, hole_type = Word32Hole},Value (Word8Value 19),Value (Word8Value 191),Value (Word8Value 226),Hole {byte_offset = 142, hole_type = Word8Hole},Value (Word8Value 204),Hole {byte_offset = 144, hole_type = Word16Hole},Value (Word8Value 217),Value (Word8Value 110),Hole {byte_offset = 148, hole_type = Word16Hole},Value (Word8Value 137),Value (Word32Value 3876738985),Hole {byte_offset = 155, hole_type = Word32Hole},Hole {byte_offset = 159, hole_type = Word16Hole},Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word32Value 1296152054),Hole {byte_offset = 169, hole_type = Word32Hole},Hole {byte_offset = 173, hole_type = Word8Hole},Value (Word32Value 2564929105),Hole {byte_offset = 178, hole_type = Word8Hole},Hole {byte_offset = 179, hole_type = Word8Hole},Hole {byte_offset = 180, hole_type = Word32Hole},Hole {byte_offset = 184, hole_type = Word8Hole},Value (Word32Value 2805119020),Hole {byte_offset = 189, hole_type = Word16Hole},Value (Word8Value 209),Hole {byte_offset = 192, hole_type = Word16Hole},Hole {byte_offset = 194, hole_type = Word32Hole},Hole {byte_offset = 198, hole_type = Word32Hole},Value (Word16Value 6687),Value (Word32Value 2322597726),Hole {byte_offset = 208, hole_type = Word16Hole},Hole {byte_offset = 210, hole_type = Word32Hole},Hole {byte_offset = 214, hole_type = Word32Hole},Hole {byte_offset = 218, hole_type = Word16Hole},Value (Word8Value 182),Value (Word8Value 5),Value (Word8Value 125),Hole {byte_offset = 223, hole_type = Word16Hole},Value (Word32Value 2201642759),Value (Word16Value 23206),Hole {byte_offset = 231, hole_type = Word32Hole},Value (Word16Value 52331),Hole {byte_offset = 237, hole_type = Word8Hole},Hole {byte_offset = 238, hole_type = Word32Hole},Hole {byte_offset = 242, hole_type = Word32Hole},Value (Word8Value 250),Value (Word16Value 10712),Value (Word16Value 7377),Hole {byte_offset = 251, hole_type = Word16Hole},Value (Word8Value 187),Value (Word16Value 63669),Hole {byte_offset = 256, hole_type = Word8Hole},Hole {byte_offset = 257, hole_type = Word16Hole},Value (Word32Value 855016789),Value (Word16Value 57589),Hole {byte_offset = 265, hole_type = Word8Hole},Hole {byte_offset = 266, hole_type = Word8Hole},Value (Word8Value 9),Hole {byte_offset = 268, hole_type = Word8Hole},Value (Word32Value 1986088679),Hole {byte_offset = 273, hole_type = Word8Hole},Hole {byte_offset = 274, hole_type = Word32Hole},Hole {byte_offset = 278, hole_type = Word8Hole},Value (Word16Value 7445),Hole {byte_offset = 281, hole_type = Word16Hole},Hole {byte_offset = 283, hole_type = Word32Hole}]}
