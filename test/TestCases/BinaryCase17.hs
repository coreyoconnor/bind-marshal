{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase17 where
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
    114 :: Word8 <- getWord8
    140 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    v_1 :: Word32 <- getWord32be
    v_2 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    179 :: Word8 <- getWord8
    v_6 :: Word8 <- getWord8
    3186363299 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    v_8 :: Word16 <- getWord16be
    15315 :: Word16 <- getWord16be
    v_9 :: Word32 <- getWord32be
    3538373883 :: Word32 <- getWord32be
    32687 :: Word16 <- getWord16be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    v_13 :: Word8 <- getWord8
    v_14 :: Word16 <- getWord16be
    20461 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    182 :: Word8 <- getWord8
    v_16 :: Word16 <- getWord16be
    252 :: Word8 <- getWord8
    v_17 :: Word16 <- getWord16be
    5406 :: Word16 <- getWord16be
    v_18 :: Word8 <- getWord8
    931719193 :: Word32 <- getWord32be
    v_19 :: Word16 <- getWord16be
    4137559602 :: Word32 <- getWord32be
    39814 :: Word16 <- getWord16be
    23487 :: Word16 <- getWord16be
    v_20 :: Word32 <- getWord32be
    209 :: Word8 <- getWord8
    358420034 :: Word32 <- getWord32be
    1051710076 :: Word32 <- getWord32be
    26600 :: Word16 <- getWord16be
    v_21 :: Word16 <- getWord16be
    v_22 :: Word32 <- getWord32be
    13072 :: Word16 <- getWord16be
    2528859940 :: Word32 <- getWord32be
    v_23 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    v_25 :: Word8 <- getWord8
    v_26 :: Word8 <- getWord8
    v_27 :: Word32 <- getWord32be
    v_28 :: Word8 <- getWord8
    215 :: Word8 <- getWord8
    v_29 :: Word8 <- getWord8
    58152 :: Word16 <- getWord16be
    v_30 :: Word8 <- getWord8
    21375 :: Word16 <- getWord16be
    105555544 :: Word32 <- getWord32be
    39681 :: Word16 <- getWord16be
    v_31 :: Word32 <- getWord32be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word16 <- getWord16be
    62 :: Word8 <- getWord8
    97 :: Word8 <- getWord8
    3214315288 :: Word32 <- getWord32be
    v_34 :: Word8 <- getWord8
    59411 :: Word16 <- getWord16be
    v_35 :: Word8 <- getWord8
    v_36 :: Word16 <- getWord16be
    40480 :: Word16 <- getWord16be
    877940578 :: Word32 <- getWord32be
    2381022770 :: Word32 <- getWord32be
    31647 :: Word16 <- getWord16be
    v_37 :: Word8 <- getWord8
    v_38 :: Word8 <- getWord8
    v_39 :: Word8 <- getWord8
    240 :: Word8 <- getWord8
    v_40 :: Word16 <- getWord16be
    v_41 :: Word32 <- getWord32be
    v_42 :: Word8 <- getWord8
    v_43 :: Word32 <- getWord32be
    98 :: Word8 <- getWord8
    v_44 :: Word8 <- getWord8
    251 :: Word8 <- getWord8
    1926 :: Word16 <- getWord16be
    55482 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    122 :: Word8 <- getWord8
    157 :: Word8 <- getWord8
    v_46 :: Word16 <- getWord16be
    872861440 :: Word32 <- getWord32be
    62837 :: Word16 <- getWord16be
    v_47 :: Word32 <- getWord32be
    v_48 :: Word16 <- getWord16be
    28888 :: Word16 <- getWord16be
    2312031821 :: Word32 <- getWord32be
    v_49 :: Word32 <- getWord32be
    3036193501 :: Word32 <- getWord32be
    18705193 :: Word32 <- getWord32be
    1687997096 :: Word32 <- getWord32be
    v_50 :: Word8 <- getWord8
    v_51 :: Word16 <- getWord16be
    69 :: Word8 <- getWord8
    142 :: Word8 <- getWord8
    153 :: Word8 <- getWord8
    95 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word8Value v_15 , Word16Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word32Value v_41 , Word8Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word8Value v_15 , Word16Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word32Value v_41 , Word8Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 ] = vs 
    putWord8 (114 :: Word8)
    putWord8 (140 :: Word8)
    putWord32be v_0
    putWord32be v_1
    putWord8 v_2
    putWord32be v_3
    putWord8 v_4
    putWord8 v_5
    putWord8 (179 :: Word8)
    putWord8 v_6
    putWord32be 3186363299
    putWord8 v_7
    putWord16be v_8
    putWord16be 15315
    putWord32be v_9
    putWord32be 3538373883
    putWord16be 32687
    putWord16be v_10
    putWord16be v_11
    putWord32be v_12
    putWord8 v_13
    putWord16be v_14
    putWord16be 20461
    putWord8 v_15
    putWord8 (182 :: Word8)
    putWord16be v_16
    putWord8 (252 :: Word8)
    putWord16be v_17
    putWord16be 5406
    putWord8 v_18
    putWord32be 931719193
    putWord16be v_19
    putWord32be 4137559602
    putWord16be 39814
    putWord16be 23487
    putWord32be v_20
    putWord8 (209 :: Word8)
    putWord32be 358420034
    putWord32be 1051710076
    putWord16be 26600
    putWord16be v_21
    putWord32be v_22
    putWord16be 13072
    putWord32be 2528859940
    putWord8 v_23
    putWord32be v_24
    putWord8 v_25
    putWord8 v_26
    putWord32be v_27
    putWord8 v_28
    putWord8 (215 :: Word8)
    putWord8 v_29
    putWord16be 58152
    putWord8 v_30
    putWord16be 21375
    putWord32be 105555544
    putWord16be 39681
    putWord32be v_31
    putWord16be v_32
    putWord16be v_33
    putWord8 (62 :: Word8)
    putWord8 (97 :: Word8)
    putWord32be 3214315288
    putWord8 v_34
    putWord16be 59411
    putWord8 v_35
    putWord16be v_36
    putWord16be 40480
    putWord32be 877940578
    putWord32be 2381022770
    putWord16be 31647
    putWord8 v_37
    putWord8 v_38
    putWord8 v_39
    putWord8 (240 :: Word8)
    putWord16be v_40
    putWord32be v_41
    putWord8 v_42
    putWord32be v_43
    putWord8 (98 :: Word8)
    putWord8 v_44
    putWord8 (251 :: Word8)
    putWord16be 1926
    putWord16be 55482
    putWord8 v_45
    putWord8 (122 :: Word8)
    putWord8 (157 :: Word8)
    putWord16be v_46
    putWord32be 872861440
    putWord16be 62837
    putWord32be v_47
    putWord16be v_48
    putWord16be 28888
    putWord32be 2312031821
    putWord32be v_49
    putWord32be 3036193501
    putWord32be 18705193
    putWord32be 1687997096
    putWord8 v_50
    putWord16be v_51
    putWord8 (69 :: Word8)
    putWord8 (142 :: Word8)
    putWord8 (153 :: Word8)
    putWord8 (95 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 114),Value (Word8Value 140),Hole {byte_offset = 2, hole_type = Word32Hole},Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word8Value 179),Hole {byte_offset = 18, hole_type = Word8Hole},Value (Word32Value 3186363299),Hole {byte_offset = 23, hole_type = Word8Hole},Hole {byte_offset = 24, hole_type = Word16Hole},Value (Word16Value 15315),Hole {byte_offset = 28, hole_type = Word32Hole},Value (Word32Value 3538373883),Value (Word16Value 32687),Hole {byte_offset = 38, hole_type = Word16Hole},Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Hole {byte_offset = 46, hole_type = Word8Hole},Hole {byte_offset = 47, hole_type = Word16Hole},Value (Word16Value 20461),Hole {byte_offset = 51, hole_type = Word8Hole},Value (Word8Value 182),Hole {byte_offset = 53, hole_type = Word16Hole},Value (Word8Value 252),Hole {byte_offset = 56, hole_type = Word16Hole},Value (Word16Value 5406),Hole {byte_offset = 60, hole_type = Word8Hole},Value (Word32Value 931719193),Hole {byte_offset = 65, hole_type = Word16Hole},Value (Word32Value 4137559602),Value (Word16Value 39814),Value (Word16Value 23487),Hole {byte_offset = 75, hole_type = Word32Hole},Value (Word8Value 209),Value (Word32Value 358420034),Value (Word32Value 1051710076),Value (Word16Value 26600),Hole {byte_offset = 90, hole_type = Word16Hole},Hole {byte_offset = 92, hole_type = Word32Hole},Value (Word16Value 13072),Value (Word32Value 2528859940),Hole {byte_offset = 102, hole_type = Word8Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Hole {byte_offset = 107, hole_type = Word8Hole},Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word8Hole},Value (Word8Value 215),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 58152),Hole {byte_offset = 118, hole_type = Word8Hole},Value (Word16Value 21375),Value (Word32Value 105555544),Value (Word16Value 39681),Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word8Value 62),Value (Word8Value 97),Value (Word32Value 3214315288),Hole {byte_offset = 141, hole_type = Word8Hole},Value (Word16Value 59411),Hole {byte_offset = 144, hole_type = Word8Hole},Hole {byte_offset = 145, hole_type = Word16Hole},Value (Word16Value 40480),Value (Word32Value 877940578),Value (Word32Value 2381022770),Value (Word16Value 31647),Hole {byte_offset = 159, hole_type = Word8Hole},Hole {byte_offset = 160, hole_type = Word8Hole},Hole {byte_offset = 161, hole_type = Word8Hole},Value (Word8Value 240),Hole {byte_offset = 163, hole_type = Word16Hole},Hole {byte_offset = 165, hole_type = Word32Hole},Hole {byte_offset = 169, hole_type = Word8Hole},Hole {byte_offset = 170, hole_type = Word32Hole},Value (Word8Value 98),Hole {byte_offset = 175, hole_type = Word8Hole},Value (Word8Value 251),Value (Word16Value 1926),Value (Word16Value 55482),Hole {byte_offset = 181, hole_type = Word8Hole},Value (Word8Value 122),Value (Word8Value 157),Hole {byte_offset = 184, hole_type = Word16Hole},Value (Word32Value 872861440),Value (Word16Value 62837),Hole {byte_offset = 192, hole_type = Word32Hole},Hole {byte_offset = 196, hole_type = Word16Hole},Value (Word16Value 28888),Value (Word32Value 2312031821),Hole {byte_offset = 204, hole_type = Word32Hole},Value (Word32Value 3036193501),Value (Word32Value 18705193),Value (Word32Value 1687997096),Hole {byte_offset = 220, hole_type = Word8Hole},Hole {byte_offset = 221, hole_type = Word16Hole},Value (Word8Value 69),Value (Word8Value 142),Value (Word8Value 153),Value (Word8Value 95)]}
