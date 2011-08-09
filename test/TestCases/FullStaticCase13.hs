module TestCases.FullStaticCase13 where
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
    2521797345 :: Word32 <- des_word32_be
    v_0 :: Word8 <- des
    v_1 :: Word16 <- des_word16_be
    37 :: Word8 <- des
    v_2 :: Word16 <- des_word16_be
    26639 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    v_4 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    52890 :: Word16 <- des_word16_be
    static_return  [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 ] = vs 
    ser_word32_be 2521797345
    ser v_0
    ser_word16_be v_1
    ser (37 :: Word8)
    ser_word16_be v_2
    ser_word16_be 26639
    ser v_3
    ser v_4
    ser_word32_be v_5
    ser_word16_be 52890
    static_return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2521797345),Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word16Hole},Value (Word8Value 37),Hole {byte_offset = 8, hole_type = Word16Hole},Value (Word16Value 26639),Hole {byte_offset = 12, hole_type = Word8Hole},Hole {byte_offset = 13, hole_type = Word8Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Value (Word16Value 52890)]}
