{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase5 where
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
    2561 :: Word16 <- getWord16be
    v_0 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    119 :: Word8 <- getWord8
    235 :: Word8 <- getWord8
    18878 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    3930219187 :: Word32 <- getWord32be
    1110210771 :: Word32 <- getWord32be
    638847133 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    v_4 :: Word16 <- getWord16be
    60152502 :: Word32 <- getWord32be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word16 <- getWord16be
    23715 :: Word16 <- getWord16be
    20154 :: Word16 <- getWord16be
    v_7 :: Word16 <- getWord16be
    198 :: Word8 <- getWord8
    v_8 :: Word16 <- getWord16be
    v_9 :: Word16 <- getWord16be
    49600 :: Word16 <- getWord16be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    v_12 :: Word32 <- getWord32be
    8 :: Word8 <- getWord8
    253 :: Word8 <- getWord8
    227 :: Word8 <- getWord8
    v_13 :: Word16 <- getWord16be
    22548 :: Word16 <- getWord16be
    684539344 :: Word32 <- getWord32be
    60341 :: Word16 <- getWord16be
    151 :: Word8 <- getWord8
    2596289376 :: Word32 <- getWord32be
    v_14 :: Word16 <- getWord16be
    return  [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word16Value v_14 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word16Value v_4 , Word16Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word16Value v_13 , Word16Value v_14 ] = vs 
    putWord16be 2561
    putWord8 v_0
    putWord8 v_1
    putWord8 (119 :: Word8)
    putWord8 (235 :: Word8)
    putWord16be 18878
    putWord8 v_2
    putWord32be 3930219187
    putWord32be 1110210771
    putWord32be 638847133
    putWord16be v_3
    putWord16be v_4
    putWord32be 60152502
    putWord16be v_5
    putWord16be v_6
    putWord16be 23715
    putWord16be 20154
    putWord16be v_7
    putWord8 (198 :: Word8)
    putWord16be v_8
    putWord16be v_9
    putWord16be 49600
    putWord16be v_10
    putWord8 v_11
    putWord32be v_12
    putWord8 (8 :: Word8)
    putWord8 (253 :: Word8)
    putWord8 (227 :: Word8)
    putWord16be v_13
    putWord16be 22548
    putWord32be 684539344
    putWord16be 60341
    putWord8 (151 :: Word8)
    putWord32be 2596289376
    putWord16be v_14
    return ()

static_structure = StaticStructure {properties = [Value (Word16Value 2561),Hole {byte_offset = 2, hole_type = Word8Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Value (Word8Value 119),Value (Word8Value 235),Value (Word16Value 18878),Hole {byte_offset = 8, hole_type = Word8Hole},Value (Word32Value 3930219187),Value (Word32Value 1110210771),Value (Word32Value 638847133),Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word16Hole},Value (Word32Value 60152502),Hole {byte_offset = 29, hole_type = Word16Hole},Hole {byte_offset = 31, hole_type = Word16Hole},Value (Word16Value 23715),Value (Word16Value 20154),Hole {byte_offset = 37, hole_type = Word16Hole},Value (Word8Value 198),Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word16Hole},Value (Word16Value 49600),Hole {byte_offset = 46, hole_type = Word16Hole},Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word8Value 8),Value (Word8Value 253),Value (Word8Value 227),Hole {byte_offset = 56, hole_type = Word16Hole},Value (Word16Value 22548),Value (Word32Value 684539344),Value (Word16Value 60341),Value (Word8Value 151),Value (Word32Value 2596289376),Hole {byte_offset = 71, hole_type = Word16Hole}]}
