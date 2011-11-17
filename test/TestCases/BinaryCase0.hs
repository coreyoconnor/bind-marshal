{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase0 where
import Control.Applicative
import Control.DeepSeq
import Control.Monad

import Data.Binary.Put
import Data.Binary.Get
import qualified Data.ByteString.Lazy as BS
import qualified Data.ByteString.Lazy.Internal as L
import qualified Data.ByteString.Internal as S
import Data.Monoid

import ArbMarshal
import ArbMarshal.GenCode.Utils

import Data.Word

des_static_structure = do 
    v_0 :: Word8 <- getWord8
    v_1 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    58043 :: Word16 <- getWord16be
    v_6 :: Word32 <- getWord32be
    v_7 :: Word16 <- getWord16be
    v_8 :: Word32 <- getWord32be
    v_9 :: Word16 <- getWord16be
    v_10 :: Word8 <- getWord8
    5593 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    139 :: Word8 <- getWord8
    v_12 :: Word16 <- getWord16be
    118 :: Word8 <- getWord8
    3155942669 :: Word32 <- getWord32be
    3396610798 :: Word32 <- getWord32be
    v_13 :: Word16 <- getWord16be
    v_14 :: Word8 <- getWord8
    7864 :: Word16 <- getWord16be
    829870270 :: Word32 <- getWord32be
    929140410 :: Word32 <- getWord32be
    48 :: Word8 <- getWord8
    v_15 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    v_17 :: Word16 <- getWord16be
    v_18 :: Word8 <- getWord8
    10804 :: Word16 <- getWord16be
    v_19 :: Word16 <- getWord16be
    v_20 :: Word32 <- getWord32be
    254 :: Word8 <- getWord8
    v_21 :: Word32 <- getWord32be
    15321 :: Word16 <- getWord16be
    12803 :: Word16 <- getWord16be
    v_22 :: Word16 <- getWord16be
    2923762974 :: Word32 <- getWord32be
    56885 :: Word16 <- getWord16be
    v_23 :: Word32 <- getWord32be
    v_24 :: Word16 <- getWord16be
    v_25 :: Word8 <- getWord8
    v_26 :: Word32 <- getWord32be
    v_27 :: Word16 <- getWord16be
    v_28 :: Word16 <- getWord16be
    1497266687 :: Word32 <- getWord32be
    v_29 :: Word32 <- getWord32be
    v_30 :: Word16 <- getWord16be
    v_31 :: Word32 <- getWord32be
    v_32 :: Word8 <- getWord8
    37028 :: Word16 <- getWord16be
    v_33 :: Word32 <- getWord32be
    58694 :: Word16 <- getWord16be
    v_34 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word16Value v_7 , Word32Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word8Value v_32 , Word32Value v_33 , Word8Value v_34 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word16Value v_7 , Word32Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word8Value v_32 , Word32Value v_33 , Word8Value v_34 ] = vs 
    putWord8 v_0
    putWord16be v_1
    putWord8 v_2
    putWord32be v_3
    putWord8 v_4
    putWord32be v_5
    putWord16be 58043
    putWord32be v_6
    putWord16be v_7
    putWord32be v_8
    putWord16be v_9
    putWord8 v_10
    putWord16be 5593
    putWord8 v_11
    putWord8 (139 :: Word8)
    putWord16be v_12
    putWord8 (118 :: Word8)
    putWord32be 3155942669
    putWord32be 3396610798
    putWord16be v_13
    putWord8 v_14
    putWord16be 7864
    putWord32be 829870270
    putWord32be 929140410
    putWord8 (48 :: Word8)
    putWord8 v_15
    putWord32be v_16
    putWord16be v_17
    putWord8 v_18
    putWord16be 10804
    putWord16be v_19
    putWord32be v_20
    putWord8 (254 :: Word8)
    putWord32be v_21
    putWord16be 15321
    putWord16be 12803
    putWord16be v_22
    putWord32be 2923762974
    putWord16be 56885
    putWord32be v_23
    putWord16be v_24
    putWord8 v_25
    putWord32be v_26
    putWord16be v_27
    putWord16be v_28
    putWord32be 1497266687
    putWord32be v_29
    putWord16be v_30
    putWord32be v_31
    putWord8 v_32
    putWord16be 37028
    putWord32be v_33
    putWord16be 58694
    putWord8 v_34
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Hole {byte_offset = 4, hole_type = Word32Hole},Hole {byte_offset = 8, hole_type = Word8Hole},Hole {byte_offset = 9, hole_type = Word32Hole},Value (Word16Value 58043),Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word8Hole},Value (Word16Value 5593),Hole {byte_offset = 30, hole_type = Word8Hole},Value (Word8Value 139),Hole {byte_offset = 32, hole_type = Word16Hole},Value (Word8Value 118),Value (Word32Value 3155942669),Value (Word32Value 3396610798),Hole {byte_offset = 43, hole_type = Word16Hole},Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word16Value 7864),Value (Word32Value 829870270),Value (Word32Value 929140410),Value (Word8Value 48),Hole {byte_offset = 57, hole_type = Word8Hole},Hole {byte_offset = 58, hole_type = Word32Hole},Hole {byte_offset = 62, hole_type = Word16Hole},Hole {byte_offset = 64, hole_type = Word8Hole},Value (Word16Value 10804),Hole {byte_offset = 67, hole_type = Word16Hole},Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word8Value 254),Hole {byte_offset = 74, hole_type = Word32Hole},Value (Word16Value 15321),Value (Word16Value 12803),Hole {byte_offset = 82, hole_type = Word16Hole},Value (Word32Value 2923762974),Value (Word16Value 56885),Hole {byte_offset = 90, hole_type = Word32Hole},Hole {byte_offset = 94, hole_type = Word16Hole},Hole {byte_offset = 96, hole_type = Word8Hole},Hole {byte_offset = 97, hole_type = Word32Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Hole {byte_offset = 103, hole_type = Word16Hole},Value (Word32Value 1497266687),Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word16Hole},Hole {byte_offset = 115, hole_type = Word32Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Value (Word16Value 37028),Hole {byte_offset = 122, hole_type = Word32Hole},Value (Word16Value 58694),Hole {byte_offset = 128, hole_type = Word8Hole}]}
