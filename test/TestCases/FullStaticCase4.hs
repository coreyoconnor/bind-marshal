{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase4 where
import Bind.Marshal.Prelude
import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.DesAction.Static
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StaticProperties
import Bind.Marshal.StdLib.Des
import Bind.Marshal.StdLib.Utils.Des
import Bind.Marshal.StdLib.Ser
import Bind.Marshal.StdLib.Utils.Ser

import ArbMarshal
import ArbMarshal.GenCode.Utils

import Data.Word

des_static_structure = do 
    0 :: Word8 <- des
    3402720926 :: Word32 <- des_word32_be
    v_0 :: Word16 <- des_word16_be
    44222 :: Word16 <- des_word16_be
    46874694 :: Word32 <- des_word32_be
    215 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    v_2 :: Word16 <- des_word16_be
    17 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    240 :: Word8 <- des
    v_4 :: Word8 <- des
    10132 :: Word16 <- des_word16_be
    50497 :: Word16 <- des_word16_be
    v_5 :: Word16 <- des_word16_be
    30485 :: Word16 <- des_word16_be
    176 :: Word8 <- des
    58 :: Word8 <- des
    3947348124 :: Word32 <- des_word32_be
    v_6 :: Word8 <- des
    v_7 :: Word8 <- des
    v_8 :: Word8 <- des
    v_9 :: Word32 <- des_word32_be
    2444751217 :: Word32 <- des_word32_be
    v_10 :: Word8 <- des
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    2196800970 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    22270 :: Word16 <- des_word16_be
    24578 :: Word16 <- des_word16_be
    563024830 :: Word32 <- des_word32_be
    1587 :: Word16 <- des_word16_be
    77 :: Word8 <- des
    3865670427 :: Word32 <- des_word32_be
    v_15 :: Word16 <- des_word16_be
    152 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    11347 :: Word16 <- des_word16_be
    v_17 :: Word16 <- des_word16_be
    244 :: Word8 <- des
    214463403 :: Word32 <- des_word32_be
    223 :: Word8 <- des
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word8 <- des
    30717 :: Word16 <- des_word16_be
    3760221949 :: Word32 <- des_word32_be
    18882 :: Word16 <- des_word16_be
    53142200 :: Word32 <- des_word32_be
    2963025724 :: Word32 <- des_word32_be
    v_20 :: Word8 <- des
    v_21 :: Word32 <- des_word32_be
    v_22 :: Word8 <- des
    52718 :: Word16 <- des_word16_be
    15892 :: Word16 <- des_word16_be
    v_23 :: Word16 <- des_word16_be
    37 :: Word8 <- des
    v_24 :: Word8 <- des
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word32 <- des_word32_be
    37399 :: Word16 <- des_word16_be
    63005 :: Word16 <- des_word16_be
    v_27 :: Word8 <- des
    v_28 :: Word16 <- des_word16_be
    42637 :: Word16 <- des_word16_be
    v_29 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    v_31 :: Word16 <- des_word16_be
    v_32 :: Word32 <- des_word32_be
    v_33 :: Word32 <- des_word32_be
    108 :: Word8 <- des
    1740320146 :: Word32 <- des_word32_be
    221 :: Word8 <- des
    30468 :: Word16 <- des_word16_be
    1301960312 :: Word32 <- des_word32_be
    2192533691 :: Word32 <- des_word32_be
    97 :: Word8 <- des
    v_34 :: Word16 <- des_word16_be
    45 :: Word8 <- des
    v_35 :: Word8 <- des
    v_36 :: Word32 <- des_word32_be
    192 :: Word8 <- des
    v_37 :: Word8 <- des
    v_38 :: Word32 <- des_word32_be
    1963432744 :: Word32 <- des_word32_be
    169 :: Word8 <- des
    1681389900 :: Word32 <- des_word32_be
    v_39 :: Word16 <- des_word16_be
    722002638 :: Word32 <- des_word32_be
    v_40 :: Word32 <- des_word32_be
    v_41 :: Word32 <- des_word32_be
    3323876738 :: Word32 <- des_word32_be
    58223 :: Word16 <- des_word16_be
    v_42 :: Word16 <- des_word16_be
    v_43 :: Word16 <- des_word16_be
    v_44 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    3840979582 :: Word32 <- des_word32_be
    v_46 :: Word32 <- des_word32_be
    49 :: Word8 <- des
    v_47 :: Word16 <- des_word16_be
    52172 :: Word16 <- des_word16_be
    24046 :: Word16 <- des_word16_be
    31937 :: Word16 <- des_word16_be
    1217335868 :: Word32 <- des_word32_be
    225 :: Word8 <- des
    36959 :: Word16 <- des_word16_be
    v_48 :: Word8 <- des
    v_49 :: Word16 <- des_word16_be
    3158815475 :: Word32 <- des_word32_be
    28631 :: Word16 <- des_word16_be
    362110979 :: Word32 <- des_word32_be
    18488 :: Word16 <- des_word16_be
    v_50 :: Word16 <- des_word16_be
    v_51 :: Word8 <- des
    v_52 :: Word8 <- des
    v_53 :: Word8 <- des
    51103 :: Word16 <- des_word16_be
    v_54 :: Word16 <- des_word16_be
    v_55 :: Word8 <- des
    v_56 :: Word16 <- des_word16_be
    v_57 :: Word8 <- des
    223 :: Word8 <- des
    v_58 :: Word8 <- des
    3103499705 :: Word32 <- des_word32_be
    89 :: Word8 <- des
    return  [ Word16Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 , Word16Value v_49 , Word16Value v_50 , Word8Value v_51 , Word8Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 , Word16Value v_49 , Word16Value v_50 , Word8Value v_51 , Word8Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 ] = vs 
    ser (0 :: Word8)
    ser_word32_be 3402720926
    ser_word16_be v_0
    ser_word16_be 44222
    ser_word32_be 46874694
    ser (215 :: Word8)
    ser_word32_be v_1
    ser_word16_be v_2
    ser (17 :: Word8)
    ser_word16_be v_3
    ser (240 :: Word8)
    ser v_4
    ser_word16_be 10132
    ser_word16_be 50497
    ser_word16_be v_5
    ser_word16_be 30485
    ser (176 :: Word8)
    ser (58 :: Word8)
    ser_word32_be 3947348124
    ser v_6
    ser v_7
    ser v_8
    ser_word32_be v_9
    ser_word32_be 2444751217
    ser v_10
    ser_word16_be v_11
    ser_word16_be v_12
    ser_word32_be v_13
    ser_word32_be 2196800970
    ser v_14
    ser_word16_be 22270
    ser_word16_be 24578
    ser_word32_be 563024830
    ser_word16_be 1587
    ser (77 :: Word8)
    ser_word32_be 3865670427
    ser_word16_be v_15
    ser (152 :: Word8)
    ser_word32_be v_16
    ser_word16_be 11347
    ser_word16_be v_17
    ser (244 :: Word8)
    ser_word32_be 214463403
    ser (223 :: Word8)
    ser_word16_be v_18
    ser v_19
    ser_word16_be 30717
    ser_word32_be 3760221949
    ser_word16_be 18882
    ser_word32_be 53142200
    ser_word32_be 2963025724
    ser v_20
    ser_word32_be v_21
    ser v_22
    ser_word16_be 52718
    ser_word16_be 15892
    ser_word16_be v_23
    ser (37 :: Word8)
    ser v_24
    ser_word16_be v_25
    ser_word32_be v_26
    ser_word16_be 37399
    ser_word16_be 63005
    ser v_27
    ser_word16_be v_28
    ser_word16_be 42637
    ser_word16_be v_29
    ser_word16_be v_30
    ser_word16_be v_31
    ser_word32_be v_32
    ser_word32_be v_33
    ser (108 :: Word8)
    ser_word32_be 1740320146
    ser (221 :: Word8)
    ser_word16_be 30468
    ser_word32_be 1301960312
    ser_word32_be 2192533691
    ser (97 :: Word8)
    ser_word16_be v_34
    ser (45 :: Word8)
    ser v_35
    ser_word32_be v_36
    ser (192 :: Word8)
    ser v_37
    ser_word32_be v_38
    ser_word32_be 1963432744
    ser (169 :: Word8)
    ser_word32_be 1681389900
    ser_word16_be v_39
    ser_word32_be 722002638
    ser_word32_be v_40
    ser_word32_be v_41
    ser_word32_be 3323876738
    ser_word16_be 58223
    ser_word16_be v_42
    ser_word16_be v_43
    ser_word16_be v_44
    ser v_45
    ser_word32_be 3840979582
    ser_word32_be v_46
    ser (49 :: Word8)
    ser_word16_be v_47
    ser_word16_be 52172
    ser_word16_be 24046
    ser_word16_be 31937
    ser_word32_be 1217335868
    ser (225 :: Word8)
    ser_word16_be 36959
    ser v_48
    ser_word16_be v_49
    ser_word32_be 3158815475
    ser_word16_be 28631
    ser_word32_be 362110979
    ser_word16_be 18488
    ser_word16_be v_50
    ser v_51
    ser v_52
    ser v_53
    ser_word16_be 51103
    ser_word16_be v_54
    ser v_55
    ser_word16_be v_56
    ser v_57
    ser (223 :: Word8)
    ser v_58
    ser_word32_be 3103499705
    ser (89 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 0),Value (Word32Value 3402720926),Hole {byte_offset = 5, hole_type = Word16Hole},Value (Word16Value 44222),Value (Word32Value 46874694),Value (Word8Value 215),Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word16Hole},Value (Word8Value 17),Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word8Value 240),Hole {byte_offset = 24, hole_type = Word8Hole},Value (Word16Value 10132),Value (Word16Value 50497),Hole {byte_offset = 29, hole_type = Word16Hole},Value (Word16Value 30485),Value (Word8Value 176),Value (Word8Value 58),Value (Word32Value 3947348124),Hole {byte_offset = 39, hole_type = Word8Hole},Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word8Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word32Value 2444751217),Hole {byte_offset = 50, hole_type = Word8Hole},Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word16Hole},Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word32Value 2196800970),Hole {byte_offset = 63, hole_type = Word8Hole},Value (Word16Value 22270),Value (Word16Value 24578),Value (Word32Value 563024830),Value (Word16Value 1587),Value (Word8Value 77),Value (Word32Value 3865670427),Hole {byte_offset = 79, hole_type = Word16Hole},Value (Word8Value 152),Hole {byte_offset = 82, hole_type = Word32Hole},Value (Word16Value 11347),Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 244),Value (Word32Value 214463403),Value (Word8Value 223),Hole {byte_offset = 96, hole_type = Word16Hole},Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word16Value 30717),Value (Word32Value 3760221949),Value (Word16Value 18882),Value (Word32Value 53142200),Value (Word32Value 2963025724),Hole {byte_offset = 115, hole_type = Word8Hole},Hole {byte_offset = 116, hole_type = Word32Hole},Hole {byte_offset = 120, hole_type = Word8Hole},Value (Word16Value 52718),Value (Word16Value 15892),Hole {byte_offset = 125, hole_type = Word16Hole},Value (Word8Value 37),Hole {byte_offset = 128, hole_type = Word8Hole},Hole {byte_offset = 129, hole_type = Word16Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Value (Word16Value 37399),Value (Word16Value 63005),Hole {byte_offset = 139, hole_type = Word8Hole},Hole {byte_offset = 140, hole_type = Word16Hole},Value (Word16Value 42637),Hole {byte_offset = 144, hole_type = Word16Hole},Hole {byte_offset = 146, hole_type = Word16Hole},Hole {byte_offset = 148, hole_type = Word16Hole},Hole {byte_offset = 150, hole_type = Word32Hole},Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word8Value 108),Value (Word32Value 1740320146),Value (Word8Value 221),Value (Word16Value 30468),Value (Word32Value 1301960312),Value (Word32Value 2192533691),Value (Word8Value 97),Hole {byte_offset = 175, hole_type = Word16Hole},Value (Word8Value 45),Hole {byte_offset = 178, hole_type = Word8Hole},Hole {byte_offset = 179, hole_type = Word32Hole},Value (Word8Value 192),Hole {byte_offset = 184, hole_type = Word8Hole},Hole {byte_offset = 185, hole_type = Word32Hole},Value (Word32Value 1963432744),Value (Word8Value 169),Value (Word32Value 1681389900),Hole {byte_offset = 198, hole_type = Word16Hole},Value (Word32Value 722002638),Hole {byte_offset = 204, hole_type = Word32Hole},Hole {byte_offset = 208, hole_type = Word32Hole},Value (Word32Value 3323876738),Value (Word16Value 58223),Hole {byte_offset = 218, hole_type = Word16Hole},Hole {byte_offset = 220, hole_type = Word16Hole},Hole {byte_offset = 222, hole_type = Word16Hole},Hole {byte_offset = 224, hole_type = Word8Hole},Value (Word32Value 3840979582),Hole {byte_offset = 229, hole_type = Word32Hole},Value (Word8Value 49),Hole {byte_offset = 234, hole_type = Word16Hole},Value (Word16Value 52172),Value (Word16Value 24046),Value (Word16Value 31937),Value (Word32Value 1217335868),Value (Word8Value 225),Value (Word16Value 36959),Hole {byte_offset = 249, hole_type = Word8Hole},Hole {byte_offset = 250, hole_type = Word16Hole},Value (Word32Value 3158815475),Value (Word16Value 28631),Value (Word32Value 362110979),Value (Word16Value 18488),Hole {byte_offset = 264, hole_type = Word16Hole},Hole {byte_offset = 266, hole_type = Word8Hole},Hole {byte_offset = 267, hole_type = Word8Hole},Hole {byte_offset = 268, hole_type = Word8Hole},Value (Word16Value 51103),Hole {byte_offset = 271, hole_type = Word16Hole},Hole {byte_offset = 273, hole_type = Word8Hole},Hole {byte_offset = 274, hole_type = Word16Hole},Hole {byte_offset = 276, hole_type = Word8Hole},Value (Word8Value 223),Hole {byte_offset = 278, hole_type = Word8Hole},Value (Word32Value 3103499705),Value (Word8Value 89)]}
