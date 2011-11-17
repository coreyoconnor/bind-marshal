{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase19 where
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
    2180304009 :: Word32 <- des_word32_be
    2409304956 :: Word32 <- des_word32_be
    2909643783 :: Word32 <- des_word32_be
    v_0 :: Word8 <- des
    57 :: Word8 <- des
    v_1 :: Word8 <- des
    v_2 :: Word16 <- des_word16_be
    285020727 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word8 <- des
    2432790473 :: Word32 <- des_word32_be
    v_6 :: Word32 <- des_word32_be
    734069615 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    92 :: Word8 <- des
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word8 <- des
    119 :: Word8 <- des
    18052 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    433917722 :: Word32 <- des_word32_be
    1539003698 :: Word32 <- des_word32_be
    137 :: Word8 <- des
    v_11 :: Word8 <- des
    180577951 :: Word32 <- des_word32_be
    89 :: Word8 <- des
    v_12 :: Word8 <- des
    54721 :: Word16 <- des_word16_be
    158 :: Word8 <- des
    92 :: Word8 <- des
    4021266149 :: Word32 <- des_word32_be
    v_13 :: Word16 <- des_word16_be
    v_14 :: Word32 <- des_word32_be
    1211417884 :: Word32 <- des_word32_be
    846493148 :: Word32 <- des_word32_be
    v_15 :: Word16 <- des_word16_be
    53239 :: Word16 <- des_word16_be
    54156 :: Word16 <- des_word16_be
    v_16 :: Word16 <- des_word16_be
    v_17 :: Word32 <- des_word32_be
    v_18 :: Word32 <- des_word32_be
    241 :: Word8 <- des
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word32 <- des_word32_be
    3372672211 :: Word32 <- des_word32_be
    v_21 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word32 <- des_word32_be
    v_24 :: Word16 <- des_word16_be
    v_25 :: Word16 <- des_word16_be
    955429467 :: Word32 <- des_word32_be
    226 :: Word8 <- des
    67 :: Word8 <- des
    v_26 :: Word16 <- des_word16_be
    v_27 :: Word8 <- des
    v_28 :: Word8 <- des
    32488 :: Word16 <- des_word16_be
    42490 :: Word16 <- des_word16_be
    v_29 :: Word32 <- des_word32_be
    55589 :: Word16 <- des_word16_be
    43535478 :: Word32 <- des_word32_be
    v_30 :: Word8 <- des
    52982 :: Word16 <- des_word16_be
    v_31 :: Word16 <- des_word16_be
    v_32 :: Word8 <- des
    v_33 :: Word8 <- des
    v_34 :: Word8 <- des
    v_35 :: Word32 <- des_word32_be
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word16 <- des_word16_be
    15289 :: Word16 <- des_word16_be
    9414 :: Word16 <- des_word16_be
    28288 :: Word16 <- des_word16_be
    3988402041 :: Word32 <- des_word32_be
    708919033 :: Word32 <- des_word32_be
    v_38 :: Word16 <- des_word16_be
    v_39 :: Word16 <- des_word16_be
    58290 :: Word16 <- des_word16_be
    v_40 :: Word16 <- des_word16_be
    115 :: Word8 <- des
    18 :: Word8 <- des
    v_41 :: Word16 <- des_word16_be
    211 :: Word8 <- des
    2736 :: Word16 <- des_word16_be
    v_42 :: Word8 <- des
    881866054 :: Word32 <- des_word32_be
    1488643215 :: Word32 <- des_word32_be
    92 :: Word8 <- des
    114 :: Word8 <- des
    171 :: Word8 <- des
    v_43 :: Word16 <- des_word16_be
    v_44 :: Word8 <- des
    152 :: Word8 <- des
    79 :: Word8 <- des
    44786 :: Word16 <- des_word16_be
    v_45 :: Word32 <- des_word32_be
    152 :: Word8 <- des
    55 :: Word8 <- des
    v_46 :: Word16 <- des_word16_be
    38509 :: Word16 <- des_word16_be
    v_47 :: Word16 <- des_word16_be
    static_return  [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word16Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word8Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word16Value v_43 , Word8Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word16Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word8Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word8Value v_42 , Word16Value v_43 , Word8Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 ] = vs 
    ser_word32_be 2180304009
    ser_word32_be 2409304956
    ser_word32_be 2909643783
    ser v_0
    ser (57 :: Word8)
    ser v_1
    ser_word16_be v_2
    ser_word32_be 285020727
    ser_word16_be v_3
    ser_word32_be v_4
    ser v_5
    ser_word32_be 2432790473
    ser_word32_be v_6
    ser_word32_be 734069615
    ser_word32_be v_7
    ser (92 :: Word8)
    ser_word16_be v_8
    ser v_9
    ser (119 :: Word8)
    ser_word16_be 18052
    ser_word32_be v_10
    ser_word32_be 433917722
    ser_word32_be 1539003698
    ser (137 :: Word8)
    ser v_11
    ser_word32_be 180577951
    ser (89 :: Word8)
    ser v_12
    ser_word16_be 54721
    ser (158 :: Word8)
    ser (92 :: Word8)
    ser_word32_be 4021266149
    ser_word16_be v_13
    ser_word32_be v_14
    ser_word32_be 1211417884
    ser_word32_be 846493148
    ser_word16_be v_15
    ser_word16_be 53239
    ser_word16_be 54156
    ser_word16_be v_16
    ser_word32_be v_17
    ser_word32_be v_18
    ser (241 :: Word8)
    ser_word32_be v_19
    ser_word32_be v_20
    ser_word32_be 3372672211
    ser v_21
    ser_word32_be v_22
    ser_word32_be v_23
    ser_word16_be v_24
    ser_word16_be v_25
    ser_word32_be 955429467
    ser (226 :: Word8)
    ser (67 :: Word8)
    ser_word16_be v_26
    ser v_27
    ser v_28
    ser_word16_be 32488
    ser_word16_be 42490
    ser_word32_be v_29
    ser_word16_be 55589
    ser_word32_be 43535478
    ser v_30
    ser_word16_be 52982
    ser_word16_be v_31
    ser v_32
    ser v_33
    ser v_34
    ser_word32_be v_35
    ser_word32_be v_36
    ser_word16_be v_37
    ser_word16_be 15289
    ser_word16_be 9414
    ser_word16_be 28288
    ser_word32_be 3988402041
    ser_word32_be 708919033
    ser_word16_be v_38
    ser_word16_be v_39
    ser_word16_be 58290
    ser_word16_be v_40
    ser (115 :: Word8)
    ser (18 :: Word8)
    ser_word16_be v_41
    ser (211 :: Word8)
    ser_word16_be 2736
    ser v_42
    ser_word32_be 881866054
    ser_word32_be 1488643215
    ser (92 :: Word8)
    ser (114 :: Word8)
    ser (171 :: Word8)
    ser_word16_be v_43
    ser v_44
    ser (152 :: Word8)
    ser (79 :: Word8)
    ser_word16_be 44786
    ser_word32_be v_45
    ser (152 :: Word8)
    ser (55 :: Word8)
    ser_word16_be v_46
    ser_word16_be 38509
    ser_word16_be v_47
    static_return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2180304009),Value (Word32Value 2409304956),Value (Word32Value 2909643783),Hole {byte_offset = 12, hole_type = Word8Hole},Value (Word8Value 57),Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word16Hole},Value (Word32Value 285020727),Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word32Hole},Hole {byte_offset = 27, hole_type = Word8Hole},Value (Word32Value 2432790473),Hole {byte_offset = 32, hole_type = Word32Hole},Value (Word32Value 734069615),Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word8Value 92),Hole {byte_offset = 45, hole_type = Word16Hole},Hole {byte_offset = 47, hole_type = Word8Hole},Value (Word8Value 119),Value (Word16Value 18052),Hole {byte_offset = 51, hole_type = Word32Hole},Value (Word32Value 433917722),Value (Word32Value 1539003698),Value (Word8Value 137),Hole {byte_offset = 64, hole_type = Word8Hole},Value (Word32Value 180577951),Value (Word8Value 89),Hole {byte_offset = 70, hole_type = Word8Hole},Value (Word16Value 54721),Value (Word8Value 158),Value (Word8Value 92),Value (Word32Value 4021266149),Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word32Hole},Value (Word32Value 1211417884),Value (Word32Value 846493148),Hole {byte_offset = 93, hole_type = Word16Hole},Value (Word16Value 53239),Value (Word16Value 54156),Hole {byte_offset = 99, hole_type = Word16Hole},Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word8Value 241),Hole {byte_offset = 110, hole_type = Word32Hole},Hole {byte_offset = 114, hole_type = Word32Hole},Value (Word32Value 3372672211),Hole {byte_offset = 122, hole_type = Word8Hole},Hole {byte_offset = 123, hole_type = Word32Hole},Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word32Value 955429467),Value (Word8Value 226),Value (Word8Value 67),Hole {byte_offset = 141, hole_type = Word16Hole},Hole {byte_offset = 143, hole_type = Word8Hole},Hole {byte_offset = 144, hole_type = Word8Hole},Value (Word16Value 32488),Value (Word16Value 42490),Hole {byte_offset = 149, hole_type = Word32Hole},Value (Word16Value 55589),Value (Word32Value 43535478),Hole {byte_offset = 159, hole_type = Word8Hole},Value (Word16Value 52982),Hole {byte_offset = 162, hole_type = Word16Hole},Hole {byte_offset = 164, hole_type = Word8Hole},Hole {byte_offset = 165, hole_type = Word8Hole},Hole {byte_offset = 166, hole_type = Word8Hole},Hole {byte_offset = 167, hole_type = Word32Hole},Hole {byte_offset = 171, hole_type = Word32Hole},Hole {byte_offset = 175, hole_type = Word16Hole},Value (Word16Value 15289),Value (Word16Value 9414),Value (Word16Value 28288),Value (Word32Value 3988402041),Value (Word32Value 708919033),Hole {byte_offset = 191, hole_type = Word16Hole},Hole {byte_offset = 193, hole_type = Word16Hole},Value (Word16Value 58290),Hole {byte_offset = 197, hole_type = Word16Hole},Value (Word8Value 115),Value (Word8Value 18),Hole {byte_offset = 201, hole_type = Word16Hole},Value (Word8Value 211),Value (Word16Value 2736),Hole {byte_offset = 206, hole_type = Word8Hole},Value (Word32Value 881866054),Value (Word32Value 1488643215),Value (Word8Value 92),Value (Word8Value 114),Value (Word8Value 171),Hole {byte_offset = 218, hole_type = Word16Hole},Hole {byte_offset = 220, hole_type = Word8Hole},Value (Word8Value 152),Value (Word8Value 79),Value (Word16Value 44786),Hole {byte_offset = 225, hole_type = Word32Hole},Value (Word8Value 152),Value (Word8Value 55),Hole {byte_offset = 231, hole_type = Word16Hole},Value (Word16Value 38509),Hole {byte_offset = 235, hole_type = Word16Hole}]}
