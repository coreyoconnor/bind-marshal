module TestCases.FullStaticCase6 where
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
    112 :: Word8 <- des
    v_0 :: Word8 <- des
    201 :: Word8 <- des
    222 :: Word8 <- des
    v_1 :: Word8 <- des
    v_2 :: Word16 <- des_word16_be
    1465570674 :: Word32 <- des_word32_be
    23339 :: Word16 <- des_word16_be
    49 :: Word8 <- des
    12 :: Word8 <- des
    196 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word16 <- des_word16_be
    158 :: Word8 <- des
    v_7 :: Word16 <- des_word16_be
    218 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word32 <- des_word32_be
    3869717926 :: Word32 <- des_word32_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    123 :: Word8 <- des
    20821 :: Word16 <- des_word16_be
    27 :: Word8 <- des
    v_12 :: Word32 <- des_word32_be
    3413138882 :: Word32 <- des_word32_be
    8544 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word32 <- des_word32_be
    v_15 :: Word8 <- des
    v_16 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    v_18 :: Word8 <- des
    v_19 :: Word32 <- des_word32_be
    924972061 :: Word32 <- des_word32_be
    72 :: Word8 <- des
    v_20 :: Word8 <- des
    v_21 :: Word8 <- des
    51298 :: Word16 <- des_word16_be
    v_22 :: Word8 <- des
    48982 :: Word16 <- des_word16_be
    v_23 :: Word16 <- des_word16_be
    2432193269 :: Word32 <- des_word32_be
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word32 <- des_word32_be
    v_26 :: Word16 <- des_word16_be
    122 :: Word8 <- des
    116 :: Word8 <- des
    144231419 :: Word32 <- des_word32_be
    32565 :: Word16 <- des_word16_be
    v_27 :: Word16 <- des_word16_be
    v_28 :: Word8 <- des
    50708 :: Word16 <- des_word16_be
    238219583 :: Word32 <- des_word32_be
    v_29 :: Word16 <- des_word16_be
    61455 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    v_31 :: Word32 <- des_word32_be
    3198619298 :: Word32 <- des_word32_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word8 <- des
    v_34 :: Word32 <- des_word32_be
    v_35 :: Word32 <- des_word32_be
    2101 :: Word16 <- des_word16_be
    3328808052 :: Word32 <- des_word32_be
    436221340 :: Word32 <- des_word32_be
    v_36 :: Word16 <- des_word16_be
    v_37 :: Word16 <- des_word16_be
    242 :: Word8 <- des
    v_38 :: Word32 <- des_word32_be
    64 :: Word8 <- des
    v_39 :: Word16 <- des_word16_be
    43502 :: Word16 <- des_word16_be
    3771315190 :: Word32 <- des_word32_be
    4243753305 :: Word32 <- des_word32_be
    v_40 :: Word16 <- des_word16_be
    v_41 :: Word16 <- des_word16_be
    v_42 :: Word8 <- des
    227 :: Word8 <- des
    v_43 :: Word32 <- des_word32_be
    1972812258 :: Word32 <- des_word32_be
    857574521 :: Word32 <- des_word32_be
    v_44 :: Word32 <- des_word32_be
    28 :: Word8 <- des
    41534 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    918709532 :: Word32 <- des_word32_be
    120 :: Word8 <- des
    v_46 :: Word32 <- des_word32_be
    v_47 :: Word16 <- des_word16_be
    2474 :: Word16 <- des_word16_be
    128 :: Word8 <- des
    254 :: Word8 <- des
    v_48 :: Word32 <- des_word32_be
    v_49 :: Word16 <- des_word16_be
    v_50 :: Word8 <- des
    218 :: Word8 <- des
    2179597460 :: Word32 <- des_word32_be
    6548 :: Word16 <- des_word16_be
    v_51 :: Word32 <- des_word32_be
    v_52 :: Word32 <- des_word32_be
    v_53 :: Word8 <- des
    v_54 :: Word16 <- des_word16_be
    v_55 :: Word8 <- des
    632845482 :: Word32 <- des_word32_be
    57684 :: Word16 <- des_word16_be
    v_56 :: Word8 <- des
    721822118 :: Word32 <- des_word32_be
    165395681 :: Word32 <- des_word32_be
    v_57 :: Word32 <- des_word32_be
    136 :: Word8 <- des
    2600980842 :: Word32 <- des_word32_be
    static_return  [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word32Value v_51 , Word32Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word8Value v_56 , Word32Value v_57 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word32Value v_51 , Word32Value v_52 , Word8Value v_53 , Word16Value v_54 , Word8Value v_55 , Word8Value v_56 , Word32Value v_57 ] = vs 
    ser (112 :: Word8)
    ser v_0
    ser (201 :: Word8)
    ser (222 :: Word8)
    ser v_1
    ser_word16_be v_2
    ser_word32_be 1465570674
    ser_word16_be 23339
    ser (49 :: Word8)
    ser (12 :: Word8)
    ser (196 :: Word8)
    ser_word32_be v_3
    ser v_4
    ser_word32_be v_5
    ser_word16_be v_6
    ser (158 :: Word8)
    ser_word16_be v_7
    ser (218 :: Word8)
    ser_word32_be v_8
    ser_word32_be v_9
    ser_word32_be 3869717926
    ser_word32_be v_10
    ser_word32_be v_11
    ser (123 :: Word8)
    ser_word16_be 20821
    ser (27 :: Word8)
    ser_word32_be v_12
    ser_word32_be 3413138882
    ser_word16_be 8544
    ser_word32_be v_13
    ser_word32_be v_14
    ser v_15
    ser v_16
    ser_word32_be v_17
    ser v_18
    ser_word32_be v_19
    ser_word32_be 924972061
    ser (72 :: Word8)
    ser v_20
    ser v_21
    ser_word16_be 51298
    ser v_22
    ser_word16_be 48982
    ser_word16_be v_23
    ser_word32_be 2432193269
    ser_word32_be v_24
    ser_word32_be v_25
    ser_word16_be v_26
    ser (122 :: Word8)
    ser (116 :: Word8)
    ser_word32_be 144231419
    ser_word16_be 32565
    ser_word16_be v_27
    ser v_28
    ser_word16_be 50708
    ser_word32_be 238219583
    ser_word16_be v_29
    ser_word16_be 61455
    ser_word16_be v_30
    ser_word32_be v_31
    ser_word32_be 3198619298
    ser_word16_be v_32
    ser v_33
    ser_word32_be v_34
    ser_word32_be v_35
    ser_word16_be 2101
    ser_word32_be 3328808052
    ser_word32_be 436221340
    ser_word16_be v_36
    ser_word16_be v_37
    ser (242 :: Word8)
    ser_word32_be v_38
    ser (64 :: Word8)
    ser_word16_be v_39
    ser_word16_be 43502
    ser_word32_be 3771315190
    ser_word32_be 4243753305
    ser_word16_be v_40
    ser_word16_be v_41
    ser v_42
    ser (227 :: Word8)
    ser_word32_be v_43
    ser_word32_be 1972812258
    ser_word32_be 857574521
    ser_word32_be v_44
    ser (28 :: Word8)
    ser_word16_be 41534
    ser v_45
    ser_word32_be 918709532
    ser (120 :: Word8)
    ser_word32_be v_46
    ser_word16_be v_47
    ser_word16_be 2474
    ser (128 :: Word8)
    ser (254 :: Word8)
    ser_word32_be v_48
    ser_word16_be v_49
    ser v_50
    ser (218 :: Word8)
    ser_word32_be 2179597460
    ser_word16_be 6548
    ser_word32_be v_51
    ser_word32_be v_52
    ser v_53
    ser_word16_be v_54
    ser v_55
    ser_word32_be 632845482
    ser_word16_be 57684
    ser v_56
    ser_word32_be 721822118
    ser_word32_be 165395681
    ser_word32_be v_57
    ser (136 :: Word8)
    ser_word32_be 2600980842
    static_return ()

static_structure = StaticStructure {properties = [Value (Word8Value 112),Hole {byte_offset = 1, hole_type = Word8Hole},Value (Word8Value 201),Value (Word8Value 222),Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word16Hole},Value (Word32Value 1465570674),Value (Word16Value 23339),Value (Word8Value 49),Value (Word8Value 12),Value (Word8Value 196),Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Value (Word8Value 158),Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word8Value 218),Hole {byte_offset = 31, hole_type = Word32Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word32Value 3869717926),Hole {byte_offset = 43, hole_type = Word32Hole},Hole {byte_offset = 47, hole_type = Word32Hole},Value (Word8Value 123),Value (Word16Value 20821),Value (Word8Value 27),Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word32Value 3413138882),Value (Word16Value 8544),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word32Hole},Hole {byte_offset = 73, hole_type = Word8Hole},Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word32Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Hole {byte_offset = 80, hole_type = Word32Hole},Value (Word32Value 924972061),Value (Word8Value 72),Hole {byte_offset = 89, hole_type = Word8Hole},Hole {byte_offset = 90, hole_type = Word8Hole},Value (Word16Value 51298),Hole {byte_offset = 93, hole_type = Word8Hole},Value (Word16Value 48982),Hole {byte_offset = 96, hole_type = Word16Hole},Value (Word32Value 2432193269),Hole {byte_offset = 102, hole_type = Word32Hole},Hole {byte_offset = 106, hole_type = Word32Hole},Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word8Value 122),Value (Word8Value 116),Value (Word32Value 144231419),Value (Word16Value 32565),Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word16Value 50708),Value (Word32Value 238219583),Hole {byte_offset = 129, hole_type = Word16Hole},Value (Word16Value 61455),Hole {byte_offset = 133, hole_type = Word16Hole},Hole {byte_offset = 135, hole_type = Word32Hole},Value (Word32Value 3198619298),Hole {byte_offset = 143, hole_type = Word16Hole},Hole {byte_offset = 145, hole_type = Word8Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Hole {byte_offset = 150, hole_type = Word32Hole},Value (Word16Value 2101),Value (Word32Value 3328808052),Value (Word32Value 436221340),Hole {byte_offset = 164, hole_type = Word16Hole},Hole {byte_offset = 166, hole_type = Word16Hole},Value (Word8Value 242),Hole {byte_offset = 169, hole_type = Word32Hole},Value (Word8Value 64),Hole {byte_offset = 174, hole_type = Word16Hole},Value (Word16Value 43502),Value (Word32Value 3771315190),Value (Word32Value 4243753305),Hole {byte_offset = 186, hole_type = Word16Hole},Hole {byte_offset = 188, hole_type = Word16Hole},Hole {byte_offset = 190, hole_type = Word8Hole},Value (Word8Value 227),Hole {byte_offset = 192, hole_type = Word32Hole},Value (Word32Value 1972812258),Value (Word32Value 857574521),Hole {byte_offset = 204, hole_type = Word32Hole},Value (Word8Value 28),Value (Word16Value 41534),Hole {byte_offset = 211, hole_type = Word8Hole},Value (Word32Value 918709532),Value (Word8Value 120),Hole {byte_offset = 217, hole_type = Word32Hole},Hole {byte_offset = 221, hole_type = Word16Hole},Value (Word16Value 2474),Value (Word8Value 128),Value (Word8Value 254),Hole {byte_offset = 227, hole_type = Word32Hole},Hole {byte_offset = 231, hole_type = Word16Hole},Hole {byte_offset = 233, hole_type = Word8Hole},Value (Word8Value 218),Value (Word32Value 2179597460),Value (Word16Value 6548),Hole {byte_offset = 241, hole_type = Word32Hole},Hole {byte_offset = 245, hole_type = Word32Hole},Hole {byte_offset = 249, hole_type = Word8Hole},Hole {byte_offset = 250, hole_type = Word16Hole},Hole {byte_offset = 252, hole_type = Word8Hole},Value (Word32Value 632845482),Value (Word16Value 57684),Hole {byte_offset = 259, hole_type = Word8Hole},Value (Word32Value 721822118),Value (Word32Value 165395681),Hole {byte_offset = 268, hole_type = Word32Hole},Value (Word8Value 136),Value (Word32Value 2600980842)]}
