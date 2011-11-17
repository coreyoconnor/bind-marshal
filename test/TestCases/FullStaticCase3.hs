{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase3 where
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
    20 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    248 :: Word8 <- des
    15024 :: Word16 <- des_word16_be
    48 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    v_10 :: Word8 <- des
    224 :: Word8 <- des
    68 :: Word8 <- des
    2432001079 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    3398142919 :: Word32 <- des_word32_be
    135 :: Word8 <- des
    1274115638 :: Word32 <- des_word32_be
    v_15 :: Word8 <- des
    280099138 :: Word32 <- des_word32_be
    49681 :: Word16 <- des_word16_be
    v_16 :: Word32 <- des_word32_be
    187 :: Word8 <- des
    47 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    v_18 :: Word16 <- des_word16_be
    3678742955 :: Word32 <- des_word32_be
    7168 :: Word16 <- des_word16_be
    253 :: Word8 <- des
    3508141405 :: Word32 <- des_word32_be
    30 :: Word8 <- des
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word8 <- des
    v_21 :: Word32 <- des_word32_be
    v_22 :: Word8 <- des
    218 :: Word8 <- des
    v_23 :: Word8 <- des
    1459475151 :: Word32 <- des_word32_be
    v_24 :: Word8 <- des
    v_25 :: Word32 <- des_word32_be
    v_26 :: Word8 <- des
    v_27 :: Word16 <- des_word16_be
    10985 :: Word16 <- des_word16_be
    59111 :: Word16 <- des_word16_be
    3427777785 :: Word32 <- des_word32_be
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word8 <- des
    v_30 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 ] = vs 
    ser (20 :: Word8)
    ser_word32_be v_0
    ser_word16_be v_1
    ser v_2
    ser_word16_be v_3
    ser v_4
    ser_word32_be v_5
    ser_word32_be v_6
    ser v_7
    ser (248 :: Word8)
    ser_word16_be 15024
    ser (48 :: Word8)
    ser_word32_be v_8
    ser v_9
    ser v_10
    ser (224 :: Word8)
    ser (68 :: Word8)
    ser_word32_be 2432001079
    ser_word32_be v_11
    ser_word16_be v_12
    ser_word32_be v_13
    ser v_14
    ser_word32_be 3398142919
    ser (135 :: Word8)
    ser_word32_be 1274115638
    ser v_15
    ser_word32_be 280099138
    ser_word16_be 49681
    ser_word32_be v_16
    ser (187 :: Word8)
    ser (47 :: Word8)
    ser_word32_be v_17
    ser_word16_be v_18
    ser_word32_be 3678742955
    ser_word16_be 7168
    ser (253 :: Word8)
    ser_word32_be 3508141405
    ser (30 :: Word8)
    ser_word32_be v_19
    ser v_20
    ser_word32_be v_21
    ser v_22
    ser (218 :: Word8)
    ser v_23
    ser_word32_be 1459475151
    ser v_24
    ser_word32_be v_25
    ser v_26
    ser_word16_be v_27
    ser_word16_be 10985
    ser_word16_be 59111
    ser_word32_be 3427777785
    ser_word16_be v_28
    ser v_29
    ser_word16_be v_30
    static_return ()

static_structure = StaticStructure {properties = [Value (Word8Value 20),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word16Hole},Hole {byte_offset = 7, hole_type = Word8Hole},Hole {byte_offset = 8, hole_type = Word16Hole},Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Value (Word8Value 248),Value (Word16Value 15024),Value (Word8Value 48),Hole {byte_offset = 24, hole_type = Word32Hole},Hole {byte_offset = 28, hole_type = Word8Hole},Hole {byte_offset = 29, hole_type = Word8Hole},Value (Word8Value 224),Value (Word8Value 68),Value (Word32Value 2432001079),Hole {byte_offset = 36, hole_type = Word32Hole},Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Hole {byte_offset = 46, hole_type = Word8Hole},Value (Word32Value 3398142919),Value (Word8Value 135),Value (Word32Value 1274115638),Hole {byte_offset = 56, hole_type = Word8Hole},Value (Word32Value 280099138),Value (Word16Value 49681),Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word8Value 187),Value (Word8Value 47),Hole {byte_offset = 69, hole_type = Word32Hole},Hole {byte_offset = 73, hole_type = Word16Hole},Value (Word32Value 3678742955),Value (Word16Value 7168),Value (Word8Value 253),Value (Word32Value 3508141405),Value (Word8Value 30),Hole {byte_offset = 87, hole_type = Word32Hole},Hole {byte_offset = 91, hole_type = Word8Hole},Hole {byte_offset = 92, hole_type = Word32Hole},Hole {byte_offset = 96, hole_type = Word8Hole},Value (Word8Value 218),Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word32Value 1459475151),Hole {byte_offset = 103, hole_type = Word8Hole},Hole {byte_offset = 104, hole_type = Word32Hole},Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word16Hole},Value (Word16Value 10985),Value (Word16Value 59111),Value (Word32Value 3427777785),Hole {byte_offset = 119, hole_type = Word16Hole},Hole {byte_offset = 121, hole_type = Word8Hole},Hole {byte_offset = 122, hole_type = Word16Hole}]}
