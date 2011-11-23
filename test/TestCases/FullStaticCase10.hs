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
    637575985 :: Word32 <- des_word32_be
    2869267141 :: Word32 <- des_word32_be
    402200364 :: Word32 <- des_word32_be
    1120196455 :: Word32 <- des_word32_be
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    v_2 :: Word32 <- des_word32_be
    152 :: Word8 <- des
    67 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    8068 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    170 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word8 <- des
    16 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    13733 :: Word16 <- des_word16_be
    46764 :: Word16 <- des_word16_be
    v_9 :: Word32 <- des_word32_be
    1003588791 :: Word32 <- des_word32_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word8 <- des
    1101641789 :: Word32 <- des_word32_be
    1405233914 :: Word32 <- des_word32_be
    v_13 :: Word32 <- des_word32_be
    224 :: Word8 <- des
    v_14 :: Word16 <- des_word16_be
    210 :: Word8 <- des
    935776401 :: Word32 <- des_word32_be
    143 :: Word8 <- des
    140 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word32 <- des_word32_be
    v_17 :: Word16 <- des_word16_be
    36 :: Word8 <- des
    v_18 :: Word8 <- des
    13795 :: Word16 <- des_word16_be
    v_19 :: Word16 <- des_word16_be
    7 :: Word8 <- des
    203 :: Word8 <- des
    1395991680 :: Word32 <- des_word32_be
    61422 :: Word16 <- des_word16_be
    v_20 :: Word16 <- des_word16_be
    v_21 :: Word32 <- des_word32_be
    61841 :: Word16 <- des_word16_be
    v_22 :: Word32 <- des_word32_be
    return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 ] = vs 
    ser_word32_be 637575985
    ser_word32_be 2869267141
    ser_word32_be 402200364
    ser_word32_be 1120196455
    ser_word32_be v_0
    ser v_1
    ser_word32_be v_2
    ser (152 :: Word8)
    ser (67 :: Word8)
    ser_word32_be v_3
    ser_word16_be 8068
    ser_word32_be v_4
    ser (170 :: Word8)
    ser_word32_be v_5
    ser v_6
    ser (16 :: Word8)
    ser_word32_be v_7
    ser_word16_be v_8
    ser_word16_be 13733
    ser_word16_be 46764
    ser_word32_be v_9
    ser_word32_be 1003588791
    ser_word32_be v_10
    ser_word16_be v_11
    ser v_12
    ser_word32_be 1101641789
    ser_word32_be 1405233914
    ser_word32_be v_13
    ser (224 :: Word8)
    ser_word16_be v_14
    ser (210 :: Word8)
    ser_word32_be 935776401
    ser (143 :: Word8)
    ser (140 :: Word8)
    ser_word32_be v_15
    ser_word32_be v_16
    ser_word16_be v_17
    ser (36 :: Word8)
    ser v_18
    ser_word16_be 13795
    ser_word16_be v_19
    ser (7 :: Word8)
    ser (203 :: Word8)
    ser_word32_be 1395991680
    ser_word16_be 61422
    ser_word16_be v_20
    ser_word32_be v_21
    ser_word16_be 61841
    ser_word32_be v_22
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 637575985),Value (Word32Value 2869267141),Value (Word32Value 402200364),Value (Word32Value 1120196455),Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Value (Word8Value 152),Value (Word8Value 67),Hole {byte_offset = 27, hole_type = Word32Hole},Value (Word16Value 8068),Hole {byte_offset = 33, hole_type = Word32Hole},Value (Word8Value 170),Hole {byte_offset = 38, hole_type = Word32Hole},Hole {byte_offset = 42, hole_type = Word8Hole},Value (Word8Value 16),Hole {byte_offset = 44, hole_type = Word32Hole},Hole {byte_offset = 48, hole_type = Word16Hole},Value (Word16Value 13733),Value (Word16Value 46764),Hole {byte_offset = 54, hole_type = Word32Hole},Value (Word32Value 1003588791),Hole {byte_offset = 62, hole_type = Word32Hole},Hole {byte_offset = 66, hole_type = Word16Hole},Hole {byte_offset = 68, hole_type = Word8Hole},Value (Word32Value 1101641789),Value (Word32Value 1405233914),Hole {byte_offset = 77, hole_type = Word32Hole},Value (Word8Value 224),Hole {byte_offset = 82, hole_type = Word16Hole},Value (Word8Value 210),Value (Word32Value 935776401),Value (Word8Value 143),Value (Word8Value 140),Hole {byte_offset = 91, hole_type = Word32Hole},Hole {byte_offset = 95, hole_type = Word32Hole},Hole {byte_offset = 99, hole_type = Word16Hole},Value (Word8Value 36),Hole {byte_offset = 102, hole_type = Word8Hole},Value (Word16Value 13795),Hole {byte_offset = 105, hole_type = Word16Hole},Value (Word8Value 7),Value (Word8Value 203),Value (Word32Value 1395991680),Value (Word16Value 61422),Hole {byte_offset = 115, hole_type = Word16Hole},Hole {byte_offset = 117, hole_type = Word32Hole},Value (Word16Value 61841),Hole {byte_offset = 123, hole_type = Word32Hole}]}
