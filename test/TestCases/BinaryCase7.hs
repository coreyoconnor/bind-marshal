{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase7 where
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
    51 :: Word8 <- getWord8
    15664 :: Word16 <- getWord16be
    53091 :: Word16 <- getWord16be
    v_1 :: Word32 <- getWord32be
    218 :: Word8 <- getWord8
    29543 :: Word16 <- getWord16be
    54263 :: Word16 <- getWord16be
    2710534270 :: Word32 <- getWord32be
    42278 :: Word16 <- getWord16be
    59163 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    85 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    217 :: Word8 <- getWord8
    v_4 :: Word16 <- getWord16be
    153 :: Word8 <- getWord8
    36474 :: Word16 <- getWord16be
    34 :: Word8 <- getWord8
    64119 :: Word16 <- getWord16be
    50261 :: Word16 <- getWord16be
    30026 :: Word16 <- getWord16be
    v_5 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    23 :: Word8 <- getWord8
    v_9 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    30121 :: Word16 <- getWord16be
    60170 :: Word16 <- getWord16be
    1322307491 :: Word32 <- getWord32be
    591215766 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    104 :: Word8 <- getWord8
    70 :: Word8 <- getWord8
    56704 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    45 :: Word8 <- getWord8
    424590200 :: Word32 <- getWord32be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    v_17 :: Word16 <- getWord16be
    34 :: Word8 <- getWord8
    v_18 :: Word16 <- getWord16be
    v_19 :: Word32 <- getWord32be
    v_20 :: Word32 <- getWord32be
    v_21 :: Word16 <- getWord16be
    v_22 :: Word8 <- getWord8
    v_23 :: Word16 <- getWord16be
    v_24 :: Word32 <- getWord32be
    v_25 :: Word32 <- getWord32be
    127 :: Word8 <- getWord8
    10 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word32Value v_25 ] = vs 
    putWord32be v_0
    putWord8 (51 :: Word8)
    putWord16be 15664
    putWord16be 53091
    putWord32be v_1
    putWord8 (218 :: Word8)
    putWord16be 29543
    putWord16be 54263
    putWord32be 2710534270
    putWord16be 42278
    putWord16be 59163
    putWord32be v_2
    putWord8 (85 :: Word8)
    putWord32be v_3
    putWord8 (217 :: Word8)
    putWord16be v_4
    putWord8 (153 :: Word8)
    putWord16be 36474
    putWord8 (34 :: Word8)
    putWord16be 64119
    putWord16be 50261
    putWord16be 30026
    putWord8 v_5
    putWord32be v_6
    putWord8 v_7
    putWord32be v_8
    putWord8 (23 :: Word8)
    putWord8 v_9
    putWord32be v_10
    putWord16be 30121
    putWord16be 60170
    putWord32be 1322307491
    putWord32be 591215766
    putWord32be v_11
    putWord8 (104 :: Word8)
    putWord8 (70 :: Word8)
    putWord16be 56704
    putWord32be v_12
    putWord8 (45 :: Word8)
    putWord32be 424590200
    putWord32be v_13
    putWord16be v_14
    putWord8 v_15
    putWord32be v_16
    putWord16be v_17
    putWord8 (34 :: Word8)
    putWord16be v_18
    putWord32be v_19
    putWord32be v_20
    putWord16be v_21
    putWord8 v_22
    putWord16be v_23
    putWord32be v_24
    putWord32be v_25
    putWord8 (127 :: Word8)
    putWord8 (10 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word8Value 51),Value (Word16Value 15664),Value (Word16Value 53091),Hole {byte_offset = 9, hole_type = Word32Hole},Value (Word8Value 218),Value (Word16Value 29543),Value (Word16Value 54263),Value (Word32Value 2710534270),Value (Word16Value 42278),Value (Word16Value 59163),Hole {byte_offset = 26, hole_type = Word32Hole},Value (Word8Value 85),Hole {byte_offset = 31, hole_type = Word32Hole},Value (Word8Value 217),Hole {byte_offset = 36, hole_type = Word16Hole},Value (Word8Value 153),Value (Word16Value 36474),Value (Word8Value 34),Value (Word16Value 64119),Value (Word16Value 50261),Value (Word16Value 30026),Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Hole {byte_offset = 53, hole_type = Word8Hole},Hole {byte_offset = 54, hole_type = Word32Hole},Value (Word8Value 23),Hole {byte_offset = 59, hole_type = Word8Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word16Value 30121),Value (Word16Value 60170),Value (Word32Value 1322307491),Value (Word32Value 591215766),Hole {byte_offset = 76, hole_type = Word32Hole},Value (Word8Value 104),Value (Word8Value 70),Value (Word16Value 56704),Hole {byte_offset = 84, hole_type = Word32Hole},Value (Word8Value 45),Value (Word32Value 424590200),Hole {byte_offset = 93, hole_type = Word32Hole},Hole {byte_offset = 97, hole_type = Word16Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Hole {byte_offset = 100, hole_type = Word32Hole},Hole {byte_offset = 104, hole_type = Word16Hole},Value (Word8Value 34),Hole {byte_offset = 107, hole_type = Word16Hole},Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word32Hole},Hole {byte_offset = 117, hole_type = Word16Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word32Hole},Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word8Value 127),Value (Word8Value 10)]}
