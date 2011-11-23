{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase8 where
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
    152 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    3344410126 :: Word32 <- des_word32_be
    5498 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    2346212609 :: Word32 <- des_word32_be
    192 :: Word8 <- des
    7224 :: Word16 <- des_word16_be
    1742691138 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    49 :: Word8 <- des
    177419052 :: Word32 <- des_word32_be
    11 :: Word8 <- des
    32128 :: Word16 <- des_word16_be
    v_4 :: Word16 <- des_word16_be
    2237 :: Word16 <- des_word16_be
    v_5 :: Word8 <- des
    v_6 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    141 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word16 <- des_word16_be
    8 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    4061482925 :: Word32 <- des_word32_be
    v_11 :: Word8 <- des
    v_12 :: Word16 <- des_word16_be
    3759716517 :: Word32 <- des_word32_be
    34 :: Word8 <- des
    173 :: Word8 <- des
    v_13 :: Word32 <- des_word32_be
    2262656877 :: Word32 <- des_word32_be
    43032 :: Word16 <- des_word16_be
    v_14 :: Word8 <- des
    46039 :: Word16 <- des_word16_be
    3830 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    v_16 :: Word16 <- des_word16_be
    184 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    v_18 :: Word8 <- des
    174 :: Word8 <- des
    v_19 :: Word32 <- des_word32_be
    1453222366 :: Word32 <- des_word32_be
    1935530529 :: Word32 <- des_word32_be
    198 :: Word8 <- des
    v_20 :: Word32 <- des_word32_be
    244 :: Word8 <- des
    v_21 :: Word8 <- des
    3374673456 :: Word32 <- des_word32_be
    v_22 :: Word8 <- des
    v_23 :: Word16 <- des_word16_be
    40432 :: Word16 <- des_word16_be
    56753 :: Word16 <- des_word16_be
    v_24 :: Word16 <- des_word16_be
    18 :: Word8 <- des
    221 :: Word8 <- des
    183278728 :: Word32 <- des_word32_be
    34549812 :: Word32 <- des_word32_be
    v_25 :: Word32 <- des_word32_be
    v_26 :: Word16 <- des_word16_be
    v_27 :: Word8 <- des
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word16 <- des_word16_be
    31195 :: Word16 <- des_word16_be
    1176566508 :: Word32 <- des_word32_be
    v_30 :: Word8 <- des
    49884 :: Word16 <- des_word16_be
    6539 :: Word16 <- des_word16_be
    v_31 :: Word32 <- des_word32_be
    3269927101 :: Word32 <- des_word32_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word16 <- des_word16_be
    148 :: Word8 <- des
    v_34 :: Word8 <- des
    v_35 :: Word8 <- des
    v_36 :: Word8 <- des
    245658267 :: Word32 <- des_word32_be
    1699088325 :: Word32 <- des_word32_be
    return  [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word16Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 , Word16Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word16Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 , Word16Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 ] = vs 
    ser v_0
    ser (152 :: Word8)
    ser_word32_be v_1
    ser_word32_be 3344410126
    ser_word16_be 5498
    ser_word32_be v_2
    ser_word32_be 2346212609
    ser (192 :: Word8)
    ser_word16_be 7224
    ser_word32_be 1742691138
    ser_word16_be v_3
    ser (49 :: Word8)
    ser_word32_be 177419052
    ser (11 :: Word8)
    ser_word16_be 32128
    ser_word16_be v_4
    ser_word16_be 2237
    ser v_5
    ser v_6
    ser_word32_be v_7
    ser (141 :: Word8)
    ser_word32_be v_8
    ser_word16_be v_9
    ser (8 :: Word8)
    ser_word32_be v_10
    ser_word32_be 4061482925
    ser v_11
    ser_word16_be v_12
    ser_word32_be 3759716517
    ser (34 :: Word8)
    ser (173 :: Word8)
    ser_word32_be v_13
    ser_word32_be 2262656877
    ser_word16_be 43032
    ser v_14
    ser_word16_be 46039
    ser_word16_be 3830
    ser v_15
    ser_word16_be v_16
    ser (184 :: Word8)
    ser_word32_be v_17
    ser v_18
    ser (174 :: Word8)
    ser_word32_be v_19
    ser_word32_be 1453222366
    ser_word32_be 1935530529
    ser (198 :: Word8)
    ser_word32_be v_20
    ser (244 :: Word8)
    ser v_21
    ser_word32_be 3374673456
    ser v_22
    ser_word16_be v_23
    ser_word16_be 40432
    ser_word16_be 56753
    ser_word16_be v_24
    ser (18 :: Word8)
    ser (221 :: Word8)
    ser_word32_be 183278728
    ser_word32_be 34549812
    ser_word32_be v_25
    ser_word16_be v_26
    ser v_27
    ser_word16_be v_28
    ser_word16_be v_29
    ser_word16_be 31195
    ser_word32_be 1176566508
    ser v_30
    ser_word16_be 49884
    ser_word16_be 6539
    ser_word32_be v_31
    ser_word32_be 3269927101
    ser_word16_be v_32
    ser_word16_be v_33
    ser (148 :: Word8)
    ser v_34
    ser v_35
    ser v_36
    ser_word32_be 245658267
    ser_word32_be 1699088325
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Value (Word8Value 152),Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word32Value 3344410126),Value (Word16Value 5498),Hole {byte_offset = 12, hole_type = Word32Hole},Value (Word32Value 2346212609),Value (Word8Value 192),Value (Word16Value 7224),Value (Word32Value 1742691138),Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word8Value 49),Value (Word32Value 177419052),Value (Word8Value 11),Value (Word16Value 32128),Hole {byte_offset = 37, hole_type = Word16Hole},Value (Word16Value 2237),Hole {byte_offset = 41, hole_type = Word8Hole},Hole {byte_offset = 42, hole_type = Word8Hole},Hole {byte_offset = 43, hole_type = Word32Hole},Value (Word8Value 141),Hole {byte_offset = 48, hole_type = Word32Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word8Value 8),Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word32Value 4061482925),Hole {byte_offset = 63, hole_type = Word8Hole},Hole {byte_offset = 64, hole_type = Word16Hole},Value (Word32Value 3759716517),Value (Word8Value 34),Value (Word8Value 173),Hole {byte_offset = 72, hole_type = Word32Hole},Value (Word32Value 2262656877),Value (Word16Value 43032),Hole {byte_offset = 82, hole_type = Word8Hole},Value (Word16Value 46039),Value (Word16Value 3830),Hole {byte_offset = 87, hole_type = Word8Hole},Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 184),Hole {byte_offset = 91, hole_type = Word32Hole},Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word8Value 174),Hole {byte_offset = 97, hole_type = Word32Hole},Value (Word32Value 1453222366),Value (Word32Value 1935530529),Value (Word8Value 198),Hole {byte_offset = 110, hole_type = Word32Hole},Value (Word8Value 244),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word32Value 3374673456),Hole {byte_offset = 120, hole_type = Word8Hole},Hole {byte_offset = 121, hole_type = Word16Hole},Value (Word16Value 40432),Value (Word16Value 56753),Hole {byte_offset = 127, hole_type = Word16Hole},Value (Word8Value 18),Value (Word8Value 221),Value (Word32Value 183278728),Value (Word32Value 34549812),Hole {byte_offset = 139, hole_type = Word32Hole},Hole {byte_offset = 143, hole_type = Word16Hole},Hole {byte_offset = 145, hole_type = Word8Hole},Hole {byte_offset = 146, hole_type = Word16Hole},Hole {byte_offset = 148, hole_type = Word16Hole},Value (Word16Value 31195),Value (Word32Value 1176566508),Hole {byte_offset = 156, hole_type = Word8Hole},Value (Word16Value 49884),Value (Word16Value 6539),Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word32Value 3269927101),Hole {byte_offset = 169, hole_type = Word16Hole},Hole {byte_offset = 171, hole_type = Word16Hole},Value (Word8Value 148),Hole {byte_offset = 174, hole_type = Word8Hole},Hole {byte_offset = 175, hole_type = Word8Hole},Hole {byte_offset = 176, hole_type = Word8Hole},Value (Word32Value 245658267),Value (Word32Value 1699088325)]}
