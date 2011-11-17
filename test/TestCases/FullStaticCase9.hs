{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase9 where
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
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    135 :: Word8 <- des
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word8 <- des
    v_4 :: Word32 <- des_word32_be
    1780586010 :: Word32 <- des_word32_be
    3568707314 :: Word32 <- des_word32_be
    75 :: Word8 <- des
    136 :: Word8 <- des
    166 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    145 :: Word8 <- des
    36311 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word32 <- des_word32_be
    8615 :: Word16 <- des_word16_be
    16206 :: Word16 <- des_word16_be
    1079485551 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    3163443349 :: Word32 <- des_word32_be
    14873 :: Word16 <- des_word16_be
    12 :: Word8 <- des
    16194 :: Word16 <- des_word16_be
    16 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    38413 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    v_12 :: Word32 <- des_word32_be
    27960 :: Word16 <- des_word16_be
    v_13 :: Word16 <- des_word16_be
    134 :: Word8 <- des
    2972665061 :: Word32 <- des_word32_be
    34310 :: Word16 <- des_word16_be
    16 :: Word8 <- des
    v_14 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word8 <- des
    163 :: Word8 <- des
    146 :: Word8 <- des
    63539 :: Word16 <- des_word16_be
    2804738709 :: Word32 <- des_word32_be
    128 :: Word8 <- des
    33955 :: Word16 <- des_word16_be
    v_17 :: Word32 <- des_word32_be
    v_18 :: Word32 <- des_word32_be
    3169608896 :: Word32 <- des_word32_be
    v_19 :: Word8 <- des
    2206525457 :: Word32 <- des_word32_be
    55 :: Word8 <- des
    160 :: Word8 <- des
    v_20 :: Word8 <- des
    v_21 :: Word32 <- des_word32_be
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word32 <- des_word32_be
    v_24 :: Word32 <- des_word32_be
    124 :: Word8 <- des
    v_25 :: Word32 <- des_word32_be
    174 :: Word8 <- des
    v_26 :: Word32 <- des_word32_be
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word16 <- des_word16_be
    24735 :: Word16 <- des_word16_be
    1361983541 :: Word32 <- des_word32_be
    3533012463 :: Word32 <- des_word32_be
    36181 :: Word16 <- des_word16_be
    v_29 :: Word16 <- des_word16_be
    v_30 :: Word8 <- des
    v_31 :: Word32 <- des_word32_be
    v_32 :: Word16 <- des_word16_be
    206 :: Word8 <- des
    66 :: Word8 <- des
    v_33 :: Word16 <- des_word16_be
    v_34 :: Word8 <- des
    v_35 :: Word16 <- des_word16_be
    v_36 :: Word32 <- des_word32_be
    1598492727 :: Word32 <- des_word32_be
    v_37 :: Word32 <- des_word32_be
    v_38 :: Word32 <- des_word32_be
    3056521481 :: Word32 <- des_word32_be
    v_39 :: Word16 <- des_word16_be
    2975941031 :: Word32 <- des_word32_be
    v_40 :: Word32 <- des_word32_be
    v_41 :: Word32 <- des_word32_be
    v_42 :: Word32 <- des_word32_be
    3192817953 :: Word32 <- des_word32_be
    v_43 :: Word16 <- des_word16_be
    722384313 :: Word32 <- des_word32_be
    53715 :: Word16 <- des_word16_be
    v_44 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    73 :: Word8 <- des
    174 :: Word8 <- des
    3826484164 :: Word32 <- des_word32_be
    251 :: Word8 <- des
    v_46 :: Word16 <- des_word16_be
    v_47 :: Word32 <- des_word32_be
    v_48 :: Word32 <- des_word32_be
    v_49 :: Word8 <- des
    2781361224 :: Word32 <- des_word32_be
    v_50 :: Word32 <- des_word32_be
    252 :: Word8 <- des
    v_51 :: Word16 <- des_word16_be
    v_52 :: Word8 <- des
    v_53 :: Word8 <- des
    v_54 :: Word32 <- des_word32_be
    v_55 :: Word16 <- des_word16_be
    55794 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word32Value v_26 , Word32Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word32Value v_48 , Word8Value v_49 , Word32Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word32Value v_54 , Word16Value v_55 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word32Value v_26 , Word32Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word32Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word32Value v_47 , Word32Value v_48 , Word8Value v_49 , Word32Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word32Value v_54 , Word16Value v_55 ] = vs 
    ser_word32_be v_0
    ser v_1
    ser (135 :: Word8)
    ser_word32_be v_2
    ser v_3
    ser_word32_be v_4
    ser_word32_be 1780586010
    ser_word32_be 3568707314
    ser (75 :: Word8)
    ser (136 :: Word8)
    ser (166 :: Word8)
    ser_word16_be v_5
    ser (145 :: Word8)
    ser_word16_be 36311
    ser v_6
    ser_word32_be v_7
    ser_word32_be v_8
    ser_word16_be 8615
    ser_word16_be 16206
    ser_word32_be 1079485551
    ser v_9
    ser_word32_be 3163443349
    ser_word16_be 14873
    ser (12 :: Word8)
    ser_word16_be 16194
    ser (16 :: Word8)
    ser_word32_be v_10
    ser_word16_be 38413
    ser v_11
    ser_word32_be v_12
    ser_word16_be 27960
    ser_word16_be v_13
    ser (134 :: Word8)
    ser_word32_be 2972665061
    ser_word16_be 34310
    ser (16 :: Word8)
    ser v_14
    ser_word32_be v_15
    ser v_16
    ser (163 :: Word8)
    ser (146 :: Word8)
    ser_word16_be 63539
    ser_word32_be 2804738709
    ser (128 :: Word8)
    ser_word16_be 33955
    ser_word32_be v_17
    ser_word32_be v_18
    ser_word32_be 3169608896
    ser v_19
    ser_word32_be 2206525457
    ser (55 :: Word8)
    ser (160 :: Word8)
    ser v_20
    ser_word32_be v_21
    ser_word32_be v_22
    ser_word32_be v_23
    ser_word32_be v_24
    ser (124 :: Word8)
    ser_word32_be v_25
    ser (174 :: Word8)
    ser_word32_be v_26
    ser_word32_be v_27
    ser_word16_be v_28
    ser_word16_be 24735
    ser_word32_be 1361983541
    ser_word32_be 3533012463
    ser_word16_be 36181
    ser_word16_be v_29
    ser v_30
    ser_word32_be v_31
    ser_word16_be v_32
    ser (206 :: Word8)
    ser (66 :: Word8)
    ser_word16_be v_33
    ser v_34
    ser_word16_be v_35
    ser_word32_be v_36
    ser_word32_be 1598492727
    ser_word32_be v_37
    ser_word32_be v_38
    ser_word32_be 3056521481
    ser_word16_be v_39
    ser_word32_be 2975941031
    ser_word32_be v_40
    ser_word32_be v_41
    ser_word32_be v_42
    ser_word32_be 3192817953
    ser_word16_be v_43
    ser_word32_be 722384313
    ser_word16_be 53715
    ser_word16_be v_44
    ser v_45
    ser (73 :: Word8)
    ser (174 :: Word8)
    ser_word32_be 3826484164
    ser (251 :: Word8)
    ser_word16_be v_46
    ser_word32_be v_47
    ser_word32_be v_48
    ser v_49
    ser_word32_be 2781361224
    ser_word32_be v_50
    ser (252 :: Word8)
    ser_word16_be v_51
    ser v_52
    ser v_53
    ser_word32_be v_54
    ser_word16_be v_55
    ser_word16_be 55794
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word8Value 135),Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Value (Word32Value 1780586010),Value (Word32Value 3568707314),Value (Word8Value 75),Value (Word8Value 136),Value (Word8Value 166),Hole {byte_offset = 26, hole_type = Word16Hole},Value (Word8Value 145),Value (Word16Value 36311),Hole {byte_offset = 31, hole_type = Word8Hole},Hole {byte_offset = 32, hole_type = Word32Hole},Hole {byte_offset = 36, hole_type = Word32Hole},Value (Word16Value 8615),Value (Word16Value 16206),Value (Word32Value 1079485551),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 3163443349),Value (Word16Value 14873),Value (Word8Value 12),Value (Word16Value 16194),Value (Word8Value 16),Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word16Value 38413),Hole {byte_offset = 65, hole_type = Word8Hole},Hole {byte_offset = 66, hole_type = Word32Hole},Value (Word16Value 27960),Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word8Value 134),Value (Word32Value 2972665061),Value (Word16Value 34310),Value (Word8Value 16),Hole {byte_offset = 82, hole_type = Word8Hole},Hole {byte_offset = 83, hole_type = Word32Hole},Hole {byte_offset = 87, hole_type = Word8Hole},Value (Word8Value 163),Value (Word8Value 146),Value (Word16Value 63539),Value (Word32Value 2804738709),Value (Word8Value 128),Value (Word16Value 33955),Hole {byte_offset = 99, hole_type = Word32Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word32Value 3169608896),Hole {byte_offset = 111, hole_type = Word8Hole},Value (Word32Value 2206525457),Value (Word8Value 55),Value (Word8Value 160),Hole {byte_offset = 118, hole_type = Word8Hole},Hole {byte_offset = 119, hole_type = Word32Hole},Hole {byte_offset = 123, hole_type = Word32Hole},Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Value (Word8Value 124),Hole {byte_offset = 136, hole_type = Word32Hole},Value (Word8Value 174),Hole {byte_offset = 141, hole_type = Word32Hole},Hole {byte_offset = 145, hole_type = Word32Hole},Hole {byte_offset = 149, hole_type = Word16Hole},Value (Word16Value 24735),Value (Word32Value 1361983541),Value (Word32Value 3533012463),Value (Word16Value 36181),Hole {byte_offset = 163, hole_type = Word16Hole},Hole {byte_offset = 165, hole_type = Word8Hole},Hole {byte_offset = 166, hole_type = Word32Hole},Hole {byte_offset = 170, hole_type = Word16Hole},Value (Word8Value 206),Value (Word8Value 66),Hole {byte_offset = 174, hole_type = Word16Hole},Hole {byte_offset = 176, hole_type = Word8Hole},Hole {byte_offset = 177, hole_type = Word16Hole},Hole {byte_offset = 179, hole_type = Word32Hole},Value (Word32Value 1598492727),Hole {byte_offset = 187, hole_type = Word32Hole},Hole {byte_offset = 191, hole_type = Word32Hole},Value (Word32Value 3056521481),Hole {byte_offset = 199, hole_type = Word16Hole},Value (Word32Value 2975941031),Hole {byte_offset = 205, hole_type = Word32Hole},Hole {byte_offset = 209, hole_type = Word32Hole},Hole {byte_offset = 213, hole_type = Word32Hole},Value (Word32Value 3192817953),Hole {byte_offset = 221, hole_type = Word16Hole},Value (Word32Value 722384313),Value (Word16Value 53715),Hole {byte_offset = 229, hole_type = Word16Hole},Hole {byte_offset = 231, hole_type = Word8Hole},Value (Word8Value 73),Value (Word8Value 174),Value (Word32Value 3826484164),Value (Word8Value 251),Hole {byte_offset = 239, hole_type = Word16Hole},Hole {byte_offset = 241, hole_type = Word32Hole},Hole {byte_offset = 245, hole_type = Word32Hole},Hole {byte_offset = 249, hole_type = Word8Hole},Value (Word32Value 2781361224),Hole {byte_offset = 254, hole_type = Word32Hole},Value (Word8Value 252),Hole {byte_offset = 259, hole_type = Word16Hole},Hole {byte_offset = 261, hole_type = Word8Hole},Hole {byte_offset = 262, hole_type = Word8Hole},Hole {byte_offset = 263, hole_type = Word32Hole},Hole {byte_offset = 267, hole_type = Word16Hole},Value (Word16Value 55794)]}
