module TestCases.FullStaticCase0 where
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
    v_0 :: Word16 <- des_word16_be
    154 :: Word8 <- des
    60456 :: Word16 <- des_word16_be
    30 :: Word8 <- des
    193 :: Word8 <- des
    151139490 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    4 :: Word8 <- des
    v_2 :: Word32 <- des_word32_be
    1176619845 :: Word32 <- des_word32_be
    178 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    4055394780 :: Word32 <- des_word32_be
    11491 :: Word16 <- des_word16_be
    3329088736 :: Word32 <- des_word32_be
    16407 :: Word16 <- des_word16_be
    v_4 :: Word16 <- des_word16_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    v_7 :: Word16 <- des_word16_be
    179 :: Word8 <- des
    1251394852 :: Word32 <- des_word32_be
    601180003 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    1989047817 :: Word32 <- des_word32_be
    34 :: Word8 <- des
    v_9 :: Word8 <- des
    188925259 :: Word32 <- des_word32_be
    3088317435 :: Word32 <- des_word32_be
    203 :: Word8 <- des
    128 :: Word8 <- des
    3306394667 :: Word32 <- des_word32_be
    32748 :: Word16 <- des_word16_be
    v_10 :: Word8 <- des
    23683 :: Word16 <- des_word16_be
    v_11 :: Word32 <- des_word32_be
    252 :: Word8 <- des
    v_12 :: Word8 <- des
    45 :: Word8 <- des
    v_13 :: Word32 <- des_word32_be
    105 :: Word8 <- des
    v_14 :: Word32 <- des_word32_be
    27342 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    v_17 :: Word32 <- des_word32_be
    0 :: Word8 <- des
    v_18 :: Word32 <- des_word32_be
    9432 :: Word16 <- des_word16_be
    203 :: Word8 <- des
    47302 :: Word16 <- des_word16_be
    37522 :: Word16 <- des_word16_be
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word32 <- des_word32_be
    1575200506 :: Word32 <- des_word32_be
    v_21 :: Word8 <- des
    16431 :: Word16 <- des_word16_be
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word32 <- des_word32_be
    19 :: Word8 <- des
    191 :: Word8 <- des
    226 :: Word8 <- des
    v_24 :: Word8 <- des
    204 :: Word8 <- des
    v_25 :: Word16 <- des_word16_be
    217 :: Word8 <- des
    110 :: Word8 <- des
    v_26 :: Word16 <- des_word16_be
    137 :: Word8 <- des
    3876738985 :: Word32 <- des_word32_be
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word32 <- des_word32_be
    1296152054 :: Word32 <- des_word32_be
    v_30 :: Word32 <- des_word32_be
    v_31 :: Word8 <- des
    2564929105 :: Word32 <- des_word32_be
    v_32 :: Word8 <- des
    v_33 :: Word8 <- des
    v_34 :: Word32 <- des_word32_be
    v_35 :: Word8 <- des
    2805119020 :: Word32 <- des_word32_be
    v_36 :: Word16 <- des_word16_be
    209 :: Word8 <- des
    v_37 :: Word16 <- des_word16_be
    v_38 :: Word32 <- des_word32_be
    v_39 :: Word32 <- des_word32_be
    6687 :: Word16 <- des_word16_be
    2322597726 :: Word32 <- des_word32_be
    v_40 :: Word16 <- des_word16_be
    v_41 :: Word32 <- des_word32_be
    v_42 :: Word32 <- des_word32_be
    v_43 :: Word16 <- des_word16_be
    182 :: Word8 <- des
    5 :: Word8 <- des
    125 :: Word8 <- des
    v_44 :: Word16 <- des_word16_be
    2201642759 :: Word32 <- des_word32_be
    23206 :: Word16 <- des_word16_be
    v_45 :: Word32 <- des_word32_be
    52331 :: Word16 <- des_word16_be
    v_46 :: Word8 <- des
    v_47 :: Word32 <- des_word32_be
    v_48 :: Word32 <- des_word32_be
    250 :: Word8 <- des
    10712 :: Word16 <- des_word16_be
    7377 :: Word16 <- des_word16_be
    v_49 :: Word16 <- des_word16_be
    187 :: Word8 <- des
    63669 :: Word16 <- des_word16_be
    v_50 :: Word8 <- des
    v_51 :: Word16 <- des_word16_be
    855016789 :: Word32 <- des_word32_be
    57589 :: Word16 <- des_word16_be
    v_52 :: Word8 <- des
    v_53 :: Word8 <- des
    9 :: Word8 <- des
    v_54 :: Word8 <- des
    1986088679 :: Word32 <- des_word32_be
    v_55 :: Word8 <- des
    v_56 :: Word32 <- des_word32_be
    v_57 :: Word8 <- des
    7445 :: Word16 <- des_word16_be
    v_58 :: Word16 <- des_word16_be
    v_59 :: Word32 <- des_word32_be
    static_return  [ Word16Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word16Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word8Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word8Value v_54 , Word8Value v_55 , Word32Value v_56 , Word8Value v_57 , Word16Value v_58 , Word32Value v_59 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word16Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word8Value v_35 , Word16Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word16Value v_49 , Word8Value v_50 , Word16Value v_51 , Word8Value v_52 , Word8Value v_53 , Word8Value v_54 , Word8Value v_55 , Word32Value v_56 , Word8Value v_57 , Word16Value v_58 , Word32Value v_59 ] = vs 
    ser_word16_be v_0
    ser (154 :: Word8)
    ser_word16_be 60456
    ser (30 :: Word8)
    ser (193 :: Word8)
    ser_word32_be 151139490
    ser v_1
    ser (4 :: Word8)
    ser_word32_be v_2
    ser_word32_be 1176619845
    ser (178 :: Word8)
    ser_word16_be v_3
    ser_word32_be 4055394780
    ser_word16_be 11491
    ser_word32_be 3329088736
    ser_word16_be 16407
    ser_word16_be v_4
    ser_word16_be v_5
    ser v_6
    ser_word16_be v_7
    ser (179 :: Word8)
    ser_word32_be 1251394852
    ser_word32_be 601180003
    ser_word16_be v_8
    ser_word32_be 1989047817
    ser (34 :: Word8)
    ser v_9
    ser_word32_be 188925259
    ser_word32_be 3088317435
    ser (203 :: Word8)
    ser (128 :: Word8)
    ser_word32_be 3306394667
    ser_word16_be 32748
    ser v_10
    ser_word16_be 23683
    ser_word32_be v_11
    ser (252 :: Word8)
    ser v_12
    ser (45 :: Word8)
    ser_word32_be v_13
    ser (105 :: Word8)
    ser_word32_be v_14
    ser_word16_be 27342
    ser v_15
    ser_word32_be v_16
    ser_word32_be v_17
    ser (0 :: Word8)
    ser_word32_be v_18
    ser_word16_be 9432
    ser (203 :: Word8)
    ser_word16_be 47302
    ser_word16_be 37522
    ser_word32_be v_19
    ser_word32_be v_20
    ser_word32_be 1575200506
    ser v_21
    ser_word16_be 16431
    ser_word16_be v_22
    ser_word32_be v_23
    ser (19 :: Word8)
    ser (191 :: Word8)
    ser (226 :: Word8)
    ser v_24
    ser (204 :: Word8)
    ser_word16_be v_25
    ser (217 :: Word8)
    ser (110 :: Word8)
    ser_word16_be v_26
    ser (137 :: Word8)
    ser_word32_be 3876738985
    ser_word32_be v_27
    ser_word16_be v_28
    ser_word32_be v_29
    ser_word32_be 1296152054
    ser_word32_be v_30
    ser v_31
    ser_word32_be 2564929105
    ser v_32
    ser v_33
    ser_word32_be v_34
    ser v_35
    ser_word32_be 2805119020
    ser_word16_be v_36
    ser (209 :: Word8)
    ser_word16_be v_37
    ser_word32_be v_38
    ser_word32_be v_39
    ser_word16_be 6687
    ser_word32_be 2322597726
    ser_word16_be v_40
    ser_word32_be v_41
    ser_word32_be v_42
    ser_word16_be v_43
    ser (182 :: Word8)
    ser (5 :: Word8)
    ser (125 :: Word8)
    ser_word16_be v_44
    ser_word32_be 2201642759
    ser_word16_be 23206
    ser_word32_be v_45
    ser_word16_be 52331
    ser v_46
    ser_word32_be v_47
    ser_word32_be v_48
    ser (250 :: Word8)
    ser_word16_be 10712
    ser_word16_be 7377
    ser_word16_be v_49
    ser (187 :: Word8)
    ser_word16_be 63669
    ser v_50
    ser_word16_be v_51
    ser_word32_be 855016789
    ser_word16_be 57589
    ser v_52
    ser v_53
    ser (9 :: Word8)
    ser v_54
    ser_word32_be 1986088679
    ser v_55
    ser_word32_be v_56
    ser v_57
    ser_word16_be 7445
    ser_word16_be v_58
    ser_word32_be v_59
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word8Value 154),Value (Word16Value 60456),Value (Word8Value 30),Value (Word8Value 193),Value (Word32Value 151139490),Hole {byte_offset = 11, hole_type = Word8Hole},Value (Word8Value 4),Hole {byte_offset = 13, hole_type = Word32Hole},Value (Word32Value 1176619845),Value (Word8Value 178),Hole {byte_offset = 22, hole_type = Word16Hole},Value (Word32Value 4055394780),Value (Word16Value 11491),Value (Word32Value 3329088736),Value (Word16Value 16407),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word16Hole},Value (Word8Value 179),Value (Word32Value 1251394852),Value (Word32Value 601180003),Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word32Value 1989047817),Value (Word8Value 34),Hole {byte_offset = 59, hole_type = Word8Hole},Value (Word32Value 188925259),Value (Word32Value 3088317435),Value (Word8Value 203),Value (Word8Value 128),Value (Word32Value 3306394667),Value (Word16Value 32748),Hole {byte_offset = 76, hole_type = Word8Hole},Value (Word16Value 23683),Hole {byte_offset = 79, hole_type = Word32Hole},Value (Word8Value 252),Hole {byte_offset = 84, hole_type = Word8Hole},Value (Word8Value 45),Hole {byte_offset = 86, hole_type = Word32Hole},Value (Word8Value 105),Hole {byte_offset = 91, hole_type = Word32Hole},Value (Word16Value 27342),Hole {byte_offset = 97, hole_type = Word8Hole},Hole {byte_offset = 98, hole_type = Word32Hole},Hole {byte_offset = 102, hole_type = Word32Hole},Value (Word8Value 0),Hole {byte_offset = 107, hole_type = Word32Hole},Value (Word16Value 9432),Value (Word8Value 203),Value (Word16Value 47302),Value (Word16Value 37522),Hole {byte_offset = 118, hole_type = Word32Hole},Hole {byte_offset = 122, hole_type = Word32Hole},Value (Word32Value 1575200506),Hole {byte_offset = 130, hole_type = Word8Hole},Value (Word16Value 16431),Hole {byte_offset = 133, hole_type = Word16Hole},Hole {byte_offset = 135, hole_type = Word32Hole},Value (Word8Value 19),Value (Word8Value 191),Value (Word8Value 226),Hole {byte_offset = 142, hole_type = Word8Hole},Value (Word8Value 204),Hole {byte_offset = 144, hole_type = Word16Hole},Value (Word8Value 217),Value (Word8Value 110),Hole {byte_offset = 148, hole_type = Word16Hole},Value (Word8Value 137),Value (Word32Value 3876738985),Hole {byte_offset = 155, hole_type = Word32Hole},Hole {byte_offset = 159, hole_type = Word16Hole},Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word32Value 1296152054),Hole {byte_offset = 169, hole_type = Word32Hole},Hole {byte_offset = 173, hole_type = Word8Hole},Value (Word32Value 2564929105),Hole {byte_offset = 178, hole_type = Word8Hole},Hole {byte_offset = 179, hole_type = Word8Hole},Hole {byte_offset = 180, hole_type = Word32Hole},Hole {byte_offset = 184, hole_type = Word8Hole},Value (Word32Value 2805119020),Hole {byte_offset = 189, hole_type = Word16Hole},Value (Word8Value 209),Hole {byte_offset = 192, hole_type = Word16Hole},Hole {byte_offset = 194, hole_type = Word32Hole},Hole {byte_offset = 198, hole_type = Word32Hole},Value (Word16Value 6687),Value (Word32Value 2322597726),Hole {byte_offset = 208, hole_type = Word16Hole},Hole {byte_offset = 210, hole_type = Word32Hole},Hole {byte_offset = 214, hole_type = Word32Hole},Hole {byte_offset = 218, hole_type = Word16Hole},Value (Word8Value 182),Value (Word8Value 5),Value (Word8Value 125),Hole {byte_offset = 223, hole_type = Word16Hole},Value (Word32Value 2201642759),Value (Word16Value 23206),Hole {byte_offset = 231, hole_type = Word32Hole},Value (Word16Value 52331),Hole {byte_offset = 237, hole_type = Word8Hole},Hole {byte_offset = 238, hole_type = Word32Hole},Hole {byte_offset = 242, hole_type = Word32Hole},Value (Word8Value 250),Value (Word16Value 10712),Value (Word16Value 7377),Hole {byte_offset = 251, hole_type = Word16Hole},Value (Word8Value 187),Value (Word16Value 63669),Hole {byte_offset = 256, hole_type = Word8Hole},Hole {byte_offset = 257, hole_type = Word16Hole},Value (Word32Value 855016789),Value (Word16Value 57589),Hole {byte_offset = 265, hole_type = Word8Hole},Hole {byte_offset = 266, hole_type = Word8Hole},Value (Word8Value 9),Hole {byte_offset = 268, hole_type = Word8Hole},Value (Word32Value 1986088679),Hole {byte_offset = 273, hole_type = Word8Hole},Hole {byte_offset = 274, hole_type = Word32Hole},Hole {byte_offset = 278, hole_type = Word8Hole},Value (Word16Value 7445),Hole {byte_offset = 281, hole_type = Word16Hole},Hole {byte_offset = 283, hole_type = Word32Hole}]}
