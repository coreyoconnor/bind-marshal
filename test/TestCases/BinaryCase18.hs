{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase18 where
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
    32419 :: Word16 <- getWord16be
    v_0 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    31938 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    245 :: Word8 <- getWord8
    641533930 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    2205594849 :: Word32 <- getWord32be
    3029376333 :: Word32 <- getWord32be
    304675486 :: Word32 <- getWord32be
    39 :: Word8 <- getWord8
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    49649 :: Word16 <- getWord16be
    v_6 :: Word16 <- getWord16be
    v_7 :: Word16 <- getWord16be
    2985861267 :: Word32 <- getWord32be
    103 :: Word8 <- getWord8
    v_8 :: Word8 <- getWord8
    5 :: Word16 <- getWord16be
    v_9 :: Word8 <- getWord8
    1793000243 :: Word32 <- getWord32be
    51418 :: Word16 <- getWord16be
    43365 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    26 :: Word8 <- getWord8
    v_11 :: Word32 <- getWord32be
    102 :: Word8 <- getWord8
    11 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 ] = vs 
    putWord16be 32419
    putWord8 v_0
    putWord8 v_1
    putWord16be 31938
    putWord32be v_2
    putWord8 (245 :: Word8)
    putWord32be 641533930
    putWord32be v_3
    putWord32be 2205594849
    putWord32be 3029376333
    putWord32be 304675486
    putWord8 (39 :: Word8)
    putWord8 v_4
    putWord8 v_5
    putWord16be 49649
    putWord16be v_6
    putWord16be v_7
    putWord32be 2985861267
    putWord8 (103 :: Word8)
    putWord8 v_8
    putWord16be 5
    putWord8 v_9
    putWord32be 1793000243
    putWord16be 51418
    putWord16be 43365
    putWord32be v_10
    putWord8 (26 :: Word8)
    putWord32be v_11
    putWord8 (102 :: Word8)
    putWord8 (11 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word16Value 32419),Hole {byte_offset = 2, hole_type = Word8Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Value (Word16Value 31938),Hole {byte_offset = 6, hole_type = Word32Hole},Value (Word8Value 245),Value (Word32Value 641533930),Hole {byte_offset = 15, hole_type = Word32Hole},Value (Word32Value 2205594849),Value (Word32Value 3029376333),Value (Word32Value 304675486),Value (Word8Value 39),Hole {byte_offset = 32, hole_type = Word8Hole},Hole {byte_offset = 33, hole_type = Word8Hole},Value (Word16Value 49649),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Value (Word32Value 2985861267),Value (Word8Value 103),Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word16Value 5),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 1793000243),Value (Word16Value 51418),Value (Word16Value 43365),Hole {byte_offset = 57, hole_type = Word32Hole},Value (Word8Value 26),Hole {byte_offset = 62, hole_type = Word32Hole},Value (Word8Value 102),Value (Word8Value 11)]}
