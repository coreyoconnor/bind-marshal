{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase16 where
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
    2691996911 :: Word32 <- getWord32be
    v_0 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    1161708852 :: Word32 <- getWord32be
    v_2 :: Word32 <- getWord32be
    151 :: Word8 <- getWord8
    147 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    v_4 :: Word32 <- getWord32be
    2310865410 :: Word32 <- getWord32be
    63090 :: Word16 <- getWord16be
    v_5 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    833720150 :: Word32 <- getWord32be
    v_8 :: Word8 <- getWord8
    v_9 :: Word16 <- getWord16be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    7268 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    v_13 :: Word8 <- getWord8
    v_14 :: Word8 <- getWord8
    29489 :: Word16 <- getWord16be
    2094582750 :: Word32 <- getWord32be
    229 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    v_16 :: Word16 <- getWord16be
    2382 :: Word16 <- getWord16be
    248 :: Word8 <- getWord8
    v_17 :: Word16 <- getWord16be
    v_18 :: Word32 <- getWord32be
    v_19 :: Word16 <- getWord16be
    15466 :: Word16 <- getWord16be
    v_20 :: Word16 <- getWord16be
    v_21 :: Word8 <- getWord8
    13152 :: Word16 <- getWord16be
    6676 :: Word16 <- getWord16be
    2903250587 :: Word32 <- getWord32be
    186 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    v_23 :: Word32 <- getWord32be
    v_24 :: Word8 <- getWord8
    193 :: Word8 <- getWord8
    3949674462 :: Word32 <- getWord32be
    v_25 :: Word16 <- getWord16be
    v_26 :: Word32 <- getWord32be
    1425211980 :: Word32 <- getWord32be
    v_27 :: Word32 <- getWord32be
    13 :: Word8 <- getWord8
    3253549302 :: Word32 <- getWord32be
    v_28 :: Word32 <- getWord32be
    v_29 :: Word32 <- getWord32be
    39090 :: Word16 <- getWord16be
    55 :: Word8 <- getWord8
    248 :: Word8 <- getWord8
    251 :: Word8 <- getWord8
    v_30 :: Word32 <- getWord32be
    200 :: Word8 <- getWord8
    123 :: Word8 <- getWord8
    3801997726 :: Word32 <- getWord32be
    57608 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word32Value v_30 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word16Value v_9 , Word16Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word32Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word32Value v_30 ] = vs 
    putWord32be 2691996911
    putWord32be v_0
    putWord16be v_1
    putWord32be 1161708852
    putWord32be v_2
    putWord8 (151 :: Word8)
    putWord8 (147 :: Word8)
    putWord32be v_3
    putWord32be v_4
    putWord32be 2310865410
    putWord16be 63090
    putWord8 v_5
    putWord32be v_6
    putWord8 v_7
    putWord32be 833720150
    putWord8 v_8
    putWord16be v_9
    putWord16be v_10
    putWord8 v_11
    putWord16be 7268
    putWord32be v_12
    putWord8 v_13
    putWord8 v_14
    putWord16be 29489
    putWord32be 2094582750
    putWord8 (229 :: Word8)
    putWord32be v_15
    putWord16be v_16
    putWord16be 2382
    putWord8 (248 :: Word8)
    putWord16be v_17
    putWord32be v_18
    putWord16be v_19
    putWord16be 15466
    putWord16be v_20
    putWord8 v_21
    putWord16be 13152
    putWord16be 6676
    putWord32be 2903250587
    putWord8 (186 :: Word8)
    putWord32be v_22
    putWord32be v_23
    putWord8 v_24
    putWord8 (193 :: Word8)
    putWord32be 3949674462
    putWord16be v_25
    putWord32be v_26
    putWord32be 1425211980
    putWord32be v_27
    putWord8 (13 :: Word8)
    putWord32be 3253549302
    putWord32be v_28
    putWord32be v_29
    putWord16be 39090
    putWord8 (55 :: Word8)
    putWord8 (248 :: Word8)
    putWord8 (251 :: Word8)
    putWord32be v_30
    putWord8 (200 :: Word8)
    putWord8 (123 :: Word8)
    putWord32be 3801997726
    putWord16be 57608
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2691996911),Hole {byte_offset = 4, hole_type = Word32Hole},Hole {byte_offset = 8, hole_type = Word16Hole},Value (Word32Value 1161708852),Hole {byte_offset = 14, hole_type = Word32Hole},Value (Word8Value 151),Value (Word8Value 147),Hole {byte_offset = 20, hole_type = Word32Hole},Hole {byte_offset = 24, hole_type = Word32Hole},Value (Word32Value 2310865410),Value (Word16Value 63090),Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Hole {byte_offset = 39, hole_type = Word8Hole},Value (Word32Value 833720150),Hole {byte_offset = 44, hole_type = Word8Hole},Hole {byte_offset = 45, hole_type = Word16Hole},Hole {byte_offset = 47, hole_type = Word16Hole},Hole {byte_offset = 49, hole_type = Word8Hole},Value (Word16Value 7268),Hole {byte_offset = 52, hole_type = Word32Hole},Hole {byte_offset = 56, hole_type = Word8Hole},Hole {byte_offset = 57, hole_type = Word8Hole},Value (Word16Value 29489),Value (Word32Value 2094582750),Value (Word8Value 229),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word16Hole},Value (Word16Value 2382),Value (Word8Value 248),Hole {byte_offset = 74, hole_type = Word16Hole},Hole {byte_offset = 76, hole_type = Word32Hole},Hole {byte_offset = 80, hole_type = Word16Hole},Value (Word16Value 15466),Hole {byte_offset = 84, hole_type = Word16Hole},Hole {byte_offset = 86, hole_type = Word8Hole},Value (Word16Value 13152),Value (Word16Value 6676),Value (Word32Value 2903250587),Value (Word8Value 186),Hole {byte_offset = 96, hole_type = Word32Hole},Hole {byte_offset = 100, hole_type = Word32Hole},Hole {byte_offset = 104, hole_type = Word8Hole},Value (Word8Value 193),Value (Word32Value 3949674462),Hole {byte_offset = 110, hole_type = Word16Hole},Hole {byte_offset = 112, hole_type = Word32Hole},Value (Word32Value 1425211980),Hole {byte_offset = 120, hole_type = Word32Hole},Value (Word8Value 13),Value (Word32Value 3253549302),Hole {byte_offset = 129, hole_type = Word32Hole},Hole {byte_offset = 133, hole_type = Word32Hole},Value (Word16Value 39090),Value (Word8Value 55),Value (Word8Value 248),Value (Word8Value 251),Hole {byte_offset = 142, hole_type = Word32Hole},Value (Word8Value 200),Value (Word8Value 123),Value (Word32Value 3801997726),Value (Word16Value 57608)]}
