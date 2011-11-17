{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase4 where
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
    v_1 :: Word8 <- getWord8
    v_2 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    25450 :: Word16 <- getWord16be
    217 :: Word8 <- getWord8
    v_4 :: Word32 <- getWord32be
    v_5 :: Word8 <- getWord8
    53092 :: Word16 <- getWord16be
    v_6 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    1537354447 :: Word32 <- getWord32be
    7478197 :: Word32 <- getWord32be
    27 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    196 :: Word8 <- getWord8
    v_9 :: Word8 <- getWord8
    3421475782 :: Word32 <- getWord32be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    v_13 :: Word16 <- getWord16be
    v_14 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    56406 :: Word16 <- getWord16be
    139 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    915062040 :: Word32 <- getWord32be
    v_17 :: Word16 <- getWord16be
    60990 :: Word16 <- getWord16be
    124 :: Word8 <- getWord8
    v_18 :: Word8 <- getWord8
    1195 :: Word16 <- getWord16be
    v_19 :: Word32 <- getWord32be
    v_20 :: Word8 <- getWord8
    13228 :: Word16 <- getWord16be
    v_21 :: Word16 <- getWord16be
    v_22 :: Word8 <- getWord8
    v_23 :: Word16 <- getWord16be
    3273126618 :: Word32 <- getWord32be
    v_24 :: Word32 <- getWord32be
    208 :: Word8 <- getWord8
    v_25 :: Word16 <- getWord16be
    v_26 :: Word8 <- getWord8
    v_27 :: Word32 <- getWord32be
    v_28 :: Word8 <- getWord8
    v_29 :: Word16 <- getWord16be
    27492 :: Word16 <- getWord16be
    41687 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    124 :: Word8 <- getWord8
    223 :: Word8 <- getWord8
    v_31 :: Word32 <- getWord32be
    189 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word16Value v_30 , Word32Value v_31 ] = vs 
    putWord32be v_0
    putWord8 v_1
    putWord8 v_2
    putWord16be v_3
    putWord16be 25450
    putWord8 (217 :: Word8)
    putWord32be v_4
    putWord8 v_5
    putWord16be 53092
    putWord32be v_6
    putWord32be v_7
    putWord32be 1537354447
    putWord32be 7478197
    putWord8 (27 :: Word8)
    putWord32be v_8
    putWord8 (196 :: Word8)
    putWord8 v_9
    putWord32be 3421475782
    putWord16be v_10
    putWord32be v_11
    putWord16be v_12
    putWord16be v_13
    putWord8 v_14
    putWord32be v_15
    putWord16be 56406
    putWord8 (139 :: Word8)
    putWord32be v_16
    putWord32be 915062040
    putWord16be v_17
    putWord16be 60990
    putWord8 (124 :: Word8)
    putWord8 v_18
    putWord16be 1195
    putWord32be v_19
    putWord8 v_20
    putWord16be 13228
    putWord16be v_21
    putWord8 v_22
    putWord16be v_23
    putWord32be 3273126618
    putWord32be v_24
    putWord8 (208 :: Word8)
    putWord16be v_25
    putWord8 v_26
    putWord32be v_27
    putWord8 v_28
    putWord16be v_29
    putWord16be 27492
    putWord16be 41687
    putWord16be v_30
    putWord8 (124 :: Word8)
    putWord8 (223 :: Word8)
    putWord32be v_31
    putWord8 (189 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word8Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word16Hole},Value (Word16Value 25450),Value (Word8Value 217),Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Value (Word16Value 53092),Hole {byte_offset = 18, hole_type = Word32Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Value (Word32Value 1537354447),Value (Word32Value 7478197),Value (Word8Value 27),Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word8Value 196),Hole {byte_offset = 40, hole_type = Word8Hole},Value (Word32Value 3421475782),Hole {byte_offset = 45, hole_type = Word16Hole},Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word16Hole},Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Value (Word16Value 56406),Value (Word8Value 139),Hole {byte_offset = 63, hole_type = Word32Hole},Value (Word32Value 915062040),Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word16Value 60990),Value (Word8Value 124),Hole {byte_offset = 76, hole_type = Word8Hole},Value (Word16Value 1195),Hole {byte_offset = 79, hole_type = Word32Hole},Hole {byte_offset = 83, hole_type = Word8Hole},Value (Word16Value 13228),Hole {byte_offset = 86, hole_type = Word16Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Hole {byte_offset = 89, hole_type = Word16Hole},Value (Word32Value 3273126618),Hole {byte_offset = 95, hole_type = Word32Hole},Value (Word8Value 208),Hole {byte_offset = 100, hole_type = Word16Hole},Hole {byte_offset = 102, hole_type = Word8Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Hole {byte_offset = 107, hole_type = Word8Hole},Hole {byte_offset = 108, hole_type = Word16Hole},Value (Word16Value 27492),Value (Word16Value 41687),Hole {byte_offset = 114, hole_type = Word16Hole},Value (Word8Value 124),Value (Word8Value 223),Hole {byte_offset = 118, hole_type = Word32Hole},Value (Word8Value 189)]}
