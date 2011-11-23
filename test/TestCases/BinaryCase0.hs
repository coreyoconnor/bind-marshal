{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase0 where
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
    222 :: Word8 <- getWord8
    v_0 :: Word16 <- getWord16be
    v_1 :: Word8 <- getWord8
    1372847211 :: Word32 <- getWord32be
    61249 :: Word16 <- getWord16be
    40227 :: Word16 <- getWord16be
    v_2 :: Word16 <- getWord16be
    49620 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    v_4 :: Word32 <- getWord32be
    36412 :: Word16 <- getWord16be
    v_5 :: Word16 <- getWord16be
    221 :: Word8 <- getWord8
    11954 :: Word16 <- getWord16be
    v_6 :: Word16 <- getWord16be
    2872607739 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    119 :: Word8 <- getWord8
    39837 :: Word16 <- getWord16be
    6931 :: Word16 <- getWord16be
    v_8 :: Word8 <- getWord8
    58940 :: Word16 <- getWord16be
    v_9 :: Word32 <- getWord32be
    2607215780 :: Word32 <- getWord32be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word32 <- getWord32be
    1522 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    6151 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    44897 :: Word16 <- getWord16be
    v_15 :: Word16 <- getWord16be
    v_16 :: Word16 <- getWord16be
    1054931444 :: Word32 <- getWord32be
    v_17 :: Word32 <- getWord32be
    v_18 :: Word32 <- getWord32be
    v_19 :: Word32 <- getWord32be
    v_20 :: Word16 <- getWord16be
    v_21 :: Word8 <- getWord8
    v_22 :: Word16 <- getWord16be
    246 :: Word8 <- getWord8
    v_23 :: Word8 <- getWord8
    v_24 :: Word8 <- getWord8
    4 :: Word8 <- getWord8
    v_25 :: Word32 <- getWord32be
    v_26 :: Word16 <- getWord16be
    v_27 :: Word16 <- getWord16be
    25390 :: Word16 <- getWord16be
    v_28 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word16Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 ] = vs 
    putWord8 (222 :: Word8)
    putWord16be v_0
    putWord8 v_1
    putWord32be 1372847211
    putWord16be 61249
    putWord16be 40227
    putWord16be v_2
    putWord16be 49620
    putWord8 v_3
    putWord32be v_4
    putWord16be 36412
    putWord16be v_5
    putWord8 (221 :: Word8)
    putWord16be 11954
    putWord16be v_6
    putWord32be 2872607739
    putWord8 v_7
    putWord8 (119 :: Word8)
    putWord16be 39837
    putWord16be 6931
    putWord8 v_8
    putWord16be 58940
    putWord32be v_9
    putWord32be 2607215780
    putWord16be v_10
    putWord32be v_11
    putWord16be 1522
    putWord32be v_12
    putWord16be 6151
    putWord32be v_13
    putWord8 v_14
    putWord16be 44897
    putWord16be v_15
    putWord16be v_16
    putWord32be 1054931444
    putWord32be v_17
    putWord32be v_18
    putWord32be v_19
    putWord16be v_20
    putWord8 v_21
    putWord16be v_22
    putWord8 (246 :: Word8)
    putWord8 v_23
    putWord8 v_24
    putWord8 (4 :: Word8)
    putWord32be v_25
    putWord16be v_26
    putWord16be v_27
    putWord16be 25390
    putWord16be v_28
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 222),Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word8Hole},Value (Word32Value 1372847211),Value (Word16Value 61249),Value (Word16Value 40227),Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word16Value 49620),Hole {byte_offset = 16, hole_type = Word8Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Value (Word16Value 36412),Hole {byte_offset = 23, hole_type = Word16Hole},Value (Word8Value 221),Value (Word16Value 11954),Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word32Value 2872607739),Hole {byte_offset = 34, hole_type = Word8Hole},Value (Word8Value 119),Value (Word16Value 39837),Value (Word16Value 6931),Hole {byte_offset = 40, hole_type = Word8Hole},Value (Word16Value 58940),Hole {byte_offset = 43, hole_type = Word32Hole},Value (Word32Value 2607215780),Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word32Hole},Value (Word16Value 1522),Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word16Value 6151),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word8Hole},Value (Word16Value 44897),Hole {byte_offset = 72, hole_type = Word16Hole},Hole {byte_offset = 74, hole_type = Word16Hole},Value (Word32Value 1054931444),Hole {byte_offset = 80, hole_type = Word32Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word32Hole},Hole {byte_offset = 92, hole_type = Word16Hole},Hole {byte_offset = 94, hole_type = Word8Hole},Hole {byte_offset = 95, hole_type = Word16Hole},Value (Word8Value 246),Hole {byte_offset = 98, hole_type = Word8Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Value (Word8Value 4),Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word16Hole},Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word16Value 25390),Hole {byte_offset = 111, hole_type = Word16Hole}]}
