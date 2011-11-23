{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase12 where
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
    196 :: Word8 <- getWord8
    934493396 :: Word32 <- getWord32be
    v_0 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    v_2 :: Word16 <- getWord16be
    629989388 :: Word32 <- getWord32be
    214 :: Word8 <- getWord8
    v_3 :: Word8 <- getWord8
    v_4 :: Word32 <- getWord32be
    v_5 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    28643 :: Word16 <- getWord16be
    1795789072 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    149 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    25686 :: Word16 <- getWord16be
    v_9 :: Word32 <- getWord32be
    102 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 ] = vs 
    putWord8 (196 :: Word8)
    putWord32be 934493396
    putWord8 v_0
    putWord8 v_1
    putWord16be v_2
    putWord32be 629989388
    putWord8 (214 :: Word8)
    putWord8 v_3
    putWord32be v_4
    putWord8 v_5
    putWord32be v_6
    putWord16be 28643
    putWord32be 1795789072
    putWord32be v_7
    putWord8 (149 :: Word8)
    putWord32be v_8
    putWord16be 25686
    putWord32be v_9
    putWord8 (102 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 196),Value (Word32Value 934493396),Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Hole {byte_offset = 7, hole_type = Word16Hole},Value (Word32Value 629989388),Value (Word8Value 214),Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word32Hole},Value (Word16Value 28643),Value (Word32Value 1795789072),Hole {byte_offset = 30, hole_type = Word32Hole},Value (Word8Value 149),Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word16Value 25686),Hole {byte_offset = 41, hole_type = Word32Hole},Value (Word8Value 102)]}
