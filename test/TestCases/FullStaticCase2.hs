{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase2 where
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
    203 :: Word8 <- des
    v_0 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    451217082 :: Word32 <- des_word32_be
    222 :: Word8 <- des
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word16 <- des_word16_be
    36025 :: Word16 <- des_word16_be
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word8 <- des
    v_10 :: Word8 <- des
    227 :: Word8 <- des
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    47371 :: Word16 <- des_word16_be
    v_14 :: Word32 <- des_word32_be
    1203508258 :: Word32 <- des_word32_be
    1515784887 :: Word32 <- des_word32_be
    7797 :: Word16 <- des_word16_be
    38008 :: Word16 <- des_word16_be
    246 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    9213 :: Word16 <- des_word16_be
    v_16 :: Word16 <- des_word16_be
    46464 :: Word16 <- des_word16_be
    55850 :: Word16 <- des_word16_be
    v_17 :: Word16 <- des_word16_be
    4023663367 :: Word32 <- des_word32_be
    126422238 :: Word32 <- des_word32_be
    4093785628 :: Word32 <- des_word32_be
    return  [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 ] = vs 
    ser (203 :: Word8)
    ser v_0
    ser_word32_be v_1
    ser_word32_be 451217082
    ser (222 :: Word8)
    ser_word32_be v_2
    ser_word16_be v_3
    ser_word32_be v_4
    ser_word16_be v_5
    ser_word32_be v_6
    ser_word16_be v_7
    ser_word16_be 36025
    ser_word16_be v_8
    ser v_9
    ser v_10
    ser (227 :: Word8)
    ser_word16_be v_11
    ser_word16_be v_12
    ser_word32_be v_13
    ser_word16_be 47371
    ser_word32_be v_14
    ser_word32_be 1203508258
    ser_word32_be 1515784887
    ser_word16_be 7797
    ser_word16_be 38008
    ser (246 :: Word8)
    ser_word32_be v_15
    ser_word16_be 9213
    ser_word16_be v_16
    ser_word16_be 46464
    ser_word16_be 55850
    ser_word16_be v_17
    ser_word32_be 4023663367
    ser_word32_be 126422238
    ser_word32_be 4093785628
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 203),Hole {byte_offset = 1, hole_type = Word8Hole},Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word32Value 451217082),Value (Word8Value 222),Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word16Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word32Hole},Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word16Value 36025),Hole {byte_offset = 31, hole_type = Word16Hole},Hole {byte_offset = 33, hole_type = Word8Hole},Hole {byte_offset = 34, hole_type = Word8Hole},Value (Word8Value 227),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word16Value 47371),Hole {byte_offset = 46, hole_type = Word32Hole},Value (Word32Value 1203508258),Value (Word32Value 1515784887),Value (Word16Value 7797),Value (Word16Value 38008),Value (Word8Value 246),Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word16Value 9213),Hole {byte_offset = 69, hole_type = Word16Hole},Value (Word16Value 46464),Value (Word16Value 55850),Hole {byte_offset = 75, hole_type = Word16Hole},Value (Word32Value 4023663367),Value (Word32Value 126422238),Value (Word32Value 4093785628)]}
