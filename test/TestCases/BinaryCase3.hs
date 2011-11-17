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
    20 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    v_4 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    v_6 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    248 :: Word8 <- getWord8
    15024 :: Word16 <- getWord16be
    48 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    v_10 :: Word8 <- getWord8
    224 :: Word8 <- getWord8
    68 :: Word8 <- getWord8
    2432001079 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    3398142919 :: Word32 <- getWord32be
    135 :: Word8 <- getWord8
    1274115638 :: Word32 <- getWord32be
    v_15 :: Word8 <- getWord8
    280099138 :: Word32 <- getWord32be
    49681 :: Word16 <- getWord16be
    v_16 :: Word32 <- getWord32be
    187 :: Word8 <- getWord8
    47 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    v_18 :: Word16 <- getWord16be
    3678742955 :: Word32 <- getWord32be
    7168 :: Word16 <- getWord16be
    253 :: Word8 <- getWord8
    3508141405 :: Word32 <- getWord32be
    30 :: Word8 <- getWord8
    v_19 :: Word32 <- getWord32be
    v_20 :: Word8 <- getWord8
    v_21 :: Word32 <- getWord32be
    v_22 :: Word8 <- getWord8
    218 :: Word8 <- getWord8
    v_23 :: Word8 <- getWord8
    1459475151 :: Word32 <- getWord32be
    v_24 :: Word8 <- getWord8
    v_25 :: Word32 <- getWord32be
    v_26 :: Word8 <- getWord8
    v_27 :: Word16 <- getWord16be
    10985 :: Word16 <- getWord16be
    59111 :: Word16 <- getWord16be
    3427777785 :: Word32 <- getWord32be
    v_28 :: Word16 <- getWord16be
    v_29 :: Word8 <- getWord8
    v_30 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word32Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 ] = vs 
    putWord8 (20 :: Word8)
    putWord32be v_0
    putWord16be v_1
    putWord8 v_2
    putWord16be v_3
    putWord8 v_4
    putWord32be v_5
    putWord32be v_6
    putWord8 v_7
    putWord8 (248 :: Word8)
    putWord16be 15024
    putWord8 (48 :: Word8)
    putWord32be v_8
    putWord8 v_9
    putWord8 v_10
    putWord8 (224 :: Word8)
    putWord8 (68 :: Word8)
    putWord32be 2432001079
    putWord32be v_11
    putWord16be v_12
    putWord32be v_13
    putWord8 v_14
    putWord32be 3398142919
    putWord8 (135 :: Word8)
    putWord32be 1274115638
    putWord8 v_15
    putWord32be 280099138
    putWord16be 49681
    putWord32be v_16
    putWord8 (187 :: Word8)
    putWord8 (47 :: Word8)
    putWord32be v_17
    putWord16be v_18
    putWord32be 3678742955
    putWord16be 7168
    putWord8 (253 :: Word8)
    putWord32be 3508141405
    putWord8 (30 :: Word8)
    putWord32be v_19
    putWord8 v_20
    putWord32be v_21
    putWord8 v_22
    putWord8 (218 :: Word8)
    putWord8 v_23
    putWord32be 1459475151
    putWord8 v_24
    putWord32be v_25
    putWord8 v_26
    putWord16be v_27
    putWord16be 10985
    putWord16be 59111
    putWord32be 3427777785
    putWord16be v_28
    putWord8 v_29
    putWord16be v_30
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 20),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word16Hole},Hole {byte_offset = 7, hole_type = Word8Hole},Hole {byte_offset = 8, hole_type = Word16Hole},Hole {byte_offset = 10, hole_type = Word8Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Value (Word8Value 248),Value (Word16Value 15024),Value (Word8Value 48),Hole {byte_offset = 24, hole_type = Word32Hole},Hole {byte_offset = 28, hole_type = Word8Hole},Hole {byte_offset = 29, hole_type = Word8Hole},Value (Word8Value 224),Value (Word8Value 68),Value (Word32Value 2432001079),Hole {byte_offset = 36, hole_type = Word32Hole},Hole {byte_offset = 40, hole_type = Word16Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Hole {byte_offset = 46, hole_type = Word8Hole},Value (Word32Value 3398142919),Value (Word8Value 135),Value (Word32Value 1274115638),Hole {byte_offset = 56, hole_type = Word8Hole},Value (Word32Value 280099138),Value (Word16Value 49681),Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word8Value 187),Value (Word8Value 47),Hole {byte_offset = 69, hole_type = Word32Hole},Hole {byte_offset = 73, hole_type = Word16Hole},Value (Word32Value 3678742955),Value (Word16Value 7168),Value (Word8Value 253),Value (Word32Value 3508141405),Value (Word8Value 30),Hole {byte_offset = 87, hole_type = Word32Hole},Hole {byte_offset = 91, hole_type = Word8Hole},Hole {byte_offset = 92, hole_type = Word32Hole},Hole {byte_offset = 96, hole_type = Word8Hole},Value (Word8Value 218),Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word32Value 1459475151),Hole {byte_offset = 103, hole_type = Word8Hole},Hole {byte_offset = 104, hole_type = Word32Hole},Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word16Hole},Value (Word16Value 10985),Value (Word16Value 59111),Value (Word32Value 3427777785),Hole {byte_offset = 119, hole_type = Word16Hole},Hole {byte_offset = 121, hole_type = Word8Hole},Hole {byte_offset = 122, hole_type = Word16Hole}]}
