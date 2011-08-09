module TestCases.FullStaticCase2 where
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
    50502 :: Word16 <- des_word16_be
    20537 :: Word16 <- des_word16_be
    50431 :: Word16 <- des_word16_be
    1081150007 :: Word32 <- des_word32_be
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    857287595 :: Word32 <- des_word32_be
    v_3 :: Word8 <- des
    v_4 :: Word32 <- des_word32_be
    194 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    2237461494 :: Word32 <- des_word32_be
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word16 <- des_word16_be
    v_8 :: Word8 <- des
    v_9 :: Word8 <- des
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word16 <- des_word16_be
    3393862110 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    37 :: Word8 <- des
    v_13 :: Word8 <- des
    3195848411 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    v_15 :: Word16 <- des_word16_be
    v_16 :: Word32 <- des_word32_be
    41109 :: Word16 <- des_word16_be
    113 :: Word8 <- des
    60594 :: Word16 <- des_word16_be
    v_17 :: Word32 <- des_word32_be
    202 :: Word8 <- des
    v_18 :: Word8 <- des
    8698 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word32Value v_17 , Word8Value v_18 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word32Value v_17 , Word8Value v_18 ] = vs 
    ser_word16_be 50502
    ser_word16_be 20537
    ser_word16_be 50431
    ser_word32_be 1081150007
    ser_word32_be v_0
    ser_word16_be v_1
    ser v_2
    ser_word32_be 857287595
    ser v_3
    ser_word32_be v_4
    ser (194 :: Word8)
    ser_word16_be v_5
    ser_word32_be 2237461494
    ser_word32_be v_6
    ser_word16_be v_7
    ser v_8
    ser v_9
    ser_word16_be v_10
    ser_word16_be v_11
    ser_word32_be 3393862110
    ser_word16_be v_12
    ser (37 :: Word8)
    ser v_13
    ser_word32_be 3195848411
    ser v_14
    ser_word16_be v_15
    ser_word32_be v_16
    ser_word16_be 41109
    ser (113 :: Word8)
    ser_word16_be 60594
    ser_word32_be v_17
    ser (202 :: Word8)
    ser v_18
    ser_word16_be 8698
    static_return ()

static_structure = StaticStructure {properties = [Value (Word16Value 50502),Value (Word16Value 20537),Value (Word16Value 50431),Value (Word32Value 1081150007),Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word16Hole},Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word32Value 857287595),Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Value (Word8Value 194),Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word32Value 2237461494),Hole {byte_offset = 33, hole_type = Word32Hole},Hole {byte_offset = 37, hole_type = Word16Hole},Hole {byte_offset = 39, hole_type = Word8Hole},Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word16Hole},Hole {byte_offset = 43, hole_type = Word16Hole},Value (Word32Value 3393862110),Hole {byte_offset = 49, hole_type = Word16Hole},Value (Word8Value 37),Hole {byte_offset = 52, hole_type = Word8Hole},Value (Word32Value 3195848411),Hole {byte_offset = 57, hole_type = Word8Hole},Hole {byte_offset = 58, hole_type = Word16Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word16Value 41109),Value (Word8Value 113),Value (Word16Value 60594),Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word8Value 202),Hole {byte_offset = 74, hole_type = Word8Hole},Value (Word16Value 8698)]}
