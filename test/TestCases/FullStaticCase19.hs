{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase19 where
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
    90 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    4227674078 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    12904 :: Word16 <- des_word16_be
    651594651 :: Word32 <- des_word32_be
    v_2 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    198 :: Word8 <- des
    4184444469 :: Word32 <- des_word32_be
    931291122 :: Word32 <- des_word32_be
    return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 ] = vs 
    ser (90 :: Word8)
    ser_word32_be v_0
    ser_word32_be 4227674078
    ser_word16_be v_1
    ser_word16_be 12904
    ser_word32_be 651594651
    ser v_2
    ser_word16_be v_3
    ser_word32_be v_4
    ser (198 :: Word8)
    ser_word32_be 4184444469
    ser_word32_be 931291122
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 90),Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word32Value 4227674078),Hole {byte_offset = 9, hole_type = Word16Hole},Value (Word16Value 12904),Value (Word32Value 651594651),Hole {byte_offset = 17, hole_type = Word8Hole},Hole {byte_offset = 18, hole_type = Word16Hole},Hole {byte_offset = 20, hole_type = Word32Hole},Value (Word8Value 198),Value (Word32Value 4184444469),Value (Word32Value 931291122)]}
