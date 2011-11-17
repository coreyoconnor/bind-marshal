{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase15 where
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
    1397499760 :: Word32 <- getWord32be
    v_0 :: Word16 <- getWord16be
    v_1 :: Word16 <- getWord16be
    51 :: Word8 <- getWord8
    9 :: Word8 <- getWord8
    v_2 :: Word8 <- getWord8
    183 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    v_5 :: Word32 <- getWord32be
    v_6 :: Word16 <- getWord16be
    3164405415 :: Word32 <- getWord32be
    254 :: Word8 <- getWord8
    3637158406 :: Word32 <- getWord32be
    584627960 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    v_8 :: Word8 <- getWord8
    v_9 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    132 :: Word8 <- getWord8
    v_11 :: Word32 <- getWord32be
    28449 :: Word16 <- getWord16be
    207 :: Word8 <- getWord8
    2893717881 :: Word32 <- getWord32be
    3770591591 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    16 :: Word8 <- getWord8
    3729338336 :: Word32 <- getWord32be
    57 :: Word8 <- getWord8
    34357 :: Word16 <- getWord16be
    51941 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    41582 :: Word16 <- getWord16be
    v_14 :: Word8 <- getWord8
    return  [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 , Word32Value v_5 , Word16Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 , Word32Value v_5 , Word16Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 ] = vs 
    putWord32be 1397499760
    putWord16be v_0
    putWord16be v_1
    putWord8 (51 :: Word8)
    putWord8 (9 :: Word8)
    putWord8 v_2
    putWord8 (183 :: Word8)
    putWord16be v_3
    putWord32be v_4
    putWord32be v_5
    putWord16be v_6
    putWord32be 3164405415
    putWord8 (254 :: Word8)
    putWord32be 3637158406
    putWord32be 584627960
    putWord32be v_7
    putWord8 v_8
    putWord16be v_9
    putWord32be v_10
    putWord8 (132 :: Word8)
    putWord32be v_11
    putWord16be 28449
    putWord8 (207 :: Word8)
    putWord32be 2893717881
    putWord32be 3770591591
    putWord16be v_12
    putWord8 (16 :: Word8)
    putWord32be 3729338336
    putWord8 (57 :: Word8)
    putWord16be 34357
    putWord16be 51941
    putWord8 v_13
    putWord16be 41582
    putWord8 v_14
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 1397499760),Hole {byte_offset = 4, hole_type = Word16Hole},Hole {byte_offset = 6, hole_type = Word16Hole},Value (Word8Value 51),Value (Word8Value 9),Hole {byte_offset = 10, hole_type = Word8Hole},Value (Word8Value 183),Hole {byte_offset = 12, hole_type = Word16Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word32Hole},Hole {byte_offset = 22, hole_type = Word16Hole},Value (Word32Value 3164405415),Value (Word8Value 254),Value (Word32Value 3637158406),Value (Word32Value 584627960),Hole {byte_offset = 37, hole_type = Word32Hole},Hole {byte_offset = 41, hole_type = Word8Hole},Hole {byte_offset = 42, hole_type = Word16Hole},Hole {byte_offset = 44, hole_type = Word32Hole},Value (Word8Value 132),Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word16Value 28449),Value (Word8Value 207),Value (Word32Value 2893717881),Value (Word32Value 3770591591),Hole {byte_offset = 64, hole_type = Word16Hole},Value (Word8Value 16),Value (Word32Value 3729338336),Value (Word8Value 57),Value (Word16Value 34357),Value (Word16Value 51941),Hole {byte_offset = 76, hole_type = Word8Hole},Value (Word16Value 41582),Hole {byte_offset = 79, hole_type = Word8Hole}]}
