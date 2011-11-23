{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase5 where
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
    v_0 :: Word8 <- getWord8
    v_1 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    1742292060 :: Word32 <- getWord32be
    947585243 :: Word32 <- getWord32be
    2832 :: Word16 <- getWord16be
    18607 :: Word16 <- getWord16be
    41156 :: Word16 <- getWord16be
    v_3 :: Word16 <- getWord16be
    172 :: Word8 <- getWord8
    3615550894 :: Word32 <- getWord32be
    v_4 :: Word16 <- getWord16be
    v_5 :: Word8 <- getWord8
    169 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word16 <- getWord16be
    v_8 :: Word16 <- getWord16be
    1917966021 :: Word32 <- getWord32be
    160 :: Word8 <- getWord8
    v_9 :: Word32 <- getWord32be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    v_12 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    177 :: Word8 <- getWord8
    236 :: Word8 <- getWord8
    v_15 :: Word16 <- getWord16be
    247 :: Word8 <- getWord8
    1435522009 :: Word32 <- getWord32be
    218 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    1050244933 :: Word32 <- getWord32be
    v_17 :: Word16 <- getWord16be
    v_18 :: Word32 <- getWord32be
    53970 :: Word16 <- getWord16be
    1082139989 :: Word32 <- getWord32be
    17262 :: Word16 <- getWord16be
    v_19 :: Word16 <- getWord16be
    2598966239 :: Word32 <- getWord32be
    v_20 :: Word32 <- getWord32be
    v_21 :: Word16 <- getWord16be
    v_22 :: Word8 <- getWord8
    28687 :: Word16 <- getWord16be
    v_23 :: Word8 <- getWord8
    612811178 :: Word32 <- getWord32be
    19689 :: Word16 <- getWord16be
    3917814105 :: Word32 <- getWord32be
    174 :: Word8 <- getWord8
    v_24 :: Word8 <- getWord8
    v_25 :: Word16 <- getWord16be
    15 :: Word8 <- getWord8
    v_26 :: Word16 <- getWord16be
    v_27 :: Word8 <- getWord8
    152 :: Word8 <- getWord8
    40508 :: Word16 <- getWord16be
    154 :: Word8 <- getWord8
    16102 :: Word16 <- getWord16be
    37771 :: Word16 <- getWord16be
    v_28 :: Word32 <- getWord32be
    v_29 :: Word8 <- getWord8
    v_30 :: Word8 <- getWord8
    205 :: Word8 <- getWord8
    60044 :: Word16 <- getWord16be
    v_31 :: Word32 <- getWord32be
    v_32 :: Word32 <- getWord32be
    138 :: Word8 <- getWord8
    68 :: Word8 <- getWord8
    37410 :: Word16 <- getWord16be
    v_33 :: Word32 <- getWord32be
    227 :: Word8 <- getWord8
    v_34 :: Word16 <- getWord16be
    34 :: Word8 <- getWord8
    2393705391 :: Word32 <- getWord32be
    138 :: Word8 <- getWord8
    v_35 :: Word16 <- getWord16be
    v_36 :: Word8 <- getWord8
    v_37 :: Word32 <- getWord32be
    20921 :: Word16 <- getWord16be
    v_38 :: Word32 <- getWord32be
    v_39 :: Word16 <- getWord16be
    6727 :: Word16 <- getWord16be
    154 :: Word8 <- getWord8
    v_40 :: Word32 <- getWord32be
    121 :: Word8 <- getWord8
    1970047312 :: Word32 <- getWord32be
    27310 :: Word16 <- getWord16be
    v_41 :: Word8 <- getWord8
    v_42 :: Word8 <- getWord8
    v_43 :: Word16 <- getWord16be
    2592659793 :: Word32 <- getWord32be
    3886 :: Word16 <- getWord16be
    v_44 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    v_46 :: Word8 <- getWord8
    v_47 :: Word32 <- getWord32be
    v_48 :: Word16 <- getWord16be
    v_49 :: Word32 <- getWord32be
    3014319596 :: Word32 <- getWord32be
    v_50 :: Word8 <- getWord8
    v_51 :: Word16 <- getWord16be
    36442 :: Word16 <- getWord16be
    v_52 :: Word16 <- getWord16be
    255 :: Word8 <- getWord8
    v_53 :: Word8 <- getWord8
    28 :: Word8 <- getWord8
    3546 :: Word16 <- getWord16be
    v_54 :: Word8 <- getWord8
    v_55 :: Word16 <- getWord16be
    v_56 :: Word8 <- getWord8
    387683846 :: Word32 <- getWord32be
    47159 :: Word16 <- getWord16be
    6501 :: Word16 <- getWord16be
    26867 :: Word16 <- getWord16be
    25 :: Word8 <- getWord8
    216 :: Word8 <- getWord8
    v_57 :: Word16 <- getWord16be
    v_58 :: Word16 <- getWord16be
    v_59 :: Word8 <- getWord8
    7786 :: Word16 <- getWord16be
    v_60 :: Word8 <- getWord8
    v_61 :: Word16 <- getWord16be
    v_62 :: Word8 <- getWord8
    180 :: Word8 <- getWord8
    v_63 :: Word8 <- getWord8
    46 :: Word8 <- getWord8
    24 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word8Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word8Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 , Word16Value v_52 , Word8Value v_53 , Word8Value v_54 , Word16Value v_55 , Word8Value v_56 , Word16Value v_57 , Word16Value v_58 , Word8Value v_59 , Word8Value v_60 , Word16Value v_61 , Word8Value v_62 , Word8Value v_63 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word8Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word8Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 , Word16Value v_52 , Word8Value v_53 , Word8Value v_54 , Word16Value v_55 , Word8Value v_56 , Word16Value v_57 , Word16Value v_58 , Word8Value v_59 , Word8Value v_60 , Word16Value v_61 , Word8Value v_62 , Word8Value v_63 ] = vs 
    putWord8 v_0
    putWord16be v_1
    putWord32be v_2
    putWord32be 1742292060
    putWord32be 947585243
    putWord16be 2832
    putWord16be 18607
    putWord16be 41156
    putWord16be v_3
    putWord8 (172 :: Word8)
    putWord32be 3615550894
    putWord16be v_4
    putWord8 v_5
    putWord8 (169 :: Word8)
    putWord32be v_6
    putWord16be v_7
    putWord16be v_8
    putWord32be 1917966021
    putWord8 (160 :: Word8)
    putWord32be v_9
    putWord16be v_10
    putWord8 v_11
    putWord16be v_12
    putWord32be v_13
    putWord8 v_14
    putWord8 (177 :: Word8)
    putWord8 (236 :: Word8)
    putWord16be v_15
    putWord8 (247 :: Word8)
    putWord32be 1435522009
    putWord8 (218 :: Word8)
    putWord32be v_16
    putWord32be 1050244933
    putWord16be v_17
    putWord32be v_18
    putWord16be 53970
    putWord32be 1082139989
    putWord16be 17262
    putWord16be v_19
    putWord32be 2598966239
    putWord32be v_20
    putWord16be v_21
    putWord8 v_22
    putWord16be 28687
    putWord8 v_23
    putWord32be 612811178
    putWord16be 19689
    putWord32be 3917814105
    putWord8 (174 :: Word8)
    putWord8 v_24
    putWord16be v_25
    putWord8 (15 :: Word8)
    putWord16be v_26
    putWord8 v_27
    putWord8 (152 :: Word8)
    putWord16be 40508
    putWord8 (154 :: Word8)
    putWord16be 16102
    putWord16be 37771
    putWord32be v_28
    putWord8 v_29
    putWord8 v_30
    putWord8 (205 :: Word8)
    putWord16be 60044
    putWord32be v_31
    putWord32be v_32
    putWord8 (138 :: Word8)
    putWord8 (68 :: Word8)
    putWord16be 37410
    putWord32be v_33
    putWord8 (227 :: Word8)
    putWord16be v_34
    putWord8 (34 :: Word8)
    putWord32be 2393705391
    putWord8 (138 :: Word8)
    putWord16be v_35
    putWord8 v_36
    putWord32be v_37
    putWord16be 20921
    putWord32be v_38
    putWord16be v_39
    putWord16be 6727
    putWord8 (154 :: Word8)
    putWord32be v_40
    putWord8 (121 :: Word8)
    putWord32be 1970047312
    putWord16be 27310
    putWord8 v_41
    putWord8 v_42
    putWord16be v_43
    putWord32be 2592659793
    putWord16be 3886
    putWord16be v_44
    putWord8 v_45
    putWord8 v_46
    putWord32be v_47
    putWord16be v_48
    putWord32be v_49
    putWord32be 3014319596
    putWord8 v_50
    putWord16be v_51
    putWord16be 36442
    putWord16be v_52
    putWord8 (255 :: Word8)
    putWord8 v_53
    putWord8 (28 :: Word8)
    putWord16be 3546
    putWord8 v_54
    putWord16be v_55
    putWord8 v_56
    putWord32be 387683846
    putWord16be 47159
    putWord16be 6501
    putWord16be 26867
    putWord8 (25 :: Word8)
    putWord8 (216 :: Word8)
    putWord16be v_57
    putWord16be v_58
    putWord8 v_59
    putWord16be 7786
    putWord8 v_60
    putWord16be v_61
    putWord8 v_62
    putWord8 (180 :: Word8)
    putWord8 v_63
    putWord8 (46 :: Word8)
    putWord8 (24 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word32Hole},Value (Word32Value 1742292060),Value (Word32Value 947585243),Value (Word16Value 2832),Value (Word16Value 18607),Value (Word16Value 41156),Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word8Value 172),Value (Word32Value 3615550894),Hole {byte_offset = 28, hole_type = Word16Hole},Hole {byte_offset = 30, hole_type = Word8Hole},Value (Word8Value 169),Hole {byte_offset = 32, hole_type = Word32Hole},Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Value (Word32Value 1917966021),Value (Word8Value 160),Hole {byte_offset = 45, hole_type = Word32Hole},Hole {byte_offset = 49, hole_type = Word16Hole},Hole {byte_offset = 51, hole_type = Word8Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Hole {byte_offset = 54, hole_type = Word32Hole},Hole {byte_offset = 58, hole_type = Word8Hole},Value (Word8Value 177),Value (Word8Value 236),Hole {byte_offset = 61, hole_type = Word16Hole},Value (Word8Value 247),Value (Word32Value 1435522009),Value (Word8Value 218),Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word32Value 1050244933),Hole {byte_offset = 77, hole_type = Word16Hole},Hole {byte_offset = 79, hole_type = Word32Hole},Value (Word16Value 53970),Value (Word32Value 1082139989),Value (Word16Value 17262),Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word32Value 2598966239),Hole {byte_offset = 97, hole_type = Word32Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Hole {byte_offset = 103, hole_type = Word8Hole},Value (Word16Value 28687),Hole {byte_offset = 106, hole_type = Word8Hole},Value (Word32Value 612811178),Value (Word16Value 19689),Value (Word32Value 3917814105),Value (Word8Value 174),Hole {byte_offset = 118, hole_type = Word8Hole},Hole {byte_offset = 119, hole_type = Word16Hole},Value (Word8Value 15),Hole {byte_offset = 122, hole_type = Word16Hole},Hole {byte_offset = 124, hole_type = Word8Hole},Value (Word8Value 152),Value (Word16Value 40508),Value (Word8Value 154),Value (Word16Value 16102),Value (Word16Value 37771),Hole {byte_offset = 133, hole_type = Word32Hole},Hole {byte_offset = 137, hole_type = Word8Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Value (Word8Value 205),Value (Word16Value 60044),Hole {byte_offset = 142, hole_type = Word32Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word8Value 138),Value (Word8Value 68),Value (Word16Value 37410),Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word8Value 227),Hole {byte_offset = 159, hole_type = Word16Hole},Value (Word8Value 34),Value (Word32Value 2393705391),Value (Word8Value 138),Hole {byte_offset = 167, hole_type = Word16Hole},Hole {byte_offset = 169, hole_type = Word8Hole},Hole {byte_offset = 170, hole_type = Word32Hole},Value (Word16Value 20921),Hole {byte_offset = 176, hole_type = Word32Hole},Hole {byte_offset = 180, hole_type = Word16Hole},Value (Word16Value 6727),Value (Word8Value 154),Hole {byte_offset = 185, hole_type = Word32Hole},Value (Word8Value 121),Value (Word32Value 1970047312),Value (Word16Value 27310),Hole {byte_offset = 196, hole_type = Word8Hole},Hole {byte_offset = 197, hole_type = Word8Hole},Hole {byte_offset = 198, hole_type = Word16Hole},Value (Word32Value 2592659793),Value (Word16Value 3886),Hole {byte_offset = 206, hole_type = Word16Hole},Hole {byte_offset = 208, hole_type = Word8Hole},Hole {byte_offset = 209, hole_type = Word8Hole},Hole {byte_offset = 210, hole_type = Word32Hole},Hole {byte_offset = 214, hole_type = Word16Hole},Hole {byte_offset = 216, hole_type = Word32Hole},Value (Word32Value 3014319596),Hole {byte_offset = 224, hole_type = Word8Hole},Hole {byte_offset = 225, hole_type = Word16Hole},Value (Word16Value 36442),Hole {byte_offset = 229, hole_type = Word16Hole},Value (Word8Value 255),Hole {byte_offset = 232, hole_type = Word8Hole},Value (Word8Value 28),Value (Word16Value 3546),Hole {byte_offset = 236, hole_type = Word8Hole},Hole {byte_offset = 237, hole_type = Word16Hole},Hole {byte_offset = 239, hole_type = Word8Hole},Value (Word32Value 387683846),Value (Word16Value 47159),Value (Word16Value 6501),Value (Word16Value 26867),Value (Word8Value 25),Value (Word8Value 216),Hole {byte_offset = 252, hole_type = Word16Hole},Hole {byte_offset = 254, hole_type = Word16Hole},Hole {byte_offset = 256, hole_type = Word8Hole},Value (Word16Value 7786),Hole {byte_offset = 259, hole_type = Word8Hole},Hole {byte_offset = 260, hole_type = Word16Hole},Hole {byte_offset = 262, hole_type = Word8Hole},Value (Word8Value 180),Hole {byte_offset = 264, hole_type = Word8Hole},Value (Word8Value 46),Value (Word8Value 24)]}
