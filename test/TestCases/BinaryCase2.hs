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
    203 :: Word8 <- getWord8
    v_0 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    451217082 :: Word32 <- getWord32be
    222 :: Word8 <- getWord8
    v_2 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word32 <- getWord32be
    v_7 :: Word16 <- getWord16be
    36025 :: Word16 <- getWord16be
    v_8 :: Word16 <- getWord16be
    v_9 :: Word8 <- getWord8
    v_10 :: Word8 <- getWord8
    227 :: Word8 <- getWord8
    v_11 :: Word16 <- getWord16be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    47371 :: Word16 <- getWord16be
    v_14 :: Word32 <- getWord32be
    1203508258 :: Word32 <- getWord32be
    1515784887 :: Word32 <- getWord32be
    7797 :: Word16 <- getWord16be
    38008 :: Word16 <- getWord16be
    246 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    9213 :: Word16 <- getWord16be
    v_16 :: Word16 <- getWord16be
    46464 :: Word16 <- getWord16be
    55850 :: Word16 <- getWord16be
    v_17 :: Word16 <- getWord16be
    4023663367 :: Word32 <- getWord32be
    126422238 :: Word32 <- getWord32be
    4093785628 :: Word32 <- getWord32be
    return  [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word8Value v_10 , Word16Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 ] = vs 
    putWord8 (203 :: Word8)
    putWord8 v_0
    putWord32be v_1
    putWord32be 451217082
    putWord8 (222 :: Word8)
    putWord32be v_2
    putWord16be v_3
    putWord32be v_4
    putWord16be v_5
    putWord32be v_6
    putWord16be v_7
    putWord16be 36025
    putWord16be v_8
    putWord8 v_9
    putWord8 v_10
    putWord8 (227 :: Word8)
    putWord16be v_11
    putWord16be v_12
    putWord32be v_13
    putWord16be 47371
    putWord32be v_14
    putWord32be 1203508258
    putWord32be 1515784887
    putWord16be 7797
    putWord16be 38008
    putWord8 (246 :: Word8)
    putWord32be v_15
    putWord16be 9213
    putWord16be v_16
    putWord16be 46464
    putWord16be 55850
    putWord16be v_17
    putWord32be 4023663367
    putWord32be 126422238
    putWord32be 4093785628
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 203),Hole {byte_offset = 1, hole_type = Word8Hole},Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word32Value 451217082),Value (Word8Value 222),Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word16Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word32Hole},Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word16Value 36025),Hole {byte_offset = 31, hole_type = Word16Hole},Hole {byte_offset = 33, hole_type = Word8Hole},Hole {byte_offset = 34, hole_type = Word8Hole},Value (Word8Value 227),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word16Value 47371),Hole {byte_offset = 46, hole_type = Word32Hole},Value (Word32Value 1203508258),Value (Word32Value 1515784887),Value (Word16Value 7797),Value (Word16Value 38008),Value (Word8Value 246),Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word16Value 9213),Hole {byte_offset = 69, hole_type = Word16Hole},Value (Word16Value 46464),Value (Word16Value 55850),Hole {byte_offset = 75, hole_type = Word16Hole},Value (Word32Value 4023663367),Value (Word32Value 126422238),Value (Word32Value 4093785628)]}
