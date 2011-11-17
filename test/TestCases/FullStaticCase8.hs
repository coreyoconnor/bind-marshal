{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase8 where
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
    1102779510 :: Word32 <- des_word32_be
    47770 :: Word16 <- des_word16_be
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    3014223088 :: Word32 <- des_word32_be
    248 :: Word8 <- des
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word8 <- des
    3894032734 :: Word32 <- des_word32_be
    65466 :: Word16 <- des_word16_be
    v_4 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word16 <- des_word16_be
    135 :: Word8 <- des
    v_7 :: Word8 <- des
    59420 :: Word16 <- des_word16_be
    188 :: Word8 <- des
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word16 <- des_word16_be
    17559 :: Word16 <- des_word16_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    static_return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 ] = vs 
    ser_word32_be 1102779510
    ser_word16_be 47770
    ser_word32_be v_0
    ser_word16_be v_1
    ser_word32_be 3014223088
    ser (248 :: Word8)
    ser_word32_be v_2
    ser v_3
    ser_word32_be 3894032734
    ser_word16_be 65466
    ser v_4
    ser_word32_be v_5
    ser_word16_be v_6
    ser (135 :: Word8)
    ser v_7
    ser_word16_be 59420
    ser (188 :: Word8)
    ser_word16_be v_8
    ser_word16_be v_9
    ser_word16_be 17559
    ser_word16_be v_10
    ser v_11
    static_return ()

static_structure = StaticStructure {properties = [Value (Word32Value 1102779510),Value (Word16Value 47770),Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word16Hole},Value (Word32Value 3014223088),Value (Word8Value 248),Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Value (Word32Value 3894032734),Value (Word16Value 65466),Hole {byte_offset = 28, hole_type = Word8Hole},Hole {byte_offset = 29, hole_type = Word32Hole},Hole {byte_offset = 33, hole_type = Word16Hole},Value (Word8Value 135),Hole {byte_offset = 36, hole_type = Word8Hole},Value (Word16Value 59420),Value (Word8Value 188),Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word16Hole},Value (Word16Value 17559),Hole {byte_offset = 46, hole_type = Word16Hole},Hole {byte_offset = 48, hole_type = Word8Hole}]}
