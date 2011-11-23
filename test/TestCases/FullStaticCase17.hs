{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase17 where
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
    114 :: Word8 <- des
    140 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word32 <- des_word32_be
    v_2 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    179 :: Word8 <- des
    v_6 :: Word8 <- des
    3186363299 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    v_8 :: Word16 <- des_word16_be
    15315 :: Word16 <- des_word16_be
    v_9 :: Word32 <- des_word32_be
    3538373883 :: Word32 <- des_word32_be
    32687 :: Word16 <- des_word16_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    v_13 :: Word8 <- des
    v_14 :: Word16 <- des_word16_be
    20461 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    182 :: Word8 <- des
    v_16 :: Word16 <- des_word16_be
    252 :: Word8 <- des
    v_17 :: Word16 <- des_word16_be
    5406 :: Word16 <- des_word16_be
    v_18 :: Word8 <- des
    931719193 :: Word32 <- des_word32_be
    v_19 :: Word16 <- des_word16_be
    4137559602 :: Word32 <- des_word32_be
    39814 :: Word16 <- des_word16_be
    23487 :: Word16 <- des_word16_be
    v_20 :: Word32 <- des_word32_be
    209 :: Word8 <- des
    358420034 :: Word32 <- des_word32_be
    1051710076 :: Word32 <- des_word32_be
    26600 :: Word16 <- des_word16_be
    v_21 :: Word16 <- des_word16_be
    v_22 :: Word32 <- des_word32_be
    13072 :: Word16 <- des_word16_be
    2528859940 :: Word32 <- des_word32_be
    v_23 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word8 <- des
    v_26 :: Word8 <- des
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word8 <- des
    215 :: Word8 <- des
    v_29 :: Word8 <- des
    58152 :: Word16 <- des_word16_be
    v_30 :: Word8 <- des
    21375 :: Word16 <- des_word16_be
    105555544 :: Word32 <- des_word32_be
    39681 :: Word16 <- des_word16_be
    v_31 :: Word32 <- des_word32_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word16 <- des_word16_be
    62 :: Word8 <- des
    97 :: Word8 <- des
    3214315288 :: Word32 <- des_word32_be
    v_34 :: Word8 <- des
    59411 :: Word16 <- des_word16_be
    v_35 :: Word8 <- des
    v_36 :: Word16 <- des_word16_be
    40480 :: Word16 <- des_word16_be
    877940578 :: Word32 <- des_word32_be
    2381022770 :: Word32 <- des_word32_be
    31647 :: Word16 <- des_word16_be
    v_37 :: Word8 <- des
    v_38 :: Word8 <- des
    v_39 :: Word8 <- des
    240 :: Word8 <- des
    v_40 :: Word16 <- des_word16_be
    v_41 :: Word32 <- des_word32_be
    v_42 :: Word8 <- des
    v_43 :: Word32 <- des_word32_be
    98 :: Word8 <- des
    v_44 :: Word8 <- des
    251 :: Word8 <- des
    1926 :: Word16 <- des_word16_be
    55482 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    122 :: Word8 <- des
    157 :: Word8 <- des
    v_46 :: Word16 <- des_word16_be
    872861440 :: Word32 <- des_word32_be
    62837 :: Word16 <- des_word16_be
    v_47 :: Word32 <- des_word32_be
    v_48 :: Word16 <- des_word16_be
    28888 :: Word16 <- des_word16_be
    2312031821 :: Word32 <- des_word32_be
    v_49 :: Word32 <- des_word32_be
    3036193501 :: Word32 <- des_word32_be
    18705193 :: Word32 <- des_word32_be
    1687997096 :: Word32 <- des_word32_be
    v_50 :: Word8 <- des
    v_51 :: Word16 <- des_word16_be
    69 :: Word8 <- des
    142 :: Word8 <- des
    153 :: Word8 <- des
    95 :: Word8 <- des
    return  [ Word32Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word8Value v_15 , Word16Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word32Value v_41 , Word8Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word8Value v_15 , Word16Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word32Value v_41 , Word8Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 ] = vs 
    ser (114 :: Word8)
    ser (140 :: Word8)
    ser_word32_be v_0
    ser_word32_be v_1
    ser v_2
    ser_word32_be v_3
    ser v_4
    ser v_5
    ser (179 :: Word8)
    ser v_6
    ser_word32_be 3186363299
    ser v_7
    ser_word16_be v_8
    ser_word16_be 15315
    ser_word32_be v_9
    ser_word32_be 3538373883
    ser_word16_be 32687
    ser_word16_be v_10
    ser_word16_be v_11
    ser_word32_be v_12
    ser v_13
    ser_word16_be v_14
    ser_word16_be 20461
    ser v_15
    ser (182 :: Word8)
    ser_word16_be v_16
    ser (252 :: Word8)
    ser_word16_be v_17
    ser_word16_be 5406
    ser v_18
    ser_word32_be 931719193
    ser_word16_be v_19
    ser_word32_be 4137559602
    ser_word16_be 39814
    ser_word16_be 23487
    ser_word32_be v_20
    ser (209 :: Word8)
    ser_word32_be 358420034
    ser_word32_be 1051710076
    ser_word16_be 26600
    ser_word16_be v_21
    ser_word32_be v_22
    ser_word16_be 13072
    ser_word32_be 2528859940
    ser v_23
    ser_word32_be v_24
    ser v_25
    ser v_26
    ser_word32_be v_27
    ser v_28
    ser (215 :: Word8)
    ser v_29
    ser_word16_be 58152
    ser v_30
    ser_word16_be 21375
    ser_word32_be 105555544
    ser_word16_be 39681
    ser_word32_be v_31
    ser_word16_be v_32
    ser_word16_be v_33
    ser (62 :: Word8)
    ser (97 :: Word8)
    ser_word32_be 3214315288
    ser v_34
    ser_word16_be 59411
    ser v_35
    ser_word16_be v_36
    ser_word16_be 40480
    ser_word32_be 877940578
    ser_word32_be 2381022770
    ser_word16_be 31647
    ser v_37
    ser v_38
    ser v_39
    ser (240 :: Word8)
    ser_word16_be v_40
    ser_word32_be v_41
    ser v_42
    ser_word32_be v_43
    ser (98 :: Word8)
    ser v_44
    ser (251 :: Word8)
    ser_word16_be 1926
    ser_word16_be 55482
    ser v_45
    ser (122 :: Word8)
    ser (157 :: Word8)
    ser_word16_be v_46
    ser_word32_be 872861440
    ser_word16_be 62837
    ser_word32_be v_47
    ser_word16_be v_48
    ser_word16_be 28888
    ser_word32_be 2312031821
    ser_word32_be v_49
    ser_word32_be 3036193501
    ser_word32_be 18705193
    ser_word32_be 1687997096
    ser v_50
    ser_word16_be v_51
    ser (69 :: Word8)
    ser (142 :: Word8)
    ser (153 :: Word8)
    ser (95 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 114),Value (Word8Value 140),Hole {byte_offset = 2, hole_type = Word32Hole},Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word8Value 179),Hole {byte_offset = 18, hole_type = Word8Hole},Value (Word32Value 3186363299),Hole {byte_offset = 23, hole_type = Word8Hole},Hole {byte_offset = 24, hole_type = Word16Hole},Value (Word16Value 15315),Hole {byte_offset = 28, hole_type = Word32Hole},Value (Word32Value 3538373883),Value (Word16Value 32687),Hole {byte_offset = 38, hole_type = Word16Hole},Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Hole {byte_offset = 46, hole_type = Word8Hole},Hole {byte_offset = 47, hole_type = Word16Hole},Value (Word16Value 20461),Hole {byte_offset = 51, hole_type = Word8Hole},Value (Word8Value 182),Hole {byte_offset = 53, hole_type = Word16Hole},Value (Word8Value 252),Hole {byte_offset = 56, hole_type = Word16Hole},Value (Word16Value 5406),Hole {byte_offset = 60, hole_type = Word8Hole},Value (Word32Value 931719193),Hole {byte_offset = 65, hole_type = Word16Hole},Value (Word32Value 4137559602),Value (Word16Value 39814),Value (Word16Value 23487),Hole {byte_offset = 75, hole_type = Word32Hole},Value (Word8Value 209),Value (Word32Value 358420034),Value (Word32Value 1051710076),Value (Word16Value 26600),Hole {byte_offset = 90, hole_type = Word16Hole},Hole {byte_offset = 92, hole_type = Word32Hole},Value (Word16Value 13072),Value (Word32Value 2528859940),Hole {byte_offset = 102, hole_type = Word8Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Hole {byte_offset = 107, hole_type = Word8Hole},Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word8Hole},Value (Word8Value 215),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 58152),Hole {byte_offset = 118, hole_type = Word8Hole},Value (Word16Value 21375),Value (Word32Value 105555544),Value (Word16Value 39681),Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word8Value 62),Value (Word8Value 97),Value (Word32Value 3214315288),Hole {byte_offset = 141, hole_type = Word8Hole},Value (Word16Value 59411),Hole {byte_offset = 144, hole_type = Word8Hole},Hole {byte_offset = 145, hole_type = Word16Hole},Value (Word16Value 40480),Value (Word32Value 877940578),Value (Word32Value 2381022770),Value (Word16Value 31647),Hole {byte_offset = 159, hole_type = Word8Hole},Hole {byte_offset = 160, hole_type = Word8Hole},Hole {byte_offset = 161, hole_type = Word8Hole},Value (Word8Value 240),Hole {byte_offset = 163, hole_type = Word16Hole},Hole {byte_offset = 165, hole_type = Word32Hole},Hole {byte_offset = 169, hole_type = Word8Hole},Hole {byte_offset = 170, hole_type = Word32Hole},Value (Word8Value 98),Hole {byte_offset = 175, hole_type = Word8Hole},Value (Word8Value 251),Value (Word16Value 1926),Value (Word16Value 55482),Hole {byte_offset = 181, hole_type = Word8Hole},Value (Word8Value 122),Value (Word8Value 157),Hole {byte_offset = 184, hole_type = Word16Hole},Value (Word32Value 872861440),Value (Word16Value 62837),Hole {byte_offset = 192, hole_type = Word32Hole},Hole {byte_offset = 196, hole_type = Word16Hole},Value (Word16Value 28888),Value (Word32Value 2312031821),Hole {byte_offset = 204, hole_type = Word32Hole},Value (Word32Value 3036193501),Value (Word32Value 18705193),Value (Word32Value 1687997096),Hole {byte_offset = 220, hole_type = Word8Hole},Hole {byte_offset = 221, hole_type = Word16Hole},Value (Word8Value 69),Value (Word8Value 142),Value (Word8Value 153),Value (Word8Value 95)]}
