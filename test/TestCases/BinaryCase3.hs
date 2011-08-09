{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase3 where
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
    v_0 :: Word16 <- getWord16be
    539640187 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    2557344785 :: Word32 <- getWord32be
    1160699381 :: Word32 <- getWord32be
    v_2 :: Word16 <- getWord16be
    19299 :: Word16 <- getWord16be
    v_3 :: Word32 <- getWord32be
    v_4 :: Word16 <- getWord16be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word32 <- getWord32be
    10076 :: Word16 <- getWord16be
    3939751332 :: Word32 <- getWord32be
    29050 :: Word16 <- getWord16be
    886042300 :: Word32 <- getWord32be
    61369 :: Word16 <- getWord16be
    65529 :: Word16 <- getWord16be
    1586677741 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    12531 :: Word16 <- getWord16be
    v_8 :: Word16 <- getWord16be
    v_9 :: Word32 <- getWord32be
    v_10 :: Word32 <- getWord32be
    17055 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    2016181834 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    v_14 :: Word32 <- getWord32be
    169 :: Word8 <- getWord8
    return  [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 ] = vs 
    putWord16be v_0
    putWord32be 539640187
    putWord8 v_1
    putWord32be 2557344785
    putWord32be 1160699381
    putWord16be v_2
    putWord16be 19299
    putWord32be v_3
    putWord16be v_4
    putWord16be v_5
    putWord32be v_6
    putWord16be 10076
    putWord32be 3939751332
    putWord16be 29050
    putWord32be 886042300
    putWord16be 61369
    putWord16be 65529
    putWord32be 1586677741
    putWord8 v_7
    putWord16be 12531
    putWord16be v_8
    putWord32be v_9
    putWord32be v_10
    putWord16be 17055
    putWord8 v_11
    putWord32be 2016181834
    putWord16be v_12
    putWord8 v_13
    putWord32be v_14
    putWord8 (169 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word32Value 539640187),Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word32Value 2557344785),Value (Word32Value 1160699381),Hole {byte_offset = 15, hole_type = Word16Hole},Value (Word16Value 19299),Hole {byte_offset = 19, hole_type = Word32Hole},Hole {byte_offset = 23, hole_type = Word16Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word32Hole},Value (Word16Value 10076),Value (Word32Value 3939751332),Value (Word16Value 29050),Value (Word32Value 886042300),Value (Word16Value 61369),Value (Word16Value 65529),Value (Word32Value 1586677741),Hole {byte_offset = 51, hole_type = Word8Hole},Value (Word16Value 12531),Hole {byte_offset = 54, hole_type = Word16Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word16Value 17055),Hole {byte_offset = 66, hole_type = Word8Hole},Value (Word32Value 2016181834),Hole {byte_offset = 71, hole_type = Word16Hole},Hole {byte_offset = 73, hole_type = Word8Hole},Hole {byte_offset = 74, hole_type = Word32Hole},Value (Word8Value 169)]}
