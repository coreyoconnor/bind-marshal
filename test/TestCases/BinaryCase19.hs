{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase19 where
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
    2180304009 :: Word32 <- getWord32be
    2409304956 :: Word32 <- getWord32be
    2909643783 :: Word32 <- getWord32be
    v_0 :: Word8 <- getWord8
    57 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    v_2 :: Word16 <- getWord16be
    285020727 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    v_5 :: Word8 <- getWord8
    2432790473 :: Word32 <- getWord32be
    v_6 :: Word32 <- getWord32be
    734069615 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    92 :: Word8 <- getWord8
    v_8 :: Word16 <- getWord16be
    v_9 :: Word8 <- getWord8
    119 :: Word8 <- getWord8
    18052 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    433917722 :: Word32 <- getWord32be
    1539003698 :: Word32 <- getWord32be
    137 :: Word8 <- getWord8
    v_11 :: Word8 <- getWord8
    180577951 :: Word32 <- getWord32be
    89 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    54721 :: Word16 <- getWord16be
    158 :: Word8 <- getWord8
    92 :: Word8 <- getWord8
    4021266149 :: Word32 <- getWord32be
    v_13 :: Word16 <- getWord16be
    v_14 :: Word32 <- getWord32be
    1211417884 :: Word32 <- getWord32be
    846493148 :: Word32 <- getWord32be
    v_15 :: Word16 <- getWord16be
    53239 :: Word16 <- getWord16be
    54156 :: Word16 <- getWord16be
    v_16 :: Word16 <- getWord16be
    v_17 :: Word32 <- getWord32be
    v_18 :: Word32 <- getWord32be
    241 :: Word8 <- getWord8
    v_19 :: Word32 <- getWord32be
    v_20 :: Word32 <- getWord32be
    3372672211 :: Word32 <- getWord32be
    v_21 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    v_23 :: Word32 <- getWord32be
    v_24 :: Word16 <- getWord16be
    v_25 :: Word16 <- getWord16be
    955429467 :: Word32 <- getWord32be
    226 :: Word8 <- getWord8
    67 :: Word8 <- getWord8
    v_26 :: Word16 <- getWord16be
    v_27 :: Word8 <- getWord8
    v_28 :: Word8 <- getWord8
    32488 :: Word16 <- getWord16be
    42490 :: Word16 <- getWord16be
    v_29 :: Word32 <- getWord32be
    55589 :: Word16 <- getWord16be
    43535478 :: Word32 <- getWord32be
    v_30 :: Word8 <- getWord8
    52982 :: Word16 <- getWord16be
    v_31 :: Word16 <- getWord16be
    v_32 :: Word8 <- getWord8
    v_33 :: Word8 <- getWord8
    v_34 :: Word8 <- getWord8
    v_35 :: Word32 <- getWord32be
    v_36 :: Word32 <- getWord32be
    v_37 :: Word16 <- getWord16be
    15289 :: Word16 <- getWord16be
    9414 :: Word16 <- getWord16be
    28288 :: Word16 <- getWord16be
    3988402041 :: Word32 <- getWord32be
    708919033 :: Word32 <- getWord32be
    v_38 :: Word16 <- getWord16be
    v_39 :: Word16 <- getWord16be
    58290 :: Word16 <- getWord16be
    v_40 :: Word16 <- getWord16be
    115 :: Word8 <- getWord8
    18 :: Word8 <- getWord8
    v_41 :: Word16 <- getWord16be
    211 :: Word8 <- getWord8
    2736 :: Word16 <- getWord16be
    v_42 :: Word8 <- getWord8
    881866054 :: Word32 <- getWord32be
    1488643215 :: Word32 <- getWord32be
    92 :: Word8 <- getWord8
    114 :: Word8 <- getWord8
    171 :: Word8 <- getWord8
    v_43 :: Word16 <- getWord16be
    v_44 :: Word8 <- getWord8
    152 :: Word8 <- getWord8
    79 :: Word8 <- getWord8
    44786 :: Word16 <- getWord16be
    v_45 :: Word32 <- getWord32be
    152 :: Word8 <- getWord8
    55 :: Word8 <- getWord8
    v_46 :: Word16 <- getWord16be
    38509 :: Word16 <- getWord16be
    v_47 :: Word16 <- getWord16be
    return  [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word16Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word8Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word16Value v_43 , Word8Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word16Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word8Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word16Value v_43 , Word8Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 ] = vs 
    putWord32be 2180304009
    putWord32be 2409304956
    putWord32be 2909643783
    putWord8 v_0
    putWord8 (57 :: Word8)
    putWord8 v_1
    putWord16be v_2
    putWord32be 285020727
    putWord16be v_3
    putWord32be v_4
    putWord8 v_5
    putWord32be 2432790473
    putWord32be v_6
    putWord32be 734069615
    putWord32be v_7
    putWord8 (92 :: Word8)
    putWord16be v_8
    putWord8 v_9
    putWord8 (119 :: Word8)
    putWord16be 18052
    putWord32be v_10
    putWord32be 433917722
    putWord32be 1539003698
    putWord8 (137 :: Word8)
    putWord8 v_11
    putWord32be 180577951
    putWord8 (89 :: Word8)
    putWord8 v_12
    putWord16be 54721
    putWord8 (158 :: Word8)
    putWord8 (92 :: Word8)
    putWord32be 4021266149
    putWord16be v_13
    putWord32be v_14
    putWord32be 1211417884
    putWord32be 846493148
    putWord16be v_15
    putWord16be 53239
    putWord16be 54156
    putWord16be v_16
    putWord32be v_17
    putWord32be v_18
    putWord8 (241 :: Word8)
    putWord32be v_19
    putWord32be v_20
    putWord32be 3372672211
    putWord8 v_21
    putWord32be v_22
    putWord32be v_23
    putWord16be v_24
    putWord16be v_25
    putWord32be 955429467
    putWord8 (226 :: Word8)
    putWord8 (67 :: Word8)
    putWord16be v_26
    putWord8 v_27
    putWord8 v_28
    putWord16be 32488
    putWord16be 42490
    putWord32be v_29
    putWord16be 55589
    putWord32be 43535478
    putWord8 v_30
    putWord16be 52982
    putWord16be v_31
    putWord8 v_32
    putWord8 v_33
    putWord8 v_34
    putWord32be v_35
    putWord32be v_36
    putWord16be v_37
    putWord16be 15289
    putWord16be 9414
    putWord16be 28288
    putWord32be 3988402041
    putWord32be 708919033
    putWord16be v_38
    putWord16be v_39
    putWord16be 58290
    putWord16be v_40
    putWord8 (115 :: Word8)
    putWord8 (18 :: Word8)
    putWord16be v_41
    putWord8 (211 :: Word8)
    putWord16be 2736
    putWord8 v_42
    putWord32be 881866054
    putWord32be 1488643215
    putWord8 (92 :: Word8)
    putWord8 (114 :: Word8)
    putWord8 (171 :: Word8)
    putWord16be v_43
    putWord8 v_44
    putWord8 (152 :: Word8)
    putWord8 (79 :: Word8)
    putWord16be 44786
    putWord32be v_45
    putWord8 (152 :: Word8)
    putWord8 (55 :: Word8)
    putWord16be v_46
    putWord16be 38509
    putWord16be v_47
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2180304009),Value (Word32Value 2409304956),Value (Word32Value 2909643783),Hole {byte_offset = 12, hole_type = Word8Hole},Value (Word8Value 57),Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word16Hole},Value (Word32Value 285020727),Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word32Hole},Hole {byte_offset = 27, hole_type = Word8Hole},Value (Word32Value 2432790473),Hole {byte_offset = 32, hole_type = Word32Hole},Value (Word32Value 734069615),Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word8Value 92),Hole {byte_offset = 45, hole_type = Word16Hole},Hole {byte_offset = 47, hole_type = Word8Hole},Value (Word8Value 119),Value (Word16Value 18052),Hole {byte_offset = 51, hole_type = Word32Hole},Value (Word32Value 433917722),Value (Word32Value 1539003698),Value (Word8Value 137),Hole {byte_offset = 64, hole_type = Word8Hole},Value (Word32Value 180577951),Value (Word8Value 89),Hole {byte_offset = 70, hole_type = Word8Hole},Value (Word16Value 54721),Value (Word8Value 158),Value (Word8Value 92),Value (Word32Value 4021266149),Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word32Hole},Value (Word32Value 1211417884),Value (Word32Value 846493148),Hole {byte_offset = 93, hole_type = Word16Hole},Value (Word16Value 53239),Value (Word16Value 54156),Hole {byte_offset = 99, hole_type = Word16Hole},Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word8Value 241),Hole {byte_offset = 110, hole_type = Word32Hole},Hole {byte_offset = 114, hole_type = Word32Hole},Value (Word32Value 3372672211),Hole {byte_offset = 122, hole_type = Word8Hole},Hole {byte_offset = 123, hole_type = Word32Hole},Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word32Value 955429467),Value (Word8Value 226),Value (Word8Value 67),Hole {byte_offset = 141, hole_type = Word16Hole},Hole {byte_offset = 143, hole_type = Word8Hole},Hole {byte_offset = 144, hole_type = Word8Hole},Value (Word16Value 32488),Value (Word16Value 42490),Hole {byte_offset = 149, hole_type = Word32Hole},Value (Word16Value 55589),Value (Word32Value 43535478),Hole {byte_offset = 159, hole_type = Word8Hole},Value (Word16Value 52982),Hole {byte_offset = 162, hole_type = Word16Hole},Hole {byte_offset = 164, hole_type = Word8Hole},Hole {byte_offset = 165, hole_type = Word8Hole},Hole {byte_offset = 166, hole_type = Word8Hole},Hole {byte_offset = 167, hole_type = Word32Hole},Hole {byte_offset = 171, hole_type = Word32Hole},Hole {byte_offset = 175, hole_type = Word16Hole},Value (Word16Value 15289),Value (Word16Value 9414),Value (Word16Value 28288),Value (Word32Value 3988402041),Value (Word32Value 708919033),Hole {byte_offset = 191, hole_type = Word16Hole},Hole {byte_offset = 193, hole_type = Word16Hole},Value (Word16Value 58290),Hole {byte_offset = 197, hole_type = Word16Hole},Value (Word8Value 115),Value (Word8Value 18),Hole {byte_offset = 201, hole_type = Word16Hole},Value (Word8Value 211),Value (Word16Value 2736),Hole {byte_offset = 206, hole_type = Word8Hole},Value (Word32Value 881866054),Value (Word32Value 1488643215),Value (Word8Value 92),Value (Word8Value 114),Value (Word8Value 171),Hole {byte_offset = 218, hole_type = Word16Hole},Hole {byte_offset = 220, hole_type = Word8Hole},Value (Word8Value 152),Value (Word8Value 79),Value (Word16Value 44786),Hole {byte_offset = 225, hole_type = Word32Hole},Value (Word8Value 152),Value (Word8Value 55),Hole {byte_offset = 231, hole_type = Word16Hole},Value (Word16Value 38509),Hole {byte_offset = 235, hole_type = Word16Hole}]}
