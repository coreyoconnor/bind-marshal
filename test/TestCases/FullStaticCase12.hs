{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase12 where
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
    196 :: Word8 <- des
    934493396 :: Word32 <- des_word32_be
    v_0 :: Word8 <- des
    v_1 :: Word8 <- des
    v_2 :: Word16 <- des_word16_be
    629989388 :: Word32 <- des_word32_be
    214 :: Word8 <- des
    v_3 :: Word8 <- des
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    28643 :: Word16 <- des_word16_be
    1795789072 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    149 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    25686 :: Word16 <- des_word16_be
    v_9 :: Word32 <- des_word32_be
    102 :: Word8 <- des
    return  [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 ] = vs 
    ser (196 :: Word8)
    ser_word32_be 934493396
    ser v_0
    ser v_1
    ser_word16_be v_2
    ser_word32_be 629989388
    ser (214 :: Word8)
    ser v_3
    ser_word32_be v_4
    ser v_5
    ser_word32_be v_6
    ser_word16_be 28643
    ser_word32_be 1795789072
    ser_word32_be v_7
    ser (149 :: Word8)
    ser_word32_be v_8
    ser_word16_be 25686
    ser_word32_be v_9
    ser (102 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 196),Value (Word32Value 934493396),Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Hole {byte_offset = 7, hole_type = Word16Hole},Value (Word32Value 629989388),Value (Word8Value 214),Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word32Hole},Value (Word16Value 28643),Value (Word32Value 1795789072),Hole {byte_offset = 30, hole_type = Word32Hole},Value (Word8Value 149),Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word16Value 25686),Hole {byte_offset = 41, hole_type = Word32Hole},Value (Word8Value 102)]}
