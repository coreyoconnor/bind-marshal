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
    v_0 :: Word8 <- des
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word16 <- des_word16_be
    v_3 :: Word32 <- des_word32_be
    2008565076 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    1289452705 :: Word32 <- des_word32_be
    v_5 :: Word8 <- des
    v_6 :: Word16 <- des_word16_be
    v_7 :: Word16 <- des_word16_be
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word8 <- des
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word32 <- des_word32_be
    v_15 :: Word8 <- des
    3546 :: Word16 <- des_word16_be
    v_16 :: Word8 <- des
    711217658 :: Word32 <- des_word32_be
    v_17 :: Word16 <- des_word16_be
    2492049217 :: Word32 <- des_word32_be
    3165149853 :: Word32 <- des_word32_be
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word32 <- des_word32_be
    109 :: Word8 <- des
    v_20 :: Word32 <- des_word32_be
    12937 :: Word16 <- des_word16_be
    7260 :: Word16 <- des_word16_be
    1330645614 :: Word32 <- des_word32_be
    141 :: Word8 <- des
    v_21 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    10457 :: Word16 <- des_word16_be
    2480135192 :: Word32 <- des_word32_be
    v_23 :: Word16 <- des_word16_be
    18 :: Word8 <- des
    64627 :: Word16 <- des_word16_be
    v_24 :: Word8 <- des
    110 :: Word8 <- des
    v_25 :: Word8 <- des
    v_26 :: Word8 <- des
    65 :: Word8 <- des
    28107 :: Word16 <- des_word16_be
    v_27 :: Word16 <- des_word16_be
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word32 <- des_word32_be
    v_30 :: Word16 <- des_word16_be
    v_31 :: Word32 <- des_word32_be
    v_32 :: Word16 <- des_word16_be
    115 :: Word8 <- des
    21539 :: Word16 <- des_word16_be
    v_33 :: Word16 <- des_word16_be
    4773 :: Word16 <- des_word16_be
    v_34 :: Word8 <- des
    8132 :: Word16 <- des_word16_be
    v_35 :: Word16 <- des_word16_be
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word32 <- des_word32_be
    v_38 :: Word32 <- des_word32_be
    54 :: Word8 <- des
    v_39 :: Word8 <- des
    143 :: Word8 <- des
    static_return  [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word8Value v_39 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word8Value v_39 ] = vs 
    ser v_0
    ser_word16_be v_1
    ser_word16_be v_2
    ser_word32_be v_3
    ser_word32_be 2008565076
    ser v_4
    ser_word32_be 1289452705
    ser v_5
    ser_word16_be v_6
    ser_word16_be v_7
    ser_word16_be v_8
    ser v_9
    ser_word16_be v_10
    ser_word16_be v_11
    ser_word32_be v_12
    ser_word32_be v_13
    ser_word32_be v_14
    ser v_15
    ser_word16_be 3546
    ser v_16
    ser_word32_be 711217658
    ser_word16_be v_17
    ser_word32_be 2492049217
    ser_word32_be 3165149853
    ser_word16_be v_18
    ser_word32_be v_19
    ser (109 :: Word8)
    ser_word32_be v_20
    ser_word16_be 12937
    ser_word16_be 7260
    ser_word32_be 1330645614
    ser (141 :: Word8)
    ser v_21
    ser_word32_be v_22
    ser_word16_be 10457
    ser_word32_be 2480135192
    ser_word16_be v_23
    ser (18 :: Word8)
    ser_word16_be 64627
    ser v_24
    ser (110 :: Word8)
    ser v_25
    ser v_26
    ser (65 :: Word8)
    ser_word16_be 28107
    ser_word16_be v_27
    ser_word16_be v_28
    ser_word32_be v_29
    ser_word16_be v_30
    ser_word32_be v_31
    ser_word16_be v_32
    ser (115 :: Word8)
    ser_word16_be 21539
    ser_word16_be v_33
    ser_word16_be 4773
    ser v_34
    ser_word16_be 8132
    ser_word16_be v_35
    ser_word32_be v_36
    ser_word32_be v_37
    ser_word32_be v_38
    ser (54 :: Word8)
    ser v_39
    ser (143 :: Word8)
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word16Hole},Hole {byte_offset = 5, hole_type = Word32Hole},Value (Word32Value 2008565076),Hole {byte_offset = 13, hole_type = Word8Hole},Value (Word32Value 1289452705),Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word16Hole},Hole {byte_offset = 25, hole_type = Word8Hole},Hole {byte_offset = 26, hole_type = Word16Hole},Hole {byte_offset = 28, hole_type = Word16Hole},Hole {byte_offset = 30, hole_type = Word32Hole},Hole {byte_offset = 34, hole_type = Word32Hole},Hole {byte_offset = 38, hole_type = Word32Hole},Hole {byte_offset = 42, hole_type = Word8Hole},Value (Word16Value 3546),Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word32Value 711217658),Hole {byte_offset = 50, hole_type = Word16Hole},Value (Word32Value 2492049217),Value (Word32Value 3165149853),Hole {byte_offset = 60, hole_type = Word16Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Value (Word8Value 109),Hole {byte_offset = 67, hole_type = Word32Hole},Value (Word16Value 12937),Value (Word16Value 7260),Value (Word32Value 1330645614),Value (Word8Value 141),Hole {byte_offset = 80, hole_type = Word8Hole},Hole {byte_offset = 81, hole_type = Word32Hole},Value (Word16Value 10457),Value (Word32Value 2480135192),Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word8Value 18),Value (Word16Value 64627),Hole {byte_offset = 96, hole_type = Word8Hole},Value (Word8Value 110),Hole {byte_offset = 98, hole_type = Word8Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Value (Word8Value 65),Value (Word16Value 28107),Hole {byte_offset = 103, hole_type = Word16Hole},Hole {byte_offset = 105, hole_type = Word16Hole},Hole {byte_offset = 107, hole_type = Word32Hole},Hole {byte_offset = 111, hole_type = Word16Hole},Hole {byte_offset = 113, hole_type = Word32Hole},Hole {byte_offset = 117, hole_type = Word16Hole},Value (Word8Value 115),Value (Word16Value 21539),Hole {byte_offset = 122, hole_type = Word16Hole},Value (Word16Value 4773),Hole {byte_offset = 126, hole_type = Word8Hole},Value (Word16Value 8132),Hole {byte_offset = 129, hole_type = Word16Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Hole {byte_offset = 135, hole_type = Word32Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word8Value 54),Hole {byte_offset = 144, hole_type = Word8Hole},Value (Word8Value 143)]}
