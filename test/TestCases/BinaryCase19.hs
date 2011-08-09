{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase19 where
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
    105 :: Word8 <- getWord8
    65189 :: Word16 <- getWord16be
    245 :: Word8 <- getWord8
    v_0 :: Word8 <- getWord8
    70 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    40784 :: Word16 <- getWord16be
    114 :: Word8 <- getWord8
    235 :: Word8 <- getWord8
    34718 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    144 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    6 :: Word8 <- getWord8
    1553777234 :: Word32 <- getWord32be
    3531265250 :: Word32 <- getWord32be
    v_6 :: Word16 <- getWord16be
    124 :: Word8 <- getWord8
    1333487335 :: Word32 <- getWord32be
    v_7 :: Word16 <- getWord16be
    56770 :: Word16 <- getWord16be
    v_8 :: Word32 <- getWord32be
    v_9 :: Word32 <- getWord32be
    231 :: Word8 <- getWord8
    82 :: Word8 <- getWord8
    v_10 :: Word16 <- getWord16be
    v_11 :: Word32 <- getWord32be
    5440 :: Word16 <- getWord16be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    209 :: Word8 <- getWord8
    233 :: Word8 <- getWord8
    v_14 :: Word16 <- getWord16be
    230 :: Word8 <- getWord8
    v_15 :: Word16 <- getWord16be
    207 :: Word8 <- getWord8
    125 :: Word8 <- getWord8
    23 :: Word8 <- getWord8
    826826017 :: Word32 <- getWord32be
    return  [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 ] = vs 
    putWord8 (105 :: Word8)
    putWord16be 65189
    putWord8 (245 :: Word8)
    putWord8 v_0
    putWord8 (70 :: Word8)
    putWord8 v_1
    putWord16be 40784
    putWord8 (114 :: Word8)
    putWord8 (235 :: Word8)
    putWord16be 34718
    putWord32be v_2
    putWord32be v_3
    putWord8 v_4
    putWord8 (144 :: Word8)
    putWord8 v_5
    putWord8 (6 :: Word8)
    putWord32be 1553777234
    putWord32be 3531265250
    putWord16be v_6
    putWord8 (124 :: Word8)
    putWord32be 1333487335
    putWord16be v_7
    putWord16be 56770
    putWord32be v_8
    putWord32be v_9
    putWord8 (231 :: Word8)
    putWord8 (82 :: Word8)
    putWord16be v_10
    putWord32be v_11
    putWord16be 5440
    putWord16be v_12
    putWord32be v_13
    putWord8 (209 :: Word8)
    putWord8 (233 :: Word8)
    putWord16be v_14
    putWord8 (230 :: Word8)
    putWord16be v_15
    putWord8 (207 :: Word8)
    putWord8 (125 :: Word8)
    putWord8 (23 :: Word8)
    putWord32be 826826017
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 105),Value (Word16Value 65189),Value (Word8Value 245),Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word8Value 70),Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word16Value 40784),Value (Word8Value 114),Value (Word8Value 235),Value (Word16Value 34718),Hole {byte_offset = 13, hole_type = Word32Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Value (Word8Value 144),Hole {byte_offset = 23, hole_type = Word8Hole},Value (Word8Value 6),Value (Word32Value 1553777234),Value (Word32Value 3531265250),Hole {byte_offset = 33, hole_type = Word16Hole},Value (Word8Value 124),Value (Word32Value 1333487335),Hole {byte_offset = 40, hole_type = Word16Hole},Value (Word16Value 56770),Hole {byte_offset = 44, hole_type = Word32Hole},Hole {byte_offset = 48, hole_type = Word32Hole},Value (Word8Value 231),Value (Word8Value 82),Hole {byte_offset = 54, hole_type = Word16Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Value (Word16Value 5440),Hole {byte_offset = 62, hole_type = Word16Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word8Value 209),Value (Word8Value 233),Hole {byte_offset = 70, hole_type = Word16Hole},Value (Word8Value 230),Hole {byte_offset = 73, hole_type = Word16Hole},Value (Word8Value 207),Value (Word8Value 125),Value (Word8Value 23),Value (Word32Value 826826017)]}
