module TestCases.FullStaticCase5 where
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
    237 :: Word8 <- des
    2432342725 :: Word32 <- des_word32_be
    v_0 :: Word32 <- des_word32_be
    14 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    133 :: Word8 <- des
    v_2 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    31500 :: Word16 <- des_word16_be
    29725 :: Word16 <- des_word16_be
    45309 :: Word16 <- des_word16_be
    4041880020 :: Word32 <- des_word32_be
    6097 :: Word16 <- des_word16_be
    2505111969 :: Word32 <- des_word32_be
    v_4 :: Word32 <- des_word32_be
    227 :: Word8 <- des
    2045292545 :: Word32 <- des_word32_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word32 <- des_word32_be
    14 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    2434 :: Word16 <- des_word16_be
    2125984829 :: Word32 <- des_word32_be
    3037258204 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    247 :: Word8 <- des
    30 :: Word8 <- des
    15313 :: Word16 <- des_word16_be
    v_9 :: Word32 <- des_word32_be
    190 :: Word8 <- des
    84 :: Word8 <- des
    224 :: Word8 <- des
    145 :: Word8 <- des
    188 :: Word8 <- des
    48590 :: Word16 <- des_word16_be
    v_10 :: Word8 <- des
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    45257 :: Word16 <- des_word16_be
    44707 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    255 :: Word8 <- des
    v_14 :: Word32 <- des_word32_be
    12729 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    57436 :: Word16 <- des_word16_be
    v_16 :: Word32 <- des_word32_be
    v_17 :: Word8 <- des
    24 :: Word8 <- des
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word16 <- des_word16_be
    v_20 :: Word8 <- des
    v_21 :: Word8 <- des
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word8 <- des
    3487 :: Word16 <- des_word16_be
    2698337360 :: Word32 <- des_word32_be
    171 :: Word8 <- des
    57 :: Word8 <- des
    146 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word8 <- des
    v_27 :: Word8 <- des
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word8 <- des
    64836 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    v_31 :: Word8 <- des
    40363 :: Word16 <- des_word16_be
    65 :: Word8 <- des
    v_32 :: Word8 <- des
    188 :: Word8 <- des
    v_33 :: Word16 <- des_word16_be
    v_34 :: Word32 <- des_word32_be
    23 :: Word8 <- des
    v_35 :: Word16 <- des_word16_be
    8959 :: Word16 <- des_word16_be
    218 :: Word8 <- des
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word8 <- des
    125 :: Word8 <- des
    v_38 :: Word32 <- des_word32_be
    v_39 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 ] = vs 
    ser (237 :: Word8)
    ser_word32_be 2432342725
    ser_word32_be v_0
    ser (14 :: Word8)
    ser_word32_be v_1
    ser (133 :: Word8)
    ser_word16_be v_2
    ser v_3
    ser_word16_be 31500
    ser_word16_be 29725
    ser_word16_be 45309
    ser_word32_be 4041880020
    ser_word16_be 6097
    ser_word32_be 2505111969
    ser_word32_be v_4
    ser (227 :: Word8)
    ser_word32_be 2045292545
    ser_word16_be v_5
    ser_word32_be v_6
    ser (14 :: Word8)
    ser_word32_be v_7
    ser_word16_be 2434
    ser_word32_be 2125984829
    ser_word32_be 3037258204
    ser_word16_be v_8
    ser (247 :: Word8)
    ser (30 :: Word8)
    ser_word16_be 15313
    ser_word32_be v_9
    ser (190 :: Word8)
    ser (84 :: Word8)
    ser (224 :: Word8)
    ser (145 :: Word8)
    ser (188 :: Word8)
    ser_word16_be 48590
    ser v_10
    ser_word16_be v_11
    ser_word32_be v_12
    ser_word16_be 45257
    ser_word16_be 44707
    ser_word32_be v_13
    ser (255 :: Word8)
    ser_word32_be v_14
    ser_word16_be 12729
    ser v_15
    ser_word16_be 57436
    ser_word32_be v_16
    ser v_17
    ser (24 :: Word8)
    ser_word32_be v_18
    ser_word16_be v_19
    ser v_20
    ser v_21
    ser_word16_be v_22
    ser v_23
    ser_word16_be 3487
    ser_word32_be 2698337360
    ser (171 :: Word8)
    ser (57 :: Word8)
    ser (146 :: Word8)
    ser_word32_be v_24
    ser_word16_be v_25
    ser v_26
    ser v_27
    ser_word16_be v_28
    ser v_29
    ser_word16_be 64836
    ser_word16_be v_30
    ser v_31
    ser_word16_be 40363
    ser (65 :: Word8)
    ser v_32
    ser (188 :: Word8)
    ser_word16_be v_33
    ser_word32_be v_34
    ser (23 :: Word8)
    ser_word16_be v_35
    ser_word16_be 8959
    ser (218 :: Word8)
    ser_word32_be v_36
    ser v_37
    ser (125 :: Word8)
    ser_word32_be v_38
    ser_word16_be v_39
    static_return ()

static_structure = StaticStructure {properties = [Value (Word8Value 237),Value (Word32Value 2432342725),Hole {byte_offset = 5, hole_type = Word32Hole},Value (Word8Value 14),Hole {byte_offset = 10, hole_type = Word32Hole},Value (Word8Value 133),Hole {byte_offset = 15, hole_type = Word16Hole},Hole {byte_offset = 17, hole_type = Word8Hole},Value (Word16Value 31500),Value (Word16Value 29725),Value (Word16Value 45309),Value (Word32Value 4041880020),Value (Word16Value 6097),Value (Word32Value 2505111969),Hole {byte_offset = 34, hole_type = Word32Hole},Value (Word8Value 227),Value (Word32Value 2045292545),Hole {byte_offset = 43, hole_type = Word16Hole},Hole {byte_offset = 45, hole_type = Word32Hole},Value (Word8Value 14),Hole {byte_offset = 50, hole_type = Word32Hole},Value (Word16Value 2434),Value (Word32Value 2125984829),Value (Word32Value 3037258204),Hole {byte_offset = 64, hole_type = Word16Hole},Value (Word8Value 247),Value (Word8Value 30),Value (Word16Value 15313),Hole {byte_offset = 70, hole_type = Word32Hole},Value (Word8Value 190),Value (Word8Value 84),Value (Word8Value 224),Value (Word8Value 145),Value (Word8Value 188),Value (Word16Value 48590),Hole {byte_offset = 81, hole_type = Word8Hole},Hole {byte_offset = 82, hole_type = Word16Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Value (Word16Value 45257),Value (Word16Value 44707),Hole {byte_offset = 92, hole_type = Word32Hole},Value (Word8Value 255),Hole {byte_offset = 97, hole_type = Word32Hole},Value (Word16Value 12729),Hole {byte_offset = 103, hole_type = Word8Hole},Value (Word16Value 57436),Hole {byte_offset = 106, hole_type = Word32Hole},Hole {byte_offset = 110, hole_type = Word8Hole},Value (Word8Value 24),Hole {byte_offset = 112, hole_type = Word32Hole},Hole {byte_offset = 116, hole_type = Word16Hole},Hole {byte_offset = 118, hole_type = Word8Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word16Value 3487),Value (Word32Value 2698337360),Value (Word8Value 171),Value (Word8Value 57),Value (Word8Value 146),Hole {byte_offset = 132, hole_type = Word32Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Hole {byte_offset = 139, hole_type = Word8Hole},Hole {byte_offset = 140, hole_type = Word16Hole},Hole {byte_offset = 142, hole_type = Word8Hole},Value (Word16Value 64836),Hole {byte_offset = 145, hole_type = Word16Hole},Hole {byte_offset = 147, hole_type = Word8Hole},Value (Word16Value 40363),Value (Word8Value 65),Hole {byte_offset = 151, hole_type = Word8Hole},Value (Word8Value 188),Hole {byte_offset = 153, hole_type = Word16Hole},Hole {byte_offset = 155, hole_type = Word32Hole},Value (Word8Value 23),Hole {byte_offset = 160, hole_type = Word16Hole},Value (Word16Value 8959),Value (Word8Value 218),Hole {byte_offset = 165, hole_type = Word32Hole},Hole {byte_offset = 169, hole_type = Word8Hole},Value (Word8Value 125),Hole {byte_offset = 171, hole_type = Word32Hole},Hole {byte_offset = 175, hole_type = Word16Hole}]}
