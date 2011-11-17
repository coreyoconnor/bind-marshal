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
    v_0 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    41692 :: Word16 <- getWord16be
    3687 :: Word16 <- getWord16be
    v_2 :: Word16 <- getWord16be
    v_3 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    55100 :: Word16 <- getWord16be
    v_5 :: Word16 <- getWord16be
    2087489864 :: Word32 <- getWord32be
    246 :: Word8 <- getWord8
    141 :: Word8 <- getWord8
    4 :: Word8 <- getWord8
    2607154486 :: Word32 <- getWord32be
    3604369214 :: Word32 <- getWord32be
    98 :: Word8 <- getWord8
    192 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    250 :: Word8 <- getWord8
    3957848786 :: Word32 <- getWord32be
    129 :: Word8 <- getWord8
    v_7 :: Word8 <- getWord8
    417456041 :: Word32 <- getWord32be
    v_8 :: Word8 <- getWord8
    v_9 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    47390 :: Word16 <- getWord16be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    37139 :: Word16 <- getWord16be
    v_13 :: Word16 <- getWord16be
    v_14 :: Word8 <- getWord8
    8736 :: Word16 <- getWord16be
    v_15 :: Word32 <- getWord32be
    v_16 :: Word32 <- getWord32be
    1270122815 :: Word32 <- getWord32be
    3256718815 :: Word32 <- getWord32be
    88 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    135 :: Word8 <- getWord8
    4016664856 :: Word32 <- getWord32be
    v_18 :: Word32 <- getWord32be
    v_19 :: Word8 <- getWord8
    5800 :: Word16 <- getWord16be
    v_20 :: Word16 <- getWord16be
    55 :: Word8 <- getWord8
    133 :: Word8 <- getWord8
    v_21 :: Word16 <- getWord16be
    3052346497 :: Word32 <- getWord32be
    22440 :: Word16 <- getWord16be
    v_22 :: Word16 <- getWord16be
    34498 :: Word16 <- getWord16be
    v_23 :: Word32 <- getWord32be
    23083 :: Word16 <- getWord16be
    39682 :: Word16 <- getWord16be
    2440384230 :: Word32 <- getWord32be
    v_24 :: Word32 <- getWord32be
    v_25 :: Word32 <- getWord32be
    38226 :: Word16 <- getWord16be
    v_26 :: Word8 <- getWord8
    4128084198 :: Word32 <- getWord32be
    46 :: Word8 <- getWord8
    v_27 :: Word8 <- getWord8
    v_28 :: Word16 <- getWord16be
    v_29 :: Word32 <- getWord32be
    20 :: Word8 <- getWord8
    v_30 :: Word32 <- getWord32be
    v_31 :: Word8 <- getWord8
    v_32 :: Word8 <- getWord8
    3743532676 :: Word32 <- getWord32be
    v_33 :: Word16 <- getWord16be
    v_34 :: Word32 <- getWord32be
    310176151 :: Word32 <- getWord32be
    v_35 :: Word16 <- getWord16be
    3773456978 :: Word32 <- getWord32be
    v_36 :: Word16 <- getWord16be
    131 :: Word8 <- getWord8
    3564730750 :: Word32 <- getWord32be
    v_37 :: Word32 <- getWord32be
    1342523369 :: Word32 <- getWord32be
    182 :: Word8 <- getWord8
    203 :: Word8 <- getWord8
    3463087441 :: Word32 <- getWord32be
    12 :: Word8 <- getWord8
    v_38 :: Word8 <- getWord8
    v_39 :: Word16 <- getWord16be
    58996 :: Word16 <- getWord16be
    v_40 :: Word8 <- getWord8
    v_41 :: Word32 <- getWord32be
    v_42 :: Word8 <- getWord8
    123 :: Word8 <- getWord8
    233 :: Word8 <- getWord8
    35359 :: Word16 <- getWord16be
    return  [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word16Value v_36 , Word32Value v_37 , Word8Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word8Value v_42 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word16Value v_20 , Word16Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word16Value v_36 , Word32Value v_37 , Word8Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word8Value v_42 ] = vs 
    putWord8 v_0
    putWord32be v_1
    putWord16be 41692
    putWord16be 3687
    putWord16be v_2
    putWord16be v_3
    putWord32be v_4
    putWord16be 55100
    putWord16be v_5
    putWord32be 2087489864
    putWord8 (246 :: Word8)
    putWord8 (141 :: Word8)
    putWord8 (4 :: Word8)
    putWord32be 2607154486
    putWord32be 3604369214
    putWord8 (98 :: Word8)
    putWord8 (192 :: Word8)
    putWord32be v_6
    putWord8 (250 :: Word8)
    putWord32be 3957848786
    putWord8 (129 :: Word8)
    putWord8 v_7
    putWord32be 417456041
    putWord8 v_8
    putWord8 v_9
    putWord32be v_10
    putWord16be 47390
    putWord32be v_11
    putWord16be v_12
    putWord16be 37139
    putWord16be v_13
    putWord8 v_14
    putWord16be 8736
    putWord32be v_15
    putWord32be v_16
    putWord32be 1270122815
    putWord32be 3256718815
    putWord8 (88 :: Word8)
    putWord32be v_17
    putWord8 (135 :: Word8)
    putWord32be 4016664856
    putWord32be v_18
    putWord8 v_19
    putWord16be 5800
    putWord16be v_20
    putWord8 (55 :: Word8)
    putWord8 (133 :: Word8)
    putWord16be v_21
    putWord32be 3052346497
    putWord16be 22440
    putWord16be v_22
    putWord16be 34498
    putWord32be v_23
    putWord16be 23083
    putWord16be 39682
    putWord32be 2440384230
    putWord32be v_24
    putWord32be v_25
    putWord16be 38226
    putWord8 v_26
    putWord32be 4128084198
    putWord8 (46 :: Word8)
    putWord8 v_27
    putWord16be v_28
    putWord32be v_29
    putWord8 (20 :: Word8)
    putWord32be v_30
    putWord8 v_31
    putWord8 v_32
    putWord32be 3743532676
    putWord16be v_33
    putWord32be v_34
    putWord32be 310176151
    putWord16be v_35
    putWord32be 3773456978
    putWord16be v_36
    putWord8 (131 :: Word8)
    putWord32be 3564730750
    putWord32be v_37
    putWord32be 1342523369
    putWord8 (182 :: Word8)
    putWord8 (203 :: Word8)
    putWord32be 3463087441
    putWord8 (12 :: Word8)
    putWord8 v_38
    putWord16be v_39
    putWord16be 58996
    putWord8 v_40
    putWord32be v_41
    putWord8 v_42
    putWord8 (123 :: Word8)
    putWord8 (233 :: Word8)
    putWord16be 35359
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word16Value 41692),Value (Word16Value 3687),Hole {byte_offset = 9, hole_type = Word16Hole},Hole {byte_offset = 11, hole_type = Word16Hole},Hole {byte_offset = 13, hole_type = Word32Hole},Value (Word16Value 55100),Hole {byte_offset = 19, hole_type = Word16Hole},Value (Word32Value 2087489864),Value (Word8Value 246),Value (Word8Value 141),Value (Word8Value 4),Value (Word32Value 2607154486),Value (Word32Value 3604369214),Value (Word8Value 98),Value (Word8Value 192),Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word8Value 250),Value (Word32Value 3957848786),Value (Word8Value 129),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 417456041),Hole {byte_offset = 53, hole_type = Word8Hole},Hole {byte_offset = 54, hole_type = Word8Hole},Hole {byte_offset = 55, hole_type = Word32Hole},Value (Word16Value 47390),Hole {byte_offset = 61, hole_type = Word32Hole},Hole {byte_offset = 65, hole_type = Word16Hole},Value (Word16Value 37139),Hole {byte_offset = 69, hole_type = Word16Hole},Hole {byte_offset = 71, hole_type = Word8Hole},Value (Word16Value 8736),Hole {byte_offset = 74, hole_type = Word32Hole},Hole {byte_offset = 78, hole_type = Word32Hole},Value (Word32Value 1270122815),Value (Word32Value 3256718815),Value (Word8Value 88),Hole {byte_offset = 91, hole_type = Word32Hole},Value (Word8Value 135),Value (Word32Value 4016664856),Hole {byte_offset = 100, hole_type = Word32Hole},Hole {byte_offset = 104, hole_type = Word8Hole},Value (Word16Value 5800),Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word8Value 55),Value (Word8Value 133),Hole {byte_offset = 111, hole_type = Word16Hole},Value (Word32Value 3052346497),Value (Word16Value 22440),Hole {byte_offset = 119, hole_type = Word16Hole},Value (Word16Value 34498),Hole {byte_offset = 123, hole_type = Word32Hole},Value (Word16Value 23083),Value (Word16Value 39682),Value (Word32Value 2440384230),Hole {byte_offset = 135, hole_type = Word32Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word16Value 38226),Hole {byte_offset = 145, hole_type = Word8Hole},Value (Word32Value 4128084198),Value (Word8Value 46),Hole {byte_offset = 151, hole_type = Word8Hole},Hole {byte_offset = 152, hole_type = Word16Hole},Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word8Value 20),Hole {byte_offset = 159, hole_type = Word32Hole},Hole {byte_offset = 163, hole_type = Word8Hole},Hole {byte_offset = 164, hole_type = Word8Hole},Value (Word32Value 3743532676),Hole {byte_offset = 169, hole_type = Word16Hole},Hole {byte_offset = 171, hole_type = Word32Hole},Value (Word32Value 310176151),Hole {byte_offset = 179, hole_type = Word16Hole},Value (Word32Value 3773456978),Hole {byte_offset = 185, hole_type = Word16Hole},Value (Word8Value 131),Value (Word32Value 3564730750),Hole {byte_offset = 192, hole_type = Word32Hole},Value (Word32Value 1342523369),Value (Word8Value 182),Value (Word8Value 203),Value (Word32Value 3463087441),Value (Word8Value 12),Hole {byte_offset = 207, hole_type = Word8Hole},Hole {byte_offset = 208, hole_type = Word16Hole},Value (Word16Value 58996),Hole {byte_offset = 212, hole_type = Word8Hole},Hole {byte_offset = 213, hole_type = Word32Hole},Hole {byte_offset = 217, hole_type = Word8Hole},Value (Word8Value 123),Value (Word8Value 233),Value (Word16Value 35359)]}
