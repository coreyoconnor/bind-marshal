{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase1 where
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
    v_0 :: Word32 <- getWord32be
    154 :: Word8 <- getWord8
    35821 :: Word16 <- getWord16be
    28043 :: Word16 <- getWord16be
    v_1 :: Word16 <- getWord16be
    4743 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    95 :: Word8 <- getWord8
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    v_6 :: Word8 <- getWord8
    2649489728 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    1221932603 :: Word32 <- getWord32be
    134 :: Word8 <- getWord8
    v_8 :: Word8 <- getWord8
    v_9 :: Word16 <- getWord16be
    14 :: Word8 <- getWord8
    2988508778 :: Word32 <- getWord32be
    v_10 :: Word8 <- getWord8
    v_11 :: Word8 <- getWord8
    34 :: Word8 <- getWord8
    211 :: Word8 <- getWord8
    3173361796 :: Word32 <- getWord32be
    v_12 :: Word8 <- getWord8
    v_13 :: Word32 <- getWord32be
    80 :: Word8 <- getWord8
    v_14 :: Word32 <- getWord32be
    v_15 :: Word16 <- getWord16be
    57586 :: Word16 <- getWord16be
    3713386968 :: Word32 <- getWord32be
    16937 :: Word16 <- getWord16be
    149 :: Word8 <- getWord8
    v_16 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    32040 :: Word16 <- getWord16be
    v_18 :: Word32 <- getWord32be
    v_19 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    v_21 :: Word8 <- getWord8
    2027031964 :: Word32 <- getWord32be
    167 :: Word8 <- getWord8
    16713 :: Word16 <- getWord16be
    1048854794 :: Word32 <- getWord32be
    3122366528 :: Word32 <- getWord32be
    v_22 :: Word8 <- getWord8
    4204638615 :: Word32 <- getWord32be
    v_23 :: Word32 <- getWord32be
    v_24 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 ] = vs 
    putWord32be v_0
    putWord8 (154 :: Word8)
    putWord16be 35821
    putWord16be 28043
    putWord16be v_1
    putWord16be 4743
    putWord8 v_2
    putWord32be v_3
    putWord8 (95 :: Word8)
    putWord8 v_4
    putWord8 v_5
    putWord8 v_6
    putWord32be 2649489728
    putWord8 v_7
    putWord32be 1221932603
    putWord8 (134 :: Word8)
    putWord8 v_8
    putWord16be v_9
    putWord8 (14 :: Word8)
    putWord32be 2988508778
    putWord8 v_10
    putWord8 v_11
    putWord8 (34 :: Word8)
    putWord8 (211 :: Word8)
    putWord32be 3173361796
    putWord8 v_12
    putWord32be v_13
    putWord8 (80 :: Word8)
    putWord32be v_14
    putWord16be v_15
    putWord16be 57586
    putWord32be 3713386968
    putWord16be 16937
    putWord8 (149 :: Word8)
    putWord8 v_16
    putWord32be v_17
    putWord16be 32040
    putWord32be v_18
    putWord8 v_19
    putWord8 v_20
    putWord8 v_21
    putWord32be 2027031964
    putWord8 (167 :: Word8)
    putWord16be 16713
    putWord32be 1048854794
    putWord32be 3122366528
    putWord8 v_22
    putWord32be 4204638615
    putWord32be v_23
    putWord16be v_24
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word8Value 154),Value (Word16Value 35821),Value (Word16Value 28043),Hole {byte_offset = 9, hole_type = Word16Hole},Value (Word16Value 4743),Hole {byte_offset = 13, hole_type = Word8Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Value (Word8Value 95),Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Value (Word32Value 2649489728),Hole {byte_offset = 26, hole_type = Word8Hole},Value (Word32Value 1221932603),Value (Word8Value 134),Hole {byte_offset = 32, hole_type = Word8Hole},Hole {byte_offset = 33, hole_type = Word16Hole},Value (Word8Value 14),Value (Word32Value 2988508778),Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word8Hole},Value (Word8Value 34),Value (Word8Value 211),Value (Word32Value 3173361796),Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word8Value 80),Hole {byte_offset = 54, hole_type = Word32Hole},Hole {byte_offset = 58, hole_type = Word16Hole},Value (Word16Value 57586),Value (Word32Value 3713386968),Value (Word16Value 16937),Value (Word8Value 149),Hole {byte_offset = 69, hole_type = Word8Hole},Hole {byte_offset = 70, hole_type = Word32Hole},Value (Word16Value 32040),Hole {byte_offset = 76, hole_type = Word32Hole},Hole {byte_offset = 80, hole_type = Word8Hole},Hole {byte_offset = 81, hole_type = Word8Hole},Hole {byte_offset = 82, hole_type = Word8Hole},Value (Word32Value 2027031964),Value (Word8Value 167),Value (Word16Value 16713),Value (Word32Value 1048854794),Value (Word32Value 3122366528),Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word32Value 4204638615),Hole {byte_offset = 103, hole_type = Word32Hole},Hole {byte_offset = 107, hole_type = Word16Hole}]}
