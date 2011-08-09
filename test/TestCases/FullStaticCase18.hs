module TestCases.FullStaticCase18 where
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
    32419 :: Word16 <- des_word16_be
    v_0 :: Word8 <- des
    v_1 :: Word8 <- des
    31938 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    245 :: Word8 <- des
    641533930 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    2205594849 :: Word32 <- des_word32_be
    3029376333 :: Word32 <- des_word32_be
    304675486 :: Word32 <- des_word32_be
    39 :: Word8 <- des
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    49649 :: Word16 <- des_word16_be
    v_6 :: Word16 <- des_word16_be
    v_7 :: Word16 <- des_word16_be
    2985861267 :: Word32 <- des_word32_be
    103 :: Word8 <- des
    v_8 :: Word8 <- des
    5 :: Word16 <- des_word16_be
    v_9 :: Word8 <- des
    1793000243 :: Word32 <- des_word32_be
    51418 :: Word16 <- des_word16_be
    43365 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    26 :: Word8 <- des
    v_11 :: Word32 <- des_word32_be
    102 :: Word8 <- des
    11 :: Word8 <- des
    static_return  [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 ] = vs 
    ser_word16_be 32419
    ser v_0
    ser v_1
    ser_word16_be 31938
    ser_word32_be v_2
    ser (245 :: Word8)
    ser_word32_be 641533930
    ser_word32_be v_3
    ser_word32_be 2205594849
    ser_word32_be 3029376333
    ser_word32_be 304675486
    ser (39 :: Word8)
    ser v_4
    ser v_5
    ser_word16_be 49649
    ser_word16_be v_6
    ser_word16_be v_7
    ser_word32_be 2985861267
    ser (103 :: Word8)
    ser v_8
    ser_word16_be 5
    ser v_9
    ser_word32_be 1793000243
    ser_word16_be 51418
    ser_word16_be 43365
    ser_word32_be v_10
    ser (26 :: Word8)
    ser_word32_be v_11
    ser (102 :: Word8)
    ser (11 :: Word8)
    static_return ()

static_structure = StaticStructure {properties = [Value (Word16Value 32419),Hole {byte_offset = 2, hole_type = Word8Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Value (Word16Value 31938),Hole {byte_offset = 6, hole_type = Word32Hole},Value (Word8Value 245),Value (Word32Value 641533930),Hole {byte_offset = 15, hole_type = Word32Hole},Value (Word32Value 2205594849),Value (Word32Value 3029376333),Value (Word32Value 304675486),Value (Word8Value 39),Hole {byte_offset = 32, hole_type = Word8Hole},Hole {byte_offset = 33, hole_type = Word8Hole},Value (Word16Value 49649),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Value (Word32Value 2985861267),Value (Word8Value 103),Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word16Value 5),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 1793000243),Value (Word16Value 51418),Value (Word16Value 43365),Hole {byte_offset = 57, hole_type = Word32Hole},Value (Word8Value 26),Hole {byte_offset = 62, hole_type = Word32Hole},Value (Word8Value 102),Value (Word8Value 11)]}
