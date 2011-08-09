{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase11 where
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
    70 :: Word8 <- getWord8
    20140 :: Word16 <- getWord16be
    4 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    v_2 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    v_8 :: Word16 <- getWord16be
    9 :: Word8 <- getWord8
    v_9 :: Word32 <- getWord32be
    44272 :: Word16 <- getWord16be
    11775 :: Word16 <- getWord16be
    33551 :: Word16 <- getWord16be
    v_10 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    v_12 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    200 :: Word8 <- getWord8
    v_14 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    v_16 :: Word8 <- getWord8
    2247970354 :: Word32 <- getWord32be
    v_17 :: Word16 <- getWord16be
    63013 :: Word16 <- getWord16be
    v_18 :: Word32 <- getWord32be
    v_19 :: Word32 <- getWord32be
    3542619027 :: Word32 <- getWord32be
    v_20 :: Word32 <- getWord32be
    v_21 :: Word16 <- getWord16be
    v_22 :: Word32 <- getWord32be
    v_23 :: Word8 <- getWord8
    101 :: Word8 <- getWord8
    117 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    45565 :: Word16 <- getWord16be
    v_25 :: Word32 <- getWord32be
    36576 :: Word16 <- getWord16be
    1087476255 :: Word32 <- getWord32be
    45826 :: Word16 <- getWord16be
    3691786044 :: Word32 <- getWord32be
    11034 :: Word16 <- getWord16be
    v_26 :: Word8 <- getWord8
    v_27 :: Word32 <- getWord32be
    v_28 :: Word32 <- getWord32be
    1631965023 :: Word32 <- getWord32be
    v_29 :: Word8 <- getWord8
    v_30 :: Word8 <- getWord8
    3460574868 :: Word32 <- getWord32be
    26731 :: Word16 <- getWord16be
    55130 :: Word16 <- getWord16be
    v_31 :: Word16 <- getWord16be
    22 :: Word8 <- getWord8
    137 :: Word8 <- getWord8
    36665 :: Word16 <- getWord16be
    61614 :: Word16 <- getWord16be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word8 <- getWord8
    v_34 :: Word8 <- getWord8
    4535 :: Word16 <- getWord16be
    v_35 :: Word8 <- getWord8
    4674 :: Word16 <- getWord16be
    v_36 :: Word32 <- getWord32be
    4185831643 :: Word32 <- getWord32be
    v_37 :: Word16 <- getWord16be
    4193677881 :: Word32 <- getWord32be
    v_38 :: Word32 <- getWord32be
    v_39 :: Word8 <- getWord8
    v_40 :: Word8 <- getWord8
    13061 :: Word16 <- getWord16be
    194 :: Word8 <- getWord8
    v_41 :: Word32 <- getWord32be
    235 :: Word8 <- getWord8
    3183868286 :: Word32 <- getWord32be
    58861 :: Word16 <- getWord16be
    2798 :: Word16 <- getWord16be
    v_42 :: Word16 <- getWord16be
    v_43 :: Word32 <- getWord32be
    3303353037 :: Word32 <- getWord32be
    34 :: Word8 <- getWord8
    226 :: Word8 <- getWord8
    v_44 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    v_46 :: Word32 <- getWord32be
    1141278250 :: Word32 <- getWord32be
    v_47 :: Word16 <- getWord16be
    v_48 :: Word8 <- getWord8
    107 :: Word8 <- getWord8
    338863384 :: Word32 <- getWord32be
    170 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word8Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word32Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word8Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word32Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 ] = vs 
    putWord8 v_0
    putWord8 (70 :: Word8)
    putWord16be 20140
    putWord8 (4 :: Word8)
    putWord32be v_1
    putWord8 v_2
    putWord32be v_3
    putWord8 v_4
    putWord8 v_5
    putWord32be v_6
    putWord8 v_7
    putWord16be v_8
    putWord8 (9 :: Word8)
    putWord32be v_9
    putWord16be 44272
    putWord16be 11775
    putWord16be 33551
    putWord16be v_10
    putWord8 v_11
    putWord16be v_12
    putWord8 v_13
    putWord8 (200 :: Word8)
    putWord8 v_14
    putWord32be v_15
    putWord8 v_16
    putWord32be 2247970354
    putWord16be v_17
    putWord16be 63013
    putWord32be v_18
    putWord32be v_19
    putWord32be 3542619027
    putWord32be v_20
    putWord16be v_21
    putWord32be v_22
    putWord8 v_23
    putWord8 (101 :: Word8)
    putWord8 (117 :: Word8)
    putWord32be v_24
    putWord16be 45565
    putWord32be v_25
    putWord16be 36576
    putWord32be 1087476255
    putWord16be 45826
    putWord32be 3691786044
    putWord16be 11034
    putWord8 v_26
    putWord32be v_27
    putWord32be v_28
    putWord32be 1631965023
    putWord8 v_29
    putWord8 v_30
    putWord32be 3460574868
    putWord16be 26731
    putWord16be 55130
    putWord16be v_31
    putWord8 (22 :: Word8)
    putWord8 (137 :: Word8)
    putWord16be 36665
    putWord16be 61614
    putWord16be v_32
    putWord8 v_33
    putWord8 v_34
    putWord16be 4535
    putWord8 v_35
    putWord16be 4674
    putWord32be v_36
    putWord32be 4185831643
    putWord16be v_37
    putWord32be 4193677881
    putWord32be v_38
    putWord8 v_39
    putWord8 v_40
    putWord16be 13061
    putWord8 (194 :: Word8)
    putWord32be v_41
    putWord8 (235 :: Word8)
    putWord32be 3183868286
    putWord16be 58861
    putWord16be 2798
    putWord16be v_42
    putWord32be v_43
    putWord32be 3303353037
    putWord8 (34 :: Word8)
    putWord8 (226 :: Word8)
    putWord16be v_44
    putWord8 v_45
    putWord32be v_46
    putWord32be 1141278250
    putWord16be v_47
    putWord8 v_48
    putWord8 (107 :: Word8)
    putWord32be 338863384
    putWord8 (170 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Value (Word8Value 70),Value (Word16Value 20140),Value (Word8Value 4),Hole {byte_offset = 5, hole_type = Word32Hole},Hole {byte_offset = 9, hole_type = Word8Hole},Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word8Value 9),Hole {byte_offset = 24, hole_type = Word32Hole},Value (Word16Value 44272),Value (Word16Value 11775),Value (Word16Value 33551),Hole {byte_offset = 34, hole_type = Word16Hole},Hole {byte_offset = 36, hole_type = Word8Hole},Hole {byte_offset = 37, hole_type = Word16Hole},Hole {byte_offset = 39, hole_type = Word8Hole},Value (Word8Value 200),Hole {byte_offset = 41, hole_type = Word8Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Hole {byte_offset = 46, hole_type = Word8Hole},Value (Word32Value 2247970354),Hole {byte_offset = 51, hole_type = Word16Hole},Value (Word16Value 63013),Hole {byte_offset = 55, hole_type = Word32Hole},Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word32Value 3542619027),Hole {byte_offset = 67, hole_type = Word32Hole},Hole {byte_offset = 71, hole_type = Word16Hole},Hole {byte_offset = 73, hole_type = Word32Hole},Hole {byte_offset = 77, hole_type = Word8Hole},Value (Word8Value 101),Value (Word8Value 117),Hole {byte_offset = 80, hole_type = Word32Hole},Value (Word16Value 45565),Hole {byte_offset = 86, hole_type = Word32Hole},Value (Word16Value 36576),Value (Word32Value 1087476255),Value (Word16Value 45826),Value (Word32Value 3691786044),Value (Word16Value 11034),Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Hole {byte_offset = 109, hole_type = Word32Hole},Value (Word32Value 1631965023),Hole {byte_offset = 117, hole_type = Word8Hole},Hole {byte_offset = 118, hole_type = Word8Hole},Value (Word32Value 3460574868),Value (Word16Value 26731),Value (Word16Value 55130),Hole {byte_offset = 127, hole_type = Word16Hole},Value (Word8Value 22),Value (Word8Value 137),Value (Word16Value 36665),Value (Word16Value 61614),Hole {byte_offset = 135, hole_type = Word16Hole},Hole {byte_offset = 137, hole_type = Word8Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Value (Word16Value 4535),Hole {byte_offset = 141, hole_type = Word8Hole},Value (Word16Value 4674),Hole {byte_offset = 144, hole_type = Word32Hole},Value (Word32Value 4185831643),Hole {byte_offset = 152, hole_type = Word16Hole},Value (Word32Value 4193677881),Hole {byte_offset = 158, hole_type = Word32Hole},Hole {byte_offset = 162, hole_type = Word8Hole},Hole {byte_offset = 163, hole_type = Word8Hole},Value (Word16Value 13061),Value (Word8Value 194),Hole {byte_offset = 167, hole_type = Word32Hole},Value (Word8Value 235),Value (Word32Value 3183868286),Value (Word16Value 58861),Value (Word16Value 2798),Hole {byte_offset = 180, hole_type = Word16Hole},Hole {byte_offset = 182, hole_type = Word32Hole},Value (Word32Value 3303353037),Value (Word8Value 34),Value (Word8Value 226),Hole {byte_offset = 192, hole_type = Word16Hole},Hole {byte_offset = 194, hole_type = Word8Hole},Hole {byte_offset = 195, hole_type = Word32Hole},Value (Word32Value 1141278250),Hole {byte_offset = 203, hole_type = Word16Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Value (Word8Value 107),Value (Word32Value 338863384),Value (Word8Value 170)]}
