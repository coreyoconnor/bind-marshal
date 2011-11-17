{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase14 where
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
    v_0 :: Word16 <- des_word16_be
    21334 :: Word16 <- des_word16_be
    v_1 :: Word8 <- des
    3964610579 :: Word32 <- des_word32_be
    v_2 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word8 <- des
    1012347459 :: Word32 <- des_word32_be
    47061 :: Word16 <- des_word16_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    52853621 :: Word32 <- des_word32_be
    v_9 :: Word32 <- des_word32_be
    2185409200 :: Word32 <- des_word32_be
    v_10 :: Word32 <- des_word32_be
    664 :: Word16 <- des_word16_be
    1664872066 :: Word32 <- des_word32_be
    45 :: Word8 <- des
    1516387776 :: Word32 <- des_word32_be
    v_11 :: Word16 <- des_word16_be
    61692 :: Word16 <- des_word16_be
    85 :: Word8 <- des
    v_12 :: Word32 <- des_word32_be
    155 :: Word8 <- des
    static_return  [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 ] = vs 
    ser_word16_be v_0
    ser_word16_be 21334
    ser v_1
    ser_word32_be 3964610579
    ser v_2
    ser_word16_be v_3
    ser v_4
    ser_word32_be 1012347459
    ser_word16_be 47061
    ser_word16_be v_5
    ser v_6
    ser_word32_be v_7
    ser_word16_be v_8
    ser_word32_be 52853621
    ser_word32_be v_9
    ser_word32_be 2185409200
    ser_word32_be v_10
    ser_word16_be 664
    ser_word32_be 1664872066
    ser (45 :: Word8)
    ser_word32_be 1516387776
    ser_word16_be v_11
    ser_word16_be 61692
    ser (85 :: Word8)
    ser_word32_be v_12
    ser (155 :: Word8)
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word16Value 21334),Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word32Value 3964610579),Hole {byte_offset = 9, hole_type = Word8Hole},Hole {byte_offset = 10, hole_type = Word16Hole},Hole {byte_offset = 12, hole_type = Word8Hole},Value (Word32Value 1012347459),Value (Word16Value 47061),Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Hole {byte_offset = 26, hole_type = Word16Hole},Value (Word32Value 52853621),Hole {byte_offset = 32, hole_type = Word32Hole},Value (Word32Value 2185409200),Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word16Value 664),Value (Word32Value 1664872066),Value (Word8Value 45),Value (Word32Value 1516387776),Hole {byte_offset = 55, hole_type = Word16Hole},Value (Word16Value 61692),Value (Word8Value 85),Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word8Value 155)]}
