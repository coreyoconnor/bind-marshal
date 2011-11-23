{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase9 where
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
    v_1 :: Word32 <- des_word32_be
    81 :: Word8 <- des
    2680635857 :: Word32 <- des_word32_be
    2620515763 :: Word32 <- des_word32_be
    146 :: Word8 <- des
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    30065 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    246 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    191 :: Word8 <- des
    3365672896 :: Word32 <- des_word32_be
    26813 :: Word16 <- des_word16_be
    51 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    33 :: Word8 <- des
    v_7 :: Word16 <- des_word16_be
    35353 :: Word16 <- des_word16_be
    2075917046 :: Word32 <- des_word32_be
    1661943998 :: Word32 <- des_word32_be
    43443 :: Word16 <- des_word16_be
    v_8 :: Word8 <- des
    v_9 :: Word32 <- des_word32_be
    43666 :: Word16 <- des_word16_be
    v_10 :: Word8 <- des
    899141513 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    34707 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    v_13 :: Word16 <- des_word16_be
    189 :: Word8 <- des
    40596 :: Word16 <- des_word16_be
    168 :: Word8 <- des
    3347843934 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    136 :: Word8 <- des
    87 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    54337 :: Word16 <- des_word16_be
    v_16 :: Word16 <- des_word16_be
    48 :: Word8 <- des
    v_17 :: Word8 <- des
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word16 <- des_word16_be
    87332769 :: Word32 <- des_word32_be
    2525199029 :: Word32 <- des_word32_be
    v_20 :: Word8 <- des
    v_21 :: Word32 <- des_word32_be
    v_22 :: Word8 <- des
    v_23 :: Word8 <- des
    803964052 :: Word32 <- des_word32_be
    v_24 :: Word8 <- des
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word16 <- des_word16_be
    54158 :: Word16 <- des_word16_be
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word8 <- des
    4129681505 :: Word32 <- des_word32_be
    2793010783 :: Word32 <- des_word32_be
    v_29 :: Word8 <- des
    v_30 :: Word16 <- des_word16_be
    22177 :: Word16 <- des_word16_be
    3690057535 :: Word32 <- des_word32_be
    21525 :: Word16 <- des_word16_be
    177 :: Word8 <- des
    1880967632 :: Word32 <- des_word32_be
    v_31 :: Word16 <- des_word16_be
    3251462756 :: Word32 <- des_word32_be
    857820321 :: Word32 <- des_word32_be
    65036 :: Word16 <- des_word16_be
    51924 :: Word16 <- des_word16_be
    v_32 :: Word32 <- des_word32_be
    v_33 :: Word32 <- des_word32_be
    v_34 :: Word16 <- des_word16_be
    2228576033 :: Word32 <- des_word32_be
    return  [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 ] = vs 
    ser_word16_be v_0
    ser_word32_be v_1
    ser (81 :: Word8)
    ser_word32_be 2680635857
    ser_word32_be 2620515763
    ser (146 :: Word8)
    ser_word32_be v_2
    ser_word32_be v_3
    ser_word16_be 30065
    ser_word32_be v_4
    ser (246 :: Word8)
    ser_word16_be v_5
    ser (191 :: Word8)
    ser_word32_be 3365672896
    ser_word16_be 26813
    ser (51 :: Word8)
    ser_word32_be v_6
    ser (33 :: Word8)
    ser_word16_be v_7
    ser_word16_be 35353
    ser_word32_be 2075917046
    ser_word32_be 1661943998
    ser_word16_be 43443
    ser v_8
    ser_word32_be v_9
    ser_word16_be 43666
    ser v_10
    ser_word32_be 899141513
    ser_word32_be v_11
    ser_word16_be 34707
    ser_word32_be v_12
    ser_word16_be v_13
    ser (189 :: Word8)
    ser_word16_be 40596
    ser (168 :: Word8)
    ser_word32_be 3347843934
    ser v_14
    ser (136 :: Word8)
    ser (87 :: Word8)
    ser_word32_be v_15
    ser_word16_be 54337
    ser_word16_be v_16
    ser (48 :: Word8)
    ser v_17
    ser_word32_be v_18
    ser_word16_be v_19
    ser_word32_be 87332769
    ser_word32_be 2525199029
    ser v_20
    ser_word32_be v_21
    ser v_22
    ser v_23
    ser_word32_be 803964052
    ser v_24
    ser_word16_be v_25
    ser_word16_be v_26
    ser_word16_be 54158
    ser_word32_be v_27
    ser v_28
    ser_word32_be 4129681505
    ser_word32_be 2793010783
    ser v_29
    ser_word16_be v_30
    ser_word16_be 22177
    ser_word32_be 3690057535
    ser_word16_be 21525
    ser (177 :: Word8)
    ser_word32_be 1880967632
    ser_word16_be v_31
    ser_word32_be 3251462756
    ser_word32_be 857820321
    ser_word16_be 65036
    ser_word16_be 51924
    ser_word32_be v_32
    ser_word32_be v_33
    ser_word16_be v_34
    ser_word32_be 2228576033
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word8Value 81),Value (Word32Value 2680635857),Value (Word32Value 2620515763),Value (Word8Value 146),Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word32Hole},Value (Word16Value 30065),Hole {byte_offset = 26, hole_type = Word32Hole},Value (Word8Value 246),Hole {byte_offset = 31, hole_type = Word16Hole},Value (Word8Value 191),Value (Word32Value 3365672896),Value (Word16Value 26813),Value (Word8Value 51),Hole {byte_offset = 41, hole_type = Word32Hole},Value (Word8Value 33),Hole {byte_offset = 46, hole_type = Word16Hole},Value (Word16Value 35353),Value (Word32Value 2075917046),Value (Word32Value 1661943998),Value (Word16Value 43443),Hole {byte_offset = 60, hole_type = Word8Hole},Hole {byte_offset = 61, hole_type = Word32Hole},Value (Word16Value 43666),Hole {byte_offset = 67, hole_type = Word8Hole},Value (Word32Value 899141513),Hole {byte_offset = 72, hole_type = Word32Hole},Value (Word16Value 34707),Hole {byte_offset = 78, hole_type = Word32Hole},Hole {byte_offset = 82, hole_type = Word16Hole},Value (Word8Value 189),Value (Word16Value 40596),Value (Word8Value 168),Value (Word32Value 3347843934),Hole {byte_offset = 92, hole_type = Word8Hole},Value (Word8Value 136),Value (Word8Value 87),Hole {byte_offset = 95, hole_type = Word32Hole},Value (Word16Value 54337),Hole {byte_offset = 101, hole_type = Word16Hole},Value (Word8Value 48),Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Hole {byte_offset = 109, hole_type = Word16Hole},Value (Word32Value 87332769),Value (Word32Value 2525199029),Hole {byte_offset = 119, hole_type = Word8Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Hole {byte_offset = 124, hole_type = Word8Hole},Hole {byte_offset = 125, hole_type = Word8Hole},Value (Word32Value 803964052),Hole {byte_offset = 130, hole_type = Word8Hole},Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word16Value 54158),Hole {byte_offset = 137, hole_type = Word32Hole},Hole {byte_offset = 141, hole_type = Word8Hole},Value (Word32Value 4129681505),Value (Word32Value 2793010783),Hole {byte_offset = 150, hole_type = Word8Hole},Hole {byte_offset = 151, hole_type = Word16Hole},Value (Word16Value 22177),Value (Word32Value 3690057535),Value (Word16Value 21525),Value (Word8Value 177),Value (Word32Value 1880967632),Hole {byte_offset = 166, hole_type = Word16Hole},Value (Word32Value 3251462756),Value (Word32Value 857820321),Value (Word16Value 65036),Value (Word16Value 51924),Hole {byte_offset = 180, hole_type = Word32Hole},Hole {byte_offset = 184, hole_type = Word32Hole},Hole {byte_offset = 188, hole_type = Word16Hole},Value (Word32Value 2228576033)]}
