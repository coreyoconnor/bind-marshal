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
    v_0 :: Word16 <- des_word16_be
    6679 :: Word16 <- des_word16_be
    140939893 :: Word32 <- des_word32_be
    3696995575 :: Word32 <- des_word32_be
    560 :: Word16 <- des_word16_be
    21941 :: Word16 <- des_word16_be
    v_1 :: Word16 <- des_word16_be
    1823932093 :: Word32 <- des_word32_be
    29974 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    58430 :: Word16 <- des_word16_be
    44810 :: Word16 <- des_word16_be
    120 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    24689 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word32 <- des_word32_be
    179 :: Word8 <- des
    v_6 :: Word8 <- des
    30 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word16 <- des_word16_be
    static_return  [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 ] = vs 
    ser_word16_be v_0
    ser_word16_be 6679
    ser_word32_be 140939893
    ser_word32_be 3696995575
    ser_word16_be 560
    ser_word16_be 21941
    ser_word16_be v_1
    ser_word32_be 1823932093
    ser_word16_be 29974
    ser v_2
    ser_word16_be 58430
    ser_word16_be 44810
    ser (120 :: Word8)
    ser_word32_be v_3
    ser_word16_be 24689
    ser_word32_be v_4
    ser_word32_be v_5
    ser (179 :: Word8)
    ser v_6
    ser (30 :: Word8)
    ser_word32_be v_7
    ser_word32_be v_8
    ser_word16_be v_9
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word16Value 6679),Value (Word32Value 140939893),Value (Word32Value 3696995575),Value (Word16Value 560),Value (Word16Value 21941),Hole {byte_offset = 16, hole_type = Word16Hole},Value (Word32Value 1823932093),Value (Word16Value 29974),Hole {byte_offset = 24, hole_type = Word8Hole},Value (Word16Value 58430),Value (Word16Value 44810),Value (Word8Value 120),Hole {byte_offset = 30, hole_type = Word32Hole},Value (Word16Value 24689),Hole {byte_offset = 36, hole_type = Word32Hole},Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word8Value 179),Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word8Value 30),Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word32Hole},Hole {byte_offset = 55, hole_type = Word16Hole}]}
