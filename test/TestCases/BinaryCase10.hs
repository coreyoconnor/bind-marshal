{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase10 where
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
    637575985 :: Word32 <- getWord32be
    2869267141 :: Word32 <- getWord32be
    402200364 :: Word32 <- getWord32be
    1120196455 :: Word32 <- getWord32be
    v_0 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    v_2 :: Word32 <- getWord32be
    152 :: Word8 <- getWord8
    67 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    8068 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    170 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    v_6 :: Word8 <- getWord8
    16 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    13733 :: Word16 <- getWord16be
    46764 :: Word16 <- getWord16be
    v_9 :: Word32 <- getWord32be
    1003588791 :: Word32 <- getWord32be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word16 <- getWord16be
    v_12 :: Word8 <- getWord8
    1101641789 :: Word32 <- getWord32be
    1405233914 :: Word32 <- getWord32be
    v_13 :: Word32 <- getWord32be
    224 :: Word8 <- getWord8
    v_14 :: Word16 <- getWord16be
    210 :: Word8 <- getWord8
    935776401 :: Word32 <- getWord32be
    143 :: Word8 <- getWord8
    140 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    v_16 :: Word32 <- getWord32be
    v_17 :: Word16 <- getWord16be
    36 :: Word8 <- getWord8
    v_18 :: Word8 <- getWord8
    13795 :: Word16 <- getWord16be
    v_19 :: Word16 <- getWord16be
    7 :: Word8 <- getWord8
    203 :: Word8 <- getWord8
    1395991680 :: Word32 <- getWord32be
    61422 :: Word16 <- getWord16be
    v_20 :: Word16 <- getWord16be
    v_21 :: Word32 <- getWord32be
    61841 :: Word16 <- getWord16be
    v_22 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word16Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 ] = vs 
    putWord32be 637575985
    putWord32be 2869267141
    putWord32be 402200364
    putWord32be 1120196455
    putWord32be v_0
    putWord8 v_1
    putWord32be v_2
    putWord8 (152 :: Word8)
    putWord8 (67 :: Word8)
    putWord32be v_3
    putWord16be 8068
    putWord32be v_4
    putWord8 (170 :: Word8)
    putWord32be v_5
    putWord8 v_6
    putWord8 (16 :: Word8)
    putWord32be v_7
    putWord16be v_8
    putWord16be 13733
    putWord16be 46764
    putWord32be v_9
    putWord32be 1003588791
    putWord32be v_10
    putWord16be v_11
    putWord8 v_12
    putWord32be 1101641789
    putWord32be 1405233914
    putWord32be v_13
    putWord8 (224 :: Word8)
    putWord16be v_14
    putWord8 (210 :: Word8)
    putWord32be 935776401
    putWord8 (143 :: Word8)
    putWord8 (140 :: Word8)
    putWord32be v_15
    putWord32be v_16
    putWord16be v_17
    putWord8 (36 :: Word8)
    putWord8 v_18
    putWord16be 13795
    putWord16be v_19
    putWord8 (7 :: Word8)
    putWord8 (203 :: Word8)
    putWord32be 1395991680
    putWord16be 61422
    putWord16be v_20
    putWord32be v_21
    putWord16be 61841
    putWord32be v_22
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 637575985),Value (Word32Value 2869267141),Value (Word32Value 402200364),Value (Word32Value 1120196455),Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word32Hole},Value (Word8Value 152),Value (Word8Value 67),Hole {byte_offset = 27, hole_type = Word32Hole},Value (Word16Value 8068),Hole {byte_offset = 33, hole_type = Word32Hole},Value (Word8Value 170),Hole {byte_offset = 38, hole_type = Word32Hole},Hole {byte_offset = 42, hole_type = Word8Hole},Value (Word8Value 16),Hole {byte_offset = 44, hole_type = Word32Hole},Hole {byte_offset = 48, hole_type = Word16Hole},Value (Word16Value 13733),Value (Word16Value 46764),Hole {byte_offset = 54, hole_type = Word32Hole},Value (Word32Value 1003588791),Hole {byte_offset = 62, hole_type = Word32Hole},Hole {byte_offset = 66, hole_type = Word16Hole},Hole {byte_offset = 68, hole_type = Word8Hole},Value (Word32Value 1101641789),Value (Word32Value 1405233914),Hole {byte_offset = 77, hole_type = Word32Hole},Value (Word8Value 224),Hole {byte_offset = 82, hole_type = Word16Hole},Value (Word8Value 210),Value (Word32Value 935776401),Value (Word8Value 143),Value (Word8Value 140),Hole {byte_offset = 91, hole_type = Word32Hole},Hole {byte_offset = 95, hole_type = Word32Hole},Hole {byte_offset = 99, hole_type = Word16Hole},Value (Word8Value 36),Hole {byte_offset = 102, hole_type = Word8Hole},Value (Word16Value 13795),Hole {byte_offset = 105, hole_type = Word16Hole},Value (Word8Value 7),Value (Word8Value 203),Value (Word32Value 1395991680),Value (Word16Value 61422),Hole {byte_offset = 115, hole_type = Word16Hole},Hole {byte_offset = 117, hole_type = Word32Hole},Value (Word16Value 61841),Hole {byte_offset = 123, hole_type = Word32Hole}]}
