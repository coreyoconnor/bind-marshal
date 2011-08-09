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
    v_0 :: Word16 <- des_word16_be
    v_1 :: Word32 <- des_word32_be
    209 :: Word8 <- des
    v_2 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word16 <- des_word16_be
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word8 <- des
    39260 :: Word16 <- des_word16_be
    211 :: Word8 <- des
    57863 :: Word16 <- des_word16_be
    14767 :: Word16 <- des_word16_be
    154 :: Word8 <- des
    v_9 :: Word16 <- des_word16_be
    155 :: Word8 <- des
    27071 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    23025 :: Word16 <- des_word16_be
    1925355127 :: Word32 <- des_word32_be
    v_11 :: Word16 <- des_word16_be
    57573 :: Word16 <- des_word16_be
    48378 :: Word16 <- des_word16_be
    2991714902 :: Word32 <- des_word32_be
    186 :: Word8 <- des
    v_12 :: Word8 <- des
    57 :: Word8 <- des
    v_13 :: Word8 <- des
    v_14 :: Word16 <- des_word16_be
    27402 :: Word16 <- des_word16_be
    217 :: Word8 <- des
    630684348 :: Word32 <- des_word32_be
    45633 :: Word16 <- des_word16_be
    55 :: Word8 <- des
    52000 :: Word16 <- des_word16_be
    99 :: Word8 <- des
    1625916310 :: Word32 <- des_word32_be
    1409611805 :: Word32 <- des_word32_be
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word8 <- des
    8277 :: Word16 <- des_word16_be
    v_17 :: Word16 <- des_word16_be
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word8 <- des
    181 :: Word8 <- des
    1802738815 :: Word32 <- des_word32_be
    30659 :: Word16 <- des_word16_be
    2632422524 :: Word32 <- des_word32_be
    52233 :: Word16 <- des_word16_be
    82 :: Word8 <- des
    v_20 :: Word8 <- des
    18180 :: Word16 <- des_word16_be
    v_21 :: Word32 <- des_word32_be
    231 :: Word8 <- des
    4112411337 :: Word32 <- des_word32_be
    v_22 :: Word8 <- des
    567386867 :: Word32 <- des_word32_be
    2 :: Word8 <- des
    v_23 :: Word32 <- des_word32_be
    v_24 :: Word8 <- des
    v_25 :: Word8 <- des
    v_26 :: Word32 <- des_word32_be
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word32 <- des_word32_be
    24 :: Word8 <- des
    4367 :: Word16 <- des_word16_be
    20100 :: Word16 <- des_word16_be
    v_29 :: Word32 <- des_word32_be
    v_30 :: Word8 <- des
    v_31 :: Word32 <- des_word32_be
    v_32 :: Word32 <- des_word32_be
    1562301866 :: Word32 <- des_word32_be
    42964 :: Word16 <- des_word16_be
    57690 :: Word16 <- des_word16_be
    v_33 :: Word16 <- des_word16_be
    v_34 :: Word16 <- des_word16_be
    1955177252 :: Word32 <- des_word32_be
    90 :: Word8 <- des
    v_35 :: Word8 <- des
    1823558854 :: Word32 <- des_word32_be
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word32 <- des_word32_be
    71 :: Word8 <- des
    v_38 :: Word32 <- des_word32_be
    1987288448 :: Word32 <- des_word32_be
    3103922222 :: Word32 <- des_word32_be
    205 :: Word8 <- des
    v_39 :: Word16 <- des_word16_be
    v_40 :: Word8 <- des
    v_41 :: Word32 <- des_word32_be
    v_42 :: Word16 <- des_word16_be
    2440134852 :: Word32 <- des_word32_be
    20336 :: Word16 <- des_word16_be
    3712755120 :: Word32 <- des_word32_be
    141 :: Word8 <- des
    9 :: Word8 <- des
    328639594 :: Word32 <- des_word32_be
    v_43 :: Word16 <- des_word16_be
    377744175 :: Word32 <- des_word32_be
    3851718104 :: Word32 <- des_word32_be
    176 :: Word8 <- des
    112 :: Word8 <- des
    1255559602 :: Word32 <- des_word32_be
    v_44 :: Word8 <- des
    v_45 :: Word8 <- des
    v_46 :: Word8 <- des
    v_47 :: Word8 <- des
    v_48 :: Word32 <- des_word32_be
    3130 :: Word16 <- des_word16_be
    v_49 :: Word32 <- des_word32_be
    v_50 :: Word32 <- des_word32_be
    v_51 :: Word32 <- des_word32_be
    v_52 :: Word16 <- des_word16_be
    254 :: Word8 <- des
    v_53 :: Word32 <- des_word32_be
    19581 :: Word16 <- des_word16_be
    v_54 :: Word32 <- des_word32_be
    v_55 :: Word8 <- des
    v_56 :: Word16 <- des_word16_be
    4047053620 :: Word32 <- des_word32_be
    v_57 :: Word16 <- des_word16_be
    34002 :: Word16 <- des_word16_be
    1959268807 :: Word32 <- des_word32_be
    static_return  [ Word16Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word32Value v_23 , Word8Value v_24 , Word8Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word16Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word8Value v_44 , Word8Value v_45 , Word8Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word32Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word8Value v_55 , Word16Value v_56 , Word16Value v_57 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word32Value v_23 , Word8Value v_24 , Word8Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word16Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word8Value v_44 , Word8Value v_45 , Word8Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word32Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word8Value v_55 , Word16Value v_56 , Word16Value v_57 ] = vs 
    ser_word16_be v_0
    ser_word32_be v_1
    ser (209 :: Word8)
    ser v_2
    ser_word32_be v_3
    ser_word16_be v_4
    ser_word32_be v_5
    ser v_6
    ser_word32_be v_7
    ser v_8
    ser_word16_be 39260
    ser (211 :: Word8)
    ser_word16_be 57863
    ser_word16_be 14767
    ser (154 :: Word8)
    ser_word16_be v_9
    ser (155 :: Word8)
    ser_word16_be 27071
    ser_word32_be v_10
    ser_word16_be 23025
    ser_word32_be 1925355127
    ser_word16_be v_11
    ser_word16_be 57573
    ser_word16_be 48378
    ser_word32_be 2991714902
    ser (186 :: Word8)
    ser v_12
    ser (57 :: Word8)
    ser v_13
    ser_word16_be v_14
    ser_word16_be 27402
    ser (217 :: Word8)
    ser_word32_be 630684348
    ser_word16_be 45633
    ser (55 :: Word8)
    ser_word16_be 52000
    ser (99 :: Word8)
    ser_word32_be 1625916310
    ser_word32_be 1409611805
    ser_word32_be v_15
    ser v_16
    ser_word16_be 8277
    ser_word16_be v_17
    ser_word16_be v_18
    ser v_19
    ser (181 :: Word8)
    ser_word32_be 1802738815
    ser_word16_be 30659
    ser_word32_be 2632422524
    ser_word16_be 52233
    ser (82 :: Word8)
    ser v_20
    ser_word16_be 18180
    ser_word32_be v_21
    ser (231 :: Word8)
    ser_word32_be 4112411337
    ser v_22
    ser_word32_be 567386867
    ser (2 :: Word8)
    ser_word32_be v_23
    ser v_24
    ser v_25
    ser_word32_be v_26
    ser_word32_be v_27
    ser_word32_be v_28
    ser (24 :: Word8)
    ser_word16_be 4367
    ser_word16_be 20100
    ser_word32_be v_29
    ser v_30
    ser_word32_be v_31
    ser_word32_be v_32
    ser_word32_be 1562301866
    ser_word16_be 42964
    ser_word16_be 57690
    ser_word16_be v_33
    ser_word16_be v_34
    ser_word32_be 1955177252
    ser (90 :: Word8)
    ser v_35
    ser_word32_be 1823558854
    ser_word32_be v_36
    ser_word32_be v_37
    ser (71 :: Word8)
    ser_word32_be v_38
    ser_word32_be 1987288448
    ser_word32_be 3103922222
    ser (205 :: Word8)
    ser_word16_be v_39
    ser v_40
    ser_word32_be v_41
    ser_word16_be v_42
    ser_word32_be 2440134852
    ser_word16_be 20336
    ser_word32_be 3712755120
    ser (141 :: Word8)
    ser (9 :: Word8)
    ser_word32_be 328639594
    ser_word16_be v_43
    ser_word32_be 377744175
    ser_word32_be 3851718104
    ser (176 :: Word8)
    ser (112 :: Word8)
    ser_word32_be 1255559602
    ser v_44
    ser v_45
    ser v_46
    ser v_47
    ser_word32_be v_48
    ser_word16_be 3130
    ser_word32_be v_49
    ser_word32_be v_50
    ser_word32_be v_51
    ser_word16_be v_52
    ser (254 :: Word8)
    ser_word32_be v_53
    ser_word16_be 19581
    ser_word32_be v_54
    ser v_55
    ser_word16_be v_56
    ser_word32_be 4047053620
    ser_word16_be v_57
    ser_word16_be 34002
    ser_word32_be 1959268807
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word8Value 209),Hole {byte_offset = 7, hole_type = Word8Hole},Hole {byte_offset = 8, hole_type = Word32Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word32Hole},Hole {byte_offset = 23, hole_type = Word8Hole},Value (Word16Value 39260),Value (Word8Value 211),Value (Word16Value 57863),Value (Word16Value 14767),Value (Word8Value 154),Hole {byte_offset = 32, hole_type = Word16Hole},Value (Word8Value 155),Value (Word16Value 27071),Hole {byte_offset = 37, hole_type = Word32Hole},Value (Word16Value 23025),Value (Word32Value 1925355127),Hole {byte_offset = 47, hole_type = Word16Hole},Value (Word16Value 57573),Value (Word16Value 48378),Value (Word32Value 2991714902),Value (Word8Value 186),Hole {byte_offset = 58, hole_type = Word8Hole},Value (Word8Value 57),Hole {byte_offset = 60, hole_type = Word8Hole},Hole {byte_offset = 61, hole_type = Word16Hole},Value (Word16Value 27402),Value (Word8Value 217),Value (Word32Value 630684348),Value (Word16Value 45633),Value (Word8Value 55),Value (Word16Value 52000),Value (Word8Value 99),Value (Word32Value 1625916310),Value (Word32Value 1409611805),Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Value (Word16Value 8277),Hole {byte_offset = 91, hole_type = Word16Hole},Hole {byte_offset = 93, hole_type = Word16Hole},Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word8Value 181),Value (Word32Value 1802738815),Value (Word16Value 30659),Value (Word32Value 2632422524),Value (Word16Value 52233),Value (Word8Value 82),Hole {byte_offset = 110, hole_type = Word8Hole},Value (Word16Value 18180),Hole {byte_offset = 113, hole_type = Word32Hole},Value (Word8Value 231),Value (Word32Value 4112411337),Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word32Value 567386867),Value (Word8Value 2),Hole {byte_offset = 128, hole_type = Word32Hole},Hole {byte_offset = 132, hole_type = Word8Hole},Hole {byte_offset = 133, hole_type = Word8Hole},Hole {byte_offset = 134, hole_type = Word32Hole},Hole {byte_offset = 138, hole_type = Word32Hole},Hole {byte_offset = 142, hole_type = Word32Hole},Value (Word8Value 24),Value (Word16Value 4367),Value (Word16Value 20100),Hole {byte_offset = 151, hole_type = Word32Hole},Hole {byte_offset = 155, hole_type = Word8Hole},Hole {byte_offset = 156, hole_type = Word32Hole},Hole {byte_offset = 160, hole_type = Word32Hole},Value (Word32Value 1562301866),Value (Word16Value 42964),Value (Word16Value 57690),Hole {byte_offset = 172, hole_type = Word16Hole},Hole {byte_offset = 174, hole_type = Word16Hole},Value (Word32Value 1955177252),Value (Word8Value 90),Hole {byte_offset = 181, hole_type = Word8Hole},Value (Word32Value 1823558854),Hole {byte_offset = 186, hole_type = Word32Hole},Hole {byte_offset = 190, hole_type = Word32Hole},Value (Word8Value 71),Hole {byte_offset = 195, hole_type = Word32Hole},Value (Word32Value 1987288448),Value (Word32Value 3103922222),Value (Word8Value 205),Hole {byte_offset = 208, hole_type = Word16Hole},Hole {byte_offset = 210, hole_type = Word8Hole},Hole {byte_offset = 211, hole_type = Word32Hole},Hole {byte_offset = 215, hole_type = Word16Hole},Value (Word32Value 2440134852),Value (Word16Value 20336),Value (Word32Value 3712755120),Value (Word8Value 141),Value (Word8Value 9),Value (Word32Value 328639594),Hole {byte_offset = 233, hole_type = Word16Hole},Value (Word32Value 377744175),Value (Word32Value 3851718104),Value (Word8Value 176),Value (Word8Value 112),Value (Word32Value 1255559602),Hole {byte_offset = 249, hole_type = Word8Hole},Hole {byte_offset = 250, hole_type = Word8Hole},Hole {byte_offset = 251, hole_type = Word8Hole},Hole {byte_offset = 252, hole_type = Word8Hole},Hole {byte_offset = 253, hole_type = Word32Hole},Value (Word16Value 3130),Hole {byte_offset = 259, hole_type = Word32Hole},Hole {byte_offset = 263, hole_type = Word32Hole},Hole {byte_offset = 267, hole_type = Word32Hole},Hole {byte_offset = 271, hole_type = Word16Hole},Value (Word8Value 254),Hole {byte_offset = 274, hole_type = Word32Hole},Value (Word16Value 19581),Hole {byte_offset = 280, hole_type = Word32Hole},Hole {byte_offset = 284, hole_type = Word8Hole},Hole {byte_offset = 285, hole_type = Word16Hole},Value (Word32Value 4047053620),Hole {byte_offset = 291, hole_type = Word16Hole},Value (Word16Value 34002),Value (Word32Value 1959268807)]}
