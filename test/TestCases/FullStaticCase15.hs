{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase15 where
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
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word16 <- des_word16_be
    48219 :: Word16 <- des_word16_be
    4325 :: Word16 <- des_word16_be
    3490434580 :: Word32 <- des_word32_be
    v_5 :: Word8 <- des
    v_6 :: Word16 <- des_word16_be
    v_7 :: Word8 <- des
    v_8 :: Word16 <- des_word16_be
    45009 :: Word16 <- des_word16_be
    v_9 :: Word16 <- des_word16_be
    v_10 :: Word8 <- des
    v_11 :: Word32 <- des_word32_be
    129 :: Word8 <- des
    v_12 :: Word32 <- des_word32_be
    v_13 :: Word16 <- des_word16_be
    6150 :: Word16 <- des_word16_be
    v_14 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    1868620351 :: Word32 <- des_word32_be
    v_16 :: Word32 <- des_word32_be
    247 :: Word8 <- des
    v_17 :: Word16 <- des_word16_be
    72 :: Word8 <- des
    135 :: Word8 <- des
    1787028532 :: Word32 <- des_word32_be
    v_18 :: Word8 <- des
    32520 :: Word16 <- des_word16_be
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word16 <- des_word16_be
    6180 :: Word16 <- des_word16_be
    56578 :: Word16 <- des_word16_be
    v_21 :: Word8 <- des
    v_22 :: Word8 <- des
    v_23 :: Word16 <- des_word16_be
    424722519 :: Word32 <- des_word32_be
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word8 <- des
    36689 :: Word16 <- des_word16_be
    v_26 :: Word32 <- des_word32_be
    49215 :: Word16 <- des_word16_be
    v_27 :: Word8 <- des
    v_28 :: Word16 <- des_word16_be
    46893 :: Word16 <- des_word16_be
    154 :: Word8 <- des
    212 :: Word8 <- des
    22666 :: Word16 <- des_word16_be
    7313 :: Word16 <- des_word16_be
    1492607485 :: Word32 <- des_word32_be
    3056420829 :: Word32 <- des_word32_be
    v_29 :: Word16 <- des_word16_be
    21211 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    v_31 :: Word8 <- des
    817608511 :: Word32 <- des_word32_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word16 <- des_word16_be
    v_34 :: Word8 <- des
    2312997795 :: Word32 <- des_word32_be
    2156046820 :: Word32 <- des_word32_be
    2931456532 :: Word32 <- des_word32_be
    v_35 :: Word8 <- des
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word8 <- des
    v_38 :: Word32 <- des_word32_be
    v_39 :: Word8 <- des
    v_40 :: Word32 <- des_word32_be
    2702407550 :: Word32 <- des_word32_be
    1033057760 :: Word32 <- des_word32_be
    3287232216 :: Word32 <- des_word32_be
    94 :: Word8 <- des
    235 :: Word8 <- des
    v_41 :: Word32 <- des_word32_be
    58 :: Word8 <- des
    3637507167 :: Word32 <- des_word32_be
    36921 :: Word16 <- des_word16_be
    v_42 :: Word8 <- des
    v_43 :: Word16 <- des_word16_be
    v_44 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    176 :: Word8 <- des
    171 :: Word8 <- des
    51 :: Word8 <- des
    return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 ] = vs 
    ser_word32_be v_0
    ser_word16_be v_1
    ser_word32_be v_2
    ser_word32_be v_3
    ser_word16_be v_4
    ser_word16_be 48219
    ser_word16_be 4325
    ser_word32_be 3490434580
    ser v_5
    ser_word16_be v_6
    ser v_7
    ser_word16_be v_8
    ser_word16_be 45009
    ser_word16_be v_9
    ser v_10
    ser_word32_be v_11
    ser (129 :: Word8)
    ser_word32_be v_12
    ser_word16_be v_13
    ser_word16_be 6150
    ser v_14
    ser_word32_be v_15
    ser_word32_be 1868620351
    ser_word32_be v_16
    ser (247 :: Word8)
    ser_word16_be v_17
    ser (72 :: Word8)
    ser (135 :: Word8)
    ser_word32_be 1787028532
    ser v_18
    ser_word16_be 32520
    ser_word32_be v_19
    ser_word16_be v_20
    ser_word16_be 6180
    ser_word16_be 56578
    ser v_21
    ser v_22
    ser_word16_be v_23
    ser_word32_be 424722519
    ser_word32_be v_24
    ser v_25
    ser_word16_be 36689
    ser_word32_be v_26
    ser_word16_be 49215
    ser v_27
    ser_word16_be v_28
    ser_word16_be 46893
    ser (154 :: Word8)
    ser (212 :: Word8)
    ser_word16_be 22666
    ser_word16_be 7313
    ser_word32_be 1492607485
    ser_word32_be 3056420829
    ser_word16_be v_29
    ser_word16_be 21211
    ser_word16_be v_30
    ser v_31
    ser_word32_be 817608511
    ser_word16_be v_32
    ser_word16_be v_33
    ser v_34
    ser_word32_be 2312997795
    ser_word32_be 2156046820
    ser_word32_be 2931456532
    ser v_35
    ser_word32_be v_36
    ser v_37
    ser_word32_be v_38
    ser v_39
    ser_word32_be v_40
    ser_word32_be 2702407550
    ser_word32_be 1033057760
    ser_word32_be 3287232216
    ser (94 :: Word8)
    ser (235 :: Word8)
    ser_word32_be v_41
    ser (58 :: Word8)
    ser_word32_be 3637507167
    ser_word16_be 36921
    ser v_42
    ser_word16_be v_43
    ser_word16_be v_44
    ser v_45
    ser (176 :: Word8)
    ser (171 :: Word8)
    ser (51 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word16Hole},Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word16Hole},Value (Word16Value 48219),Value (Word16Value 4325),Value (Word32Value 3490434580),Hole {byte_offset = 24, hole_type = Word8Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word8Hole},Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word16Value 45009),Hole {byte_offset = 32, hole_type = Word16Hole},Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word8Value 129),Hole {byte_offset = 40, hole_type = Word32Hole},Hole {byte_offset = 44, hole_type = Word16Hole},Value (Word16Value 6150),Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word32Value 1868620351),Hole {byte_offset = 57, hole_type = Word32Hole},Value (Word8Value 247),Hole {byte_offset = 62, hole_type = Word16Hole},Value (Word8Value 72),Value (Word8Value 135),Value (Word32Value 1787028532),Hole {byte_offset = 70, hole_type = Word8Hole},Value (Word16Value 32520),Hole {byte_offset = 73, hole_type = Word32Hole},Hole {byte_offset = 77, hole_type = Word16Hole},Value (Word16Value 6180),Value (Word16Value 56578),Hole {byte_offset = 83, hole_type = Word8Hole},Hole {byte_offset = 84, hole_type = Word8Hole},Hole {byte_offset = 85, hole_type = Word16Hole},Value (Word32Value 424722519),Hole {byte_offset = 91, hole_type = Word32Hole},Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word16Value 36689),Hole {byte_offset = 98, hole_type = Word32Hole},Value (Word16Value 49215),Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word16Hole},Value (Word16Value 46893),Value (Word8Value 154),Value (Word8Value 212),Value (Word16Value 22666),Value (Word16Value 7313),Value (Word32Value 1492607485),Value (Word32Value 3056420829),Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word16Value 21211),Hole {byte_offset = 127, hole_type = Word16Hole},Hole {byte_offset = 129, hole_type = Word8Hole},Value (Word32Value 817608511),Hole {byte_offset = 134, hole_type = Word16Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Value (Word32Value 2312997795),Value (Word32Value 2156046820),Value (Word32Value 2931456532),Hole {byte_offset = 151, hole_type = Word8Hole},Hole {byte_offset = 152, hole_type = Word32Hole},Hole {byte_offset = 156, hole_type = Word8Hole},Hole {byte_offset = 157, hole_type = Word32Hole},Hole {byte_offset = 161, hole_type = Word8Hole},Hole {byte_offset = 162, hole_type = Word32Hole},Value (Word32Value 2702407550),Value (Word32Value 1033057760),Value (Word32Value 3287232216),Value (Word8Value 94),Value (Word8Value 235),Hole {byte_offset = 180, hole_type = Word32Hole},Value (Word8Value 58),Value (Word32Value 3637507167),Value (Word16Value 36921),Hole {byte_offset = 191, hole_type = Word8Hole},Hole {byte_offset = 192, hole_type = Word16Hole},Hole {byte_offset = 194, hole_type = Word16Hole},Hole {byte_offset = 196, hole_type = Word8Hole},Value (Word8Value 176),Value (Word8Value 171),Value (Word8Value 51)]}
