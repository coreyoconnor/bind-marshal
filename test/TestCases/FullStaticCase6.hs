{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase6 where
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
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    v_3 :: Word8 <- des
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    53710 :: Word16 <- des_word16_be
    2052853940 :: Word32 <- des_word32_be
    4613 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    3509453784 :: Word32 <- des_word32_be
    244 :: Word8 <- des
    23 :: Word8 <- des
    3145218968 :: Word32 <- des_word32_be
    v_7 :: Word16 <- des_word16_be
    3524216542 :: Word32 <- des_word32_be
    43731 :: Word16 <- des_word16_be
    v_8 :: Word8 <- des
    195 :: Word8 <- des
    v_9 :: Word16 <- des_word16_be
    2921892023 :: Word32 <- des_word32_be
    51988 :: Word16 <- des_word16_be
    231 :: Word8 <- des
    14222 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    79 :: Word8 <- des
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word16 <- des_word16_be
    v_14 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    v_16 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    612609367 :: Word32 <- des_word32_be
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word8 <- des
    v_20 :: Word8 <- des
    2669 :: Word16 <- des_word16_be
    v_21 :: Word8 <- des
    v_22 :: Word8 <- des
    v_23 :: Word8 <- des
    985832582 :: Word32 <- des_word32_be
    2391881502 :: Word32 <- des_word32_be
    16465 :: Word16 <- des_word16_be
    1054352216 :: Word32 <- des_word32_be
    197 :: Word8 <- des
    30391 :: Word16 <- des_word16_be
    3394836017 :: Word32 <- des_word32_be
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word8 <- des
    173 :: Word8 <- des
    1328234999 :: Word32 <- des_word32_be
    189 :: Word8 <- des
    3739077621 :: Word32 <- des_word32_be
    14208 :: Word16 <- des_word16_be
    v_26 :: Word16 <- des_word16_be
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word8 <- des
    19 :: Word8 <- des
    v_29 :: Word16 <- des_word16_be
    219 :: Word8 <- des
    221 :: Word8 <- des
    55952 :: Word16 <- des_word16_be
    18565 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    157 :: Word8 <- des
    v_31 :: Word16 <- des_word16_be
    v_32 :: Word32 <- des_word32_be
    72 :: Word8 <- des
    v_33 :: Word8 <- des
    830212843 :: Word32 <- des_word32_be
    v_34 :: Word16 <- des_word16_be
    1353101976 :: Word32 <- des_word32_be
    14539 :: Word16 <- des_word16_be
    v_35 :: Word16 <- des_word16_be
    11 :: Word8 <- des
    v_36 :: Word16 <- des_word16_be
    3057443612 :: Word32 <- des_word32_be
    v_37 :: Word16 <- des_word16_be
    v_38 :: Word16 <- des_word16_be
    35 :: Word8 <- des
    33855 :: Word16 <- des_word16_be
    v_39 :: Word16 <- des_word16_be
    static_return  [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word16Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word16Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word16Value v_37 , Word16Value v_38 , Word16Value v_39 ] = vs 
    ser_word16_be v_0
    ser_word16_be v_1
    ser v_2
    ser v_3
    ser v_4
    ser v_5
    ser_word16_be 53710
    ser_word32_be 2052853940
    ser_word16_be 4613
    ser v_6
    ser_word32_be 3509453784
    ser (244 :: Word8)
    ser (23 :: Word8)
    ser_word32_be 3145218968
    ser_word16_be v_7
    ser_word32_be 3524216542
    ser_word16_be 43731
    ser v_8
    ser (195 :: Word8)
    ser_word16_be v_9
    ser_word32_be 2921892023
    ser_word16_be 51988
    ser (231 :: Word8)
    ser_word16_be 14222
    ser_word32_be v_10
    ser (79 :: Word8)
    ser_word16_be v_11
    ser_word16_be v_12
    ser_word16_be v_13
    ser_word16_be v_14
    ser v_15
    ser v_16
    ser_word32_be v_17
    ser_word32_be 612609367
    ser_word16_be v_18
    ser v_19
    ser v_20
    ser_word16_be 2669
    ser v_21
    ser v_22
    ser v_23
    ser_word32_be 985832582
    ser_word32_be 2391881502
    ser_word16_be 16465
    ser_word32_be 1054352216
    ser (197 :: Word8)
    ser_word16_be 30391
    ser_word32_be 3394836017
    ser_word32_be v_24
    ser v_25
    ser (173 :: Word8)
    ser_word32_be 1328234999
    ser (189 :: Word8)
    ser_word32_be 3739077621
    ser_word16_be 14208
    ser_word16_be v_26
    ser_word32_be v_27
    ser v_28
    ser (19 :: Word8)
    ser_word16_be v_29
    ser (219 :: Word8)
    ser (221 :: Word8)
    ser_word16_be 55952
    ser_word16_be 18565
    ser_word16_be v_30
    ser (157 :: Word8)
    ser_word16_be v_31
    ser_word32_be v_32
    ser (72 :: Word8)
    ser v_33
    ser_word32_be 830212843
    ser_word16_be v_34
    ser_word32_be 1353101976
    ser_word16_be 14539
    ser_word16_be v_35
    ser (11 :: Word8)
    ser_word16_be v_36
    ser_word32_be 3057443612
    ser_word16_be v_37
    ser_word16_be v_38
    ser (35 :: Word8)
    ser_word16_be 33855
    ser_word16_be v_39
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word16Hole},Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Hole {byte_offset = 7, hole_type = Word8Hole},Value (Word16Value 53710),Value (Word32Value 2052853940),Value (Word16Value 4613),Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word32Value 3509453784),Value (Word8Value 244),Value (Word8Value 23),Value (Word32Value 3145218968),Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word32Value 3524216542),Value (Word16Value 43731),Hole {byte_offset = 35, hole_type = Word8Hole},Value (Word8Value 195),Hole {byte_offset = 37, hole_type = Word16Hole},Value (Word32Value 2921892023),Value (Word16Value 51988),Value (Word8Value 231),Value (Word16Value 14222),Hole {byte_offset = 48, hole_type = Word32Hole},Value (Word8Value 79),Hole {byte_offset = 53, hole_type = Word16Hole},Hole {byte_offset = 55, hole_type = Word16Hole},Hole {byte_offset = 57, hole_type = Word16Hole},Hole {byte_offset = 59, hole_type = Word16Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word8Hole},Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word32Value 612609367),Hole {byte_offset = 71, hole_type = Word16Hole},Hole {byte_offset = 73, hole_type = Word8Hole},Hole {byte_offset = 74, hole_type = Word8Hole},Value (Word16Value 2669),Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word8Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Value (Word32Value 985832582),Value (Word32Value 2391881502),Value (Word16Value 16465),Value (Word32Value 1054352216),Value (Word8Value 197),Value (Word16Value 30391),Value (Word32Value 3394836017),Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word8Hole},Value (Word8Value 173),Value (Word32Value 1328234999),Value (Word8Value 189),Value (Word32Value 3739077621),Value (Word16Value 14208),Hole {byte_offset = 118, hole_type = Word16Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Hole {byte_offset = 124, hole_type = Word8Hole},Value (Word8Value 19),Hole {byte_offset = 126, hole_type = Word16Hole},Value (Word8Value 219),Value (Word8Value 221),Value (Word16Value 55952),Value (Word16Value 18565),Hole {byte_offset = 134, hole_type = Word16Hole},Value (Word8Value 157),Hole {byte_offset = 137, hole_type = Word16Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word8Value 72),Hole {byte_offset = 144, hole_type = Word8Hole},Value (Word32Value 830212843),Hole {byte_offset = 149, hole_type = Word16Hole},Value (Word32Value 1353101976),Value (Word16Value 14539),Hole {byte_offset = 157, hole_type = Word16Hole},Value (Word8Value 11),Hole {byte_offset = 160, hole_type = Word16Hole},Value (Word32Value 3057443612),Hole {byte_offset = 166, hole_type = Word16Hole},Hole {byte_offset = 168, hole_type = Word16Hole},Value (Word8Value 35),Value (Word16Value 33855),Hole {byte_offset = 173, hole_type = Word16Hole}]}
