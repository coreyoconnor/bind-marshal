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
    13864 :: Word16 <- getWord16be
    v_0 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    219 :: Word8 <- getWord8
    2874701295 :: Word32 <- getWord32be
    v_2 :: Word16 <- getWord16be
    44599 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    v_4 :: Word32 <- getWord32be
    v_5 :: Word32 <- getWord32be
    1857383615 :: Word32 <- getWord32be
    v_6 :: Word16 <- getWord16be
    v_7 :: Word8 <- getWord8
    941369368 :: Word32 <- getWord32be
    52769 :: Word16 <- getWord16be
    v_8 :: Word8 <- getWord8
    v_9 :: Word16 <- getWord16be
    29320 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    47312 :: Word16 <- getWord16be
    96 :: Word8 <- getWord8
    v_11 :: Word32 <- getWord32be
    54760 :: Word16 <- getWord16be
    50 :: Word8 <- getWord8
    3612095588 :: Word32 <- getWord32be
    24351 :: Word16 <- getWord16be
    190 :: Word8 <- getWord8
    v_12 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 ] = vs 
    putWord16be 13864
    putWord32be v_0
    putWord8 v_1
    putWord8 (219 :: Word8)
    putWord32be 2874701295
    putWord16be v_2
    putWord16be 44599
    putWord8 v_3
    putWord32be v_4
    putWord32be v_5
    putWord32be 1857383615
    putWord16be v_6
    putWord8 v_7
    putWord32be 941369368
    putWord16be 52769
    putWord8 v_8
    putWord16be v_9
    putWord16be 29320
    putWord32be v_10
    putWord16be 47312
    putWord8 (96 :: Word8)
    putWord32be v_11
    putWord16be 54760
    putWord8 (50 :: Word8)
    putWord32be 3612095588
    putWord16be 24351
    putWord8 (190 :: Word8)
    putWord16be v_12
    putWord8 v_13
    return ()

static_structure = StaticStructure {properties = [Value (Word16Value 13864),Hole {byte_offset = 2, hole_type = Word32Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word8Value 219),Value (Word32Value 2874701295),Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word16Value 44599),Hole {byte_offset = 16, hole_type = Word8Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Value (Word32Value 1857383615),Hole {byte_offset = 29, hole_type = Word16Hole},Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word32Value 941369368),Value (Word16Value 52769),Hole {byte_offset = 38, hole_type = Word8Hole},Hole {byte_offset = 39, hole_type = Word16Hole},Value (Word16Value 29320),Hole {byte_offset = 43, hole_type = Word32Hole},Value (Word16Value 47312),Value (Word8Value 96),Hole {byte_offset = 50, hole_type = Word32Hole},Value (Word16Value 54760),Value (Word8Value 50),Value (Word32Value 3612095588),Value (Word16Value 24351),Value (Word8Value 190),Hole {byte_offset = 64, hole_type = Word16Hole},Hole {byte_offset = 66, hole_type = Word8Hole}]}
