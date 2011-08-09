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
    105 :: Word8 <- des
    65189 :: Word16 <- des_word16_be
    245 :: Word8 <- des
    v_0 :: Word8 <- des
    70 :: Word8 <- des
    v_1 :: Word8 <- des
    40784 :: Word16 <- des_word16_be
    114 :: Word8 <- des
    235 :: Word8 <- des
    34718 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    144 :: Word8 <- des
    v_5 :: Word8 <- des
    6 :: Word8 <- des
    1553777234 :: Word32 <- des_word32_be
    3531265250 :: Word32 <- des_word32_be
    v_6 :: Word16 <- des_word16_be
    124 :: Word8 <- des
    1333487335 :: Word32 <- des_word32_be
    v_7 :: Word16 <- des_word16_be
    56770 :: Word16 <- des_word16_be
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word32 <- des_word32_be
    231 :: Word8 <- des
    82 :: Word8 <- des
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word32 <- des_word32_be
    5440 :: Word16 <- des_word16_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    209 :: Word8 <- des
    233 :: Word8 <- des
    v_14 :: Word16 <- des_word16_be
    230 :: Word8 <- des
    v_15 :: Word16 <- des_word16_be
    207 :: Word8 <- des
    125 :: Word8 <- des
    23 :: Word8 <- des
    826826017 :: Word32 <- des_word32_be
    static_return  [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 ] = vs 
    ser (105 :: Word8)
    ser_word16_be 65189
    ser (245 :: Word8)
    ser v_0
    ser (70 :: Word8)
    ser v_1
    ser_word16_be 40784
    ser (114 :: Word8)
    ser (235 :: Word8)
    ser_word16_be 34718
    ser_word32_be v_2
    ser_word32_be v_3
    ser v_4
    ser (144 :: Word8)
    ser v_5
    ser (6 :: Word8)
    ser_word32_be 1553777234
    ser_word32_be 3531265250
    ser_word16_be v_6
    ser (124 :: Word8)
    ser_word32_be 1333487335
    ser_word16_be v_7
    ser_word16_be 56770
    ser_word32_be v_8
    ser_word32_be v_9
    ser (231 :: Word8)
    ser (82 :: Word8)
    ser_word16_be v_10
    ser_word32_be v_11
    ser_word16_be 5440
    ser_word16_be v_12
    ser_word32_be v_13
    ser (209 :: Word8)
    ser (233 :: Word8)
    ser_word16_be v_14
    ser (230 :: Word8)
    ser_word16_be v_15
    ser (207 :: Word8)
    ser (125 :: Word8)
    ser (23 :: Word8)
    ser_word32_be 826826017
    static_return ()

static_structure = StaticStructure {properties = [Value (Word8Value 105),Value (Word16Value 65189),Value (Word8Value 245),Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word8Value 70),Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word16Value 40784),Value (Word8Value 114),Value (Word8Value 235),Value (Word16Value 34718),Hole {byte_offset = 13, hole_type = Word32Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Value (Word8Value 144),Hole {byte_offset = 23, hole_type = Word8Hole},Value (Word8Value 6),Value (Word32Value 1553777234),Value (Word32Value 3531265250),Hole {byte_offset = 33, hole_type = Word16Hole},Value (Word8Value 124),Value (Word32Value 1333487335),Hole {byte_offset = 40, hole_type = Word16Hole},Value (Word16Value 56770),Hole {byte_offset = 44, hole_type = Word32Hole},Hole {byte_offset = 48, hole_type = Word32Hole},Value (Word8Value 231),Value (Word8Value 82),Hole {byte_offset = 54, hole_type = Word16Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Value (Word16Value 5440),Hole {byte_offset = 62, hole_type = Word16Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word8Value 209),Value (Word8Value 233),Hole {byte_offset = 70, hole_type = Word16Hole},Value (Word8Value 230),Hole {byte_offset = 73, hole_type = Word16Hole},Value (Word8Value 207),Value (Word8Value 125),Value (Word8Value 23),Value (Word32Value 826826017)]}
