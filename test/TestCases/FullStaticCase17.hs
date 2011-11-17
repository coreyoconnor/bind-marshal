{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase17 where
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
    23116 :: Word16 <- des_word16_be
    63287 :: Word16 <- des_word16_be
    394041682 :: Word32 <- des_word32_be
    2655694756 :: Word32 <- des_word32_be
    3048562779 :: Word32 <- des_word32_be
    v_0 :: Word16 <- des_word16_be
    56193989 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    11915 :: Word16 <- des_word16_be
    40188 :: Word16 <- des_word16_be
    39351 :: Word16 <- des_word16_be
    11338 :: Word16 <- des_word16_be
    2947879533 :: Word32 <- des_word32_be
    4393 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    30960197 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    4086078462 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    3488 :: Word16 <- des_word16_be
    7548 :: Word16 <- des_word16_be
    105 :: Word8 <- des
    174 :: Word8 <- des
    v_6 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    37722 :: Word16 <- des_word16_be
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word32 <- des_word32_be
    482082485 :: Word32 <- des_word32_be
    27161 :: Word16 <- des_word16_be
    v_12 :: Word16 <- des_word16_be
    177 :: Word8 <- des
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word32 <- des_word32_be
    96 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    54299 :: Word16 <- des_word16_be
    2952417055 :: Word32 <- des_word32_be
    46395 :: Word16 <- des_word16_be
    18864 :: Word16 <- des_word16_be
    v_16 :: Word16 <- des_word16_be
    63558 :: Word16 <- des_word16_be
    v_17 :: Word16 <- des_word16_be
    1082928031 :: Word32 <- des_word32_be
    21962 :: Word16 <- des_word16_be
    253 :: Word8 <- des
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word8 <- des
    30797 :: Word16 <- des_word16_be
    v_20 :: Word16 <- des_word16_be
    2802360407 :: Word32 <- des_word32_be
    v_21 :: Word16 <- des_word16_be
    2245310693 :: Word32 <- des_word32_be
    55 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word16 <- des_word16_be
    532219476 :: Word32 <- des_word32_be
    1435407867 :: Word32 <- des_word32_be
    v_24 :: Word8 <- des
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word32 <- des_word32_be
    39297 :: Word16 <- des_word16_be
    1635586197 :: Word32 <- des_word32_be
    v_27 :: Word32 <- des_word32_be
    46608 :: Word16 <- des_word16_be
    2656911673 :: Word32 <- des_word32_be
    v_28 :: Word32 <- des_word32_be
    v_29 :: Word32 <- des_word32_be
    30924 :: Word16 <- des_word16_be
    221 :: Word8 <- des
    64721 :: Word16 <- des_word16_be
    v_30 :: Word16 <- des_word16_be
    21266 :: Word16 <- des_word16_be
    5392 :: Word16 <- des_word16_be
    static_return  [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word16Value v_30 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word16Value v_30 ] = vs 
    ser_word16_be 23116
    ser_word16_be 63287
    ser_word32_be 394041682
    ser_word32_be 2655694756
    ser_word32_be 3048562779
    ser_word16_be v_0
    ser_word32_be 56193989
    ser_word16_be v_1
    ser_word16_be 11915
    ser_word16_be 40188
    ser_word16_be 39351
    ser_word16_be 11338
    ser_word32_be 2947879533
    ser_word16_be 4393
    ser_word32_be v_2
    ser_word32_be 30960197
    ser_word32_be v_3
    ser_word32_be 4086078462
    ser v_4
    ser_word16_be v_5
    ser_word16_be 3488
    ser_word16_be 7548
    ser (105 :: Word8)
    ser (174 :: Word8)
    ser v_6
    ser_word32_be v_7
    ser_word16_be 37722
    ser_word32_be v_8
    ser v_9
    ser_word16_be v_10
    ser_word32_be v_11
    ser_word32_be 482082485
    ser_word16_be 27161
    ser_word16_be v_12
    ser (177 :: Word8)
    ser_word32_be v_13
    ser_word32_be v_14
    ser (96 :: Word8)
    ser_word32_be v_15
    ser_word16_be 54299
    ser_word32_be 2952417055
    ser_word16_be 46395
    ser_word16_be 18864
    ser_word16_be v_16
    ser_word16_be 63558
    ser_word16_be v_17
    ser_word32_be 1082928031
    ser_word16_be 21962
    ser (253 :: Word8)
    ser_word16_be v_18
    ser v_19
    ser_word16_be 30797
    ser_word16_be v_20
    ser_word32_be 2802360407
    ser_word16_be v_21
    ser_word32_be 2245310693
    ser (55 :: Word8)
    ser_word32_be v_22
    ser_word16_be v_23
    ser_word32_be 532219476
    ser_word32_be 1435407867
    ser v_24
    ser_word16_be v_25
    ser_word32_be v_26
    ser_word16_be 39297
    ser_word32_be 1635586197
    ser_word32_be v_27
    ser_word16_be 46608
    ser_word32_be 2656911673
    ser_word32_be v_28
    ser_word32_be v_29
    ser_word16_be 30924
    ser (221 :: Word8)
    ser_word16_be 64721
    ser_word16_be v_30
    ser_word16_be 21266
    ser_word16_be 5392
    static_return ()

static_structure = StaticStructure {properties = [Value (Word16Value 23116),Value (Word16Value 63287),Value (Word32Value 394041682),Value (Word32Value 2655694756),Value (Word32Value 3048562779),Hole {byte_offset = 16, hole_type = Word16Hole},Value (Word32Value 56193989),Hole {byte_offset = 22, hole_type = Word16Hole},Value (Word16Value 11915),Value (Word16Value 40188),Value (Word16Value 39351),Value (Word16Value 11338),Value (Word32Value 2947879533),Value (Word16Value 4393),Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word32Value 30960197),Hole {byte_offset = 46, hole_type = Word32Hole},Value (Word32Value 4086078462),Hole {byte_offset = 54, hole_type = Word8Hole},Hole {byte_offset = 55, hole_type = Word16Hole},Value (Word16Value 3488),Value (Word16Value 7548),Value (Word8Value 105),Value (Word8Value 174),Hole {byte_offset = 63, hole_type = Word8Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word16Value 37722),Hole {byte_offset = 70, hole_type = Word32Hole},Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word16Hole},Hole {byte_offset = 77, hole_type = Word32Hole},Value (Word32Value 482082485),Value (Word16Value 27161),Hole {byte_offset = 87, hole_type = Word16Hole},Value (Word8Value 177),Hole {byte_offset = 90, hole_type = Word32Hole},Hole {byte_offset = 94, hole_type = Word32Hole},Value (Word8Value 96),Hole {byte_offset = 99, hole_type = Word32Hole},Value (Word16Value 54299),Value (Word32Value 2952417055),Value (Word16Value 46395),Value (Word16Value 18864),Hole {byte_offset = 113, hole_type = Word16Hole},Value (Word16Value 63558),Hole {byte_offset = 117, hole_type = Word16Hole},Value (Word32Value 1082928031),Value (Word16Value 21962),Value (Word8Value 253),Hole {byte_offset = 126, hole_type = Word16Hole},Hole {byte_offset = 128, hole_type = Word8Hole},Value (Word16Value 30797),Hole {byte_offset = 131, hole_type = Word16Hole},Value (Word32Value 2802360407),Hole {byte_offset = 137, hole_type = Word16Hole},Value (Word32Value 2245310693),Value (Word8Value 55),Hole {byte_offset = 144, hole_type = Word32Hole},Hole {byte_offset = 148, hole_type = Word16Hole},Value (Word32Value 532219476),Value (Word32Value 1435407867),Hole {byte_offset = 158, hole_type = Word8Hole},Hole {byte_offset = 159, hole_type = Word16Hole},Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word16Value 39297),Value (Word32Value 1635586197),Hole {byte_offset = 171, hole_type = Word32Hole},Value (Word16Value 46608),Value (Word32Value 2656911673),Hole {byte_offset = 181, hole_type = Word32Hole},Hole {byte_offset = 185, hole_type = Word32Hole},Value (Word16Value 30924),Value (Word8Value 221),Value (Word16Value 64721),Hole {byte_offset = 194, hole_type = Word16Hole},Value (Word16Value 21266),Value (Word16Value 5392)]}
