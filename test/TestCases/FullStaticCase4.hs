{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase4 where
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
    v_1 :: Word8 <- des
    v_2 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    25450 :: Word16 <- des_word16_be
    217 :: Word8 <- des
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word8 <- des
    53092 :: Word16 <- des_word16_be
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    1537354447 :: Word32 <- des_word32_be
    7478197 :: Word32 <- des_word32_be
    27 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    196 :: Word8 <- des
    v_9 :: Word8 <- des
    3421475782 :: Word32 <- des_word32_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word16 <- des_word16_be
    v_14 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    56406 :: Word16 <- des_word16_be
    139 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    915062040 :: Word32 <- des_word32_be
    v_17 :: Word16 <- des_word16_be
    60990 :: Word16 <- des_word16_be
    124 :: Word8 <- des
    v_18 :: Word8 <- des
    1195 :: Word16 <- des_word16_be
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word8 <- des
    13228 :: Word16 <- des_word16_be
    v_21 :: Word16 <- des_word16_be
    v_22 :: Word8 <- des
    v_23 :: Word16 <- des_word16_be
    3273126618 :: Word32 <- des_word32_be
    v_24 :: Word32 <- des_word32_be
    208 :: Word8 <- des
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word8 <- des
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word8 <- des
    v_29 :: Word16 <- des_word16_be
    27492 :: Word16 <- des_word16_be
    41687 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    124 :: Word8 <- des
    223 :: Word8 <- des
    v_31 :: Word32 <- des_word32_be
    189 :: Word8 <- des
    static_return  [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 ] = vs 
    ser_word32_be v_0
    ser v_1
    ser v_2
    ser_word16_be v_3
    ser_word16_be 25450
    ser (217 :: Word8)
    ser_word32_be v_4
    ser v_5
    ser_word16_be 53092
    ser_word32_be v_6
    ser_word32_be v_7
    ser_word32_be 1537354447
    ser_word32_be 7478197
    ser (27 :: Word8)
    ser_word32_be v_8
    ser (196 :: Word8)
    ser v_9
    ser_word32_be 3421475782
    ser_word16_be v_10
    ser_word32_be v_11
    ser_word16_be v_12
    ser_word16_be v_13
    ser v_14
    ser_word32_be v_15
    ser_word16_be 56406
    ser (139 :: Word8)
    ser_word32_be v_16
    ser_word32_be 915062040
    ser_word16_be v_17
    ser_word16_be 60990
    ser (124 :: Word8)
    ser v_18
    ser_word16_be 1195
    ser_word32_be v_19
    ser v_20
    ser_word16_be 13228
    ser_word16_be v_21
    ser v_22
    ser_word16_be v_23
    ser_word32_be 3273126618
    ser_word32_be v_24
    ser (208 :: Word8)
    ser_word16_be v_25
    ser v_26
    ser_word32_be v_27
    ser v_28
    ser_word16_be v_29
    ser_word16_be 27492
    ser_word16_be 41687
    ser_word16_be v_30
    ser (124 :: Word8)
    ser (223 :: Word8)
    ser_word32_be v_31
    ser (189 :: Word8)
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word16Hole},Value (Word16Value 25450),Value (Word8Value 217),Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Value (Word16Value 53092),Hole {byte_offset = 18, hole_type = Word32Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Value (Word32Value 1537354447),Value (Word32Value 7478197),Value (Word8Value 27),Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word8Value 196),Hole {byte_offset = 40, hole_type = Word8Hole},Value (Word32Value 3421475782),Hole {byte_offset = 45, hole_type = Word16Hole},Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word16Hole},Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Value (Word16Value 56406),Value (Word8Value 139),Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word32Value 915062040),Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word16Value 60990),Value (Word8Value 124),Hole {byte_offset = 76, hole_type = Word8Hole},Value (Word16Value 1195),Hole {byte_offset = 79, hole_type = Word32Hole},Hole {byte_offset = 83, hole_type = Word8Hole},Value (Word16Value 13228),Hole {byte_offset = 86, hole_type = Word16Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Hole {byte_offset = 89, hole_type = Word16Hole},Value (Word32Value 3273126618),Hole {byte_offset = 95, hole_type = Word32Hole},Value (Word8Value 208),Hole {byte_offset = 100, hole_type = Word16Hole},Hole {byte_offset = 102, hole_type = Word8Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Hole {byte_offset = 107, hole_type = Word8Hole},Hole {byte_offset = 108, hole_type = Word16Hole},Value (Word16Value 27492),Value (Word16Value 41687),Hole {byte_offset = 114, hole_type = Word16Hole},Value (Word8Value 124),Value (Word8Value 223),Hole {byte_offset = 118, hole_type = Word32Hole},Value (Word8Value 189)]}
