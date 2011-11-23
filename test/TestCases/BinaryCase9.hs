{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase9 where
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
    v_0 :: Word16 <- getWord16be
    v_1 :: Word32 <- getWord32be
    81 :: Word8 <- getWord8
    2680635857 :: Word32 <- getWord32be
    2620515763 :: Word32 <- getWord32be
    146 :: Word8 <- getWord8
    v_2 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    30065 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    246 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    191 :: Word8 <- getWord8
    3365672896 :: Word32 <- getWord32be
    26813 :: Word16 <- getWord16be
    51 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    33 :: Word8 <- getWord8
    v_7 :: Word16 <- getWord16be
    35353 :: Word16 <- getWord16be
    2075917046 :: Word32 <- getWord32be
    1661943998 :: Word32 <- getWord32be
    43443 :: Word16 <- getWord16be
    v_8 :: Word8 <- getWord8
    v_9 :: Word32 <- getWord32be
    43666 :: Word16 <- getWord16be
    v_10 :: Word8 <- getWord8
    899141513 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    34707 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    v_13 :: Word16 <- getWord16be
    189 :: Word8 <- getWord8
    40596 :: Word16 <- getWord16be
    168 :: Word8 <- getWord8
    3347843934 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    136 :: Word8 <- getWord8
    87 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    54337 :: Word16 <- getWord16be
    v_16 :: Word16 <- getWord16be
    48 :: Word8 <- getWord8
    v_17 :: Word8 <- getWord8
    v_18 :: Word32 <- getWord32be
    v_19 :: Word16 <- getWord16be
    87332769 :: Word32 <- getWord32be
    2525199029 :: Word32 <- getWord32be
    v_20 :: Word8 <- getWord8
    v_21 :: Word32 <- getWord32be
    v_22 :: Word8 <- getWord8
    v_23 :: Word8 <- getWord8
    803964052 :: Word32 <- getWord32be
    v_24 :: Word8 <- getWord8
    v_25 :: Word16 <- getWord16be
    v_26 :: Word16 <- getWord16be
    54158 :: Word16 <- getWord16be
    v_27 :: Word32 <- getWord32be
    v_28 :: Word8 <- getWord8
    4129681505 :: Word32 <- getWord32be
    2793010783 :: Word32 <- getWord32be
    v_29 :: Word8 <- getWord8
    v_30 :: Word16 <- getWord16be
    22177 :: Word16 <- getWord16be
    3690057535 :: Word32 <- getWord32be
    21525 :: Word16 <- getWord16be
    177 :: Word8 <- getWord8
    1880967632 :: Word32 <- getWord32be
    v_31 :: Word16 <- getWord16be
    3251462756 :: Word32 <- getWord32be
    857820321 :: Word32 <- getWord32be
    65036 :: Word16 <- getWord16be
    51924 :: Word16 <- getWord16be
    v_32 :: Word32 <- getWord32be
    v_33 :: Word32 <- getWord32be
    v_34 :: Word16 <- getWord16be
    2228576033 :: Word32 <- getWord32be
    return  [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word8Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 , Word8Value v_29 , Word16Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word16Value v_34 ] = vs 
    putWord16be v_0
    putWord32be v_1
    putWord8 (81 :: Word8)
    putWord32be 2680635857
    putWord32be 2620515763
    putWord8 (146 :: Word8)
    putWord32be v_2
    putWord32be v_3
    putWord16be 30065
    putWord32be v_4
    putWord8 (246 :: Word8)
    putWord16be v_5
    putWord8 (191 :: Word8)
    putWord32be 3365672896
    putWord16be 26813
    putWord8 (51 :: Word8)
    putWord32be v_6
    putWord8 (33 :: Word8)
    putWord16be v_7
    putWord16be 35353
    putWord32be 2075917046
    putWord32be 1661943998
    putWord16be 43443
    putWord8 v_8
    putWord32be v_9
    putWord16be 43666
    putWord8 v_10
    putWord32be 899141513
    putWord32be v_11
    putWord16be 34707
    putWord32be v_12
    putWord16be v_13
    putWord8 (189 :: Word8)
    putWord16be 40596
    putWord8 (168 :: Word8)
    putWord32be 3347843934
    putWord8 v_14
    putWord8 (136 :: Word8)
    putWord8 (87 :: Word8)
    putWord32be v_15
    putWord16be 54337
    putWord16be v_16
    putWord8 (48 :: Word8)
    putWord8 v_17
    putWord32be v_18
    putWord16be v_19
    putWord32be 87332769
    putWord32be 2525199029
    putWord8 v_20
    putWord32be v_21
    putWord8 v_22
    putWord8 v_23
    putWord32be 803964052
    putWord8 v_24
    putWord16be v_25
    putWord16be v_26
    putWord16be 54158
    putWord32be v_27
    putWord8 v_28
    putWord32be 4129681505
    putWord32be 2793010783
    putWord8 v_29
    putWord16be v_30
    putWord16be 22177
    putWord32be 3690057535
    putWord16be 21525
    putWord8 (177 :: Word8)
    putWord32be 1880967632
    putWord16be v_31
    putWord32be 3251462756
    putWord32be 857820321
    putWord16be 65036
    putWord16be 51924
    putWord32be v_32
    putWord32be v_33
    putWord16be v_34
    putWord32be 2228576033
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word8Value 81),Value (Word32Value 2680635857),Value (Word32Value 2620515763),Value (Word8Value 146),Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word32Hole},Value (Word16Value 30065),Hole {byte_offset = 26, hole_type = Word32Hole},Value (Word8Value 246),Hole {byte_offset = 31, hole_type = Word16Hole},Value (Word8Value 191),Value (Word32Value 3365672896),Value (Word16Value 26813),Value (Word8Value 51),Hole {byte_offset = 41, hole_type = Word32Hole},Value (Word8Value 33),Hole {byte_offset = 46, hole_type = Word16Hole},Value (Word16Value 35353),Value (Word32Value 2075917046),Value (Word32Value 1661943998),Value (Word16Value 43443),Hole {byte_offset = 60, hole_type = Word8Hole},Hole {byte_offset = 61, hole_type = Word32Hole},Value (Word16Value 43666),Hole {byte_offset = 67, hole_type = Word8Hole},Value (Word32Value 899141513),Hole {byte_offset = 72, hole_type = Word32Hole},Value (Word16Value 34707),Hole {byte_offset = 78, hole_type = Word32Hole},Hole {byte_offset = 82, hole_type = Word16Hole},Value (Word8Value 189),Value (Word16Value 40596),Value (Word8Value 168),Value (Word32Value 3347843934),Hole {byte_offset = 92, hole_type = Word8Hole},Value (Word8Value 136),Value (Word8Value 87),Hole {byte_offset = 95, hole_type = Word32Hole},Value (Word16Value 54337),Hole {byte_offset = 101, hole_type = Word16Hole},Value (Word8Value 48),Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Hole {byte_offset = 109, hole_type = Word16Hole},Value (Word32Value 87332769),Value (Word32Value 2525199029),Hole {byte_offset = 119, hole_type = Word8Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Hole {byte_offset = 124, hole_type = Word8Hole},Hole {byte_offset = 125, hole_type = Word8Hole},Value (Word32Value 803964052),Hole {byte_offset = 130, hole_type = Word8Hole},Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word16Value 54158),Hole {byte_offset = 137, hole_type = Word32Hole},Hole {byte_offset = 141, hole_type = Word8Hole},Value (Word32Value 4129681505),Value (Word32Value 2793010783),Hole {byte_offset = 150, hole_type = Word8Hole},Hole {byte_offset = 151, hole_type = Word16Hole},Value (Word16Value 22177),Value (Word32Value 3690057535),Value (Word16Value 21525),Value (Word8Value 177),Value (Word32Value 1880967632),Hole {byte_offset = 166, hole_type = Word16Hole},Value (Word32Value 3251462756),Value (Word32Value 857820321),Value (Word16Value 65036),Value (Word16Value 51924),Hole {byte_offset = 180, hole_type = Word32Hole},Hole {byte_offset = 184, hole_type = Word32Hole},Hole {byte_offset = 188, hole_type = Word16Hole},Value (Word32Value 2228576033)]}
