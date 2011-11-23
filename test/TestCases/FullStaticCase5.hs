{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase5 where
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
    v_0 :: Word8 <- des
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    1742292060 :: Word32 <- des_word32_be
    947585243 :: Word32 <- des_word32_be
    2832 :: Word16 <- des_word16_be
    18607 :: Word16 <- des_word16_be
    41156 :: Word16 <- des_word16_be
    v_3 :: Word16 <- des_word16_be
    172 :: Word8 <- des
    3615550894 :: Word32 <- des_word32_be
    v_4 :: Word16 <- des_word16_be
    v_5 :: Word8 <- des
    169 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word16 <- des_word16_be
    v_8 :: Word16 <- des_word16_be
    1917966021 :: Word32 <- des_word32_be
    160 :: Word8 <- des
    v_9 :: Word32 <- des_word32_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    177 :: Word8 <- des
    236 :: Word8 <- des
    v_15 :: Word16 <- des_word16_be
    247 :: Word8 <- des
    1435522009 :: Word32 <- des_word32_be
    218 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    1050244933 :: Word32 <- des_word32_be
    v_17 :: Word16 <- des_word16_be
    v_18 :: Word32 <- des_word32_be
    53970 :: Word16 <- des_word16_be
    1082139989 :: Word32 <- des_word32_be
    17262 :: Word16 <- des_word16_be
    v_19 :: Word16 <- des_word16_be
    2598966239 :: Word32 <- des_word32_be
    v_20 :: Word32 <- des_word32_be
    v_21 :: Word16 <- des_word16_be
    v_22 :: Word8 <- des
    28687 :: Word16 <- des_word16_be
    v_23 :: Word8 <- des
    612811178 :: Word32 <- des_word32_be
    19689 :: Word16 <- des_word16_be
    3917814105 :: Word32 <- des_word32_be
    174 :: Word8 <- des
    v_24 :: Word8 <- des
    v_25 :: Word16 <- des_word16_be
    15 :: Word8 <- des
    v_26 :: Word16 <- des_word16_be
    v_27 :: Word8 <- des
    152 :: Word8 <- des
    40508 :: Word16 <- des_word16_be
    154 :: Word8 <- des
    16102 :: Word16 <- des_word16_be
    37771 :: Word16 <- des_word16_be
    v_28 :: Word32 <- des_word32_be
    v_29 :: Word8 <- des
    v_30 :: Word8 <- des
    205 :: Word8 <- des
    60044 :: Word16 <- des_word16_be
    v_31 :: Word32 <- des_word32_be
    v_32 :: Word32 <- des_word32_be
    138 :: Word8 <- des
    68 :: Word8 <- des
    37410 :: Word16 <- des_word16_be
    v_33 :: Word32 <- des_word32_be
    227 :: Word8 <- des
    v_34 :: Word16 <- des_word16_be
    34 :: Word8 <- des
    2393705391 :: Word32 <- des_word32_be
    138 :: Word8 <- des
    v_35 :: Word16 <- des_word16_be
    v_36 :: Word8 <- des
    v_37 :: Word32 <- des_word32_be
    20921 :: Word16 <- des_word16_be
    v_38 :: Word32 <- des_word32_be
    v_39 :: Word16 <- des_word16_be
    6727 :: Word16 <- des_word16_be
    154 :: Word8 <- des
    v_40 :: Word32 <- des_word32_be
    121 :: Word8 <- des
    1970047312 :: Word32 <- des_word32_be
    27310 :: Word16 <- des_word16_be
    v_41 :: Word8 <- des
    v_42 :: Word8 <- des
    v_43 :: Word16 <- des_word16_be
    2592659793 :: Word32 <- des_word32_be
    3886 :: Word16 <- des_word16_be
    v_44 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    v_46 :: Word8 <- des
    v_47 :: Word32 <- des_word32_be
    v_48 :: Word16 <- des_word16_be
    v_49 :: Word32 <- des_word32_be
    3014319596 :: Word32 <- des_word32_be
    v_50 :: Word8 <- des
    v_51 :: Word16 <- des_word16_be
    36442 :: Word16 <- des_word16_be
    v_52 :: Word16 <- des_word16_be
    255 :: Word8 <- des
    v_53 :: Word8 <- des
    28 :: Word8 <- des
    3546 :: Word16 <- des_word16_be
    v_54 :: Word8 <- des
    v_55 :: Word16 <- des_word16_be
    v_56 :: Word8 <- des
    387683846 :: Word32 <- des_word32_be
    47159 :: Word16 <- des_word16_be
    6501 :: Word16 <- des_word16_be
    26867 :: Word16 <- des_word16_be
    25 :: Word8 <- des
    216 :: Word8 <- des
    v_57 :: Word16 <- des_word16_be
    v_58 :: Word16 <- des_word16_be
    v_59 :: Word8 <- des
    7786 :: Word16 <- des_word16_be
    v_60 :: Word8 <- des
    v_61 :: Word16 <- des_word16_be
    v_62 :: Word8 <- des
    180 :: Word8 <- des
    v_63 :: Word8 <- des
    46 :: Word8 <- des
    24 :: Word8 <- des
    return  [ Word8Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word8Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word8Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 , Word16Value v_52 , Word8Value v_53 , Word8Value v_54 , Word16Value v_55 , Word8Value v_56 , Word16Value v_57 , Word16Value v_58 , Word8Value v_59 , Word8Value v_60 , Word16Value v_61 , Word8Value v_62 , Word8Value v_63 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word8Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word8Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word8Value v_46 , Word32Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word16Value v_51 , Word16Value v_52 , Word8Value v_53 , Word8Value v_54 , Word16Value v_55 , Word8Value v_56 , Word16Value v_57 , Word16Value v_58 , Word8Value v_59 , Word8Value v_60 , Word16Value v_61 , Word8Value v_62 , Word8Value v_63 ] = vs 
    ser v_0
    ser_word16_be v_1
    ser_word32_be v_2
    ser_word32_be 1742292060
    ser_word32_be 947585243
    ser_word16_be 2832
    ser_word16_be 18607
    ser_word16_be 41156
    ser_word16_be v_3
    ser (172 :: Word8)
    ser_word32_be 3615550894
    ser_word16_be v_4
    ser v_5
    ser (169 :: Word8)
    ser_word32_be v_6
    ser_word16_be v_7
    ser_word16_be v_8
    ser_word32_be 1917966021
    ser (160 :: Word8)
    ser_word32_be v_9
    ser_word16_be v_10
    ser v_11
    ser_word16_be v_12
    ser_word32_be v_13
    ser v_14
    ser (177 :: Word8)
    ser (236 :: Word8)
    ser_word16_be v_15
    ser (247 :: Word8)
    ser_word32_be 1435522009
    ser (218 :: Word8)
    ser_word32_be v_16
    ser_word32_be 1050244933
    ser_word16_be v_17
    ser_word32_be v_18
    ser_word16_be 53970
    ser_word32_be 1082139989
    ser_word16_be 17262
    ser_word16_be v_19
    ser_word32_be 2598966239
    ser_word32_be v_20
    ser_word16_be v_21
    ser v_22
    ser_word16_be 28687
    ser v_23
    ser_word32_be 612811178
    ser_word16_be 19689
    ser_word32_be 3917814105
    ser (174 :: Word8)
    ser v_24
    ser_word16_be v_25
    ser (15 :: Word8)
    ser_word16_be v_26
    ser v_27
    ser (152 :: Word8)
    ser_word16_be 40508
    ser (154 :: Word8)
    ser_word16_be 16102
    ser_word16_be 37771
    ser_word32_be v_28
    ser v_29
    ser v_30
    ser (205 :: Word8)
    ser_word16_be 60044
    ser_word32_be v_31
    ser_word32_be v_32
    ser (138 :: Word8)
    ser (68 :: Word8)
    ser_word16_be 37410
    ser_word32_be v_33
    ser (227 :: Word8)
    ser_word16_be v_34
    ser (34 :: Word8)
    ser_word32_be 2393705391
    ser (138 :: Word8)
    ser_word16_be v_35
    ser v_36
    ser_word32_be v_37
    ser_word16_be 20921
    ser_word32_be v_38
    ser_word16_be v_39
    ser_word16_be 6727
    ser (154 :: Word8)
    ser_word32_be v_40
    ser (121 :: Word8)
    ser_word32_be 1970047312
    ser_word16_be 27310
    ser v_41
    ser v_42
    ser_word16_be v_43
    ser_word32_be 2592659793
    ser_word16_be 3886
    ser_word16_be v_44
    ser v_45
    ser v_46
    ser_word32_be v_47
    ser_word16_be v_48
    ser_word32_be v_49
    ser_word32_be 3014319596
    ser v_50
    ser_word16_be v_51
    ser_word16_be 36442
    ser_word16_be v_52
    ser (255 :: Word8)
    ser v_53
    ser (28 :: Word8)
    ser_word16_be 3546
    ser v_54
    ser_word16_be v_55
    ser v_56
    ser_word32_be 387683846
    ser_word16_be 47159
    ser_word16_be 6501
    ser_word16_be 26867
    ser (25 :: Word8)
    ser (216 :: Word8)
    ser_word16_be v_57
    ser_word16_be v_58
    ser v_59
    ser_word16_be 7786
    ser v_60
    ser_word16_be v_61
    ser v_62
    ser (180 :: Word8)
    ser v_63
    ser (46 :: Word8)
    ser (24 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word32Hole},Value (Word32Value 1742292060),Value (Word32Value 947585243),Value (Word16Value 2832),Value (Word16Value 18607),Value (Word16Value 41156),Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word8Value 172),Value (Word32Value 3615550894),Hole {byte_offset = 28, hole_type = Word16Hole},Hole {byte_offset = 30, hole_type = Word8Hole},Value (Word8Value 169),Hole {byte_offset = 32, hole_type = Word32Hole},Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Value (Word32Value 1917966021),Value (Word8Value 160),Hole {byte_offset = 45, hole_type = Word32Hole},Hole {byte_offset = 49, hole_type = Word16Hole},Hole {byte_offset = 51, hole_type = Word8Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Hole {byte_offset = 54, hole_type = Word32Hole},Hole {byte_offset = 58, hole_type = Word8Hole},Value (Word8Value 177),Value (Word8Value 236),Hole {byte_offset = 61, hole_type = Word16Hole},Value (Word8Value 247),Value (Word32Value 1435522009),Value (Word8Value 218),Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word32Value 1050244933),Hole {byte_offset = 77, hole_type = Word16Hole},Hole {byte_offset = 79, hole_type = Word32Hole},Value (Word16Value 53970),Value (Word32Value 1082139989),Value (Word16Value 17262),Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word32Value 2598966239),Hole {byte_offset = 97, hole_type = Word32Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Hole {byte_offset = 103, hole_type = Word8Hole},Value (Word16Value 28687),Hole {byte_offset = 106, hole_type = Word8Hole},Value (Word32Value 612811178),Value (Word16Value 19689),Value (Word32Value 3917814105),Value (Word8Value 174),Hole {byte_offset = 118, hole_type = Word8Hole},Hole {byte_offset = 119, hole_type = Word16Hole},Value (Word8Value 15),Hole {byte_offset = 122, hole_type = Word16Hole},Hole {byte_offset = 124, hole_type = Word8Hole},Value (Word8Value 152),Value (Word16Value 40508),Value (Word8Value 154),Value (Word16Value 16102),Value (Word16Value 37771),Hole {byte_offset = 133, hole_type = Word32Hole},Hole {byte_offset = 137, hole_type = Word8Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Value (Word8Value 205),Value (Word16Value 60044),Hole {byte_offset = 142, hole_type = Word32Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word8Value 138),Value (Word8Value 68),Value (Word16Value 37410),Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word8Value 227),Hole {byte_offset = 159, hole_type = Word16Hole},Value (Word8Value 34),Value (Word32Value 2393705391),Value (Word8Value 138),Hole {byte_offset = 167, hole_type = Word16Hole},Hole {byte_offset = 169, hole_type = Word8Hole},Hole {byte_offset = 170, hole_type = Word32Hole},Value (Word16Value 20921),Hole {byte_offset = 176, hole_type = Word32Hole},Hole {byte_offset = 180, hole_type = Word16Hole},Value (Word16Value 6727),Value (Word8Value 154),Hole {byte_offset = 185, hole_type = Word32Hole},Value (Word8Value 121),Value (Word32Value 1970047312),Value (Word16Value 27310),Hole {byte_offset = 196, hole_type = Word8Hole},Hole {byte_offset = 197, hole_type = Word8Hole},Hole {byte_offset = 198, hole_type = Word16Hole},Value (Word32Value 2592659793),Value (Word16Value 3886),Hole {byte_offset = 206, hole_type = Word16Hole},Hole {byte_offset = 208, hole_type = Word8Hole},Hole {byte_offset = 209, hole_type = Word8Hole},Hole {byte_offset = 210, hole_type = Word32Hole},Hole {byte_offset = 214, hole_type = Word16Hole},Hole {byte_offset = 216, hole_type = Word32Hole},Value (Word32Value 3014319596),Hole {byte_offset = 224, hole_type = Word8Hole},Hole {byte_offset = 225, hole_type = Word16Hole},Value (Word16Value 36442),Hole {byte_offset = 229, hole_type = Word16Hole},Value (Word8Value 255),Hole {byte_offset = 232, hole_type = Word8Hole},Value (Word8Value 28),Value (Word16Value 3546),Hole {byte_offset = 236, hole_type = Word8Hole},Hole {byte_offset = 237, hole_type = Word16Hole},Hole {byte_offset = 239, hole_type = Word8Hole},Value (Word32Value 387683846),Value (Word16Value 47159),Value (Word16Value 6501),Value (Word16Value 26867),Value (Word8Value 25),Value (Word8Value 216),Hole {byte_offset = 252, hole_type = Word16Hole},Hole {byte_offset = 254, hole_type = Word16Hole},Hole {byte_offset = 256, hole_type = Word8Hole},Value (Word16Value 7786),Hole {byte_offset = 259, hole_type = Word8Hole},Hole {byte_offset = 260, hole_type = Word16Hole},Hole {byte_offset = 262, hole_type = Word8Hole},Value (Word8Value 180),Hole {byte_offset = 264, hole_type = Word8Hole},Value (Word8Value 46),Value (Word8Value 24)]}
