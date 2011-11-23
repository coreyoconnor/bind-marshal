{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase3 where
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
    240 :: Word8 <- getWord8
    3497447960 :: Word32 <- getWord32be
    218 :: Word8 <- getWord8
    46834 :: Word16 <- getWord16be
    123 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    753560720 :: Word32 <- getWord32be
    58 :: Word8 <- getWord8
    235 :: Word8 <- getWord8
    62 :: Word8 <- getWord8
    200 :: Word8 <- getWord8
    v_4 :: Word16 <- getWord16be
    1679201761 :: Word32 <- getWord32be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    2035653963 :: Word32 <- getWord32be
    v_8 :: Word8 <- getWord8
    3180315909 :: Word32 <- getWord32be
    57239 :: Word16 <- getWord16be
    1046587945 :: Word32 <- getWord32be
    134 :: Word8 <- getWord8
    3897795697 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    60603 :: Word16 <- getWord16be
    7108 :: Word16 <- getWord16be
    22 :: Word8 <- getWord8
    176157480 :: Word32 <- getWord32be
    v_10 :: Word16 <- getWord16be
    3998927610 :: Word32 <- getWord32be
    79 :: Word8 <- getWord8
    221 :: Word8 <- getWord8
    v_11 :: Word8 <- getWord8
    90 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    2705159408 :: Word32 <- getWord32be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word16 <- getWord16be
    4031608912 :: Word32 <- getWord32be
    84 :: Word8 <- getWord8
    v_15 :: Word16 <- getWord16be
    v_16 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word32Value v_16 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word32Value v_16 ] = vs 
    putWord8 (240 :: Word8)
    putWord32be 3497447960
    putWord8 (218 :: Word8)
    putWord16be 46834
    putWord8 (123 :: Word8)
    putWord32be v_0
    putWord16be v_1
    putWord32be v_2
    putWord16be v_3
    putWord32be 753560720
    putWord8 (58 :: Word8)
    putWord8 (235 :: Word8)
    putWord8 (62 :: Word8)
    putWord8 (200 :: Word8)
    putWord16be v_4
    putWord32be 1679201761
    putWord16be v_5
    putWord8 v_6
    putWord32be v_7
    putWord32be 2035653963
    putWord8 v_8
    putWord32be 3180315909
    putWord16be 57239
    putWord32be 1046587945
    putWord8 (134 :: Word8)
    putWord32be 3897795697
    putWord8 v_9
    putWord16be 60603
    putWord16be 7108
    putWord8 (22 :: Word8)
    putWord32be 176157480
    putWord16be v_10
    putWord32be 3998927610
    putWord8 (79 :: Word8)
    putWord8 (221 :: Word8)
    putWord8 v_11
    putWord8 (90 :: Word8)
    putWord8 v_12
    putWord32be 2705159408
    putWord32be v_13
    putWord16be v_14
    putWord32be 4031608912
    putWord8 (84 :: Word8)
    putWord16be v_15
    putWord32be v_16
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 240),Value (Word32Value 3497447960),Value (Word8Value 218),Value (Word16Value 46834),Value (Word8Value 123),Hole {byte_offset = 9, hole_type = Word32Hole},Hole {byte_offset = 13, hole_type = Word16Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word16Hole},Value (Word32Value 753560720),Value (Word8Value 58),Value (Word8Value 235),Value (Word8Value 62),Value (Word8Value 200),Hole {byte_offset = 29, hole_type = Word16Hole},Value (Word32Value 1679201761),Hole {byte_offset = 35, hole_type = Word16Hole},Hole {byte_offset = 37, hole_type = Word8Hole},Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word32Value 2035653963),Hole {byte_offset = 46, hole_type = Word8Hole},Value (Word32Value 3180315909),Value (Word16Value 57239),Value (Word32Value 1046587945),Value (Word8Value 134),Value (Word32Value 3897795697),Hole {byte_offset = 62, hole_type = Word8Hole},Value (Word16Value 60603),Value (Word16Value 7108),Value (Word8Value 22),Value (Word32Value 176157480),Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word32Value 3998927610),Value (Word8Value 79),Value (Word8Value 221),Hole {byte_offset = 80, hole_type = Word8Hole},Value (Word8Value 90),Hole {byte_offset = 82, hole_type = Word8Hole},Value (Word32Value 2705159408),Hole {byte_offset = 87, hole_type = Word32Hole},Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word32Value 4031608912),Value (Word8Value 84),Hole {byte_offset = 98, hole_type = Word16Hole},Hole {byte_offset = 100, hole_type = Word32Hole}]}
