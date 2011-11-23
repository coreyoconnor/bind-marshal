{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase8 where
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
    v_0 :: Word8 <- getWord8
    152 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    3344410126 :: Word32 <- getWord32be
    5498 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    2346212609 :: Word32 <- getWord32be
    192 :: Word8 <- getWord8
    7224 :: Word16 <- getWord16be
    1742691138 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    49 :: Word8 <- getWord8
    177419052 :: Word32 <- getWord32be
    11 :: Word8 <- getWord8
    32128 :: Word16 <- getWord16be
    v_4 :: Word16 <- getWord16be
    2237 :: Word16 <- getWord16be
    v_5 :: Word8 <- getWord8
    v_6 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    141 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    v_9 :: Word16 <- getWord16be
    8 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    4061482925 :: Word32 <- getWord32be
    v_11 :: Word8 <- getWord8
    v_12 :: Word16 <- getWord16be
    3759716517 :: Word32 <- getWord32be
    34 :: Word8 <- getWord8
    173 :: Word8 <- getWord8
    v_13 :: Word32 <- getWord32be
    2262656877 :: Word32 <- getWord32be
    43032 :: Word16 <- getWord16be
    v_14 :: Word8 <- getWord8
    46039 :: Word16 <- getWord16be
    3830 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    v_16 :: Word16 <- getWord16be
    184 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    v_18 :: Word8 <- getWord8
    174 :: Word8 <- getWord8
    v_19 :: Word32 <- getWord32be
    1453222366 :: Word32 <- getWord32be
    1935530529 :: Word32 <- getWord32be
    198 :: Word8 <- getWord8
    v_20 :: Word32 <- getWord32be
    244 :: Word8 <- getWord8
    v_21 :: Word8 <- getWord8
    3374673456 :: Word32 <- getWord32be
    v_22 :: Word8 <- getWord8
    v_23 :: Word16 <- getWord16be
    40432 :: Word16 <- getWord16be
    56753 :: Word16 <- getWord16be
    v_24 :: Word16 <- getWord16be
    18 :: Word8 <- getWord8
    221 :: Word8 <- getWord8
    183278728 :: Word32 <- getWord32be
    34549812 :: Word32 <- getWord32be
    v_25 :: Word32 <- getWord32be
    v_26 :: Word16 <- getWord16be
    v_27 :: Word8 <- getWord8
    v_28 :: Word16 <- getWord16be
    v_29 :: Word16 <- getWord16be
    31195 :: Word16 <- getWord16be
    1176566508 :: Word32 <- getWord32be
    v_30 :: Word8 <- getWord8
    49884 :: Word16 <- getWord16be
    6539 :: Word16 <- getWord16be
    v_31 :: Word32 <- getWord32be
    3269927101 :: Word32 <- getWord32be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word16 <- getWord16be
    148 :: Word8 <- getWord8
    v_34 :: Word8 <- getWord8
    v_35 :: Word8 <- getWord8
    v_36 :: Word8 <- getWord8
    245658267 :: Word32 <- getWord32be
    1699088325 :: Word32 <- getWord32be
    return  [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word16Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 , Word16Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word16Value v_3 , Word16Value v_4 , Word8Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word32Value v_13 , Word8Value v_14 , Word8Value v_15 , Word16Value v_16 , Word32Value v_17 , Word8Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word32Value v_25 , Word16Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 ] = vs 
    putWord8 v_0
    putWord8 (152 :: Word8)
    putWord32be v_1
    putWord32be 3344410126
    putWord16be 5498
    putWord32be v_2
    putWord32be 2346212609
    putWord8 (192 :: Word8)
    putWord16be 7224
    putWord32be 1742691138
    putWord16be v_3
    putWord8 (49 :: Word8)
    putWord32be 177419052
    putWord8 (11 :: Word8)
    putWord16be 32128
    putWord16be v_4
    putWord16be 2237
    putWord8 v_5
    putWord8 v_6
    putWord32be v_7
    putWord8 (141 :: Word8)
    putWord32be v_8
    putWord16be v_9
    putWord8 (8 :: Word8)
    putWord32be v_10
    putWord32be 4061482925
    putWord8 v_11
    putWord16be v_12
    putWord32be 3759716517
    putWord8 (34 :: Word8)
    putWord8 (173 :: Word8)
    putWord32be v_13
    putWord32be 2262656877
    putWord16be 43032
    putWord8 v_14
    putWord16be 46039
    putWord16be 3830
    putWord8 v_15
    putWord16be v_16
    putWord8 (184 :: Word8)
    putWord32be v_17
    putWord8 v_18
    putWord8 (174 :: Word8)
    putWord32be v_19
    putWord32be 1453222366
    putWord32be 1935530529
    putWord8 (198 :: Word8)
    putWord32be v_20
    putWord8 (244 :: Word8)
    putWord8 v_21
    putWord32be 3374673456
    putWord8 v_22
    putWord16be v_23
    putWord16be 40432
    putWord16be 56753
    putWord16be v_24
    putWord8 (18 :: Word8)
    putWord8 (221 :: Word8)
    putWord32be 183278728
    putWord32be 34549812
    putWord32be v_25
    putWord16be v_26
    putWord8 v_27
    putWord16be v_28
    putWord16be v_29
    putWord16be 31195
    putWord32be 1176566508
    putWord8 v_30
    putWord16be 49884
    putWord16be 6539
    putWord32be v_31
    putWord32be 3269927101
    putWord16be v_32
    putWord16be v_33
    putWord8 (148 :: Word8)
    putWord8 v_34
    putWord8 v_35
    putWord8 v_36
    putWord32be 245658267
    putWord32be 1699088325
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Value (Word8Value 152),Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word32Value 3344410126),Value (Word16Value 5498),Hole {byte_offset = 12, hole_type = Word32Hole},Value (Word32Value 2346212609),Value (Word8Value 192),Value (Word16Value 7224),Value (Word32Value 1742691138),Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word8Value 49),Value (Word32Value 177419052),Value (Word8Value 11),Value (Word16Value 32128),Hole {byte_offset = 37, hole_type = Word16Hole},Value (Word16Value 2237),Hole {byte_offset = 41, hole_type = Word8Hole},Hole {byte_offset = 42, hole_type = Word8Hole},Hole {byte_offset = 43, hole_type = Word32Hole},Value (Word8Value 141),Hole {byte_offset = 48, hole_type = Word32Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word8Value 8),Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word32Value 4061482925),Hole {byte_offset = 63, hole_type = Word8Hole},Hole {byte_offset = 64, hole_type = Word16Hole},Value (Word32Value 3759716517),Value (Word8Value 34),Value (Word8Value 173),Hole {byte_offset = 72, hole_type = Word32Hole},Value (Word32Value 2262656877),Value (Word16Value 43032),Hole {byte_offset = 82, hole_type = Word8Hole},Value (Word16Value 46039),Value (Word16Value 3830),Hole {byte_offset = 87, hole_type = Word8Hole},Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 184),Hole {byte_offset = 91, hole_type = Word32Hole},Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word8Value 174),Hole {byte_offset = 97, hole_type = Word32Hole},Value (Word32Value 1453222366),Value (Word32Value 1935530529),Value (Word8Value 198),Hole {byte_offset = 110, hole_type = Word32Hole},Value (Word8Value 244),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word32Value 3374673456),Hole {byte_offset = 120, hole_type = Word8Hole},Hole {byte_offset = 121, hole_type = Word16Hole},Value (Word16Value 40432),Value (Word16Value 56753),Hole {byte_offset = 127, hole_type = Word16Hole},Value (Word8Value 18),Value (Word8Value 221),Value (Word32Value 183278728),Value (Word32Value 34549812),Hole {byte_offset = 139, hole_type = Word32Hole},Hole {byte_offset = 143, hole_type = Word16Hole},Hole {byte_offset = 145, hole_type = Word8Hole},Hole {byte_offset = 146, hole_type = Word16Hole},Hole {byte_offset = 148, hole_type = Word16Hole},Value (Word16Value 31195),Value (Word32Value 1176566508),Hole {byte_offset = 156, hole_type = Word8Hole},Value (Word16Value 49884),Value (Word16Value 6539),Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word32Value 3269927101),Hole {byte_offset = 169, hole_type = Word16Hole},Hole {byte_offset = 171, hole_type = Word16Hole},Value (Word8Value 148),Hole {byte_offset = 174, hole_type = Word8Hole},Hole {byte_offset = 175, hole_type = Word8Hole},Hole {byte_offset = 176, hole_type = Word8Hole},Value (Word32Value 245658267),Value (Word32Value 1699088325)]}
