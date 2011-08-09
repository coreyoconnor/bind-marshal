{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase2 where
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
    50502 :: Word16 <- getWord16be
    20537 :: Word16 <- getWord16be
    50431 :: Word16 <- getWord16be
    1081150007 :: Word32 <- getWord32be
    v_0 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    857287595 :: Word32 <- getWord32be
    v_3 :: Word8 <- getWord8
    v_4 :: Word32 <- getWord32be
    194 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    2237461494 :: Word32 <- getWord32be
    v_6 :: Word32 <- getWord32be
    v_7 :: Word16 <- getWord16be
    v_8 :: Word8 <- getWord8
    v_9 :: Word8 <- getWord8
    v_10 :: Word16 <- getWord16be
    v_11 :: Word16 <- getWord16be
    3393862110 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    37 :: Word8 <- getWord8
    v_13 :: Word8 <- getWord8
    3195848411 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    v_15 :: Word16 <- getWord16be
    v_16 :: Word32 <- getWord32be
    41109 :: Word16 <- getWord16be
    113 :: Word8 <- getWord8
    60594 :: Word16 <- getWord16be
    v_17 :: Word32 <- getWord32be
    202 :: Word8 <- getWord8
    v_18 :: Word8 <- getWord8
    8698 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word32Value v_17 , Word8Value v_18 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word16Value v_15 , Word32Value v_16 , Word32Value v_17 , Word8Value v_18 ] = vs 
    putWord16be 50502
    putWord16be 20537
    putWord16be 50431
    putWord32be 1081150007
    putWord32be v_0
    putWord16be v_1
    putWord8 v_2
    putWord32be 857287595
    putWord8 v_3
    putWord32be v_4
    putWord8 (194 :: Word8)
    putWord16be v_5
    putWord32be 2237461494
    putWord32be v_6
    putWord16be v_7
    putWord8 v_8
    putWord8 v_9
    putWord16be v_10
    putWord16be v_11
    putWord32be 3393862110
    putWord16be v_12
    putWord8 (37 :: Word8)
    putWord8 v_13
    putWord32be 3195848411
    putWord8 v_14
    putWord16be v_15
    putWord32be v_16
    putWord16be 41109
    putWord8 (113 :: Word8)
    putWord16be 60594
    putWord32be v_17
    putWord8 (202 :: Word8)
    putWord8 v_18
    putWord16be 8698
    return ()

static_structure = StaticStructure {properties = [Value (Word16Value 50502),Value (Word16Value 20537),Value (Word16Value 50431),Value (Word32Value 1081150007),Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word16Hole},Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word32Value 857287595),Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Value (Word8Value 194),Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word32Value 2237461494),Hole {byte_offset = 33, hole_type = Word32Hole},Hole {byte_offset = 37, hole_type = Word16Hole},Hole {byte_offset = 39, hole_type = Word8Hole},Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word16Hole},Hole {byte_offset = 43, hole_type = Word16Hole},Value (Word32Value 3393862110),Hole {byte_offset = 49, hole_type = Word16Hole},Value (Word8Value 37),Hole {byte_offset = 52, hole_type = Word8Hole},Value (Word32Value 3195848411),Hole {byte_offset = 57, hole_type = Word8Hole},Hole {byte_offset = 58, hole_type = Word16Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word16Value 41109),Value (Word8Value 113),Value (Word16Value 60594),Hole {byte_offset = 69, hole_type = Word32Hole},Value (Word8Value 202),Hole {byte_offset = 74, hole_type = Word8Hole},Value (Word16Value 8698)]}
