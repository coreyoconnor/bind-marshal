{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase5 where
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
    2561 :: Word16 <- des_word16_be
    v_0 :: Word8 <- des
    v_1 :: Word8 <- des
    119 :: Word8 <- des
    235 :: Word8 <- des
    18878 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    3930219187 :: Word32 <- des_word32_be
    1110210771 :: Word32 <- des_word32_be
    638847133 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word16 <- des_word16_be
    60152502 :: Word32 <- des_word32_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word16 <- des_word16_be
    23715 :: Word16 <- des_word16_be
    20154 :: Word16 <- des_word16_be
    v_7 :: Word16 <- des_word16_be
    198 :: Word8 <- des
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word16 <- des_word16_be
    49600 :: Word16 <- des_word16_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    v_12 :: Word32 <- des_word32_be
    8 :: Word8 <- des
    253 :: Word8 <- des
    227 :: Word8 <- des
    v_13 :: Word16 <- des_word16_be
    22548 :: Word16 <- des_word16_be
    684539344 :: Word32 <- des_word32_be
    60341 :: Word16 <- des_word16_be
    151 :: Word8 <- des
    2596289376 :: Word32 <- des_word32_be
    v_14 :: Word16 <- des_word16_be
    static_return  [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word16Value v_14 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word16Value v_14 ] = vs 
    ser_word16_be 2561
    ser v_0
    ser v_1
    ser (119 :: Word8)
    ser (235 :: Word8)
    ser_word16_be 18878
    ser v_2
    ser_word32_be 3930219187
    ser_word32_be 1110210771
    ser_word32_be 638847133
    ser_word16_be v_3
    ser_word16_be v_4
    ser_word32_be 60152502
    ser_word16_be v_5
    ser_word16_be v_6
    ser_word16_be 23715
    ser_word16_be 20154
    ser_word16_be v_7
    ser (198 :: Word8)
    ser_word16_be v_8
    ser_word16_be v_9
    ser_word16_be 49600
    ser_word16_be v_10
    ser v_11
    ser_word32_be v_12
    ser (8 :: Word8)
    ser (253 :: Word8)
    ser (227 :: Word8)
    ser_word16_be v_13
    ser_word16_be 22548
    ser_word32_be 684539344
    ser_word16_be 60341
    ser (151 :: Word8)
    ser_word32_be 2596289376
    ser_word16_be v_14
    static_return ()

static_structure = StaticStructure {properties = [Value (Word16Value 2561),Hole {byte_offset = 2, hole_type = Word8Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Value (Word8Value 119),Value (Word8Value 235),Value (Word16Value 18878),Hole {byte_offset = 8, hole_type = Word8Hole},Value (Word32Value 3930219187),Value (Word32Value 1110210771),Value (Word32Value 638847133),Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word16Hole},Value (Word32Value 60152502),Hole {byte_offset = 29, hole_type = Word16Hole},Hole {byte_offset = 31, hole_type = Word16Hole},Value (Word16Value 23715),Value (Word16Value 20154),Hole {byte_offset = 37, hole_type = Word16Hole},Value (Word8Value 198),Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word16Hole},Value (Word16Value 49600),Hole {byte_offset = 46, hole_type = Word16Hole},Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word8Value 8),Value (Word8Value 253),Value (Word8Value 227),Hole {byte_offset = 56, hole_type = Word16Hole},Value (Word16Value 22548),Value (Word32Value 684539344),Value (Word16Value 60341),Value (Word8Value 151),Value (Word32Value 2596289376),Hole {byte_offset = 71, hole_type = Word16Hole}]}
