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
    v_0 :: Word32 <- getWord32be
    974593737 :: Word32 <- getWord32be
    v_1 :: Word32 <- getWord32be
    270424593 :: Word32 <- getWord32be
    16 :: Word8 <- getWord8
    120942527 :: Word32 <- getWord32be
    88 :: Word8 <- getWord8
    11469 :: Word16 <- getWord16be
    4053170617 :: Word32 <- getWord32be
    3840506081 :: Word32 <- getWord32be
    2213213863 :: Word32 <- getWord32be
    v_2 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    128 :: Word8 <- getWord8
    v_4 :: Word32 <- getWord32be
    33193 :: Word16 <- getWord16be
    197 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    32115 :: Word16 <- getWord16be
    10789 :: Word16 <- getWord16be
    47008 :: Word16 <- getWord16be
    2235900520 :: Word32 <- getWord32be
    151 :: Word8 <- getWord8
    77 :: Word8 <- getWord8
    v_6 :: Word8 <- getWord8
    3250671753 :: Word32 <- getWord32be
    18673 :: Word16 <- getWord16be
    v_7 :: Word32 <- getWord32be
    v_8 :: Word32 <- getWord32be
    122 :: Word8 <- getWord8
    13728 :: Word16 <- getWord16be
    2665566341 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    v_10 :: Word16 <- getWord16be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    3830757039 :: Word32 <- getWord32be
    v_13 :: Word8 <- getWord8
    3241787203 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    15041 :: Word16 <- getWord16be
    v_15 :: Word32 <- getWord32be
    170 :: Word8 <- getWord8
    v_16 :: Word8 <- getWord8
    v_17 :: Word16 <- getWord16be
    23393 :: Word16 <- getWord16be
    2889 :: Word16 <- getWord16be
    45 :: Word8 <- getWord8
    v_18 :: Word8 <- getWord8
    v_19 :: Word32 <- getWord32be
    v_20 :: Word32 <- getWord32be
    327680813 :: Word32 <- getWord32be
    177 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 ] = vs 
    putWord32be v_0
    putWord32be 974593737
    putWord32be v_1
    putWord32be 270424593
    putWord8 (16 :: Word8)
    putWord32be 120942527
    putWord8 (88 :: Word8)
    putWord16be 11469
    putWord32be 4053170617
    putWord32be 3840506081
    putWord32be 2213213863
    putWord16be v_2
    putWord8 v_3
    putWord8 (128 :: Word8)
    putWord32be v_4
    putWord16be 33193
    putWord8 (197 :: Word8)
    putWord8 v_5
    putWord16be 32115
    putWord16be 10789
    putWord16be 47008
    putWord32be 2235900520
    putWord8 (151 :: Word8)
    putWord8 (77 :: Word8)
    putWord8 v_6
    putWord32be 3250671753
    putWord16be 18673
    putWord32be v_7
    putWord32be v_8
    putWord8 (122 :: Word8)
    putWord16be 13728
    putWord32be 2665566341
    putWord8 v_9
    putWord16be v_10
    putWord32be v_11
    putWord16be v_12
    putWord32be 3830757039
    putWord8 v_13
    putWord32be 3241787203
    putWord8 v_14
    putWord16be 15041
    putWord32be v_15
    putWord8 (170 :: Word8)
    putWord8 v_16
    putWord16be v_17
    putWord16be 23393
    putWord16be 2889
    putWord8 (45 :: Word8)
    putWord8 v_18
    putWord32be v_19
    putWord32be v_20
    putWord32be 327680813
    putWord8 (177 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word32Value 974593737),Hole {byte_offset = 8, hole_type = Word32Hole},Value (Word32Value 270424593),Value (Word8Value 16),Value (Word32Value 120942527),Value (Word8Value 88),Value (Word16Value 11469),Value (Word32Value 4053170617),Value (Word32Value 3840506081),Value (Word32Value 2213213863),Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word8Hole},Value (Word8Value 128),Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word16Value 33193),Value (Word8Value 197),Hole {byte_offset = 47, hole_type = Word8Hole},Value (Word16Value 32115),Value (Word16Value 10789),Value (Word16Value 47008),Value (Word32Value 2235900520),Value (Word8Value 151),Value (Word8Value 77),Hole {byte_offset = 60, hole_type = Word8Hole},Value (Word32Value 3250671753),Value (Word16Value 18673),Hole {byte_offset = 67, hole_type = Word32Hole},Hole {byte_offset = 71, hole_type = Word32Hole},Value (Word8Value 122),Value (Word16Value 13728),Value (Word32Value 2665566341),Hole {byte_offset = 82, hole_type = Word8Hole},Hole {byte_offset = 83, hole_type = Word16Hole},Hole {byte_offset = 85, hole_type = Word32Hole},Hole {byte_offset = 89, hole_type = Word16Hole},Value (Word32Value 3830757039),Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word32Value 3241787203),Hole {byte_offset = 100, hole_type = Word8Hole},Value (Word16Value 15041),Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word8Value 170),Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word16Hole},Value (Word16Value 23393),Value (Word16Value 2889),Value (Word8Value 45),Hole {byte_offset = 116, hole_type = Word8Hole},Hole {byte_offset = 117, hole_type = Word32Hole},Hole {byte_offset = 121, hole_type = Word32Hole},Value (Word32Value 327680813),Value (Word8Value 177)]}
