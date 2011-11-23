{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase7 where
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
    51 :: Word8 <- des
    15664 :: Word16 <- des_word16_be
    53091 :: Word16 <- des_word16_be
    v_1 :: Word32 <- des_word32_be
    218 :: Word8 <- des
    29543 :: Word16 <- des_word16_be
    54263 :: Word16 <- des_word16_be
    2710534270 :: Word32 <- des_word32_be
    42278 :: Word16 <- des_word16_be
    59163 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    85 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    217 :: Word8 <- des
    v_4 :: Word16 <- des_word16_be
    153 :: Word8 <- des
    36474 :: Word16 <- des_word16_be
    34 :: Word8 <- des
    64119 :: Word16 <- des_word16_be
    50261 :: Word16 <- des_word16_be
    30026 :: Word16 <- des_word16_be
    v_5 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    23 :: Word8 <- des
    v_9 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    30121 :: Word16 <- des_word16_be
    60170 :: Word16 <- des_word16_be
    1322307491 :: Word32 <- des_word32_be
    591215766 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    104 :: Word8 <- des
    70 :: Word8 <- des
    56704 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    45 :: Word8 <- des
    424590200 :: Word32 <- des_word32_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    v_17 :: Word16 <- des_word16_be
    34 :: Word8 <- des
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word32 <- des_word32_be
    v_21 :: Word16 <- des_word16_be
    v_22 :: Word8 <- des
    v_23 :: Word16 <- des_word16_be
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word32 <- des_word32_be
    127 :: Word8 <- des
    10 :: Word8 <- des
    return  [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 ] = vs 
    ser_word32_be v_0
    ser (51 :: Word8)
    ser_word16_be 15664
    ser_word16_be 53091
    ser_word32_be v_1
    ser (218 :: Word8)
    ser_word16_be 29543
    ser_word16_be 54263
    ser_word32_be 2710534270
    ser_word16_be 42278
    ser_word16_be 59163
    ser_word32_be v_2
    ser (85 :: Word8)
    ser_word32_be v_3
    ser (217 :: Word8)
    ser_word16_be v_4
    ser (153 :: Word8)
    ser_word16_be 36474
    ser (34 :: Word8)
    ser_word16_be 64119
    ser_word16_be 50261
    ser_word16_be 30026
    ser v_5
    ser_word32_be v_6
    ser v_7
    ser_word32_be v_8
    ser (23 :: Word8)
    ser v_9
    ser_word32_be v_10
    ser_word16_be 30121
    ser_word16_be 60170
    ser_word32_be 1322307491
    ser_word32_be 591215766
    ser_word32_be v_11
    ser (104 :: Word8)
    ser (70 :: Word8)
    ser_word16_be 56704
    ser_word32_be v_12
    ser (45 :: Word8)
    ser_word32_be 424590200
    ser_word32_be v_13
    ser_word16_be v_14
    ser v_15
    ser_word32_be v_16
    ser_word16_be v_17
    ser (34 :: Word8)
    ser_word16_be v_18
    ser_word32_be v_19
    ser_word32_be v_20
    ser_word16_be v_21
    ser v_22
    ser_word16_be v_23
    ser_word32_be v_24
    ser_word32_be v_25
    ser (127 :: Word8)
    ser (10 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word8Value 51),Value (Word16Value 15664),Value (Word16Value 53091),Hole {byte_offset = 9, hole_type = Word32Hole},Value (Word8Value 218),Value (Word16Value 29543),Value (Word16Value 54263),Value (Word32Value 2710534270),Value (Word16Value 42278),Value (Word16Value 59163),Hole {byte_offset = 26, hole_type = Word32Hole},Value (Word8Value 85),Hole {byte_offset = 31, hole_type = Word32Hole},Value (Word8Value 217),Hole {byte_offset = 36, hole_type = Word16Hole},Value (Word8Value 153),Value (Word16Value 36474),Value (Word8Value 34),Value (Word16Value 64119),Value (Word16Value 50261),Value (Word16Value 30026),Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Hole {byte_offset = 53, hole_type = Word8Hole},Hole {byte_offset = 54, hole_type = Word32Hole},Value (Word8Value 23),Hole {byte_offset = 59, hole_type = Word8Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word16Value 30121),Value (Word16Value 60170),Value (Word32Value 1322307491),Value (Word32Value 591215766),Hole {byte_offset = 76, hole_type = Word32Hole},Value (Word8Value 104),Value (Word8Value 70),Value (Word16Value 56704),Hole {byte_offset = 84, hole_type = Word32Hole},Value (Word8Value 45),Value (Word32Value 424590200),Hole {byte_offset = 93, hole_type = Word32Hole},Hole {byte_offset = 97, hole_type = Word16Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Hole {byte_offset = 100, hole_type = Word32Hole},Hole {byte_offset = 104, hole_type = Word16Hole},Value (Word8Value 34),Hole {byte_offset = 107, hole_type = Word16Hole},Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word32Hole},Hole {byte_offset = 117, hole_type = Word16Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word32Hole},Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word8Value 127),Value (Word8Value 10)]}
