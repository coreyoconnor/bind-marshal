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
    v_0 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    51808 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    v_3 :: Word8 <- getWord8
    584486432 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    v_6 :: Word16 <- getWord16be
    v_7 :: Word16 <- getWord16be
    34546 :: Word16 <- getWord16be
    v_8 :: Word32 <- getWord32be
    157 :: Word8 <- getWord8
    923762175 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    1725 :: Word16 <- getWord16be
    1327671739 :: Word32 <- getWord32be
    v_10 :: Word8 <- getWord8
    v_11 :: Word32 <- getWord32be
    61918 :: Word16 <- getWord16be
    30617 :: Word16 <- getWord16be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    845 :: Word16 <- getWord16be
    v_14 :: Word32 <- getWord32be
    35 :: Word8 <- getWord8
    182 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    return  [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 ] = vs 
    putWord8 v_0
    putWord8 v_1
    putWord16be 51808
    putWord8 v_2
    putWord8 v_3
    putWord32be 584486432
    putWord8 v_4
    putWord8 v_5
    putWord16be v_6
    putWord16be v_7
    putWord16be 34546
    putWord32be v_8
    putWord8 (157 :: Word8)
    putWord32be 923762175
    putWord8 v_9
    putWord16be 1725
    putWord32be 1327671739
    putWord8 v_10
    putWord32be v_11
    putWord16be 61918
    putWord16be 30617
    putWord16be v_12
    putWord8 v_13
    putWord16be 845
    putWord32be v_14
    putWord8 (35 :: Word8)
    putWord8 (182 :: Word8)
    putWord32be v_15
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word8Hole},Value (Word16Value 51808),Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Value (Word32Value 584486432),Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word8Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Hole {byte_offset = 14, hole_type = Word16Hole},Value (Word16Value 34546),Hole {byte_offset = 18, hole_type = Word32Hole},Value (Word8Value 157),Value (Word32Value 923762175),Hole {byte_offset = 27, hole_type = Word8Hole},Value (Word16Value 1725),Value (Word32Value 1327671739),Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word16Value 61918),Value (Word16Value 30617),Hole {byte_offset = 43, hole_type = Word16Hole},Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word16Value 845),Hole {byte_offset = 48, hole_type = Word32Hole},Value (Word8Value 35),Value (Word8Value 182),Hole {byte_offset = 54, hole_type = Word32Hole}]}
