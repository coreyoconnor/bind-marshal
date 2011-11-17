{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase17 where
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
    23116 :: Word16 <- getWord16be
    63287 :: Word16 <- getWord16be
    394041682 :: Word32 <- getWord32be
    2655694756 :: Word32 <- getWord32be
    3048562779 :: Word32 <- getWord32be
    v_0 :: Word16 <- getWord16be
    56193989 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    11915 :: Word16 <- getWord16be
    40188 :: Word16 <- getWord16be
    39351 :: Word16 <- getWord16be
    11338 :: Word16 <- getWord16be
    2947879533 :: Word32 <- getWord32be
    4393 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    30960197 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    4086078462 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    3488 :: Word16 <- getWord16be
    7548 :: Word16 <- getWord16be
    105 :: Word8 <- getWord8
    174 :: Word8 <- getWord8
    v_6 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    37722 :: Word16 <- getWord16be
    v_8 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    v_10 :: Word16 <- getWord16be
    v_11 :: Word32 <- getWord32be
    482082485 :: Word32 <- getWord32be
    27161 :: Word16 <- getWord16be
    v_12 :: Word16 <- getWord16be
    177 :: Word8 <- getWord8
    v_13 :: Word32 <- getWord32be
    v_14 :: Word32 <- getWord32be
    96 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    54299 :: Word16 <- getWord16be
    2952417055 :: Word32 <- getWord32be
    46395 :: Word16 <- getWord16be
    18864 :: Word16 <- getWord16be
    v_16 :: Word16 <- getWord16be
    63558 :: Word16 <- getWord16be
    v_17 :: Word16 <- getWord16be
    1082928031 :: Word32 <- getWord32be
    21962 :: Word16 <- getWord16be
    253 :: Word8 <- getWord8
    v_18 :: Word16 <- getWord16be
    v_19 :: Word8 <- getWord8
    30797 :: Word16 <- getWord16be
    v_20 :: Word16 <- getWord16be
    2802360407 :: Word32 <- getWord32be
    v_21 :: Word16 <- getWord16be
    2245310693 :: Word32 <- getWord32be
    55 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    v_23 :: Word16 <- getWord16be
    532219476 :: Word32 <- getWord32be
    1435407867 :: Word32 <- getWord32be
    v_24 :: Word8 <- getWord8
    v_25 :: Word16 <- getWord16be
    v_26 :: Word32 <- getWord32be
    39297 :: Word16 <- getWord16be
    1635586197 :: Word32 <- getWord32be
    v_27 :: Word32 <- getWord32be
    46608 :: Word16 <- getWord16be
    2656911673 :: Word32 <- getWord32be
    v_28 :: Word32 <- getWord32be
    v_29 :: Word32 <- getWord32be
    30924 :: Word16 <- getWord16be
    221 :: Word8 <- getWord8
    64721 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    21266 :: Word16 <- getWord16be
    5392 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word16Value v_30 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word16Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word16Value v_30 ] = vs 
    putWord16be 23116
    putWord16be 63287
    putWord32be 394041682
    putWord32be 2655694756
    putWord32be 3048562779
    putWord16be v_0
    putWord32be 56193989
    putWord16be v_1
    putWord16be 11915
    putWord16be 40188
    putWord16be 39351
    putWord16be 11338
    putWord32be 2947879533
    putWord16be 4393
    putWord32be v_2
    putWord32be 30960197
    putWord32be v_3
    putWord32be 4086078462
    putWord8 v_4
    putWord16be v_5
    putWord16be 3488
    putWord16be 7548
    putWord8 (105 :: Word8)
    putWord8 (174 :: Word8)
    putWord8 v_6
    putWord32be v_7
    putWord16be 37722
    putWord32be v_8
    putWord8 v_9
    putWord16be v_10
    putWord32be v_11
    putWord32be 482082485
    putWord16be 27161
    putWord16be v_12
    putWord8 (177 :: Word8)
    putWord32be v_13
    putWord32be v_14
    putWord8 (96 :: Word8)
    putWord32be v_15
    putWord16be 54299
    putWord32be 2952417055
    putWord16be 46395
    putWord16be 18864
    putWord16be v_16
    putWord16be 63558
    putWord16be v_17
    putWord32be 1082928031
    putWord16be 21962
    putWord8 (253 :: Word8)
    putWord16be v_18
    putWord8 v_19
    putWord16be 30797
    putWord16be v_20
    putWord32be 2802360407
    putWord16be v_21
    putWord32be 2245310693
    putWord8 (55 :: Word8)
    putWord32be v_22
    putWord16be v_23
    putWord32be 532219476
    putWord32be 1435407867
    putWord8 v_24
    putWord16be v_25
    putWord32be v_26
    putWord16be 39297
    putWord32be 1635586197
    putWord32be v_27
    putWord16be 46608
    putWord32be 2656911673
    putWord32be v_28
    putWord32be v_29
    putWord16be 30924
    putWord8 (221 :: Word8)
    putWord16be 64721
    putWord16be v_30
    putWord16be 21266
    putWord16be 5392
    return ()

static_structure = StaticStructure {properties = [Value (Word16Value 23116),Value (Word16Value 63287),Value (Word32Value 394041682),Value (Word32Value 2655694756),Value (Word32Value 3048562779),Hole {byte_offset = 16, hole_type = Word16Hole},Value (Word32Value 56193989),Hole {byte_offset = 22, hole_type = Word16Hole},Value (Word16Value 11915),Value (Word16Value 40188),Value (Word16Value 39351),Value (Word16Value 11338),Value (Word32Value 2947879533),Value (Word16Value 4393),Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word32Value 30960197),Hole {byte_offset = 46, hole_type = Word32Hole},Value (Word32Value 4086078462),Hole {byte_offset = 54, hole_type = Word8Hole},Hole {byte_offset = 55, hole_type = Word16Hole},Value (Word16Value 3488),Value (Word16Value 7548),Value (Word8Value 105),Value (Word8Value 174),Hole {byte_offset = 63, hole_type = Word8Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word16Value 37722),Hole {byte_offset = 70, hole_type = Word32Hole},Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word16Hole},Hole {byte_offset = 77, hole_type = Word32Hole},Value (Word32Value 482082485),Value (Word16Value 27161),Hole {byte_offset = 87, hole_type = Word16Hole},Value (Word8Value 177),Hole {byte_offset = 90, hole_type = Word32Hole},Hole {byte_offset = 94, hole_type = Word32Hole},Value (Word8Value 96),Hole {byte_offset = 99, hole_type = Word32Hole},Value (Word16Value 54299),Value (Word32Value 2952417055),Value (Word16Value 46395),Value (Word16Value 18864),Hole {byte_offset = 113, hole_type = Word16Hole},Value (Word16Value 63558),Hole {byte_offset = 117, hole_type = Word16Hole},Value (Word32Value 1082928031),Value (Word16Value 21962),Value (Word8Value 253),Hole {byte_offset = 126, hole_type = Word16Hole},Hole {byte_offset = 128, hole_type = Word8Hole},Value (Word16Value 30797),Hole {byte_offset = 131, hole_type = Word16Hole},Value (Word32Value 2802360407),Hole {byte_offset = 137, hole_type = Word16Hole},Value (Word32Value 2245310693),Value (Word8Value 55),Hole {byte_offset = 144, hole_type = Word32Hole},Hole {byte_offset = 148, hole_type = Word16Hole},Value (Word32Value 532219476),Value (Word32Value 1435407867),Hole {byte_offset = 158, hole_type = Word8Hole},Hole {byte_offset = 159, hole_type = Word16Hole},Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word16Value 39297),Value (Word32Value 1635586197),Hole {byte_offset = 171, hole_type = Word32Hole},Value (Word16Value 46608),Value (Word32Value 2656911673),Hole {byte_offset = 181, hole_type = Word32Hole},Hole {byte_offset = 185, hole_type = Word32Hole},Value (Word16Value 30924),Value (Word8Value 221),Value (Word16Value 64721),Hole {byte_offset = 194, hole_type = Word16Hole},Value (Word16Value 21266),Value (Word16Value 5392)]}
