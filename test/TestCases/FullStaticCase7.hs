{-# LANGUAGE RebindableSyntax #-}
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
    v_0 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    41692 :: Word16 <- des_word16_be
    3687 :: Word16 <- des_word16_be
    v_2 :: Word16 <- des_word16_be
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    55100 :: Word16 <- des_word16_be
    v_5 :: Word16 <- des_word16_be
    2087489864 :: Word32 <- des_word32_be
    246 :: Word8 <- des
    141 :: Word8 <- des
    4 :: Word8 <- des
    2607154486 :: Word32 <- des_word32_be
    3604369214 :: Word32 <- des_word32_be
    98 :: Word8 <- des
    192 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    250 :: Word8 <- des
    3957848786 :: Word32 <- des_word32_be
    129 :: Word8 <- des
    v_7 :: Word8 <- des
    417456041 :: Word32 <- des_word32_be
    v_8 :: Word8 <- des
    v_9 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    47390 :: Word16 <- des_word16_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    37139 :: Word16 <- des_word16_be
    v_13 :: Word16 <- des_word16_be
    v_14 :: Word8 <- des
    8736 :: Word16 <- des_word16_be
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word32 <- des_word32_be
    1270122815 :: Word32 <- des_word32_be
    3256718815 :: Word32 <- des_word32_be
    88 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    135 :: Word8 <- des
    4016664856 :: Word32 <- des_word32_be
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word8 <- des
    5800 :: Word16 <- des_word16_be
    v_20 :: Word16 <- des_word16_be
    55 :: Word8 <- des
    133 :: Word8 <- des
    v_21 :: Word16 <- des_word16_be
    3052346497 :: Word32 <- des_word32_be
    22440 :: Word16 <- des_word16_be
    v_22 :: Word16 <- des_word16_be
    34498 :: Word16 <- des_word16_be
    v_23 :: Word32 <- des_word32_be
    23083 :: Word16 <- des_word16_be
    39682 :: Word16 <- des_word16_be
    2440384230 :: Word32 <- des_word32_be
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word32 <- des_word32_be
    38226 :: Word16 <- des_word16_be
    v_26 :: Word8 <- des
    4128084198 :: Word32 <- des_word32_be
    46 :: Word8 <- des
    v_27 :: Word8 <- des
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word32 <- des_word32_be
    20 :: Word8 <- des
    v_30 :: Word32 <- des_word32_be
    v_31 :: Word8 <- des
    v_32 :: Word8 <- des
    3743532676 :: Word32 <- des_word32_be
    v_33 :: Word16 <- des_word16_be
    v_34 :: Word32 <- des_word32_be
    310176151 :: Word32 <- des_word32_be
    v_35 :: Word16 <- des_word16_be
    3773456978 :: Word32 <- des_word32_be
    v_36 :: Word16 <- des_word16_be
    131 :: Word8 <- des
    3564730750 :: Word32 <- des_word32_be
    v_37 :: Word32 <- des_word32_be
    1342523369 :: Word32 <- des_word32_be
    182 :: Word8 <- des
    203 :: Word8 <- des
    3463087441 :: Word32 <- des_word32_be
    12 :: Word8 <- des
    v_38 :: Word8 <- des
    v_39 :: Word16 <- des_word16_be
    58996 :: Word16 <- des_word16_be
    v_40 :: Word8 <- des
    v_41 :: Word32 <- des_word32_be
    v_42 :: Word8 <- des
    123 :: Word8 <- des
    233 :: Word8 <- des
    35359 :: Word16 <- des_word16_be
    static_return  [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word16Value v_36 , Word32Value v_37 , Word8Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word8Value v_42 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word16Value v_36 , Word32Value v_37 , Word8Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word8Value v_42 ] = vs 
    ser v_0
    ser_word32_be v_1
    ser_word16_be 41692
    ser_word16_be 3687
    ser_word16_be v_2
    ser_word16_be v_3
    ser_word32_be v_4
    ser_word16_be 55100
    ser_word16_be v_5
    ser_word32_be 2087489864
    ser (246 :: Word8)
    ser (141 :: Word8)
    ser (4 :: Word8)
    ser_word32_be 2607154486
    ser_word32_be 3604369214
    ser (98 :: Word8)
    ser (192 :: Word8)
    ser_word32_be v_6
    ser (250 :: Word8)
    ser_word32_be 3957848786
    ser (129 :: Word8)
    ser v_7
    ser_word32_be 417456041
    ser v_8
    ser v_9
    ser_word32_be v_10
    ser_word16_be 47390
    ser_word32_be v_11
    ser_word16_be v_12
    ser_word16_be 37139
    ser_word16_be v_13
    ser v_14
    ser_word16_be 8736
    ser_word32_be v_15
    ser_word32_be v_16
    ser_word32_be 1270122815
    ser_word32_be 3256718815
    ser (88 :: Word8)
    ser_word32_be v_17
    ser (135 :: Word8)
    ser_word32_be 4016664856
    ser_word32_be v_18
    ser v_19
    ser_word16_be 5800
    ser_word16_be v_20
    ser (55 :: Word8)
    ser (133 :: Word8)
    ser_word16_be v_21
    ser_word32_be 3052346497
    ser_word16_be 22440
    ser_word16_be v_22
    ser_word16_be 34498
    ser_word32_be v_23
    ser_word16_be 23083
    ser_word16_be 39682
    ser_word32_be 2440384230
    ser_word32_be v_24
    ser_word32_be v_25
    ser_word16_be 38226
    ser v_26
    ser_word32_be 4128084198
    ser (46 :: Word8)
    ser v_27
    ser_word16_be v_28
    ser_word32_be v_29
    ser (20 :: Word8)
    ser_word32_be v_30
    ser v_31
    ser v_32
    ser_word32_be 3743532676
    ser_word16_be v_33
    ser_word32_be v_34
    ser_word32_be 310176151
    ser_word16_be v_35
    ser_word32_be 3773456978
    ser_word16_be v_36
    ser (131 :: Word8)
    ser_word32_be 3564730750
    ser_word32_be v_37
    ser_word32_be 1342523369
    ser (182 :: Word8)
    ser (203 :: Word8)
    ser_word32_be 3463087441
    ser (12 :: Word8)
    ser v_38
    ser_word16_be v_39
    ser_word16_be 58996
    ser v_40
    ser_word32_be v_41
    ser v_42
    ser (123 :: Word8)
    ser (233 :: Word8)
    ser_word16_be 35359
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word16Value 41692),Value (Word16Value 3687),Hole {byte_offset = 9, hole_type = Word16Hole},Hole {byte_offset = 11, hole_type = Word16Hole},Hole {byte_offset = 13, hole_type = Word32Hole},Value (Word16Value 55100),Hole {byte_offset = 19, hole_type = Word16Hole},Value (Word32Value 2087489864),Value (Word8Value 246),Value (Word8Value 141),Value (Word8Value 4),Value (Word32Value 2607154486),Value (Word32Value 3604369214),Value (Word8Value 98),Value (Word8Value 192),Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word8Value 250),Value (Word32Value 3957848786),Value (Word8Value 129),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 417456041),Hole {byte_offset = 53, hole_type = Word8Hole},Hole {byte_offset = 54, hole_type = Word8Hole},Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word16Value 47390),Hole {byte_offset = 61, hole_type = Word32Hole},Hole {byte_offset = 65, hole_type = Word16Hole},Value (Word16Value 37139),Hole {byte_offset = 69, hole_type = Word16Hole},Hole {byte_offset = 71, hole_type = Word8Hole},Value (Word16Value 8736),Hole {byte_offset = 74, hole_type = Word32Hole},Hole {byte_offset = 78, hole_type = Word32Hole},Value (Word32Value 1270122815),Value (Word32Value 3256718815),Value (Word8Value 88),Hole {byte_offset = 91, hole_type = Word32Hole},Value (Word8Value 135),Value (Word32Value 4016664856),Hole {byte_offset = 100, hole_type = Word32Hole},Hole {byte_offset = 104, hole_type = Word8Hole},Value (Word16Value 5800),Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word8Value 55),Value (Word8Value 133),Hole {byte_offset = 111, hole_type = Word16Hole},Value (Word32Value 3052346497),Value (Word16Value 22440),Hole {byte_offset = 119, hole_type = Word16Hole},Value (Word16Value 34498),Hole {byte_offset = 123, hole_type = Word32Hole},Value (Word16Value 23083),Value (Word16Value 39682),Value (Word32Value 2440384230),Hole {byte_offset = 135, hole_type = Word32Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word16Value 38226),Hole {byte_offset = 145, hole_type = Word8Hole},Value (Word32Value 4128084198),Value (Word8Value 46),Hole {byte_offset = 151, hole_type = Word8Hole},Hole {byte_offset = 152, hole_type = Word16Hole},Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word8Value 20),Hole {byte_offset = 159, hole_type = Word32Hole},Hole {byte_offset = 163, hole_type = Word8Hole},Hole {byte_offset = 164, hole_type = Word8Hole},Value (Word32Value 3743532676),Hole {byte_offset = 169, hole_type = Word16Hole},Hole {byte_offset = 171, hole_type = Word32Hole},Value (Word32Value 310176151),Hole {byte_offset = 179, hole_type = Word16Hole},Value (Word32Value 3773456978),Hole {byte_offset = 185, hole_type = Word16Hole},Value (Word8Value 131),Value (Word32Value 3564730750),Hole {byte_offset = 192, hole_type = Word32Hole},Value (Word32Value 1342523369),Value (Word8Value 182),Value (Word8Value 203),Value (Word32Value 3463087441),Value (Word8Value 12),Hole {byte_offset = 207, hole_type = Word8Hole},Hole {byte_offset = 208, hole_type = Word16Hole},Value (Word16Value 58996),Hole {byte_offset = 212, hole_type = Word8Hole},Hole {byte_offset = 213, hole_type = Word32Hole},Hole {byte_offset = 217, hole_type = Word8Hole},Value (Word8Value 123),Value (Word8Value 233),Value (Word16Value 35359)]}
