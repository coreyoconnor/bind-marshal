{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase13 where
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
    2521797345 :: Word32 <- getWord32be
    v_0 :: Word8 <- getWord8
    v_1 :: Word16 <- getWord16be
    37 :: Word8 <- getWord8
    v_2 :: Word16 <- getWord16be
    26639 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    v_4 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    52890 :: Word16 <- getWord16be
    return  [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 ] = vs 
    putWord32be 2521797345
    putWord8 v_0
    putWord16be v_1
    putWord8 (37 :: Word8)
    putWord16be v_2
    putWord16be 26639
    putWord8 v_3
    putWord8 v_4
    putWord32be v_5
    putWord16be 52890
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2521797345),Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word16Hole},Value (Word8Value 37),Hole {byte_offset = 8, hole_type = Word16Hole},Value (Word16Value 26639),Hole {byte_offset = 12, hole_type = Word8Hole},Hole {byte_offset = 13, hole_type = Word8Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Value (Word16Value 52890)]}
