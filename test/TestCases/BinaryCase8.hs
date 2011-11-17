{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase8 where
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
    1102779510 :: Word32 <- getWord32be
    47770 :: Word16 <- getWord16be
    v_0 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    3014223088 :: Word32 <- getWord32be
    248 :: Word8 <- getWord8
    v_2 :: Word32 <- getWord32be
    v_3 :: Word8 <- getWord8
    3894032734 :: Word32 <- getWord32be
    65466 :: Word16 <- getWord16be
    v_4 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    v_6 :: Word16 <- getWord16be
    135 :: Word8 <- getWord8
    v_7 :: Word8 <- getWord8
    59420 :: Word16 <- getWord16be
    188 :: Word8 <- getWord8
    v_8 :: Word16 <- getWord16be
    v_9 :: Word16 <- getWord16be
    17559 :: Word16 <- getWord16be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word8Value v_3 , Word8Value v_4 , Word32Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 ] = vs 
    putWord32be 1102779510
    putWord16be 47770
    putWord32be v_0
    putWord16be v_1
    putWord32be 3014223088
    putWord8 (248 :: Word8)
    putWord32be v_2
    putWord8 v_3
    putWord32be 3894032734
    putWord16be 65466
    putWord8 v_4
    putWord32be v_5
    putWord16be v_6
    putWord8 (135 :: Word8)
    putWord8 v_7
    putWord16be 59420
    putWord8 (188 :: Word8)
    putWord16be v_8
    putWord16be v_9
    putWord16be 17559
    putWord16be v_10
    putWord8 v_11
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 1102779510),Value (Word16Value 47770),Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word16Hole},Value (Word32Value 3014223088),Value (Word8Value 248),Hole {byte_offset = 17, hole_type = Word32Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Value (Word32Value 3894032734),Value (Word16Value 65466),Hole {byte_offset = 28, hole_type = Word8Hole},Hole {byte_offset = 29, hole_type = Word32Hole},Hole {byte_offset = 33, hole_type = Word16Hole},Value (Word8Value 135),Hole {byte_offset = 36, hole_type = Word8Hole},Value (Word16Value 59420),Value (Word8Value 188),Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word16Hole},Value (Word16Value 17559),Hole {byte_offset = 46, hole_type = Word16Hole},Hole {byte_offset = 48, hole_type = Word8Hole}]}
