{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase2 where
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
    v_1 :: Word8 <- des
    51808 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    v_3 :: Word8 <- des
    584486432 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    v_6 :: Word16 <- des_word16_be
    v_7 :: Word16 <- des_word16_be
    34546 :: Word16 <- des_word16_be
    v_8 :: Word32 <- des_word32_be
    157 :: Word8 <- des
    923762175 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    1725 :: Word16 <- des_word16_be
    1327671739 :: Word32 <- des_word32_be
    v_10 :: Word8 <- des
    v_11 :: Word32 <- des_word32_be
    61918 :: Word16 <- des_word16_be
    30617 :: Word16 <- des_word16_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word8 <- des
    845 :: Word16 <- des_word16_be
    v_14 :: Word32 <- des_word32_be
    35 :: Word8 <- des
    182 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    static_return  [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 ] = vs 
    ser v_0
    ser v_1
    ser_word16_be 51808
    ser v_2
    ser v_3
    ser_word32_be 584486432
    ser v_4
    ser v_5
    ser_word16_be v_6
    ser_word16_be v_7
    ser_word16_be 34546
    ser_word32_be v_8
    ser (157 :: Word8)
    ser_word32_be 923762175
    ser v_9
    ser_word16_be 1725
    ser_word32_be 1327671739
    ser v_10
    ser_word32_be v_11
    ser_word16_be 61918
    ser_word16_be 30617
    ser_word16_be v_12
    ser v_13
    ser_word16_be 845
    ser_word32_be v_14
    ser (35 :: Word8)
    ser (182 :: Word8)
    ser_word32_be v_15
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word8Hole},Value (Word16Value 51808),Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Value (Word32Value 584486432),Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word8Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Hole {byte_offset = 14, hole_type = Word16Hole},Value (Word16Value 34546),Hole {byte_offset = 18, hole_type = Word32Hole},Value (Word8Value 157),Value (Word32Value 923762175),Hole {byte_offset = 27, hole_type = Word8Hole},Value (Word16Value 1725),Value (Word32Value 1327671739),Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word16Value 61918),Value (Word16Value 30617),Hole {byte_offset = 43, hole_type = Word16Hole},Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word16Value 845),Hole {byte_offset = 48, hole_type = Word32Hole},Value (Word8Value 35),Value (Word8Value 182),Hole {byte_offset = 54, hole_type = Word32Hole}]}
