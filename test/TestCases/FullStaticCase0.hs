{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase0 where
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
    222 :: Word8 <- des
    v_0 :: Word16 <- des_word16_be
    v_1 :: Word8 <- des
    1372847211 :: Word32 <- des_word32_be
    61249 :: Word16 <- des_word16_be
    40227 :: Word16 <- des_word16_be
    v_2 :: Word16 <- des_word16_be
    49620 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    v_4 :: Word32 <- des_word32_be
    36412 :: Word16 <- des_word16_be
    v_5 :: Word16 <- des_word16_be
    221 :: Word8 <- des
    11954 :: Word16 <- des_word16_be
    v_6 :: Word16 <- des_word16_be
    2872607739 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    119 :: Word8 <- des
    39837 :: Word16 <- des_word16_be
    6931 :: Word16 <- des_word16_be
    v_8 :: Word8 <- des
    58940 :: Word16 <- des_word16_be
    v_9 :: Word32 <- des_word32_be
    2607215780 :: Word32 <- des_word32_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word32 <- des_word32_be
    1522 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    6151 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    44897 :: Word16 <- des_word16_be
    v_15 :: Word16 <- des_word16_be
    v_16 :: Word16 <- des_word16_be
    1054931444 :: Word32 <- des_word32_be
    v_17 :: Word32 <- des_word32_be
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word16 <- des_word16_be
    v_21 :: Word8 <- des
    v_22 :: Word16 <- des_word16_be
    246 :: Word8 <- des
    v_23 :: Word8 <- des
    v_24 :: Word8 <- des
    4 :: Word8 <- des
    v_25 :: Word32 <- des_word32_be
    v_26 :: Word16 <- des_word16_be
    v_27 :: Word16 <- des_word16_be
    25390 :: Word16 <- des_word16_be
    v_28 :: Word16 <- des_word16_be
    return  [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 ] = vs 
    ser (222 :: Word8)
    ser_word16_be v_0
    ser v_1
    ser_word32_be 1372847211
    ser_word16_be 61249
    ser_word16_be 40227
    ser_word16_be v_2
    ser_word16_be 49620
    ser v_3
    ser_word32_be v_4
    ser_word16_be 36412
    ser_word16_be v_5
    ser (221 :: Word8)
    ser_word16_be 11954
    ser_word16_be v_6
    ser_word32_be 2872607739
    ser v_7
    ser (119 :: Word8)
    ser_word16_be 39837
    ser_word16_be 6931
    ser v_8
    ser_word16_be 58940
    ser_word32_be v_9
    ser_word32_be 2607215780
    ser_word16_be v_10
    ser_word32_be v_11
    ser_word16_be 1522
    ser_word32_be v_12
    ser_word16_be 6151
    ser_word32_be v_13
    ser v_14
    ser_word16_be 44897
    ser_word16_be v_15
    ser_word16_be v_16
    ser_word32_be 1054931444
    ser_word32_be v_17
    ser_word32_be v_18
    ser_word32_be v_19
    ser_word16_be v_20
    ser v_21
    ser_word16_be v_22
    ser (246 :: Word8)
    ser v_23
    ser v_24
    ser (4 :: Word8)
    ser_word32_be v_25
    ser_word16_be v_26
    ser_word16_be v_27
    ser_word16_be 25390
    ser_word16_be v_28
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 222),Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Value (Word32Value 1372847211),Value (Word16Value 61249),Value (Word16Value 40227),Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word16Value 49620),Hole {byte_offset = 16, hole_type = Word8Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Value (Word16Value 36412),Hole {byte_offset = 23, hole_type = Word16Hole},Value (Word8Value 221),Value (Word16Value 11954),Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word32Value 2872607739),Hole {byte_offset = 34, hole_type = Word8Hole},Value (Word8Value 119),Value (Word16Value 39837),Value (Word16Value 6931),Hole {byte_offset = 40, hole_type = Word8Hole},Value (Word16Value 58940),Hole {byte_offset = 43, hole_type = Word32Hole},Value (Word32Value 2607215780),Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word32Hole},Value (Word16Value 1522),Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word16Value 6151),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word8Hole},Value (Word16Value 44897),Hole {byte_offset = 72, hole_type = Word16Hole},Hole {byte_offset = 74, hole_type = Word16Hole},Value (Word32Value 1054931444),Hole {byte_offset = 80, hole_type = Word32Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word32Hole},Hole {byte_offset = 92, hole_type = Word16Hole},Hole {byte_offset = 94, hole_type = Word8Hole},Hole {byte_offset = 95, hole_type = Word16Hole},Value (Word8Value 246),Hole {byte_offset = 98, hole_type = Word8Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Value (Word8Value 4),Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word16Hole},Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word16Value 25390),Hole {byte_offset = 111, hole_type = Word16Hole}]}
