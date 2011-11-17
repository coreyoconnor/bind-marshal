{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase16 where
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
    2691996911 :: Word32 <- des_word32_be
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    1161708852 :: Word32 <- des_word32_be
    v_2 :: Word32 <- des_word32_be
    151 :: Word8 <- des
    147 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word32 <- des_word32_be
    2310865410 :: Word32 <- des_word32_be
    63090 :: Word16 <- des_word16_be
    v_5 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    833720150 :: Word32 <- des_word32_be
    v_8 :: Word8 <- des
    v_9 :: Word16 <- des_word16_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    7268 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    v_13 :: Word8 <- des
    v_14 :: Word8 <- des
    29489 :: Word16 <- des_word16_be
    2094582750 :: Word32 <- des_word32_be
    229 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word16 <- des_word16_be
    2382 :: Word16 <- des_word16_be
    248 :: Word8 <- des
    v_17 :: Word16 <- des_word16_be
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word16 <- des_word16_be
    15466 :: Word16 <- des_word16_be
    v_20 :: Word16 <- des_word16_be
    v_21 :: Word8 <- des
    13152 :: Word16 <- des_word16_be
    6676 :: Word16 <- des_word16_be
    2903250587 :: Word32 <- des_word32_be
    186 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word32 <- des_word32_be
    v_24 :: Word8 <- des
    193 :: Word8 <- des
    3949674462 :: Word32 <- des_word32_be
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word32 <- des_word32_be
    1425211980 :: Word32 <- des_word32_be
    v_27 :: Word32 <- des_word32_be
    13 :: Word8 <- des
    3253549302 :: Word32 <- des_word32_be
    v_28 :: Word32 <- des_word32_be
    v_29 :: Word32 <- des_word32_be
    39090 :: Word16 <- des_word16_be
    55 :: Word8 <- des
    248 :: Word8 <- des
    251 :: Word8 <- des
    v_30 :: Word32 <- des_word32_be
    200 :: Word8 <- des
    123 :: Word8 <- des
    3801997726 :: Word32 <- des_word32_be
    57608 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word32Value v_30 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word32Value v_30 ] = vs 
    ser_word32_be 2691996911
    ser_word32_be v_0
    ser_word16_be v_1
    ser_word32_be 1161708852
    ser_word32_be v_2
    ser (151 :: Word8)
    ser (147 :: Word8)
    ser_word32_be v_3
    ser_word32_be v_4
    ser_word32_be 2310865410
    ser_word16_be 63090
    ser v_5
    ser_word32_be v_6
    ser v_7
    ser_word32_be 833720150
    ser v_8
    ser_word16_be v_9
    ser_word16_be v_10
    ser v_11
    ser_word16_be 7268
    ser_word32_be v_12
    ser v_13
    ser v_14
    ser_word16_be 29489
    ser_word32_be 2094582750
    ser (229 :: Word8)
    ser_word32_be v_15
    ser_word16_be v_16
    ser_word16_be 2382
    ser (248 :: Word8)
    ser_word16_be v_17
    ser_word32_be v_18
    ser_word16_be v_19
    ser_word16_be 15466
    ser_word16_be v_20
    ser v_21
    ser_word16_be 13152
    ser_word16_be 6676
    ser_word32_be 2903250587
    ser (186 :: Word8)
    ser_word32_be v_22
    ser_word32_be v_23
    ser v_24
    ser (193 :: Word8)
    ser_word32_be 3949674462
    ser_word16_be v_25
    ser_word32_be v_26
    ser_word32_be 1425211980
    ser_word32_be v_27
    ser (13 :: Word8)
    ser_word32_be 3253549302
    ser_word32_be v_28
    ser_word32_be v_29
    ser_word16_be 39090
    ser (55 :: Word8)
    ser (248 :: Word8)
    ser (251 :: Word8)
    ser_word32_be v_30
    ser (200 :: Word8)
    ser (123 :: Word8)
    ser_word32_be 3801997726
    ser_word16_be 57608
    static_return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2691996911),Hole {byte_offset = 4, hole_type = Word32Hole},Hole {byte_offset = 8, hole_type = Word16Hole},Value (Word32Value 1161708852),Hole {byte_offset = 14, hole_type = Word32Hole},Value (Word8Value 151),Value (Word8Value 147),Hole {byte_offset = 20, hole_type = Word32Hole},Hole {byte_offset = 24, hole_type = Word32Hole},Value (Word32Value 2310865410),Value (Word16Value 63090),Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Hole {byte_offset = 39, hole_type = Word8Hole},Value (Word32Value 833720150),Hole {byte_offset = 44, hole_type = Word8Hole},Hole {byte_offset = 45, hole_type = Word16Hole},Hole {byte_offset = 47, hole_type = Word16Hole},Hole {byte_offset = 49, hole_type = Word8Hole},Value (Word16Value 7268),Hole {byte_offset = 52, hole_type = Word32Hole},Hole {byte_offset = 56, hole_type = Word8Hole},Hole {byte_offset = 57, hole_type = Word8Hole},Value (Word16Value 29489),Value (Word32Value 2094582750),Value (Word8Value 229),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word16Hole},Value (Word16Value 2382),Value (Word8Value 248),Hole {byte_offset = 74, hole_type = Word16Hole},Hole {byte_offset = 76, hole_type = Word32Hole},Hole {byte_offset = 80, hole_type = Word16Hole},Value (Word16Value 15466),Hole {byte_offset = 84, hole_type = Word16Hole},Hole {byte_offset = 86, hole_type = Word8Hole},Value (Word16Value 13152),Value (Word16Value 6676),Value (Word32Value 2903250587),Value (Word8Value 186),Hole {byte_offset = 96, hole_type = Word32Hole},Hole {byte_offset = 100, hole_type = Word32Hole},Hole {byte_offset = 104, hole_type = Word8Hole},Value (Word8Value 193),Value (Word32Value 3949674462),Hole {byte_offset = 110, hole_type = Word16Hole},Hole {byte_offset = 112, hole_type = Word32Hole},Value (Word32Value 1425211980),Hole {byte_offset = 120, hole_type = Word32Hole},Value (Word8Value 13),Value (Word32Value 3253549302),Hole {byte_offset = 129, hole_type = Word32Hole},Hole {byte_offset = 133, hole_type = Word32Hole},Value (Word16Value 39090),Value (Word8Value 55),Value (Word8Value 248),Value (Word8Value 251),Hole {byte_offset = 142, hole_type = Word32Hole},Value (Word8Value 200),Value (Word8Value 123),Value (Word32Value 3801997726),Value (Word16Value 57608)]}
