{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase14 where
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
    v_0 :: Word16 <- getWord16be
    21334 :: Word16 <- getWord16be
    v_1 :: Word8 <- getWord8
    3964610579 :: Word32 <- getWord32be
    v_2 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    v_4 :: Word8 <- getWord8
    1012347459 :: Word32 <- getWord32be
    47061 :: Word16 <- getWord16be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    52853621 :: Word32 <- getWord32be
    v_9 :: Word32 <- getWord32be
    2185409200 :: Word32 <- getWord32be
    v_10 :: Word32 <- getWord32be
    664 :: Word16 <- getWord16be
    1664872066 :: Word32 <- getWord32be
    45 :: Word8 <- getWord8
    1516387776 :: Word32 <- getWord32be
    v_11 :: Word16 <- getWord16be
    61692 :: Word16 <- getWord16be
    85 :: Word8 <- getWord8
    v_12 :: Word32 <- getWord32be
    155 :: Word8 <- getWord8
    return  [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 ] = vs 
    putWord16be v_0
    putWord16be 21334
    putWord8 v_1
    putWord32be 3964610579
    putWord8 v_2
    putWord16be v_3
    putWord8 v_4
    putWord32be 1012347459
    putWord16be 47061
    putWord16be v_5
    putWord8 v_6
    putWord32be v_7
    putWord16be v_8
    putWord32be 52853621
    putWord32be v_9
    putWord32be 2185409200
    putWord32be v_10
    putWord16be 664
    putWord32be 1664872066
    putWord8 (45 :: Word8)
    putWord32be 1516387776
    putWord16be v_11
    putWord16be 61692
    putWord8 (85 :: Word8)
    putWord32be v_12
    putWord8 (155 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word16Value 21334),Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word32Value 3964610579),Hole {byte_offset = 9, hole_type = Word8Hole},Hole {byte_offset = 10, hole_type = Word16Hole},Hole {byte_offset = 12, hole_type = Word8Hole},Value (Word32Value 1012347459),Value (Word16Value 47061),Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Hole {byte_offset = 26, hole_type = Word16Hole},Value (Word32Value 52853621),Hole {byte_offset = 32, hole_type = Word32Hole},Value (Word32Value 2185409200),Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word16Value 664),Value (Word32Value 1664872066),Value (Word8Value 45),Value (Word32Value 1516387776),Hole {byte_offset = 55, hole_type = Word16Hole},Value (Word16Value 61692),Value (Word8Value 85),Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word8Value 155)]}
