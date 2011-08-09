{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase14 where
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
    v_1 :: Word16 <- getWord16be
    45589 :: Word16 <- getWord16be
    v_2 :: Word16 <- getWord16be
    60107 :: Word16 <- getWord16be
    1160052559 :: Word32 <- getWord32be
    v_3 :: Word8 <- getWord8
    42851 :: Word16 <- getWord16be
    v_4 :: Word16 <- getWord16be
    v_5 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    v_9 :: Word8 <- getWord8
    40526 :: Word16 <- getWord16be
    806 :: Word16 <- getWord16be
    42332 :: Word16 <- getWord16be
    43364 :: Word16 <- getWord16be
    635582598 :: Word32 <- getWord32be
    54204 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    23374 :: Word16 <- getWord16be
    v_13 :: Word16 <- getWord16be
    v_14 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    v_16 :: Word8 <- getWord8
    45585 :: Word16 <- getWord16be
    v_17 :: Word8 <- getWord8
    1748252474 :: Word32 <- getWord32be
    v_18 :: Word16 <- getWord16be
    229 :: Word8 <- getWord8
    v_19 :: Word8 <- getWord8
    v_20 :: Word16 <- getWord16be
    224 :: Word8 <- getWord8
    35602 :: Word16 <- getWord16be
    v_21 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    v_23 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    14403 :: Word16 <- getWord16be
    4080055959 :: Word32 <- getWord32be
    49541 :: Word16 <- getWord16be
    v_25 :: Word8 <- getWord8
    565928376 :: Word32 <- getWord32be
    22 :: Word8 <- getWord8
    v_26 :: Word16 <- getWord16be
    90 :: Word8 <- getWord8
    v_27 :: Word16 <- getWord16be
    v_28 :: Word16 <- getWord16be
    v_29 :: Word16 <- getWord16be
    132 :: Word8 <- getWord8
    v_30 :: Word32 <- getWord32be
    v_31 :: Word8 <- getWord8
    v_32 :: Word8 <- getWord8
    209 :: Word8 <- getWord8
    v_33 :: Word16 <- getWord16be
    65261 :: Word16 <- getWord16be
    v_34 :: Word32 <- getWord32be
    2127379805 :: Word32 <- getWord32be
    686121823 :: Word32 <- getWord32be
    v_35 :: Word32 <- getWord32be
    45176 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 ] = vs 
    putWord32be v_0
    putWord16be v_1
    putWord16be 45589
    putWord16be v_2
    putWord16be 60107
    putWord32be 1160052559
    putWord8 v_3
    putWord16be 42851
    putWord16be v_4
    putWord8 v_5
    putWord32be v_6
    putWord32be v_7
    putWord16be v_8
    putWord8 v_9
    putWord16be 40526
    putWord16be 806
    putWord16be 42332
    putWord16be 43364
    putWord32be 635582598
    putWord16be 54204
    putWord32be v_10
    putWord16be v_11
    putWord32be v_12
    putWord16be 23374
    putWord16be v_13
    putWord8 v_14
    putWord32be v_15
    putWord8 v_16
    putWord16be 45585
    putWord8 v_17
    putWord32be 1748252474
    putWord16be v_18
    putWord8 (229 :: Word8)
    putWord8 v_19
    putWord16be v_20
    putWord8 (224 :: Word8)
    putWord16be 35602
    putWord8 v_21
    putWord32be v_22
    putWord8 v_23
    putWord32be v_24
    putWord16be 14403
    putWord32be 4080055959
    putWord16be 49541
    putWord8 v_25
    putWord32be 565928376
    putWord8 (22 :: Word8)
    putWord16be v_26
    putWord8 (90 :: Word8)
    putWord16be v_27
    putWord16be v_28
    putWord16be v_29
    putWord8 (132 :: Word8)
    putWord32be v_30
    putWord8 v_31
    putWord8 v_32
    putWord8 (209 :: Word8)
    putWord16be v_33
    putWord16be 65261
    putWord32be v_34
    putWord32be 2127379805
    putWord32be 686121823
    putWord32be v_35
    putWord16be 45176
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word16Hole},Value (Word16Value 45589),Hole {byte_offset = 8, hole_type = Word16Hole},Value (Word16Value 60107),Value (Word32Value 1160052559),Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word16Value 42851),Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Hole {byte_offset = 26, hole_type = Word32Hole},Hole {byte_offset = 30, hole_type = Word16Hole},Hole {byte_offset = 32, hole_type = Word8Hole},Value (Word16Value 40526),Value (Word16Value 806),Value (Word16Value 42332),Value (Word16Value 43364),Value (Word32Value 635582598),Value (Word16Value 54204),Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word32Hole},Value (Word16Value 23374),Hole {byte_offset = 59, hole_type = Word16Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Hole {byte_offset = 66, hole_type = Word8Hole},Value (Word16Value 45585),Hole {byte_offset = 69, hole_type = Word8Hole},Value (Word32Value 1748252474),Hole {byte_offset = 74, hole_type = Word16Hole},Value (Word8Value 229),Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word16Hole},Value (Word8Value 224),Value (Word16Value 35602),Hole {byte_offset = 83, hole_type = Word8Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Hole {byte_offset = 89, hole_type = Word32Hole},Value (Word16Value 14403),Value (Word32Value 4080055959),Value (Word16Value 49541),Hole {byte_offset = 101, hole_type = Word8Hole},Value (Word32Value 565928376),Value (Word8Value 22),Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word8Value 90),Hole {byte_offset = 110, hole_type = Word16Hole},Hole {byte_offset = 112, hole_type = Word16Hole},Hole {byte_offset = 114, hole_type = Word16Hole},Value (Word8Value 132),Hole {byte_offset = 117, hole_type = Word32Hole},Hole {byte_offset = 121, hole_type = Word8Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word8Value 209),Hole {byte_offset = 124, hole_type = Word16Hole},Value (Word16Value 65261),Hole {byte_offset = 128, hole_type = Word32Hole},Value (Word32Value 2127379805),Value (Word32Value 686121823),Hole {byte_offset = 140, hole_type = Word32Hole},Value (Word16Value 45176)]}
