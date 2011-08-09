module TestCases.FullStaticCase10 where
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
    134739095 :: Word32 <- des_word32_be
    2113850728 :: Word32 <- des_word32_be
    80 :: Word8 <- des
    3259145265 :: Word32 <- des_word32_be
    v_0 :: Word8 <- des
    v_1 :: Word8 <- des
    v_2 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    2588282236 :: Word32 <- des_word32_be
    35 :: Word8 <- des
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    30872 :: Word16 <- des_word16_be
    v_8 :: Word32 <- des_word32_be
    12350 :: Word16 <- des_word16_be
    1505489161 :: Word32 <- des_word32_be
    1405 :: Word16 <- des_word16_be
    1228133501 :: Word32 <- des_word32_be
    60918 :: Word16 <- des_word16_be
    v_9 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    53 :: Word8 <- des
    v_11 :: Word32 <- des_word32_be
    730631856 :: Word32 <- des_word32_be
    v_12 :: Word8 <- des
    v_13 :: Word8 <- des
    v_14 :: Word32 <- des_word32_be
    28 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word16 <- des_word16_be
    v_17 :: Word8 <- des
    v_18 :: Word8 <- des
    229 :: Word8 <- des
    v_19 :: Word32 <- des_word32_be
    108 :: Word8 <- des
    832637850 :: Word32 <- des_word32_be
    v_20 :: Word8 <- des
    v_21 :: Word16 <- des_word16_be
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word16 <- des_word16_be
    v_24 :: Word16 <- des_word16_be
    2516593757 :: Word32 <- des_word32_be
    v_25 :: Word8 <- des
    v_26 :: Word32 <- des_word32_be
    9342 :: Word16 <- des_word16_be
    53646 :: Word16 <- des_word16_be
    v_27 :: Word16 <- des_word16_be
    3689317128 :: Word32 <- des_word32_be
    v_28 :: Word16 <- des_word16_be
    112 :: Word8 <- des
    39080 :: Word16 <- des_word16_be
    v_29 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    v_31 :: Word16 <- des_word16_be
    1342887934 :: Word32 <- des_word32_be
    25816 :: Word16 <- des_word16_be
    v_32 :: Word8 <- des
    129 :: Word8 <- des
    v_33 :: Word16 <- des_word16_be
    714970658 :: Word32 <- des_word32_be
    v_34 :: Word32 <- des_word32_be
    v_35 :: Word32 <- des_word32_be
    27339 :: Word16 <- des_word16_be
    v_36 :: Word16 <- des_word16_be
    1916209577 :: Word32 <- des_word32_be
    v_37 :: Word16 <- des_word16_be
    3801424199 :: Word32 <- des_word32_be
    8869 :: Word16 <- des_word16_be
    1859706093 :: Word32 <- des_word32_be
    17 :: Word8 <- des
    v_38 :: Word8 <- des
    v_39 :: Word8 <- des
    233 :: Word8 <- des
    436236999 :: Word32 <- des_word32_be
    v_40 :: Word16 <- des_word16_be
    4 :: Word8 <- des
    v_41 :: Word8 <- des
    v_42 :: Word32 <- des_word32_be
    11 :: Word8 <- des
    v_43 :: Word32 <- des_word32_be
    111 :: Word8 <- des
    v_44 :: Word8 <- des
    v_45 :: Word8 <- des
    static_return  [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word32Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word32Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 ] = vs 
    ser_word32_be 134739095
    ser_word32_be 2113850728
    ser (80 :: Word8)
    ser_word32_be 3259145265
    ser v_0
    ser v_1
    ser v_2
    ser_word16_be v_3
    ser_word32_be 2588282236
    ser (35 :: Word8)
    ser v_4
    ser v_5
    ser_word32_be v_6
    ser v_7
    ser_word16_be 30872
    ser_word32_be v_8
    ser_word16_be 12350
    ser_word32_be 1505489161
    ser_word16_be 1405
    ser_word32_be 1228133501
    ser_word16_be 60918
    ser v_9
    ser_word32_be v_10
    ser (53 :: Word8)
    ser_word32_be v_11
    ser_word32_be 730631856
    ser v_12
    ser v_13
    ser_word32_be v_14
    ser (28 :: Word8)
    ser_word32_be v_15
    ser_word16_be v_16
    ser v_17
    ser v_18
    ser (229 :: Word8)
    ser_word32_be v_19
    ser (108 :: Word8)
    ser_word32_be 832637850
    ser v_20
    ser_word16_be v_21
    ser_word16_be v_22
    ser_word16_be v_23
    ser_word16_be v_24
    ser_word32_be 2516593757
    ser v_25
    ser_word32_be v_26
    ser_word16_be 9342
    ser_word16_be 53646
    ser_word16_be v_27
    ser_word32_be 3689317128
    ser_word16_be v_28
    ser (112 :: Word8)
    ser_word16_be 39080
    ser_word16_be v_29
    ser_word16_be v_30
    ser_word16_be v_31
    ser_word32_be 1342887934
    ser_word16_be 25816
    ser v_32
    ser (129 :: Word8)
    ser_word16_be v_33
    ser_word32_be 714970658
    ser_word32_be v_34
    ser_word32_be v_35
    ser_word16_be 27339
    ser_word16_be v_36
    ser_word32_be 1916209577
    ser_word16_be v_37
    ser_word32_be 3801424199
    ser_word16_be 8869
    ser_word32_be 1859706093
    ser (17 :: Word8)
    ser v_38
    ser v_39
    ser (233 :: Word8)
    ser_word32_be 436236999
    ser_word16_be v_40
    ser (4 :: Word8)
    ser v_41
    ser_word32_be v_42
    ser (11 :: Word8)
    ser_word32_be v_43
    ser (111 :: Word8)
    ser v_44
    ser v_45
    static_return ()

static_structure = StaticStructure {properties = [Value (Word32Value 134739095),Value (Word32Value 2113850728),Value (Word8Value 80),Value (Word32Value 3259145265),Hole {byte_offset = 13, hole_type = Word8Hole},Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Hole {byte_offset = 16, hole_type = Word16Hole},Value (Word32Value 2588282236),Value (Word8Value 35),Hole {byte_offset = 23, hole_type = Word8Hole},Hole {byte_offset = 24, hole_type = Word8Hole},Hole {byte_offset = 25, hole_type = Word32Hole},Hole {byte_offset = 29, hole_type = Word8Hole},Value (Word16Value 30872),Hole {byte_offset = 32, hole_type = Word32Hole},Value (Word16Value 12350),Value (Word32Value 1505489161),Value (Word16Value 1405),Value (Word32Value 1228133501),Value (Word16Value 60918),Hole {byte_offset = 50, hole_type = Word8Hole},Hole {byte_offset = 51, hole_type = Word32Hole},Value (Word8Value 53),Hole {byte_offset = 56, hole_type = Word32Hole},Value (Word32Value 730631856),Hole {byte_offset = 64, hole_type = Word8Hole},Hole {byte_offset = 65, hole_type = Word8Hole},Hole {byte_offset = 66, hole_type = Word32Hole},Value (Word8Value 28),Hole {byte_offset = 71, hole_type = Word32Hole},Hole {byte_offset = 75, hole_type = Word16Hole},Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word8Hole},Value (Word8Value 229),Hole {byte_offset = 80, hole_type = Word32Hole},Value (Word8Value 108),Value (Word32Value 832637850),Hole {byte_offset = 89, hole_type = Word8Hole},Hole {byte_offset = 90, hole_type = Word16Hole},Hole {byte_offset = 92, hole_type = Word16Hole},Hole {byte_offset = 94, hole_type = Word16Hole},Hole {byte_offset = 96, hole_type = Word16Hole},Value (Word32Value 2516593757),Hole {byte_offset = 102, hole_type = Word8Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word16Value 9342),Value (Word16Value 53646),Hole {byte_offset = 111, hole_type = Word16Hole},Value (Word32Value 3689317128),Hole {byte_offset = 117, hole_type = Word16Hole},Value (Word8Value 112),Value (Word16Value 39080),Hole {byte_offset = 122, hole_type = Word16Hole},Hole {byte_offset = 124, hole_type = Word16Hole},Hole {byte_offset = 126, hole_type = Word16Hole},Value (Word32Value 1342887934),Value (Word16Value 25816),Hole {byte_offset = 134, hole_type = Word8Hole},Value (Word8Value 129),Hole {byte_offset = 136, hole_type = Word16Hole},Value (Word32Value 714970658),Hole {byte_offset = 142, hole_type = Word32Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word16Value 27339),Hole {byte_offset = 152, hole_type = Word16Hole},Value (Word32Value 1916209577),Hole {byte_offset = 158, hole_type = Word16Hole},Value (Word32Value 3801424199),Value (Word16Value 8869),Value (Word32Value 1859706093),Value (Word8Value 17),Hole {byte_offset = 171, hole_type = Word8Hole},Hole {byte_offset = 172, hole_type = Word8Hole},Value (Word8Value 233),Value (Word32Value 436236999),Hole {byte_offset = 178, hole_type = Word16Hole},Value (Word8Value 4),Hole {byte_offset = 181, hole_type = Word8Hole},Hole {byte_offset = 182, hole_type = Word32Hole},Value (Word8Value 11),Hole {byte_offset = 187, hole_type = Word32Hole},Value (Word8Value 111),Hole {byte_offset = 192, hole_type = Word8Hole},Hole {byte_offset = 193, hole_type = Word8Hole}]}
