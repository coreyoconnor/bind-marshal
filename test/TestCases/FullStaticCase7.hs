module TestCases.FullStaticCase7 where
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
    60125 :: Word16 <- des_word16_be
    3072572163 :: Word32 <- des_word32_be
    155 :: Word8 <- des
    216 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word32 <- des_word32_be
    29080 :: Word16 <- des_word16_be
    450967872 :: Word32 <- des_word32_be
    4013978738 :: Word32 <- des_word32_be
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word16 <- des_word16_be
    28602 :: Word16 <- des_word16_be
    1761831148 :: Word32 <- des_word32_be
    56097 :: Word16 <- des_word16_be
    144 :: Word8 <- des
    1866030625 :: Word32 <- des_word32_be
    v_5 :: Word32 <- des_word32_be
    18331 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    v_7 :: Word16 <- des_word16_be
    2368187773 :: Word32 <- des_word32_be
    55569 :: Word16 <- des_word16_be
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    981332725 :: Word32 <- des_word32_be
    3329558639 :: Word32 <- des_word32_be
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    1729238200 :: Word32 <- des_word32_be
    v_13 :: Word16 <- des_word16_be
    8179 :: Word16 <- des_word16_be
    4176 :: Word16 <- des_word16_be
    v_14 :: Word32 <- des_word32_be
    v_15 :: Word16 <- des_word16_be
    15 :: Word8 <- des
    v_16 :: Word16 <- des_word16_be
    575246075 :: Word32 <- des_word32_be
    3334 :: Word16 <- des_word16_be
    v_17 :: Word8 <- des
    v_18 :: Word8 <- des
    192 :: Word8 <- des
    16074 :: Word16 <- des_word16_be
    86 :: Word8 <- des
    v_19 :: Word16 <- des_word16_be
    v_20 :: Word32 <- des_word32_be
    3965 :: Word16 <- des_word16_be
    v_21 :: Word32 <- des_word32_be
    6784 :: Word16 <- des_word16_be
    76 :: Word8 <- des
    129 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    4192106710 :: Word32 <- des_word32_be
    3485311300 :: Word32 <- des_word32_be
    2968056085 :: Word32 <- des_word32_be
    4072964214 :: Word32 <- des_word32_be
    847206522 :: Word32 <- des_word32_be
    v_23 :: Word32 <- des_word32_be
    1805344434 :: Word32 <- des_word32_be
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word16 <- des_word16_be
    35069 :: Word16 <- des_word16_be
    v_26 :: Word8 <- des
    v_27 :: Word8 <- des
    619404241 :: Word32 <- des_word32_be
    948252506 :: Word32 <- des_word32_be
    43342 :: Word16 <- des_word16_be
    v_28 :: Word8 <- des
    v_29 :: Word32 <- des_word32_be
    v_30 :: Word32 <- des_word32_be
    v_31 :: Word8 <- des
    3760600211 :: Word32 <- des_word32_be
    18534 :: Word16 <- des_word16_be
    117 :: Word16 <- des_word16_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word16 <- des_word16_be
    284923463 :: Word32 <- des_word32_be
    v_34 :: Word16 <- des_word16_be
    v_35 :: Word32 <- des_word32_be
    12685 :: Word16 <- des_word16_be
    8499 :: Word16 <- des_word16_be
    2230117417 :: Word32 <- des_word32_be
    16382 :: Word16 <- des_word16_be
    4 :: Word8 <- des
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word16 <- des_word16_be
    51238 :: Word16 <- des_word16_be
    v_38 :: Word32 <- des_word32_be
    1607987104 :: Word32 <- des_word32_be
    3945436825 :: Word32 <- des_word32_be
    v_39 :: Word32 <- des_word32_be
    26577 :: Word16 <- des_word16_be
    27570 :: Word16 <- des_word16_be
    25763 :: Word16 <- des_word16_be
    139 :: Word8 <- des
    10 :: Word8 <- des
    v_40 :: Word32 <- des_word32_be
    2118202207 :: Word32 <- des_word32_be
    v_41 :: Word16 <- des_word16_be
    v_42 :: Word32 <- des_word32_be
    61879 :: Word16 <- des_word16_be
    v_43 :: Word8 <- des
    v_44 :: Word8 <- des
    3621106650 :: Word32 <- des_word32_be
    29224 :: Word16 <- des_word16_be
    v_45 :: Word32 <- des_word32_be
    1435767336 :: Word32 <- des_word32_be
    3084530162 :: Word32 <- des_word32_be
    627018483 :: Word32 <- des_word32_be
    v_46 :: Word8 <- des
    v_47 :: Word32 <- des_word32_be
    v_48 :: Word32 <- des_word32_be
    v_49 :: Word32 <- des_word32_be
    33500 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word32Value v_40 , Word16Value v_41 , Word32Value v_42 , Word8Value v_43 , Word8Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word32Value v_49 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word32Value v_14 , Word16Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word32Value v_39 , Word32Value v_40 , Word16Value v_41 , Word32Value v_42 , Word8Value v_43 , Word8Value v_44 , Word32Value v_45 , Word8Value v_46 , Word32Value v_47 , Word32Value v_48 , Word32Value v_49 ] = vs 
    ser_word16_be 60125
    ser_word32_be 3072572163
    ser (155 :: Word8)
    ser (216 :: Word8)
    ser_word32_be v_0
    ser_word32_be v_1
    ser_word16_be 29080
    ser_word32_be 450967872
    ser_word32_be 4013978738
    ser_word32_be v_2
    ser_word32_be v_3
    ser_word16_be v_4
    ser_word16_be 28602
    ser_word32_be 1761831148
    ser_word16_be 56097
    ser (144 :: Word8)
    ser_word32_be 1866030625
    ser_word32_be v_5
    ser_word16_be 18331
    ser v_6
    ser_word16_be v_7
    ser_word32_be 2368187773
    ser_word16_be 55569
    ser_word32_be v_8
    ser v_9
    ser_word32_be v_10
    ser_word32_be 981332725
    ser_word32_be 3329558639
    ser_word16_be v_11
    ser_word32_be v_12
    ser_word32_be 1729238200
    ser_word16_be v_13
    ser_word16_be 8179
    ser_word16_be 4176
    ser_word32_be v_14
    ser_word16_be v_15
    ser (15 :: Word8)
    ser_word16_be v_16
    ser_word32_be 575246075
    ser_word16_be 3334
    ser v_17
    ser v_18
    ser (192 :: Word8)
    ser_word16_be 16074
    ser (86 :: Word8)
    ser_word16_be v_19
    ser_word32_be v_20
    ser_word16_be 3965
    ser_word32_be v_21
    ser_word16_be 6784
    ser (76 :: Word8)
    ser (129 :: Word8)
    ser_word32_be v_22
    ser_word32_be 4192106710
    ser_word32_be 3485311300
    ser_word32_be 2968056085
    ser_word32_be 4072964214
    ser_word32_be 847206522
    ser_word32_be v_23
    ser_word32_be 1805344434
    ser_word32_be v_24
    ser_word16_be v_25
    ser_word16_be 35069
    ser v_26
    ser v_27
    ser_word32_be 619404241
    ser_word32_be 948252506
    ser_word16_be 43342
    ser v_28
    ser_word32_be v_29
    ser_word32_be v_30
    ser v_31
    ser_word32_be 3760600211
    ser_word16_be 18534
    ser_word16_be 117
    ser_word16_be v_32
    ser_word16_be v_33
    ser_word32_be 284923463
    ser_word16_be v_34
    ser_word32_be v_35
    ser_word16_be 12685
    ser_word16_be 8499
    ser_word32_be 2230117417
    ser_word16_be 16382
    ser (4 :: Word8)
    ser_word32_be v_36
    ser_word16_be v_37
    ser_word16_be 51238
    ser_word32_be v_38
    ser_word32_be 1607987104
    ser_word32_be 3945436825
    ser_word32_be v_39
    ser_word16_be 26577
    ser_word16_be 27570
    ser_word16_be 25763
    ser (139 :: Word8)
    ser (10 :: Word8)
    ser_word32_be v_40
    ser_word32_be 2118202207
    ser_word16_be v_41
    ser_word32_be v_42
    ser_word16_be 61879
    ser v_43
    ser v_44
    ser_word32_be 3621106650
    ser_word16_be 29224
    ser_word32_be v_45
    ser_word32_be 1435767336
    ser_word32_be 3084530162
    ser_word32_be 627018483
    ser v_46
    ser_word32_be v_47
    ser_word32_be v_48
    ser_word32_be v_49
    ser_word16_be 33500
    static_return ()

static_structure = StaticStructure {properties = [Value (Word16Value 60125),Value (Word32Value 3072572163),Value (Word8Value 155),Value (Word8Value 216),Hole {byte_offset = 8, hole_type = Word32Hole},Hole {byte_offset = 12, hole_type = Word32Hole},Value (Word16Value 29080),Value (Word32Value 450967872),Value (Word32Value 4013978738),Hole {byte_offset = 26, hole_type = Word32Hole},Hole {byte_offset = 30, hole_type = Word32Hole},Hole {byte_offset = 34, hole_type = Word16Hole},Value (Word16Value 28602),Value (Word32Value 1761831148),Value (Word16Value 56097),Value (Word8Value 144),Value (Word32Value 1866030625),Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word16Value 18331),Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word16Hole},Value (Word32Value 2368187773),Value (Word16Value 55569),Hole {byte_offset = 64, hole_type = Word32Hole},Hole {byte_offset = 68, hole_type = Word8Hole},Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word32Value 981332725),Value (Word32Value 3329558639),Hole {byte_offset = 81, hole_type = Word16Hole},Hole {byte_offset = 83, hole_type = Word32Hole},Value (Word32Value 1729238200),Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word16Value 8179),Value (Word16Value 4176),Hole {byte_offset = 97, hole_type = Word32Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Value (Word8Value 15),Hole {byte_offset = 104, hole_type = Word16Hole},Value (Word32Value 575246075),Value (Word16Value 3334),Hole {byte_offset = 112, hole_type = Word8Hole},Hole {byte_offset = 113, hole_type = Word8Hole},Value (Word8Value 192),Value (Word16Value 16074),Value (Word8Value 86),Hole {byte_offset = 118, hole_type = Word16Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Value (Word16Value 3965),Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word16Value 6784),Value (Word8Value 76),Value (Word8Value 129),Hole {byte_offset = 134, hole_type = Word32Hole},Value (Word32Value 4192106710),Value (Word32Value 3485311300),Value (Word32Value 2968056085),Value (Word32Value 4072964214),Value (Word32Value 847206522),Hole {byte_offset = 158, hole_type = Word32Hole},Value (Word32Value 1805344434),Hole {byte_offset = 166, hole_type = Word32Hole},Hole {byte_offset = 170, hole_type = Word16Hole},Value (Word16Value 35069),Hole {byte_offset = 174, hole_type = Word8Hole},Hole {byte_offset = 175, hole_type = Word8Hole},Value (Word32Value 619404241),Value (Word32Value 948252506),Value (Word16Value 43342),Hole {byte_offset = 186, hole_type = Word8Hole},Hole {byte_offset = 187, hole_type = Word32Hole},Hole {byte_offset = 191, hole_type = Word32Hole},Hole {byte_offset = 195, hole_type = Word8Hole},Value (Word32Value 3760600211),Value (Word16Value 18534),Value (Word16Value 117),Hole {byte_offset = 204, hole_type = Word16Hole},Hole {byte_offset = 206, hole_type = Word16Hole},Value (Word32Value 284923463),Hole {byte_offset = 212, hole_type = Word16Hole},Hole {byte_offset = 214, hole_type = Word32Hole},Value (Word16Value 12685),Value (Word16Value 8499),Value (Word32Value 2230117417),Value (Word16Value 16382),Value (Word8Value 4),Hole {byte_offset = 229, hole_type = Word32Hole},Hole {byte_offset = 233, hole_type = Word16Hole},Value (Word16Value 51238),Hole {byte_offset = 237, hole_type = Word32Hole},Value (Word32Value 1607987104),Value (Word32Value 3945436825),Hole {byte_offset = 249, hole_type = Word32Hole},Value (Word16Value 26577),Value (Word16Value 27570),Value (Word16Value 25763),Value (Word8Value 139),Value (Word8Value 10),Hole {byte_offset = 261, hole_type = Word32Hole},Value (Word32Value 2118202207),Hole {byte_offset = 269, hole_type = Word16Hole},Hole {byte_offset = 271, hole_type = Word32Hole},Value (Word16Value 61879),Hole {byte_offset = 277, hole_type = Word8Hole},Hole {byte_offset = 278, hole_type = Word8Hole},Value (Word32Value 3621106650),Value (Word16Value 29224),Hole {byte_offset = 285, hole_type = Word32Hole},Value (Word32Value 1435767336),Value (Word32Value 3084530162),Value (Word32Value 627018483),Hole {byte_offset = 301, hole_type = Word8Hole},Hole {byte_offset = 302, hole_type = Word32Hole},Hole {byte_offset = 306, hole_type = Word32Hole},Hole {byte_offset = 310, hole_type = Word32Hole},Value (Word16Value 33500)]}
