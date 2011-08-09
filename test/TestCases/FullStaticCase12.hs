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
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word32 <- des_word32_be
    20739 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    2938104087 :: Word32 <- des_word32_be
    179 :: Word8 <- des
    34902 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 ] = vs 
    ser_word32_be v_0
    ser_word32_be v_1
    ser_word16_be 20739
    ser_word32_be v_2
    ser_word32_be v_3
    ser v_4
    ser_word32_be 2938104087
    ser (179 :: Word8)
    ser_word16_be 34902
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word32Hole},Value (Word16Value 20739),Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Value (Word32Value 2938104087),Value (Word8Value 179),Value (Word16Value 34902)]}
