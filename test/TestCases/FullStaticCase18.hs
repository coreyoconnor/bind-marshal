{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase18 where
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
    116 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    76 :: Word8 <- des
    15779 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    3468521939 :: Word32 <- des_word32_be
    4266389212 :: Word32 <- des_word32_be
    1257768946 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word16 <- des_word16_be
    133 :: Word8 <- des
    3 :: Word8 <- des
    v_7 :: Word8 <- des
    27106 :: Word16 <- des_word16_be
    593729103 :: Word32 <- des_word32_be
    v_8 :: Word32 <- des_word32_be
    75 :: Word8 <- des
    197847291 :: Word32 <- des_word32_be
    109 :: Word8 <- des
    16573 :: Word16 <- des_word16_be
    243000518 :: Word32 <- des_word32_be
    v_9 :: Word32 <- des_word32_be
    v_10 :: Word8 <- des
    1019831798 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word32 <- des_word32_be
    v_13 :: Word32 <- des_word32_be
    3061033733 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    211 :: Word8 <- des
    159 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    64487 :: Word16 <- des_word16_be
    47 :: Word8 <- des
    2937823586 :: Word32 <- des_word32_be
    8531 :: Word16 <- des_word16_be
    3804742798 :: Word32 <- des_word32_be
    v_16 :: Word16 <- des_word16_be
    3291099707 :: Word32 <- des_word32_be
    12937 :: Word16 <- des_word16_be
    57076 :: Word16 <- des_word16_be
    v_17 :: Word32 <- des_word32_be
    253 :: Word8 <- des
    v_18 :: Word32 <- des_word32_be
    12442 :: Word16 <- des_word16_be
    1910038088 :: Word32 <- des_word32_be
    65170 :: Word16 <- des_word16_be
    v_19 :: Word32 <- des_word32_be
    253 :: Word8 <- des
    122 :: Word8 <- des
    1 :: Word8 <- des
    1857112340 :: Word32 <- des_word32_be
    v_20 :: Word16 <- des_word16_be
    v_21 :: Word32 <- des_word32_be
    94 :: Word8 <- des
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word32 <- des_word32_be
    43735 :: Word16 <- des_word16_be
    70 :: Word8 <- des
    135 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    473702538 :: Word32 <- des_word32_be
    v_25 :: Word8 <- des
    3063629385 :: Word32 <- des_word32_be
    v_26 :: Word16 <- des_word16_be
    174 :: Word8 <- des
    v_27 :: Word32 <- des_word32_be
    52 :: Word8 <- des
    183 :: Word8 <- des
    17376 :: Word16 <- des_word16_be
    34203 :: Word16 <- des_word16_be
    1111746689 :: Word32 <- des_word32_be
    v_28 :: Word8 <- des
    3483132253 :: Word32 <- des_word32_be
    static_return  [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 ] = vs 
    ser (116 :: Word8)
    ser_word32_be v_0
    ser v_1
    ser (76 :: Word8)
    ser_word16_be 15779
    ser v_2
    ser_word32_be 3468521939
    ser_word32_be 4266389212
    ser_word32_be 1257768946
    ser_word16_be v_3
    ser v_4
    ser_word16_be v_5
    ser_word16_be v_6
    ser (133 :: Word8)
    ser (3 :: Word8)
    ser v_7
    ser_word16_be 27106
    ser_word32_be 593729103
    ser_word32_be v_8
    ser (75 :: Word8)
    ser_word32_be 197847291
    ser (109 :: Word8)
    ser_word16_be 16573
    ser_word32_be 243000518
    ser_word32_be v_9
    ser v_10
    ser_word32_be 1019831798
    ser_word32_be v_11
    ser_word32_be v_12
    ser_word32_be v_13
    ser_word32_be 3061033733
    ser v_14
    ser (211 :: Word8)
    ser (159 :: Word8)
    ser_word32_be v_15
    ser_word16_be 64487
    ser (47 :: Word8)
    ser_word32_be 2937823586
    ser_word16_be 8531
    ser_word32_be 3804742798
    ser_word16_be v_16
    ser_word32_be 3291099707
    ser_word16_be 12937
    ser_word16_be 57076
    ser_word32_be v_17
    ser (253 :: Word8)
    ser_word32_be v_18
    ser_word16_be 12442
    ser_word32_be 1910038088
    ser_word16_be 65170
    ser_word32_be v_19
    ser (253 :: Word8)
    ser (122 :: Word8)
    ser (1 :: Word8)
    ser_word32_be 1857112340
    ser_word16_be v_20
    ser_word32_be v_21
    ser (94 :: Word8)
    ser_word16_be v_22
    ser_word32_be v_23
    ser_word16_be 43735
    ser (70 :: Word8)
    ser (135 :: Word8)
    ser_word32_be v_24
    ser_word32_be 473702538
    ser v_25
    ser_word32_be 3063629385
    ser_word16_be v_26
    ser (174 :: Word8)
    ser_word32_be v_27
    ser (52 :: Word8)
    ser (183 :: Word8)
    ser_word16_be 17376
    ser_word16_be 34203
    ser_word32_be 1111746689
    ser v_28
    ser_word32_be 3483132253
    static_return ()

static_structure = StaticStructure {properties = [Value (Word8Value 116),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Value (Word8Value 76),Value (Word16Value 15779),Hole {byte_offset = 9, hole_type = Word8Hole},Value (Word32Value 3468521939),Value (Word32Value 4266389212),Value (Word32Value 1257768946),Hole {byte_offset = 22, hole_type = Word16Hole},Hole {byte_offset = 24, hole_type = Word8Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word8Value 133),Value (Word8Value 3),Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word16Value 27106),Value (Word32Value 593729103),Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word8Value 75),Value (Word32Value 197847291),Value (Word8Value 109),Value (Word16Value 16573),Value (Word32Value 243000518),Hole {byte_offset = 54, hole_type = Word32Hole},Hole {byte_offset = 58, hole_type = Word8Hole},Value (Word32Value 1019831798),Hole {byte_offset = 63, hole_type = Word32Hole},Hole {byte_offset = 67, hole_type = Word32Hole},Hole {byte_offset = 71, hole_type = Word32Hole},Value (Word32Value 3061033733),Hole {byte_offset = 79, hole_type = Word8Hole},Value (Word8Value 211),Value (Word8Value 159),Hole {byte_offset = 82, hole_type = Word32Hole},Value (Word16Value 64487),Value (Word8Value 47),Value (Word32Value 2937823586),Value (Word16Value 8531),Value (Word32Value 3804742798),Hole {byte_offset = 99, hole_type = Word16Hole},Value (Word32Value 3291099707),Value (Word16Value 12937),Value (Word16Value 57076),Hole {byte_offset = 109, hole_type = Word32Hole},Value (Word8Value 253),Hole {byte_offset = 114, hole_type = Word32Hole},Value (Word16Value 12442),Value (Word32Value 1910038088),Value (Word16Value 65170),Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word8Value 253),Value (Word8Value 122),Value (Word8Value 1),Value (Word32Value 1857112340),Hole {byte_offset = 137, hole_type = Word16Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word8Value 94),Hole {byte_offset = 144, hole_type = Word16Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word16Value 43735),Value (Word8Value 70),Value (Word8Value 135),Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word32Value 473702538),Hole {byte_offset = 162, hole_type = Word8Hole},Value (Word32Value 3063629385),Hole {byte_offset = 167, hole_type = Word16Hole},Value (Word8Value 174),Hole {byte_offset = 170, hole_type = Word32Hole},Value (Word8Value 52),Value (Word8Value 183),Value (Word16Value 17376),Value (Word16Value 34203),Value (Word32Value 1111746689),Hole {byte_offset = 184, hole_type = Word8Hole},Value (Word32Value 3483132253)]}
