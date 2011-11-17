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
    2320797707 :: Word32 <- getWord32be
    v_0 :: Word16 <- getWord16be
    1592610046 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    3159356267 :: Word32 <- getWord32be
    609111511 :: Word32 <- getWord32be
    4147755825 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    184617332 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    v_6 :: Word32 <- getWord32be
    36091 :: Word16 <- getWord16be
    40995 :: Word16 <- getWord16be
    4840 :: Word16 <- getWord16be
    38 :: Word8 <- getWord8
    v_7 :: Word8 <- getWord8
    3139819629 :: Word32 <- getWord32be
    v_8 :: Word8 <- getWord8
    v_9 :: Word32 <- getWord32be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    1279611787 :: Word32 <- getWord32be
    30933886 :: Word32 <- getWord32be
    63640 :: Word16 <- getWord16be
    36919 :: Word16 <- getWord16be
    95 :: Word8 <- getWord8
    v_12 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    22 :: Word8 <- getWord8
    44432 :: Word16 <- getWord16be
    58993 :: Word16 <- getWord16be
    12266 :: Word16 <- getWord16be
    212 :: Word8 <- getWord8
    3512857190 :: Word32 <- getWord32be
    v_14 :: Word32 <- getWord32be
    v_15 :: Word8 <- getWord8
    v_16 :: Word16 <- getWord16be
    222 :: Word8 <- getWord8
    41154 :: Word16 <- getWord16be
    3046170939 :: Word32 <- getWord32be
    225 :: Word8 <- getWord8
    v_17 :: Word8 <- getWord8
    184 :: Word8 <- getWord8
    3778459970 :: Word32 <- getWord32be
    24998 :: Word16 <- getWord16be
    v_18 :: Word32 <- getWord32be
    3756643901 :: Word32 <- getWord32be
    v_19 :: Word32 <- getWord32be
    v_20 :: Word8 <- getWord8
    v_21 :: Word32 <- getWord32be
    409939453 :: Word32 <- getWord32be
    v_22 :: Word16 <- getWord16be
    9502 :: Word16 <- getWord16be
    63 :: Word8 <- getWord8
    v_23 :: Word16 <- getWord16be
    v_24 :: Word16 <- getWord16be
    2696676264 :: Word32 <- getWord32be
    v_25 :: Word32 <- getWord32be
    203 :: Word8 <- getWord8
    33172 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word16Value v_3 , Word8Value v_4 , Word32Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word32Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 ] = vs 
    putWord32be 2320797707
    putWord16be v_0
    putWord32be 1592610046
    putWord16be v_1
    putWord32be v_2
    putWord32be 3159356267
    putWord32be 609111511
    putWord32be 4147755825
    putWord16be v_3
    putWord32be 184617332
    putWord8 v_4
    putWord32be v_5
    putWord32be v_6
    putWord16be 36091
    putWord16be 40995
    putWord16be 4840
    putWord8 (38 :: Word8)
    putWord8 v_7
    putWord32be 3139819629
    putWord8 v_8
    putWord32be v_9
    putWord32be v_10
    putWord32be v_11
    putWord32be 1279611787
    putWord32be 30933886
    putWord16be 63640
    putWord16be 36919
    putWord8 (95 :: Word8)
    putWord16be v_12
    putWord8 v_13
    putWord8 (22 :: Word8)
    putWord16be 44432
    putWord16be 58993
    putWord16be 12266
    putWord8 (212 :: Word8)
    putWord32be 3512857190
    putWord32be v_14
    putWord8 v_15
    putWord16be v_16
    putWord8 (222 :: Word8)
    putWord16be 41154
    putWord32be 3046170939
    putWord8 (225 :: Word8)
    putWord8 v_17
    putWord8 (184 :: Word8)
    putWord32be 3778459970
    putWord16be 24998
    putWord32be v_18
    putWord32be 3756643901
    putWord32be v_19
    putWord8 v_20
    putWord32be v_21
    putWord32be 409939453
    putWord16be v_22
    putWord16be 9502
    putWord8 (63 :: Word8)
    putWord16be v_23
    putWord16be v_24
    putWord32be 2696676264
    putWord32be v_25
    putWord8 (203 :: Word8)
    putWord16be 33172
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2320797707),Hole {byte_offset = 4, hole_type = Word16Hole},Value (Word32Value 1592610046),Hole {byte_offset = 10, hole_type = Word16Hole},Hole {byte_offset = 12, hole_type = Word32Hole},Value (Word32Value 3159356267),Value (Word32Value 609111511),Value (Word32Value 4147755825),Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word32Value 184617332),Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Hole {byte_offset = 39, hole_type = Word32Hole},Value (Word16Value 36091),Value (Word16Value 40995),Value (Word16Value 4840),Value (Word8Value 38),Hole {byte_offset = 50, hole_type = Word8Hole},Value (Word32Value 3139819629),Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word32Value 1279611787),Value (Word32Value 30933886),Value (Word16Value 63640),Value (Word16Value 36919),Value (Word8Value 95),Hole {byte_offset = 81, hole_type = Word16Hole},Hole {byte_offset = 83, hole_type = Word8Hole},Value (Word8Value 22),Value (Word16Value 44432),Value (Word16Value 58993),Value (Word16Value 12266),Value (Word8Value 212),Value (Word32Value 3512857190),Hole {byte_offset = 96, hole_type = Word32Hole},Hole {byte_offset = 100, hole_type = Word8Hole},Hole {byte_offset = 101, hole_type = Word16Hole},Value (Word8Value 222),Value (Word16Value 41154),Value (Word32Value 3046170939),Value (Word8Value 225),Hole {byte_offset = 111, hole_type = Word8Hole},Value (Word8Value 184),Value (Word32Value 3778459970),Value (Word16Value 24998),Hole {byte_offset = 119, hole_type = Word32Hole},Value (Word32Value 3756643901),Hole {byte_offset = 127, hole_type = Word32Hole},Hole {byte_offset = 131, hole_type = Word8Hole},Hole {byte_offset = 132, hole_type = Word32Hole},Value (Word32Value 409939453),Hole {byte_offset = 140, hole_type = Word16Hole},Value (Word16Value 9502),Value (Word8Value 63),Hole {byte_offset = 145, hole_type = Word16Hole},Hole {byte_offset = 147, hole_type = Word16Hole},Value (Word32Value 2696676264),Hole {byte_offset = 153, hole_type = Word32Hole},Value (Word8Value 203),Value (Word16Value 33172)]}
