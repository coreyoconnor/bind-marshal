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
    112 :: Word8 <- getWord8
    v_0 :: Word8 <- getWord8
    201 :: Word8 <- getWord8
    222 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    v_2 :: Word16 <- getWord16be
    1465570674 :: Word32 <- getWord32be
    23339 :: Word16 <- getWord16be
    49 :: Word8 <- getWord8
    12 :: Word8 <- getWord8
    196 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    v_6 :: Word16 <- getWord16be
    158 :: Word8 <- getWord8
    v_7 :: Word16 <- getWord16be
    218 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    v_9 :: Word32 <- getWord32be
    3869717926 :: Word32 <- getWord32be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    123 :: Word8 <- getWord8
    20821 :: Word16 <- getWord16be
    27 :: Word8 <- getWord8
    v_12 :: Word32 <- getWord32be
    3413138882 :: Word32 <- getWord32be
    8544 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word32 <- getWord32be
    v_15 :: Word8 <- getWord8
    v_16 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    v_18 :: Word8 <- getWord8
    v_19 :: Word32 <- getWord32be
    924972061 :: Word32 <- getWord32be
    72 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    v_21 :: Word8 <- getWord8
    51298 :: Word16 <- getWord16be
    v_22 :: Word8 <- getWord8
    48982 :: Word16 <- getWord16be
    v_23 :: Word16 <- getWord16be
    2432193269 :: Word32 <- getWord32be
    v_24 :: Word32 <- getWord32be
    v_25 :: Word32 <- getWord32be
    v_26 :: Word16 <- getWord16be
    122 :: Word8 <- getWord8
    116 :: Word8 <- getWord8
    144231419 :: Word32 <- getWord32be
    32565 :: Word16 <- getWord16be
    v_27 :: Word16 <- getWord16be
    v_28 :: Word8 <- getWord8
    50708 :: Word16 <- getWord16be
    238219583 :: Word32 <- getWord32be
    v_29 :: Word16 <- getWord16be
    61455 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    v_31 :: Word32 <- getWord32be
    3198619298 :: Word32 <- getWord32be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word8 <- getWord8
    v_34 :: Word32 <- getWord32be
    v_35 :: Word32 <- getWord32be
    2101 :: Word16 <- getWord16be
    3328808052 :: Word32 <- getWord32be
    436221340 :: Word32 <- getWord32be
    v_36 :: Word16 <- getWord16be
    v_37 :: Word16 <- getWord16be
    242 :: Word8 <- getWord8
    v_38 :: Word32 <- getWord32be
    64 :: Word8 <- getWord8
    v_39 :: Word16 <- getWord16be
    43502 :: Word16 <- getWord16be
    3771315190 :: Word32 <- getWord32be
    4243753305 :: Word32 <- getWord32be
    v_40 :: Word16 <- getWord16be
    v_41 :: Word16 <- getWord16be
    v_42 :: Word8 <- getWord8
    227 :: Word8 <- getWord8
    v_43 :: Word32 <- getWord32be
    1972812258 :: Word32 <- getWord32be
    857574521 :: Word32 <- getWord32be
    v_44 :: Word32 <- getWord32be
    28 :: Word8 <- getWord8
    41534 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    918709532 :: Word32 <- getWord32be
    120 :: Word8 <- getWord8
    v_46 :: Word32 <- getWord32be
    v_47 :: Word16 <- getWord16be
    2474 :: Word16 <- getWord16be
    128 :: Word8 <- getWord8
    254 :: Word8 <- getWord8
    v_48 :: Word32 <- getWord32be
    v_49 :: Word16 <- getWord16be
    v_50 :: Word8 <- getWord8
    218 :: Word8 <- getWord8
    2179597460 :: Word32 <- getWord32be
    6548 :: Word16 <- getWord16be
    v_51 :: Word32 <- getWord32be
    v_52 :: Word32 <- getWord32be
    v_53 :: Word8 <- getWord8
    v_54 :: Word16 <- getWord16be
    v_55 :: Word8 <- getWord8
    632845482 :: Word32 <- getWord32be
    57684 :: Word16 <- getWord16be
    v_56 :: Word8 <- getWord8
    721822118 :: Word32 <- getWord32be
    165395681 :: Word32 <- getWord32be
    v_57 :: Word32 <- getWord32be
    136 :: Word8 <- getWord8
    2600980842 :: Word32 <- getWord32be
    return  [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word32Value v_51 , Word32Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word8Value v_56 , Word32Value v_57 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word32Value v_51 , Word32Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word8Value v_56 , Word32Value v_57 ] = vs 
    putWord8 (112 :: Word8)
    putWord8 v_0
    putWord8 (201 :: Word8)
    putWord8 (222 :: Word8)
    putWord8 v_1
    putWord16be v_2
    putWord32be 1465570674
    putWord16be 23339
    putWord8 (49 :: Word8)
    putWord8 (12 :: Word8)
    putWord8 (196 :: Word8)
    putWord32be v_3
    putWord8 v_4
    putWord32be v_5
    putWord16be v_6
    putWord8 (158 :: Word8)
    putWord16be v_7
    putWord8 (218 :: Word8)
    putWord32be v_8
    putWord32be v_9
    putWord32be 3869717926
    putWord32be v_10
    putWord32be v_11
    putWord8 (123 :: Word8)
    putWord16be 20821
    putWord8 (27 :: Word8)
    putWord32be v_12
    putWord32be 3413138882
    putWord16be 8544
    putWord32be v_13
    putWord32be v_14
    putWord8 v_15
    putWord8 v_16
    putWord32be v_17
    putWord8 v_18
    putWord32be v_19
    putWord32be 924972061
    putWord8 (72 :: Word8)
    putWord8 v_20
    putWord8 v_21
    putWord16be 51298
    putWord8 v_22
    putWord16be 48982
    putWord16be v_23
    putWord32be 2432193269
    putWord32be v_24
    putWord32be v_25
    putWord16be v_26
    putWord8 (122 :: Word8)
    putWord8 (116 :: Word8)
    putWord32be 144231419
    putWord16be 32565
    putWord16be v_27
    putWord8 v_28
    putWord16be 50708
    putWord32be 238219583
    putWord16be v_29
    putWord16be 61455
    putWord16be v_30
    putWord32be v_31
    putWord32be 3198619298
    putWord16be v_32
    putWord8 v_33
    putWord32be v_34
    putWord32be v_35
    putWord16be 2101
    putWord32be 3328808052
    putWord32be 436221340
    putWord16be v_36
    putWord16be v_37
    putWord8 (242 :: Word8)
    putWord32be v_38
    putWord8 (64 :: Word8)
    putWord16be v_39
    putWord16be 43502
    putWord32be 3771315190
    putWord32be 4243753305
    putWord16be v_40
    putWord16be v_41
    putWord8 v_42
    putWord8 (227 :: Word8)
    putWord32be v_43
    putWord32be 1972812258
    putWord32be 857574521
    putWord32be v_44
    putWord8 (28 :: Word8)
    putWord16be 41534
    putWord8 v_45
    putWord32be 918709532
    putWord8 (120 :: Word8)
    putWord32be v_46
    putWord16be v_47
    putWord16be 2474
    putWord8 (128 :: Word8)
    putWord8 (254 :: Word8)
    putWord32be v_48
    putWord16be v_49
    putWord8 v_50
    putWord8 (218 :: Word8)
    putWord32be 2179597460
    putWord16be 6548
    putWord32be v_51
    putWord32be v_52
    putWord8 v_53
    putWord16be v_54
    putWord8 v_55
    putWord32be 632845482
    putWord16be 57684
    putWord8 v_56
    putWord32be 721822118
    putWord32be 165395681
    putWord32be v_57
    putWord8 (136 :: Word8)
    putWord32be 2600980842
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 112),Hole {byte_offset = 1, hole_type = Word8Hole},Value (Word8Value 201),Value (Word8Value 222),Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word16Hole},Value (Word32Value 1465570674),Value (Word16Value 23339),Value (Word8Value 49),Value (Word8Value 12),Value (Word8Value 196),Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Value (Word8Value 158),Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word8Value 218),Hole {byte_offset = 31, hole_type = Word32Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word32Value 3869717926),Hole {byte_offset = 43, hole_type = Word32Hole},Hole {byte_offset = 47, hole_type = Word32Hole},Value (Word8Value 123),Value (Word16Value 20821),Value (Word8Value 27),Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word32Value 3413138882),Value (Word16Value 8544),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word32Hole},Hole {byte_offset = 73, hole_type = Word8Hole},Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word32Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Hole {byte_offset = 80, hole_type = Word32Hole},Value (Word32Value 924972061),Value (Word8Value 72),Hole {byte_offset = 89, hole_type = Word8Hole},Hole {byte_offset = 90, hole_type = Word8Hole},Value (Word16Value 51298),Hole {byte_offset = 93, hole_type = Word8Hole},Value (Word16Value 48982),Hole {byte_offset = 96, hole_type = Word16Hole},Value (Word32Value 2432193269),Hole {byte_offset = 102, hole_type = Word32Hole},Hole {byte_offset = 106, hole_type = Word32Hole},Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word8Value 122),Value (Word8Value 116),Value (Word32Value 144231419),Value (Word16Value 32565),Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word16Value 50708),Value (Word32Value 238219583),Hole {byte_offset = 129, hole_type = Word16Hole},Value (Word16Value 61455),Hole {byte_offset = 133, hole_type = Word16Hole},Hole {byte_offset = 135, hole_type = Word32Hole},Value (Word32Value 3198619298),Hole {byte_offset = 143, hole_type = Word16Hole},Hole {byte_offset = 145, hole_type = Word8Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Hole {byte_offset = 150, hole_type = Word32Hole},Value (Word16Value 2101),Value (Word32Value 3328808052),Value (Word32Value 436221340),Hole {byte_offset = 164, hole_type = Word16Hole},Hole {byte_offset = 166, hole_type = Word16Hole},Value (Word8Value 242),Hole {byte_offset = 169, hole_type = Word32Hole},Value (Word8Value 64),Hole {byte_offset = 174, hole_type = Word16Hole},Value (Word16Value 43502),Value (Word32Value 3771315190),Value (Word32Value 4243753305),Hole {byte_offset = 186, hole_type = Word16Hole},Hole {byte_offset = 188, hole_type = Word16Hole},Hole {byte_offset = 190, hole_type = Word8Hole},Value (Word8Value 227),Hole {byte_offset = 192, hole_type = Word32Hole},Value (Word32Value 1972812258),Value (Word32Value 857574521),Hole {byte_offset = 204, hole_type = Word32Hole},Value (Word8Value 28),Value (Word16Value 41534),Hole {byte_offset = 211, hole_type = Word8Hole},Value (Word32Value 918709532),Value (Word8Value 120),Hole {byte_offset = 217, hole_type = Word32Hole},Hole {byte_offset = 221, hole_type = Word16Hole},Value (Word16Value 2474),Value (Word8Value 128),Value (Word8Value 254),Hole {byte_offset = 227, hole_type = Word32Hole},Hole {byte_offset = 231, hole_type = Word16Hole},Hole {byte_offset = 233, hole_type = Word8Hole},Value (Word8Value 218),Value (Word32Value 2179597460),Value (Word16Value 6548),Hole {byte_offset = 241, hole_type = Word32Hole},Hole {byte_offset = 245, hole_type = Word32Hole},Hole {byte_offset = 249, hole_type = Word8Hole},Hole {byte_offset = 250, hole_type = Word16Hole},Hole {byte_offset = 252, hole_type = Word8Hole},Value (Word32Value 632845482),Value (Word16Value 57684),Hole {byte_offset = 259, hole_type = Word8Hole},Value (Word32Value 721822118),Value (Word32Value 165395681),Hole {byte_offset = 268, hole_type = Word32Hole},Value (Word8Value 136),Value (Word32Value 2600980842)]}
