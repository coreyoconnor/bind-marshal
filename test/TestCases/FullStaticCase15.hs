module TestCases.FullStaticCase15 where
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
    1679520206 :: Word32 <- des_word32_be
    v_1 :: Word32 <- des_word32_be
    v_2 :: Word16 <- des_word16_be
    17086 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    2380958533 :: Word32 <- des_word32_be
    static_return  [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 ] = vs 
    ser_word32_be v_0
    ser_word32_be 1679520206
    ser_word32_be v_1
    ser_word16_be v_2
    ser_word16_be 17086
    ser v_3
    ser_word32_be 2380958533
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word32Value 1679520206),Hole {byte_offset = 8, hole_type = Word32Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word16Value 17086),Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word32Value 2380958533)]}
