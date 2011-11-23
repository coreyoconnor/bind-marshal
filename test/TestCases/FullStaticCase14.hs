{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase14 where
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
    13864 :: Word16 <- des_word16_be
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    219 :: Word8 <- des
    2874701295 :: Word32 <- des_word32_be
    v_2 :: Word16 <- des_word16_be
    44599 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word32 <- des_word32_be
    1857383615 :: Word32 <- des_word32_be
    v_6 :: Word16 <- des_word16_be
    v_7 :: Word8 <- des
    941369368 :: Word32 <- des_word32_be
    52769 :: Word16 <- des_word16_be
    v_8 :: Word8 <- des
    v_9 :: Word16 <- des_word16_be
    29320 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    47312 :: Word16 <- des_word16_be
    96 :: Word8 <- des
    v_11 :: Word32 <- des_word32_be
    54760 :: Word16 <- des_word16_be
    50 :: Word8 <- des
    3612095588 :: Word32 <- des_word32_be
    24351 :: Word16 <- des_word16_be
    190 :: Word8 <- des
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word8 <- des
    return  [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 ] = vs 
    ser_word16_be 13864
    ser_word32_be v_0
    ser v_1
    ser (219 :: Word8)
    ser_word32_be 2874701295
    ser_word16_be v_2
    ser_word16_be 44599
    ser v_3
    ser_word32_be v_4
    ser_word32_be v_5
    ser_word32_be 1857383615
    ser_word16_be v_6
    ser v_7
    ser_word32_be 941369368
    ser_word16_be 52769
    ser v_8
    ser_word16_be v_9
    ser_word16_be 29320
    ser_word32_be v_10
    ser_word16_be 47312
    ser (96 :: Word8)
    ser_word32_be v_11
    ser_word16_be 54760
    ser (50 :: Word8)
    ser_word32_be 3612095588
    ser_word16_be 24351
    ser (190 :: Word8)
    ser_word16_be v_12
    ser v_13
    return ()

static_structure = StaticStructure {properties = [Value (Word16Value 13864),Hole {byte_offset = 2, hole_type = Word32Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word8Value 219),Value (Word32Value 2874701295),Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word16Value 44599),Hole {byte_offset = 16, hole_type = Word8Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Value (Word32Value 1857383615),Hole {byte_offset = 29, hole_type = Word16Hole},Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word32Value 941369368),Value (Word16Value 52769),Hole {byte_offset = 38, hole_type = Word8Hole},Hole {byte_offset = 39, hole_type = Word16Hole},Value (Word16Value 29320),Hole {byte_offset = 43, hole_type = Word32Hole},Value (Word16Value 47312),Value (Word8Value 96),Hole {byte_offset = 50, hole_type = Word32Hole},Value (Word16Value 54760),Value (Word8Value 50),Value (Word32Value 3612095588),Value (Word16Value 24351),Value (Word8Value 190),Hole {byte_offset = 64, hole_type = Word16Hole},Hole {byte_offset = 66, hole_type = Word8Hole}]}
