module TestCases.FullStaticCase1 where
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
    154 :: Word8 <- des
    35821 :: Word16 <- des_word16_be
    28043 :: Word16 <- des_word16_be
    v_1 :: Word16 <- des_word16_be
    4743 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    95 :: Word8 <- des
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    v_6 :: Word8 <- des
    2649489728 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    1221932603 :: Word32 <- des_word32_be
    134 :: Word8 <- des
    v_8 :: Word8 <- des
    v_9 :: Word16 <- des_word16_be
    14 :: Word8 <- des
    2988508778 :: Word32 <- des_word32_be
    v_10 :: Word8 <- des
    v_11 :: Word8 <- des
    34 :: Word8 <- des
    211 :: Word8 <- des
    3173361796 :: Word32 <- des_word32_be
    v_12 :: Word8 <- des
    v_13 :: Word32 <- des_word32_be
    80 :: Word8 <- des
    v_14 :: Word32 <- des_word32_be
    v_15 :: Word16 <- des_word16_be
    57586 :: Word16 <- des_word16_be
    3713386968 :: Word32 <- des_word32_be
    16937 :: Word16 <- des_word16_be
    149 :: Word8 <- des
    v_16 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    32040 :: Word16 <- des_word16_be
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word8 <- des
    v_20 :: Word8 <- des
    v_21 :: Word8 <- des
    2027031964 :: Word32 <- des_word32_be
    167 :: Word8 <- des
    16713 :: Word16 <- des_word16_be
    1048854794 :: Word32 <- des_word32_be
    3122366528 :: Word32 <- des_word32_be
    v_22 :: Word8 <- des
    4204638615 :: Word32 <- des_word32_be
    v_23 :: Word32 <- des_word32_be
    v_24 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 ] = vs 
    ser_word32_be v_0
    ser (154 :: Word8)
    ser_word16_be 35821
    ser_word16_be 28043
    ser_word16_be v_1
    ser_word16_be 4743
    ser v_2
    ser_word32_be v_3
    ser (95 :: Word8)
    ser v_4
    ser v_5
    ser v_6
    ser_word32_be 2649489728
    ser v_7
    ser_word32_be 1221932603
    ser (134 :: Word8)
    ser v_8
    ser_word16_be v_9
    ser (14 :: Word8)
    ser_word32_be 2988508778
    ser v_10
    ser v_11
    ser (34 :: Word8)
    ser (211 :: Word8)
    ser_word32_be 3173361796
    ser v_12
    ser_word32_be v_13
    ser (80 :: Word8)
    ser_word32_be v_14
    ser_word16_be v_15
    ser_word16_be 57586
    ser_word32_be 3713386968
    ser_word16_be 16937
    ser (149 :: Word8)
    ser v_16
    ser_word32_be v_17
    ser_word16_be 32040
    ser_word32_be v_18
    ser v_19
    ser v_20
    ser v_21
    ser_word32_be 2027031964
    ser (167 :: Word8)
    ser_word16_be 16713
    ser_word32_be 1048854794
    ser_word32_be 3122366528
    ser v_22
    ser_word32_be 4204638615
    ser_word32_be v_23
    ser_word16_be v_24
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word8Value 154),Value (Word16Value 35821),Value (Word16Value 28043),Hole {byte_offset = 9, hole_type = Word16Hole},Value (Word16Value 4743),Hole {byte_offset = 13, hole_type = Word8Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Value (Word8Value 95),Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Value (Word32Value 2649489728),Hole {byte_offset = 26, hole_type = Word8Hole},Value (Word32Value 1221932603),Value (Word8Value 134),Hole {byte_offset = 32, hole_type = Word8Hole},Hole {byte_offset = 33, hole_type = Word16Hole},Value (Word8Value 14),Value (Word32Value 2988508778),Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word8Hole},Value (Word8Value 34),Value (Word8Value 211),Value (Word32Value 3173361796),Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word8Value 80),Hole {byte_offset = 54, hole_type = Word32Hole},Hole {byte_offset = 58, hole_type = Word16Hole},Value (Word16Value 57586),Value (Word32Value 3713386968),Value (Word16Value 16937),Value (Word8Value 149),Hole {byte_offset = 69, hole_type = Word8Hole},Hole {byte_offset = 70, hole_type = Word32Hole},Value (Word16Value 32040),Hole {byte_offset = 76, hole_type = Word32Hole},Hole {byte_offset = 80, hole_type = Word8Hole},Hole {byte_offset = 81, hole_type = Word8Hole},Hole {byte_offset = 82, hole_type = Word8Hole},Value (Word32Value 2027031964),Value (Word8Value 167),Value (Word16Value 16713),Value (Word32Value 1048854794),Value (Word32Value 3122366528),Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word32Value 4204638615),Hole {byte_offset = 103, hole_type = Word32Hole},Hole {byte_offset = 107, hole_type = Word16Hole}]}
