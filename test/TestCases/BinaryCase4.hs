{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase4 where
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
    0 :: Word8 <- getWord8
    3402720926 :: Word32 <- getWord32be
    v_0 :: Word16 <- getWord16be
    44222 :: Word16 <- getWord16be
    46874694 :: Word32 <- getWord32be
    215 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    v_2 :: Word16 <- getWord16be
    17 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    240 :: Word8 <- getWord8
    v_4 :: Word8 <- getWord8
    10132 :: Word16 <- getWord16be
    50497 :: Word16 <- getWord16be
    v_5 :: Word16 <- getWord16be
    30485 :: Word16 <- getWord16be
    176 :: Word8 <- getWord8
    58 :: Word8 <- getWord8
    3947348124 :: Word32 <- getWord32be
    v_6 :: Word8 <- getWord8
    v_7 :: Word8 <- getWord8
    v_8 :: Word8 <- getWord8
    v_9 :: Word32 <- getWord32be
    2444751217 :: Word32 <- getWord32be
    v_10 :: Word8 <- getWord8
    v_11 :: Word16 <- getWord16be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    2196800970 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    22270 :: Word16 <- getWord16be
    24578 :: Word16 <- getWord16be
    563024830 :: Word32 <- getWord32be
    1587 :: Word16 <- getWord16be
    77 :: Word8 <- getWord8
    3865670427 :: Word32 <- getWord32be
    v_15 :: Word16 <- getWord16be
    152 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    11347 :: Word16 <- getWord16be
    v_17 :: Word16 <- getWord16be
    244 :: Word8 <- getWord8
    214463403 :: Word32 <- getWord32be
    223 :: Word8 <- getWord8
    v_18 :: Word16 <- getWord16be
    v_19 :: Word8 <- getWord8
    30717 :: Word16 <- getWord16be
    3760221949 :: Word32 <- getWord32be
    18882 :: Word16 <- getWord16be
    53142200 :: Word32 <- getWord32be
    2963025724 :: Word32 <- getWord32be
    v_20 :: Word8 <- getWord8
    v_21 :: Word32 <- getWord32be
    v_22 :: Word8 <- getWord8
    52718 :: Word16 <- getWord16be
    15892 :: Word16 <- getWord16be
    v_23 :: Word16 <- getWord16be
    37 :: Word8 <- getWord8
    v_24 :: Word8 <- getWord8
    v_25 :: Word16 <- getWord16be
    v_26 :: Word32 <- getWord32be
    37399 :: Word16 <- getWord16be
    63005 :: Word16 <- getWord16be
    v_27 :: Word8 <- getWord8
    v_28 :: Word16 <- getWord16be
    42637 :: Word16 <- getWord16be
    v_29 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    v_31 :: Word16 <- getWord16be
    v_32 :: Word32 <- getWord32be
    v_33 :: Word32 <- getWord32be
    108 :: Word8 <- getWord8
    1740320146 :: Word32 <- getWord32be
    221 :: Word8 <- getWord8
    30468 :: Word16 <- getWord16be
    1301960312 :: Word32 <- getWord32be
    2192533691 :: Word32 <- getWord32be
    97 :: Word8 <- getWord8
    v_34 :: Word16 <- getWord16be
    45 :: Word8 <- getWord8
    v_35 :: Word8 <- getWord8
    v_36 :: Word32 <- getWord32be
    192 :: Word8 <- getWord8
    v_37 :: Word8 <- getWord8
    v_38 :: Word32 <- getWord32be
    1963432744 :: Word32 <- getWord32be
    169 :: Word8 <- getWord8
    1681389900 :: Word32 <- getWord32be
    v_39 :: Word16 <- getWord16be
    722002638 :: Word32 <- getWord32be
    v_40 :: Word32 <- getWord32be
    v_41 :: Word32 <- getWord32be
    3323876738 :: Word32 <- getWord32be
    58223 :: Word16 <- getWord16be
    v_42 :: Word16 <- getWord16be
    v_43 :: Word16 <- getWord16be
    v_44 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    3840979582 :: Word32 <- getWord32be
    v_46 :: Word32 <- getWord32be
    49 :: Word8 <- getWord8
    v_47 :: Word16 <- getWord16be
    52172 :: Word16 <- getWord16be
    24046 :: Word16 <- getWord16be
    31937 :: Word16 <- getWord16be
    1217335868 :: Word32 <- getWord32be
    225 :: Word8 <- getWord8
    36959 :: Word16 <- getWord16be
    v_48 :: Word8 <- getWord8
    v_49 :: Word16 <- getWord16be
    3158815475 :: Word32 <- getWord32be
    28631 :: Word16 <- getWord16be
    362110979 :: Word32 <- getWord32be
    18488 :: Word16 <- getWord16be
    v_50 :: Word16 <- getWord16be
    v_51 :: Word8 <- getWord8
    v_52 :: Word8 <- getWord8
    v_53 :: Word8 <- getWord8
    51103 :: Word16 <- getWord16be
    v_54 :: Word16 <- getWord16be
    v_55 :: Word8 <- getWord8
    v_56 :: Word16 <- getWord16be
    v_57 :: Word8 <- getWord8
    223 :: Word8 <- getWord8
    v_58 :: Word8 <- getWord8
    3103499705 :: Word32 <- getWord32be
    89 :: Word8 <- getWord8
    return  [ Word16Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 , Word16Value v_49 , Word16Value v_50 , Word8Value v_51 , Word8Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 , Word16Value v_49 , Word16Value v_50 , Word8Value v_51 , Word8Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 ] = vs 
    putWord8 (0 :: Word8)
    putWord32be 3402720926
    putWord16be v_0
    putWord16be 44222
    putWord32be 46874694
    putWord8 (215 :: Word8)
    putWord32be v_1
    putWord16be v_2
    putWord8 (17 :: Word8)
    putWord16be v_3
    putWord8 (240 :: Word8)
    putWord8 v_4
    putWord16be 10132
    putWord16be 50497
    putWord16be v_5
    putWord16be 30485
    putWord8 (176 :: Word8)
    putWord8 (58 :: Word8)
    putWord32be 3947348124
    putWord8 v_6
    putWord8 v_7
    putWord8 v_8
    putWord32be v_9
    putWord32be 2444751217
    putWord8 v_10
    putWord16be v_11
    putWord16be v_12
    putWord32be v_13
    putWord32be 2196800970
    putWord8 v_14
    putWord16be 22270
    putWord16be 24578
    putWord32be 563024830
    putWord16be 1587
    putWord8 (77 :: Word8)
    putWord32be 3865670427
    putWord16be v_15
    putWord8 (152 :: Word8)
    putWord32be v_16
    putWord16be 11347
    putWord16be v_17
    putWord8 (244 :: Word8)
    putWord32be 214463403
    putWord8 (223 :: Word8)
    putWord16be v_18
    putWord8 v_19
    putWord16be 30717
    putWord32be 3760221949
    putWord16be 18882
    putWord32be 53142200
    putWord32be 2963025724
    putWord8 v_20
    putWord32be v_21
    putWord8 v_22
    putWord16be 52718
    putWord16be 15892
    putWord16be v_23
    putWord8 (37 :: Word8)
    putWord8 v_24
    putWord16be v_25
    putWord32be v_26
    putWord16be 37399
    putWord16be 63005
    putWord8 v_27
    putWord16be v_28
    putWord16be 42637
    putWord16be v_29
    putWord16be v_30
    putWord16be v_31
    putWord32be v_32
    putWord32be v_33
    putWord8 (108 :: Word8)
    putWord32be 1740320146
    putWord8 (221 :: Word8)
    putWord16be 30468
    putWord32be 1301960312
    putWord32be 2192533691
    putWord8 (97 :: Word8)
    putWord16be v_34
    putWord8 (45 :: Word8)
    putWord8 v_35
    putWord32be v_36
    putWord8 (192 :: Word8)
    putWord8 v_37
    putWord32be v_38
    putWord32be 1963432744
    putWord8 (169 :: Word8)
    putWord32be 1681389900
    putWord16be v_39
    putWord32be 722002638
    putWord32be v_40
    putWord32be v_41
    putWord32be 3323876738
    putWord16be 58223
    putWord16be v_42
    putWord16be v_43
    putWord16be v_44
    putWord8 v_45
    putWord32be 3840979582
    putWord32be v_46
    putWord8 (49 :: Word8)
    putWord16be v_47
    putWord16be 52172
    putWord16be 24046
    putWord16be 31937
    putWord32be 1217335868
    putWord8 (225 :: Word8)
    putWord16be 36959
    putWord8 v_48
    putWord16be v_49
    putWord32be 3158815475
    putWord16be 28631
    putWord32be 362110979
    putWord16be 18488
    putWord16be v_50
    putWord8 v_51
    putWord8 v_52
    putWord8 v_53
    putWord16be 51103
    putWord16be v_54
    putWord8 v_55
    putWord16be v_56
    putWord8 v_57
    putWord8 (223 :: Word8)
    putWord8 v_58
    putWord32be 3103499705
    putWord8 (89 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 0),Value (Word32Value 3402720926),Hole {byte_offset = 5, hole_type = Word16Hole},Value (Word16Value 44222),Value (Word32Value 46874694),Value (Word8Value 215),Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word16Hole},Value (Word8Value 17),Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word8Value 240),Hole {byte_offset = 24, hole_type = Word8Hole},Value (Word16Value 10132),Value (Word16Value 50497),Hole {byte_offset = 29, hole_type = Word16Hole},Value (Word16Value 30485),Value (Word8Value 176),Value (Word8Value 58),Value (Word32Value 3947348124),Hole {byte_offset = 39, hole_type = Word8Hole},Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word8Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word32Value 2444751217),Hole {byte_offset = 50, hole_type = Word8Hole},Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word16Hole},Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word32Value 2196800970),Hole {byte_offset = 63, hole_type = Word8Hole},Value (Word16Value 22270),Value (Word16Value 24578),Value (Word32Value 563024830),Value (Word16Value 1587),Value (Word8Value 77),Value (Word32Value 3865670427),Hole {byte_offset = 79, hole_type = Word16Hole},Value (Word8Value 152),Hole {byte_offset = 82, hole_type = Word32Hole},Value (Word16Value 11347),Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 244),Value (Word32Value 214463403),Value (Word8Value 223),Hole {byte_offset = 96, hole_type = Word16Hole},Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word16Value 30717),Value (Word32Value 3760221949),Value (Word16Value 18882),Value (Word32Value 53142200),Value (Word32Value 2963025724),Hole {byte_offset = 115, hole_type = Word8Hole},Hole {byte_offset = 116, hole_type = Word32Hole},Hole {byte_offset = 120, hole_type = Word8Hole},Value (Word16Value 52718),Value (Word16Value 15892),Hole {byte_offset = 125, hole_type = Word16Hole},Value (Word8Value 37),Hole {byte_offset = 128, hole_type = Word8Hole},Hole {byte_offset = 129, hole_type = Word16Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Value (Word16Value 37399),Value (Word16Value 63005),Hole {byte_offset = 139, hole_type = Word8Hole},Hole {byte_offset = 140, hole_type = Word16Hole},Value (Word16Value 42637),Hole {byte_offset = 144, hole_type = Word16Hole},Hole {byte_offset = 146, hole_type = Word16Hole},Hole {byte_offset = 148, hole_type = Word16Hole},Hole {byte_offset = 150, hole_type = Word32Hole},Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word8Value 108),Value (Word32Value 1740320146),Value (Word8Value 221),Value (Word16Value 30468),Value (Word32Value 1301960312),Value (Word32Value 2192533691),Value (Word8Value 97),Hole {byte_offset = 175, hole_type = Word16Hole},Value (Word8Value 45),Hole {byte_offset = 178, hole_type = Word8Hole},Hole {byte_offset = 179, hole_type = Word32Hole},Value (Word8Value 192),Hole {byte_offset = 184, hole_type = Word8Hole},Hole {byte_offset = 185, hole_type = Word32Hole},Value (Word32Value 1963432744),Value (Word8Value 169),Value (Word32Value 1681389900),Hole {byte_offset = 198, hole_type = Word16Hole},Value (Word32Value 722002638),Hole {byte_offset = 204, hole_type = Word32Hole},Hole {byte_offset = 208, hole_type = Word32Hole},Value (Word32Value 3323876738),Value (Word16Value 58223),Hole {byte_offset = 218, hole_type = Word16Hole},Hole {byte_offset = 220, hole_type = Word16Hole},Hole {byte_offset = 222, hole_type = Word16Hole},Hole {byte_offset = 224, hole_type = Word8Hole},Value (Word32Value 3840979582),Hole {byte_offset = 229, hole_type = Word32Hole},Value (Word8Value 49),Hole {byte_offset = 234, hole_type = Word16Hole},Value (Word16Value 52172),Value (Word16Value 24046),Value (Word16Value 31937),Value (Word32Value 1217335868),Value (Word8Value 225),Value (Word16Value 36959),Hole {byte_offset = 249, hole_type = Word8Hole},Hole {byte_offset = 250, hole_type = Word16Hole},Value (Word32Value 3158815475),Value (Word16Value 28631),Value (Word32Value 362110979),Value (Word16Value 18488),Hole {byte_offset = 264, hole_type = Word16Hole},Hole {byte_offset = 266, hole_type = Word8Hole},Hole {byte_offset = 267, hole_type = Word8Hole},Hole {byte_offset = 268, hole_type = Word8Hole},Value (Word16Value 51103),Hole {byte_offset = 271, hole_type = Word16Hole},Hole {byte_offset = 273, hole_type = Word8Hole},Hole {byte_offset = 274, hole_type = Word16Hole},Hole {byte_offset = 276, hole_type = Word8Hole},Value (Word8Value 223),Hole {byte_offset = 278, hole_type = Word8Hole},Value (Word32Value 3103499705),Value (Word8Value 89)]}
