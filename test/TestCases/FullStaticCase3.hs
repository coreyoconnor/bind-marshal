{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase3 where
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
    240 :: Word8 <- des
    3497447960 :: Word32 <- des_word32_be
    218 :: Word8 <- des
    46834 :: Word16 <- des_word16_be
    123 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    753560720 :: Word32 <- des_word32_be
    58 :: Word8 <- des
    235 :: Word8 <- des
    62 :: Word8 <- des
    200 :: Word8 <- des
    v_4 :: Word16 <- des_word16_be
    1679201761 :: Word32 <- des_word32_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    2035653963 :: Word32 <- des_word32_be
    v_8 :: Word8 <- des
    3180315909 :: Word32 <- des_word32_be
    57239 :: Word16 <- des_word16_be
    1046587945 :: Word32 <- des_word32_be
    134 :: Word8 <- des
    3897795697 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    60603 :: Word16 <- des_word16_be
    7108 :: Word16 <- des_word16_be
    22 :: Word8 <- des
    176157480 :: Word32 <- des_word32_be
    v_10 :: Word16 <- des_word16_be
    3998927610 :: Word32 <- des_word32_be
    79 :: Word8 <- des
    221 :: Word8 <- des
    v_11 :: Word8 <- des
    90 :: Word8 <- des
    v_12 :: Word8 <- des
    2705159408 :: Word32 <- des_word32_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word16 <- des_word16_be
    4031608912 :: Word32 <- des_word32_be
    84 :: Word8 <- des
    v_15 :: Word16 <- des_word16_be
    v_16 :: Word32 <- des_word32_be
    return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word32Value v_16 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word32Value v_16 ] = vs 
    ser (240 :: Word8)
    ser_word32_be 3497447960
    ser (218 :: Word8)
    ser_word16_be 46834
    ser (123 :: Word8)
    ser_word32_be v_0
    ser_word16_be v_1
    ser_word32_be v_2
    ser_word16_be v_3
    ser_word32_be 753560720
    ser (58 :: Word8)
    ser (235 :: Word8)
    ser (62 :: Word8)
    ser (200 :: Word8)
    ser_word16_be v_4
    ser_word32_be 1679201761
    ser_word16_be v_5
    ser v_6
    ser_word32_be v_7
    ser_word32_be 2035653963
    ser v_8
    ser_word32_be 3180315909
    ser_word16_be 57239
    ser_word32_be 1046587945
    ser (134 :: Word8)
    ser_word32_be 3897795697
    ser v_9
    ser_word16_be 60603
    ser_word16_be 7108
    ser (22 :: Word8)
    ser_word32_be 176157480
    ser_word16_be v_10
    ser_word32_be 3998927610
    ser (79 :: Word8)
    ser (221 :: Word8)
    ser v_11
    ser (90 :: Word8)
    ser v_12
    ser_word32_be 2705159408
    ser_word32_be v_13
    ser_word16_be v_14
    ser_word32_be 4031608912
    ser (84 :: Word8)
    ser_word16_be v_15
    ser_word32_be v_16
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 240),Value (Word32Value 3497447960),Value (Word8Value 218),Value (Word16Value 46834),Value (Word8Value 123),Hole {byte_offset = 9, hole_type = Word32Hole},Hole {byte_offset = 13, hole_type = Word16Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word16Hole},Value (Word32Value 753560720),Value (Word8Value 58),Value (Word8Value 235),Value (Word8Value 62),Value (Word8Value 200),Hole {byte_offset = 29, hole_type = Word16Hole},Value (Word32Value 1679201761),Hole {byte_offset = 35, hole_type = Word16Hole},Hole {byte_offset = 37, hole_type = Word8Hole},Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word32Value 2035653963),Hole {byte_offset = 46, hole_type = Word8Hole},Value (Word32Value 3180315909),Value (Word16Value 57239),Value (Word32Value 1046587945),Value (Word8Value 134),Value (Word32Value 3897795697),Hole {byte_offset = 62, hole_type = Word8Hole},Value (Word16Value 60603),Value (Word16Value 7108),Value (Word8Value 22),Value (Word32Value 176157480),Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word32Value 3998927610),Value (Word8Value 79),Value (Word8Value 221),Hole {byte_offset = 80, hole_type = Word8Hole},Value (Word8Value 90),Hole {byte_offset = 82, hole_type = Word8Hole},Value (Word32Value 2705159408),Hole {byte_offset = 87, hole_type = Word32Hole},Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word32Value 4031608912),Value (Word8Value 84),Hole {byte_offset = 98, hole_type = Word16Hole},Hole {byte_offset = 100, hole_type = Word32Hole}]}
