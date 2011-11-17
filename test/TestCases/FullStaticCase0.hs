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
    v_0 :: Word8 <- des
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    58043 :: Word16 <- des_word16_be
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word16 <- des_word16_be
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word16 <- des_word16_be
    v_10 :: Word8 <- des
    5593 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    139 :: Word8 <- des
    v_12 :: Word16 <- des_word16_be
    118 :: Word8 <- des
    3155942669 :: Word32 <- des_word32_be
    3396610798 :: Word32 <- des_word32_be
    v_13 :: Word16 <- des_word16_be
    v_14 :: Word8 <- des
    7864 :: Word16 <- des_word16_be
    829870270 :: Word32 <- des_word32_be
    929140410 :: Word32 <- des_word32_be
    48 :: Word8 <- des
    v_15 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    v_17 :: Word16 <- des_word16_be
    v_18 :: Word8 <- des
    10804 :: Word16 <- des_word16_be
    v_19 :: Word16 <- des_word16_be
    v_20 :: Word32 <- des_word32_be
    254 :: Word8 <- des
    v_21 :: Word32 <- des_word32_be
    15321 :: Word16 <- des_word16_be
    12803 :: Word16 <- des_word16_be
    v_22 :: Word16 <- des_word16_be
    2923762974 :: Word32 <- des_word32_be
    56885 :: Word16 <- des_word16_be
    v_23 :: Word32 <- des_word32_be
    v_24 :: Word16 <- des_word16_be
    v_25 :: Word8 <- des
    v_26 :: Word32 <- des_word32_be
    v_27 :: Word16 <- des_word16_be
    v_28 :: Word16 <- des_word16_be
    1497266687 :: Word32 <- des_word32_be
    v_29 :: Word32 <- des_word32_be
    v_30 :: Word16 <- des_word16_be
    v_31 :: Word32 <- des_word32_be
    v_32 :: Word8 <- des
    37028 :: Word16 <- des_word16_be
    v_33 :: Word32 <- des_word32_be
    58694 :: Word16 <- des_word16_be
    v_34 :: Word8 <- des
    static_return  [ Word8Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word16Value v_7 , Word32Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word8Value v_32 , Word32Value v_33 , Word8Value v_34 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word16Value v_7 , Word32Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word8Value v_32 , Word32Value v_33 , Word8Value v_34 ] = vs 
    ser v_0
    ser_word16_be v_1
    ser v_2
    ser_word32_be v_3
    ser v_4
    ser_word32_be v_5
    ser_word16_be 58043
    ser_word32_be v_6
    ser_word16_be v_7
    ser_word32_be v_8
    ser_word16_be v_9
    ser v_10
    ser_word16_be 5593
    ser v_11
    ser (139 :: Word8)
    ser_word16_be v_12
    ser (118 :: Word8)
    ser_word32_be 3155942669
    ser_word32_be 3396610798
    ser_word16_be v_13
    ser v_14
    ser_word16_be 7864
    ser_word32_be 829870270
    ser_word32_be 929140410
    ser (48 :: Word8)
    ser v_15
    ser_word32_be v_16
    ser_word16_be v_17
    ser v_18
    ser_word16_be 10804
    ser_word16_be v_19
    ser_word32_be v_20
    ser (254 :: Word8)
    ser_word32_be v_21
    ser_word16_be 15321
    ser_word16_be 12803
    ser_word16_be v_22
    ser_word32_be 2923762974
    ser_word16_be 56885
    ser_word32_be v_23
    ser_word16_be v_24
    ser v_25
    ser_word32_be v_26
    ser_word16_be v_27
    ser_word16_be v_28
    ser_word32_be 1497266687
    ser_word32_be v_29
    ser_word16_be v_30
    ser_word32_be v_31
    ser v_32
    ser_word16_be 37028
    ser_word32_be v_33
    ser_word16_be 58694
    ser v_34
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Hole {byte_offset = 4, hole_type = Word32Hole},Hole {byte_offset = 8, hole_type = Word8Hole},Hole {byte_offset = 9, hole_type = Word32Hole},Value (Word16Value 58043),Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word8Hole},Value (Word16Value 5593),Hole {byte_offset = 30, hole_type = Word8Hole},Value (Word8Value 139),Hole {byte_offset = 32, hole_type = Word16Hole},Value (Word8Value 118),Value (Word32Value 3155942669),Value (Word32Value 3396610798),Hole {byte_offset = 43, hole_type = Word16Hole},Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word16Value 7864),Value (Word32Value 829870270),Value (Word32Value 929140410),Value (Word8Value 48),Hole {byte_offset = 57, hole_type = Word8Hole},Hole {byte_offset = 58, hole_type = Word32Hole},Hole {byte_offset = 62, hole_type = Word16Hole},Hole {byte_offset = 64, hole_type = Word8Hole},Value (Word16Value 10804),Hole {byte_offset = 67, hole_type = Word16Hole},Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word8Value 254),Hole {byte_offset = 74, hole_type = Word32Hole},Value (Word16Value 15321),Value (Word16Value 12803),Hole {byte_offset = 82, hole_type = Word16Hole},Value (Word32Value 2923762974),Value (Word16Value 56885),Hole {byte_offset = 90, hole_type = Word32Hole},Hole {byte_offset = 94, hole_type = Word16Hole},Hole {byte_offset = 96, hole_type = Word8Hole},Hole {byte_offset = 97, hole_type = Word32Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Hole {byte_offset = 103, hole_type = Word16Hole},Value (Word32Value 1497266687),Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word16Hole},Hole {byte_offset = 115, hole_type = Word32Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Value (Word16Value 37028),Hole {byte_offset = 122, hole_type = Word32Hole},Value (Word16Value 58694),Hole {byte_offset = 128, hole_type = Word8Hole}]}
