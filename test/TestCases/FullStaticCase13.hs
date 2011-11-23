{-# LANGUAGE RebindableSyntax #-}
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
    v_0 :: Word32 <- des_word32_be
    974593737 :: Word32 <- des_word32_be
    v_1 :: Word32 <- des_word32_be
    270424593 :: Word32 <- des_word32_be
    16 :: Word8 <- des
    120942527 :: Word32 <- des_word32_be
    88 :: Word8 <- des
    11469 :: Word16 <- des_word16_be
    4053170617 :: Word32 <- des_word32_be
    3840506081 :: Word32 <- des_word32_be
    2213213863 :: Word32 <- des_word32_be
    v_2 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    128 :: Word8 <- des
    v_4 :: Word32 <- des_word32_be
    33193 :: Word16 <- des_word16_be
    197 :: Word8 <- des
    v_5 :: Word8 <- des
    32115 :: Word16 <- des_word16_be
    10789 :: Word16 <- des_word16_be
    47008 :: Word16 <- des_word16_be
    2235900520 :: Word32 <- des_word32_be
    151 :: Word8 <- des
    77 :: Word8 <- des
    v_6 :: Word8 <- des
    3250671753 :: Word32 <- des_word32_be
    18673 :: Word16 <- des_word16_be
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word32 <- des_word32_be
    122 :: Word8 <- des
    13728 :: Word16 <- des_word16_be
    2665566341 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    3830757039 :: Word32 <- des_word32_be
    v_13 :: Word8 <- des
    3241787203 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    15041 :: Word16 <- des_word16_be
    v_15 :: Word32 <- des_word32_be
    170 :: Word8 <- des
    v_16 :: Word8 <- des
    v_17 :: Word16 <- des_word16_be
    23393 :: Word16 <- des_word16_be
    2889 :: Word16 <- des_word16_be
    45 :: Word8 <- des
    v_18 :: Word8 <- des
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word32 <- des_word32_be
    327680813 :: Word32 <- des_word32_be
    177 :: Word8 <- des
    return  [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 ] = vs 
    ser_word32_be v_0
    ser_word32_be 974593737
    ser_word32_be v_1
    ser_word32_be 270424593
    ser (16 :: Word8)
    ser_word32_be 120942527
    ser (88 :: Word8)
    ser_word16_be 11469
    ser_word32_be 4053170617
    ser_word32_be 3840506081
    ser_word32_be 2213213863
    ser_word16_be v_2
    ser v_3
    ser (128 :: Word8)
    ser_word32_be v_4
    ser_word16_be 33193
    ser (197 :: Word8)
    ser v_5
    ser_word16_be 32115
    ser_word16_be 10789
    ser_word16_be 47008
    ser_word32_be 2235900520
    ser (151 :: Word8)
    ser (77 :: Word8)
    ser v_6
    ser_word32_be 3250671753
    ser_word16_be 18673
    ser_word32_be v_7
    ser_word32_be v_8
    ser (122 :: Word8)
    ser_word16_be 13728
    ser_word32_be 2665566341
    ser v_9
    ser_word16_be v_10
    ser_word32_be v_11
    ser_word16_be v_12
    ser_word32_be 3830757039
    ser v_13
    ser_word32_be 3241787203
    ser v_14
    ser_word16_be 15041
    ser_word32_be v_15
    ser (170 :: Word8)
    ser v_16
    ser_word16_be v_17
    ser_word16_be 23393
    ser_word16_be 2889
    ser (45 :: Word8)
    ser v_18
    ser_word32_be v_19
    ser_word32_be v_20
    ser_word32_be 327680813
    ser (177 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word32Value 974593737),Hole {byte_offset = 8, hole_type = Word32Hole},Value (Word32Value 270424593),Value (Word8Value 16),Value (Word32Value 120942527),Value (Word8Value 88),Value (Word16Value 11469),Value (Word32Value 4053170617),Value (Word32Value 3840506081),Value (Word32Value 2213213863),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word8Hole},Value (Word8Value 128),Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word16Value 33193),Value (Word8Value 197),Hole {byte_offset = 47, hole_type = Word8Hole},Value (Word16Value 32115),Value (Word16Value 10789),Value (Word16Value 47008),Value (Word32Value 2235900520),Value (Word8Value 151),Value (Word8Value 77),Hole {byte_offset = 60, hole_type = Word8Hole},Value (Word32Value 3250671753),Value (Word16Value 18673),Hole {byte_offset = 67, hole_type = Word32Hole},Hole {byte_offset = 71, hole_type = Word32Hole},Value (Word8Value 122),Value (Word16Value 13728),Value (Word32Value 2665566341),Hole {byte_offset = 82, hole_type = Word8Hole},Hole {byte_offset = 83, hole_type = Word16Hole},Hole {byte_offset = 85, hole_type = Word32Hole},Hole {byte_offset = 89, hole_type = Word16Hole},Value (Word32Value 3830757039),Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word32Value 3241787203),Hole {byte_offset = 100, hole_type = Word8Hole},Value (Word16Value 15041),Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word8Value 170),Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word16Hole},Value (Word16Value 23393),Value (Word16Value 2889),Value (Word8Value 45),Hole {byte_offset = 116, hole_type = Word8Hole},Hole {byte_offset = 117, hole_type = Word32Hole},Hole {byte_offset = 121, hole_type = Word32Hole},Value (Word32Value 327680813),Value (Word8Value 177)]}
