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
    129 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    1745008075 :: Word32 <- des_word32_be
    237 :: Word8 <- des
    34986 :: Word16 <- des_word16_be
    v_1 :: Word8 <- des
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    33 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word8 <- des
    37242 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    130 :: Word8 <- des
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word16 <- des_word16_be
    254 :: Word8 <- des
    27392 :: Word16 <- des_word16_be
    v_13 :: Word16 <- des_word16_be
    33 :: Word8 <- des
    v_14 :: Word8 <- des
    2886830717 :: Word32 <- des_word32_be
    60492 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    3270584180 :: Word32 <- des_word32_be
    v_17 :: Word8 <- des
    124 :: Word8 <- des
    129 :: Word8 <- des
    1883577371 :: Word32 <- des_word32_be
    v_18 :: Word32 <- des_word32_be
    12671 :: Word16 <- des_word16_be
    v_19 :: Word8 <- des
    v_20 :: Word32 <- des_word32_be
    115 :: Word8 <- des
    v_21 :: Word16 <- des_word16_be
    v_22 :: Word8 <- des
    32 :: Word8 <- des
    4550 :: Word16 <- des_word16_be
    4262293287 :: Word32 <- des_word32_be
    v_23 :: Word16 <- des_word16_be
    151 :: Word8 <- des
    v_24 :: Word16 <- des_word16_be
    v_25 :: Word8 <- des
    v_26 :: Word32 <- des_word32_be
    149 :: Word8 <- des
    v_27 :: Word16 <- des_word16_be
    67 :: Word8 <- des
    7060 :: Word16 <- des_word16_be
    630441585 :: Word32 <- des_word32_be
    1877597801 :: Word32 <- des_word32_be
    40996 :: Word16 <- des_word16_be
    52982 :: Word16 <- des_word16_be
    1387114885 :: Word32 <- des_word32_be
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word8 <- des
    145 :: Word8 <- des
    v_30 :: Word8 <- des
    v_31 :: Word16 <- des_word16_be
    184 :: Word8 <- des
    49552 :: Word16 <- des_word16_be
    v_32 :: Word32 <- des_word32_be
    1479873309 :: Word32 <- des_word32_be
    v_33 :: Word32 <- des_word32_be
    69 :: Word8 <- des
    595851813 :: Word32 <- des_word32_be
    79 :: Word8 <- des
    26058 :: Word16 <- des_word16_be
    945175652 :: Word32 <- des_word32_be
    57975 :: Word16 <- des_word16_be
    v_34 :: Word32 <- des_word32_be
    v_35 :: Word16 <- des_word16_be
    v_36 :: Word8 <- des
    823389206 :: Word32 <- des_word32_be
    101 :: Word8 <- des
    v_37 :: Word32 <- des_word32_be
    v_38 :: Word8 <- des
    7189 :: Word16 <- des_word16_be
    v_39 :: Word32 <- des_word32_be
    203 :: Word8 <- des
    1216252055 :: Word32 <- des_word32_be
    3590855486 :: Word32 <- des_word32_be
    11002 :: Word16 <- des_word16_be
    104 :: Word8 <- des
    158196975 :: Word32 <- des_word32_be
    132 :: Word8 <- des
    37409 :: Word16 <- des_word16_be
    v_40 :: Word32 <- des_word32_be
    v_41 :: Word32 <- des_word32_be
    36703 :: Word16 <- des_word16_be
    v_42 :: Word8 <- des
    169 :: Word8 <- des
    51949 :: Word16 <- des_word16_be
    2266927124 :: Word32 <- des_word32_be
    4125292452 :: Word32 <- des_word32_be
    v_43 :: Word8 <- des
    v_44 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    v_46 :: Word16 <- des_word16_be
    368495509 :: Word32 <- des_word32_be
    1397684059 :: Word32 <- des_word32_be
    3116805292 :: Word32 <- des_word32_be
    112 :: Word8 <- des
    250 :: Word8 <- des
    v_47 :: Word8 <- des
    1232463606 :: Word32 <- des_word32_be
    41 :: Word8 <- des
    v_48 :: Word32 <- des_word32_be
    108 :: Word8 <- des
    64853 :: Word16 <- des_word16_be
    v_49 :: Word32 <- des_word32_be
    86 :: Word8 <- des
    32412 :: Word16 <- des_word16_be
    31 :: Word8 <- des
    v_50 :: Word8 <- des
    80 :: Word8 <- des
    v_51 :: Word32 <- des_word32_be
    43 :: Word8 <- des
    301494050 :: Word32 <- des_word32_be
    static_return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word32Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word8Value v_38 , Word32Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word32Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word8Value v_38 , Word32Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 ] = vs 
    ser (129 :: Word8)
    ser_word32_be v_0
    ser_word32_be 1745008075
    ser (237 :: Word8)
    ser_word16_be 34986
    ser v_1
    ser_word32_be v_2
    ser_word16_be v_3
    ser_word32_be v_4
    ser (33 :: Word8)
    ser_word16_be v_5
    ser_word32_be v_6
    ser_word32_be v_7
    ser_word16_be v_8
    ser v_9
    ser_word16_be 37242
    ser_word32_be v_10
    ser (130 :: Word8)
    ser_word16_be v_11
    ser_word16_be v_12
    ser (254 :: Word8)
    ser_word16_be 27392
    ser_word16_be v_13
    ser (33 :: Word8)
    ser v_14
    ser_word32_be 2886830717
    ser_word16_be 60492
    ser v_15
    ser_word32_be v_16
    ser_word32_be 3270584180
    ser v_17
    ser (124 :: Word8)
    ser (129 :: Word8)
    ser_word32_be 1883577371
    ser_word32_be v_18
    ser_word16_be 12671
    ser v_19
    ser_word32_be v_20
    ser (115 :: Word8)
    ser_word16_be v_21
    ser v_22
    ser (32 :: Word8)
    ser_word16_be 4550
    ser_word32_be 4262293287
    ser_word16_be v_23
    ser (151 :: Word8)
    ser_word16_be v_24
    ser v_25
    ser_word32_be v_26
    ser (149 :: Word8)
    ser_word16_be v_27
    ser (67 :: Word8)
    ser_word16_be 7060
    ser_word32_be 630441585
    ser_word32_be 1877597801
    ser_word16_be 40996
    ser_word16_be 52982
    ser_word32_be 1387114885
    ser_word16_be v_28
    ser v_29
    ser (145 :: Word8)
    ser v_30
    ser_word16_be v_31
    ser (184 :: Word8)
    ser_word16_be 49552
    ser_word32_be v_32
    ser_word32_be 1479873309
    ser_word32_be v_33
    ser (69 :: Word8)
    ser_word32_be 595851813
    ser (79 :: Word8)
    ser_word16_be 26058
    ser_word32_be 945175652
    ser_word16_be 57975
    ser_word32_be v_34
    ser_word16_be v_35
    ser v_36
    ser_word32_be 823389206
    ser (101 :: Word8)
    ser_word32_be v_37
    ser v_38
    ser_word16_be 7189
    ser_word32_be v_39
    ser (203 :: Word8)
    ser_word32_be 1216252055
    ser_word32_be 3590855486
    ser_word16_be 11002
    ser (104 :: Word8)
    ser_word32_be 158196975
    ser (132 :: Word8)
    ser_word16_be 37409
    ser_word32_be v_40
    ser_word32_be v_41
    ser_word16_be 36703
    ser v_42
    ser (169 :: Word8)
    ser_word16_be 51949
    ser_word32_be 2266927124
    ser_word32_be 4125292452
    ser v_43
    ser_word16_be v_44
    ser v_45
    ser_word16_be v_46
    ser_word32_be 368495509
    ser_word32_be 1397684059
    ser_word32_be 3116805292
    ser (112 :: Word8)
    ser (250 :: Word8)
    ser v_47
    ser_word32_be 1232463606
    ser (41 :: Word8)
    ser_word32_be v_48
    ser (108 :: Word8)
    ser_word16_be 64853
    ser_word32_be v_49
    ser (86 :: Word8)
    ser_word16_be 32412
    ser (31 :: Word8)
    ser v_50
    ser (80 :: Word8)
    ser_word32_be v_51
    ser (43 :: Word8)
    ser_word32_be 301494050
    static_return ()

static_structure = StaticStructure {properties = [Value (Word8Value 129),Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word32Value 1745008075),Value (Word8Value 237),Value (Word16Value 34986),Hole {byte_offset = 12, hole_type = Word8Hole},Hole {byte_offset = 13, hole_type = Word32Hole},Hole {byte_offset = 17, hole_type = Word16Hole},Hole {byte_offset = 19, hole_type = Word32Hole},Value (Word8Value 33),Hole {byte_offset = 24, hole_type = Word16Hole},Hole {byte_offset = 26, hole_type = Word32Hole},Hole {byte_offset = 30, hole_type = Word32Hole},Hole {byte_offset = 34, hole_type = Word16Hole},Hole {byte_offset = 36, hole_type = Word8Hole},Value (Word16Value 37242),Hole {byte_offset = 39, hole_type = Word32Hole},Value (Word8Value 130),Hole {byte_offset = 44, hole_type = Word16Hole},Hole {byte_offset = 46, hole_type = Word16Hole},Value (Word8Value 254),Value (Word16Value 27392),Hole {byte_offset = 51, hole_type = Word16Hole},Value (Word8Value 33),Hole {byte_offset = 54, hole_type = Word8Hole},Value (Word32Value 2886830717),Value (Word16Value 60492),Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Value (Word32Value 3270584180),Hole {byte_offset = 70, hole_type = Word8Hole},Value (Word8Value 124),Value (Word8Value 129),Value (Word32Value 1883577371),Hole {byte_offset = 77, hole_type = Word32Hole},Value (Word16Value 12671),Hole {byte_offset = 83, hole_type = Word8Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Value (Word8Value 115),Hole {byte_offset = 89, hole_type = Word16Hole},Hole {byte_offset = 91, hole_type = Word8Hole},Value (Word8Value 32),Value (Word16Value 4550),Value (Word32Value 4262293287),Hole {byte_offset = 99, hole_type = Word16Hole},Value (Word8Value 151),Hole {byte_offset = 102, hole_type = Word16Hole},Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word8Value 149),Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word8Value 67),Value (Word16Value 7060),Value (Word32Value 630441585),Value (Word32Value 1877597801),Value (Word16Value 40996),Value (Word16Value 52982),Value (Word32Value 1387114885),Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word8Hole},Value (Word8Value 145),Hole {byte_offset = 135, hole_type = Word8Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Value (Word8Value 184),Value (Word16Value 49552),Hole {byte_offset = 141, hole_type = Word32Hole},Value (Word32Value 1479873309),Hole {byte_offset = 149, hole_type = Word32Hole},Value (Word8Value 69),Value (Word32Value 595851813),Value (Word8Value 79),Value (Word16Value 26058),Value (Word32Value 945175652),Value (Word16Value 57975),Hole {byte_offset = 167, hole_type = Word32Hole},Hole {byte_offset = 171, hole_type = Word16Hole},Hole {byte_offset = 173, hole_type = Word8Hole},Value (Word32Value 823389206),Value (Word8Value 101),Hole {byte_offset = 179, hole_type = Word32Hole},Hole {byte_offset = 183, hole_type = Word8Hole},Value (Word16Value 7189),Hole {byte_offset = 186, hole_type = Word32Hole},Value (Word8Value 203),Value (Word32Value 1216252055),Value (Word32Value 3590855486),Value (Word16Value 11002),Value (Word8Value 104),Value (Word32Value 158196975),Value (Word8Value 132),Value (Word16Value 37409),Hole {byte_offset = 209, hole_type = Word32Hole},Hole {byte_offset = 213, hole_type = Word32Hole},Value (Word16Value 36703),Hole {byte_offset = 219, hole_type = Word8Hole},Value (Word8Value 169),Value (Word16Value 51949),Value (Word32Value 2266927124),Value (Word32Value 4125292452),Hole {byte_offset = 231, hole_type = Word8Hole},Hole {byte_offset = 232, hole_type = Word16Hole},Hole {byte_offset = 234, hole_type = Word8Hole},Hole {byte_offset = 235, hole_type = Word16Hole},Value (Word32Value 368495509),Value (Word32Value 1397684059),Value (Word32Value 3116805292),Value (Word8Value 112),Value (Word8Value 250),Hole {byte_offset = 251, hole_type = Word8Hole},Value (Word32Value 1232463606),Value (Word8Value 41),Hole {byte_offset = 257, hole_type = Word32Hole},Value (Word8Value 108),Value (Word16Value 64853),Hole {byte_offset = 264, hole_type = Word32Hole},Value (Word8Value 86),Value (Word16Value 32412),Value (Word8Value 31),Hole {byte_offset = 272, hole_type = Word8Hole},Value (Word8Value 80),Hole {byte_offset = 274, hole_type = Word32Hole},Value (Word8Value 43),Value (Word32Value 301494050)]}
