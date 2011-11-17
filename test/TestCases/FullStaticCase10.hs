{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase10 where
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
    2320797707 :: Word32 <- des_word32_be
    v_0 :: Word16 <- des_word16_be
    1592610046 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word32 <- des_word32_be
    3159356267 :: Word32 <- des_word32_be
    609111511 :: Word32 <- des_word32_be
    4147755825 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    184617332 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word32 <- des_word32_be
    36091 :: Word16 <- des_word16_be
    40995 :: Word16 <- des_word16_be
    4840 :: Word16 <- des_word16_be
    38 :: Word8 <- des
    v_7 :: Word8 <- des
    3139819629 :: Word32 <- des_word32_be
    v_8 :: Word8 <- des
    v_9 :: Word32 <- des_word32_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    1279611787 :: Word32 <- des_word32_be
    30933886 :: Word32 <- des_word32_be
    63640 :: Word16 <- des_word16_be
    36919 :: Word16 <- des_word16_be
    95 :: Word8 <- des
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word8 <- des
    22 :: Word8 <- des
    44432 :: Word16 <- des_word16_be
    58993 :: Word16 <- des_word16_be
    12266 :: Word16 <- des_word16_be
    212 :: Word8 <- des
    3512857190 :: Word32 <- des_word32_be
    v_14 :: Word32 <- des_word32_be
    v_15 :: Word8 <- des
    v_16 :: Word16 <- des_word16_be
    222 :: Word8 <- des
    41154 :: Word16 <- des_word16_be
    3046170939 :: Word32 <- des_word32_be
    225 :: Word8 <- des
    v_17 :: Word8 <- des
    184 :: Word8 <- des
    3778459970 :: Word32 <- des_word32_be
    24998 :: Word16 <- des_word16_be
    v_18 :: Word32 <- des_word32_be
    3756643901 :: Word32 <- des_word32_be
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word8 <- des
    v_21 :: Word32 <- des_word32_be
    409939453 :: Word32 <- des_word32_be
    v_22 :: Word16 <- des_word16_be
    9502 :: Word16 <- des_word16_be
    63 :: Word8 <- des
    v_23 :: Word16 <- des_word16_be
    v_24 :: Word16 <- des_word16_be
    2696676264 :: Word32 <- des_word32_be
    v_25 :: Word32 <- des_word32_be
    203 :: Word8 <- des
    33172 :: Word16 <- des_word16_be
    static_return  [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 ] = vs 
    ser_word32_be 2320797707
    ser_word16_be v_0
    ser_word32_be 1592610046
    ser_word16_be v_1
    ser_word32_be v_2
    ser_word32_be 3159356267
    ser_word32_be 609111511
    ser_word32_be 4147755825
    ser_word16_be v_3
    ser_word32_be 184617332
    ser v_4
    ser_word32_be v_5
    ser_word32_be v_6
    ser_word16_be 36091
    ser_word16_be 40995
    ser_word16_be 4840
    ser (38 :: Word8)
    ser v_7
    ser_word32_be 3139819629
    ser v_8
    ser_word32_be v_9
    ser_word32_be v_10
    ser_word32_be v_11
    ser_word32_be 1279611787
    ser_word32_be 30933886
    ser_word16_be 63640
    ser_word16_be 36919
    ser (95 :: Word8)
    ser_word16_be v_12
    ser v_13
    ser (22 :: Word8)
    ser_word16_be 44432
    ser_word16_be 58993
    ser_word16_be 12266
    ser (212 :: Word8)
    ser_word32_be 3512857190
    ser_word32_be v_14
    ser v_15
    ser_word16_be v_16
    ser (222 :: Word8)
    ser_word16_be 41154
    ser_word32_be 3046170939
    ser (225 :: Word8)
    ser v_17
    ser (184 :: Word8)
    ser_word32_be 3778459970
    ser_word16_be 24998
    ser_word32_be v_18
    ser_word32_be 3756643901
    ser_word32_be v_19
    ser v_20
    ser_word32_be v_21
    ser_word32_be 409939453
    ser_word16_be v_22
    ser_word16_be 9502
    ser (63 :: Word8)
    ser_word16_be v_23
    ser_word16_be v_24
    ser_word32_be 2696676264
    ser_word32_be v_25
    ser (203 :: Word8)
    ser_word16_be 33172
    static_return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2320797707),Hole {byte_offset = 4, hole_type = Word16Hole},Value (Word32Value 1592610046),Hole {byte_offset = 10, hole_type = Word16Hole},Hole {byte_offset = 12, hole_type = Word32Hole},Value (Word32Value 3159356267),Value (Word32Value 609111511),Value (Word32Value 4147755825),Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word32Value 184617332),Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Hole {byte_offset = 39, hole_type = Word32Hole},Value (Word16Value 36091),Value (Word16Value 40995),Value (Word16Value 4840),Value (Word8Value 38),Hole {byte_offset = 50, hole_type = Word8Hole},Value (Word32Value 3139819629),Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word32Value 1279611787),Value (Word32Value 30933886),Value (Word16Value 63640),Value (Word16Value 36919),Value (Word8Value 95),Hole {byte_offset = 81, hole_type = Word16Hole},Hole {byte_offset = 83, hole_type = Word8Hole},Value (Word8Value 22),Value (Word16Value 44432),Value (Word16Value 58993),Value (Word16Value 12266),Value (Word8Value 212),Value (Word32Value 3512857190),Hole {byte_offset = 96, hole_type = Word32Hole},Hole {byte_offset = 100, hole_type = Word8Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Value (Word8Value 222),Value (Word16Value 41154),Value (Word32Value 3046170939),Value (Word8Value 225),Hole {byte_offset = 111, hole_type = Word8Hole},Value (Word8Value 184),Value (Word32Value 3778459970),Value (Word16Value 24998),Hole {byte_offset = 119, hole_type = Word32Hole},Value (Word32Value 3756643901),Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word8Hole},Hole {byte_offset = 132, hole_type = Word32Hole},Value (Word32Value 409939453),Hole {byte_offset = 140, hole_type = Word16Hole},Value (Word16Value 9502),Value (Word8Value 63),Hole {byte_offset = 145, hole_type = Word16Hole},Hole {byte_offset = 147, hole_type = Word16Hole},Value (Word32Value 2696676264),Hole {byte_offset = 153, hole_type = Word32Hole},Value (Word8Value 203),Value (Word16Value 33172)]}
