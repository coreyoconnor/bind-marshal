{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase9 where
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
    v_0 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    135 :: Word8 <- getWord8
    v_2 :: Word32 <- getWord32be
    v_3 :: Word8 <- getWord8
    v_4 :: Word32 <- getWord32be
    1780586010 :: Word32 <- getWord32be
    3568707314 :: Word32 <- getWord32be
    75 :: Word8 <- getWord8
    136 :: Word8 <- getWord8
    166 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    145 :: Word8 <- getWord8
    36311 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    v_8 :: Word32 <- getWord32be
    8615 :: Word16 <- getWord16be
    16206 :: Word16 <- getWord16be
    1079485551 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    3163443349 :: Word32 <- getWord32be
    14873 :: Word16 <- getWord16be
    12 :: Word8 <- getWord8
    16194 :: Word16 <- getWord16be
    16 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    38413 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    v_12 :: Word32 <- getWord32be
    27960 :: Word16 <- getWord16be
    v_13 :: Word16 <- getWord16be
    134 :: Word8 <- getWord8
    2972665061 :: Word32 <- getWord32be
    34310 :: Word16 <- getWord16be
    16 :: Word8 <- getWord8
    v_14 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    v_16 :: Word8 <- getWord8
    163 :: Word8 <- getWord8
    146 :: Word8 <- getWord8
    63539 :: Word16 <- getWord16be
    2804738709 :: Word32 <- getWord32be
    128 :: Word8 <- getWord8
    33955 :: Word16 <- getWord16be
    v_17 :: Word32 <- getWord32be
    v_18 :: Word32 <- getWord32be
    3169608896 :: Word32 <- getWord32be
    v_19 :: Word8 <- getWord8
    2206525457 :: Word32 <- getWord32be
    55 :: Word8 <- getWord8
    160 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    v_21 :: Word32 <- getWord32be
    v_22 :: Word32 <- getWord32be
    v_23 :: Word32 <- getWord32be
    v_24 :: Word32 <- getWord32be
    124 :: Word8 <- getWord8
    v_25 :: Word32 <- getWord32be
    174 :: Word8 <- getWord8
    v_26 :: Word32 <- getWord32be
    v_27 :: Word32 <- getWord32be
    v_28 :: Word16 <- getWord16be
    24735 :: Word16 <- getWord16be
    1361983541 :: Word32 <- getWord32be
    3533012463 :: Word32 <- getWord32be
    36181 :: Word16 <- getWord16be
    v_29 :: Word16 <- getWord16be
    v_30 :: Word8 <- getWord8
    v_31 :: Word32 <- getWord32be
    v_32 :: Word16 <- getWord16be
    206 :: Word8 <- getWord8
    66 :: Word8 <- getWord8
    v_33 :: Word16 <- getWord16be
    v_34 :: Word8 <- getWord8
    v_35 :: Word16 <- getWord16be
    v_36 :: Word32 <- getWord32be
    1598492727 :: Word32 <- getWord32be
    v_37 :: Word32 <- getWord32be
    v_38 :: Word32 <- getWord32be
    3056521481 :: Word32 <- getWord32be
    v_39 :: Word16 <- getWord16be
    2975941031 :: Word32 <- getWord32be
    v_40 :: Word32 <- getWord32be
    v_41 :: Word32 <- getWord32be
    v_42 :: Word32 <- getWord32be
    3192817953 :: Word32 <- getWord32be
    v_43 :: Word16 <- getWord16be
    722384313 :: Word32 <- getWord32be
    53715 :: Word16 <- getWord16be
    v_44 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    73 :: Word8 <- getWord8
    174 :: Word8 <- getWord8
    3826484164 :: Word32 <- getWord32be
    251 :: Word8 <- getWord8
    v_46 :: Word16 <- getWord16be
    v_47 :: Word32 <- getWord32be
    v_48 :: Word32 <- getWord32be
    v_49 :: Word8 <- getWord8
    2781361224 :: Word32 <- getWord32be
    v_50 :: Word32 <- getWord32be
    252 :: Word8 <- getWord8
    v_51 :: Word16 <- getWord16be
    v_52 :: Word8 <- getWord8
    v_53 :: Word8 <- getWord8
    v_54 :: Word32 <- getWord32be
    v_55 :: Word16 <- getWord16be
    55794 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word32Value v_26 , Word32Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word32Value v_48 , Word8Value v_49 , Word32Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word32Value v_54 , Word16Value v_55 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word32Value v_26 , Word32Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word32Value v_48 , Word8Value v_49 , Word32Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word32Value v_54 , Word16Value v_55 ] = vs 
    putWord32be v_0
    putWord8 v_1
    putWord8 (135 :: Word8)
    putWord32be v_2
    putWord8 v_3
    putWord32be v_4
    putWord32be 1780586010
    putWord32be 3568707314
    putWord8 (75 :: Word8)
    putWord8 (136 :: Word8)
    putWord8 (166 :: Word8)
    putWord16be v_5
    putWord8 (145 :: Word8)
    putWord16be 36311
    putWord8 v_6
    putWord32be v_7
    putWord32be v_8
    putWord16be 8615
    putWord16be 16206
    putWord32be 1079485551
    putWord8 v_9
    putWord32be 3163443349
    putWord16be 14873
    putWord8 (12 :: Word8)
    putWord16be 16194
    putWord8 (16 :: Word8)
    putWord32be v_10
    putWord16be 38413
    putWord8 v_11
    putWord32be v_12
    putWord16be 27960
    putWord16be v_13
    putWord8 (134 :: Word8)
    putWord32be 2972665061
    putWord16be 34310
    putWord8 (16 :: Word8)
    putWord8 v_14
    putWord32be v_15
    putWord8 v_16
    putWord8 (163 :: Word8)
    putWord8 (146 :: Word8)
    putWord16be 63539
    putWord32be 2804738709
    putWord8 (128 :: Word8)
    putWord16be 33955
    putWord32be v_17
    putWord32be v_18
    putWord32be 3169608896
    putWord8 v_19
    putWord32be 2206525457
    putWord8 (55 :: Word8)
    putWord8 (160 :: Word8)
    putWord8 v_20
    putWord32be v_21
    putWord32be v_22
    putWord32be v_23
    putWord32be v_24
    putWord8 (124 :: Word8)
    putWord32be v_25
    putWord8 (174 :: Word8)
    putWord32be v_26
    putWord32be v_27
    putWord16be v_28
    putWord16be 24735
    putWord32be 1361983541
    putWord32be 3533012463
    putWord16be 36181
    putWord16be v_29
    putWord8 v_30
    putWord32be v_31
    putWord16be v_32
    putWord8 (206 :: Word8)
    putWord8 (66 :: Word8)
    putWord16be v_33
    putWord8 v_34
    putWord16be v_35
    putWord32be v_36
    putWord32be 1598492727
    putWord32be v_37
    putWord32be v_38
    putWord32be 3056521481
    putWord16be v_39
    putWord32be 2975941031
    putWord32be v_40
    putWord32be v_41
    putWord32be v_42
    putWord32be 3192817953
    putWord16be v_43
    putWord32be 722384313
    putWord16be 53715
    putWord16be v_44
    putWord8 v_45
    putWord8 (73 :: Word8)
    putWord8 (174 :: Word8)
    putWord32be 3826484164
    putWord8 (251 :: Word8)
    putWord16be v_46
    putWord32be v_47
    putWord32be v_48
    putWord8 v_49
    putWord32be 2781361224
    putWord32be v_50
    putWord8 (252 :: Word8)
    putWord16be v_51
    putWord8 v_52
    putWord8 v_53
    putWord32be v_54
    putWord16be v_55
    putWord16be 55794
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word8Value 135),Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Value (Word32Value 1780586010),Value (Word32Value 3568707314),Value (Word8Value 75),Value (Word8Value 136),Value (Word8Value 166),Hole {byte_offset = 26, hole_type = Word16Hole},Value (Word8Value 145),Value (Word16Value 36311),Hole {byte_offset = 31, hole_type = Word8Hole},Hole {byte_offset = 32, hole_type = Word32Hole},Hole {byte_offset = 36, hole_type = Word32Hole},Value (Word16Value 8615),Value (Word16Value 16206),Value (Word32Value 1079485551),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 3163443349),Value (Word16Value 14873),Value (Word8Value 12),Value (Word16Value 16194),Value (Word8Value 16),Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word16Value 38413),Hole {byte_offset = 65, hole_type = Word8Hole},Hole {byte_offset = 66, hole_type = Word32Hole},Value (Word16Value 27960),Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word8Value 134),Value (Word32Value 2972665061),Value (Word16Value 34310),Value (Word8Value 16),Hole {byte_offset = 82, hole_type = Word8Hole},Hole {byte_offset = 83, hole_type = Word32Hole},Hole {byte_offset = 87, hole_type = Word8Hole},Value (Word8Value 163),Value (Word8Value 146),Value (Word16Value 63539),Value (Word32Value 2804738709),Value (Word8Value 128),Value (Word16Value 33955),Hole {byte_offset = 99, hole_type = Word32Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word32Value 3169608896),Hole {byte_offset = 111, hole_type = Word8Hole},Value (Word32Value 2206525457),Value (Word8Value 55),Value (Word8Value 160),Hole {byte_offset = 118, hole_type = Word8Hole},Hole {byte_offset = 119, hole_type = Word32Hole},Hole {byte_offset = 123, hole_type = Word32Hole},Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Value (Word8Value 124),Hole {byte_offset = 136, hole_type = Word32Hole},Value (Word8Value 174),Hole {byte_offset = 141, hole_type = Word32Hole},Hole {byte_offset = 145, hole_type = Word32Hole},Hole {byte_offset = 149, hole_type = Word16Hole},Value (Word16Value 24735),Value (Word32Value 1361983541),Value (Word32Value 3533012463),Value (Word16Value 36181),Hole {byte_offset = 163, hole_type = Word16Hole},Hole {byte_offset = 165, hole_type = Word8Hole},Hole {byte_offset = 166, hole_type = Word32Hole},Hole {byte_offset = 170, hole_type = Word16Hole},Value (Word8Value 206),Value (Word8Value 66),Hole {byte_offset = 174, hole_type = Word16Hole},Hole {byte_offset = 176, hole_type = Word8Hole},Hole {byte_offset = 177, hole_type = Word16Hole},Hole {byte_offset = 179, hole_type = Word32Hole},Value (Word32Value 1598492727),Hole {byte_offset = 187, hole_type = Word32Hole},Hole {byte_offset = 191, hole_type = Word32Hole},Value (Word32Value 3056521481),Hole {byte_offset = 199, hole_type = Word16Hole},Value (Word32Value 2975941031),Hole {byte_offset = 205, hole_type = Word32Hole},Hole {byte_offset = 209, hole_type = Word32Hole},Hole {byte_offset = 213, hole_type = Word32Hole},Value (Word32Value 3192817953),Hole {byte_offset = 221, hole_type = Word16Hole},Value (Word32Value 722384313),Value (Word16Value 53715),Hole {byte_offset = 229, hole_type = Word16Hole},Hole {byte_offset = 231, hole_type = Word8Hole},Value (Word8Value 73),Value (Word8Value 174),Value (Word32Value 3826484164),Value (Word8Value 251),Hole {byte_offset = 239, hole_type = Word16Hole},Hole {byte_offset = 241, hole_type = Word32Hole},Hole {byte_offset = 245, hole_type = Word32Hole},Hole {byte_offset = 249, hole_type = Word8Hole},Value (Word32Value 2781361224),Hole {byte_offset = 254, hole_type = Word32Hole},Value (Word8Value 252),Hole {byte_offset = 259, hole_type = Word16Hole},Hole {byte_offset = 261, hole_type = Word8Hole},Hole {byte_offset = 262, hole_type = Word8Hole},Hole {byte_offset = 263, hole_type = Word32Hole},Hole {byte_offset = 267, hole_type = Word16Hole},Value (Word16Value 55794)]}
