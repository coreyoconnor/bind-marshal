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
    2558542691 :: Word32 <- getWord32be
    v_0 :: Word16 <- getWord16be
    v_1 :: Word8 <- getWord8
    3259315371 :: Word32 <- getWord32be
    30 :: Word8 <- getWord8
    47557 :: Word16 <- getWord16be
    32694 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    9421 :: Word16 <- getWord16be
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    v_6 :: Word8 <- getWord8
    13643 :: Word16 <- getWord16be
    3627188095 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    10194 :: Word16 <- getWord16be
    198 :: Word8 <- getWord8
    v_8 :: Word16 <- getWord16be
    496346808 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    104 :: Word8 <- getWord8
    955028121 :: Word32 <- getWord32be
    3019309217 :: Word32 <- getWord32be
    v_11 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    v_13 :: Word8 <- getWord8
    193 :: Word8 <- getWord8
    28 :: Word8 <- getWord8
    v_14 :: Word32 <- getWord32be
    25 :: Word8 <- getWord8
    74434769 :: Word32 <- getWord32be
    4041869858 :: Word32 <- getWord32be
    63569 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    v_16 :: Word16 <- getWord16be
    v_17 :: Word8 <- getWord8
    v_18 :: Word16 <- getWord16be
    v_19 :: Word8 <- getWord8
    190 :: Word8 <- getWord8
    2671 :: Word16 <- getWord16be
    43 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    v_21 :: Word8 <- getWord8
    v_22 :: Word8 <- getWord8
    v_23 :: Word32 <- getWord32be
    7 :: Word8 <- getWord8
    v_24 :: Word16 <- getWord16be
    v_25 :: Word32 <- getWord32be
    v_26 :: Word8 <- getWord8
    v_27 :: Word32 <- getWord32be
    30 :: Word8 <- getWord8
    v_28 :: Word8 <- getWord8
    48 :: Word8 <- getWord8
    v_29 :: Word16 <- getWord16be
    8871 :: Word16 <- getWord16be
    v_30 :: Word32 <- getWord32be
    2155381268 :: Word32 <- getWord32be
    45 :: Word8 <- getWord8
    267 :: Word16 <- getWord16be
    59780 :: Word16 <- getWord16be
    2466916512 :: Word32 <- getWord32be
    192 :: Word8 <- getWord8
    v_31 :: Word8 <- getWord8
    v_32 :: Word8 <- getWord8
    v_33 :: Word32 <- getWord32be
    v_34 :: Word16 <- getWord16be
    v_35 :: Word32 <- getWord32be
    851702763 :: Word32 <- getWord32be
    704714615 :: Word32 <- getWord32be
    v_36 :: Word8 <- getWord8
    v_37 :: Word16 <- getWord16be
    v_38 :: Word8 <- getWord8
    48144 :: Word16 <- getWord16be
    v_39 :: Word16 <- getWord16be
    1394412590 :: Word32 <- getWord32be
    431384179 :: Word32 <- getWord32be
    3748888517 :: Word32 <- getWord32be
    v_40 :: Word16 <- getWord16be
    64572 :: Word16 <- getWord16be
    v_41 :: Word16 <- getWord16be
    28998 :: Word16 <- getWord16be
    1988339770 :: Word32 <- getWord32be
    v_42 :: Word16 <- getWord16be
    155 :: Word8 <- getWord8
    v_43 :: Word16 <- getWord16be
    v_44 :: Word32 <- getWord32be
    219 :: Word8 <- getWord8
    2963938377 :: Word32 <- getWord32be
    v_45 :: Word8 <- getWord8
    2751312128 :: Word32 <- getWord32be
    v_46 :: Word16 <- getWord16be
    v_47 :: Word8 <- getWord8
    61 :: Word8 <- getWord8
    v_48 :: Word16 <- getWord16be
    7576 :: Word16 <- getWord16be
    v_49 :: Word32 <- getWord32be
    v_50 :: Word8 <- getWord8
    2226 :: Word16 <- getWord16be
    128 :: Word8 <- getWord8
    370197871 :: Word32 <- getWord32be
    v_51 :: Word32 <- getWord32be
    34797 :: Word16 <- getWord16be
    63300 :: Word16 <- getWord16be
    11749 :: Word16 <- getWord16be
    v_52 :: Word16 <- getWord16be
    16660 :: Word16 <- getWord16be
    25125 :: Word16 <- getWord16be
    v_53 :: Word16 <- getWord16be
    17975 :: Word16 <- getWord16be
    3676528469 :: Word32 <- getWord32be
    2358582365 :: Word32 <- getWord32be
    v_54 :: Word32 <- getWord32be
    113 :: Word8 <- getWord8
    63222 :: Word16 <- getWord16be
    254 :: Word8 <- getWord8
    v_55 :: Word32 <- getWord32be
    v_56 :: Word32 <- getWord32be
    18130 :: Word16 <- getWord16be
    v_57 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word32Value v_33 , Word16Value v_34 , Word32Value v_35 , Word8Value v_36 , Word16Value v_37 , Word8Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word16Value v_42 , Word16Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word32Value v_55 , Word32Value v_56 , Word16Value v_57 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word32Value v_33 , Word16Value v_34 , Word32Value v_35 , Word8Value v_36 , Word16Value v_37 , Word8Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word16Value v_42 , Word16Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word32Value v_55 , Word32Value v_56 , Word16Value v_57 ] = vs 
    putWord32be 2558542691
    putWord16be v_0
    putWord8 v_1
    putWord32be 3259315371
    putWord8 (30 :: Word8)
    putWord16be 47557
    putWord16be 32694
    putWord8 v_2
    putWord16be v_3
    putWord16be 9421
    putWord8 v_4
    putWord8 v_5
    putWord8 v_6
    putWord16be 13643
    putWord32be 3627188095
    putWord8 v_7
    putWord16be 10194
    putWord8 (198 :: Word8)
    putWord16be v_8
    putWord32be 496346808
    putWord8 v_9
    putWord32be v_10
    putWord8 (104 :: Word8)
    putWord32be 955028121
    putWord32be 3019309217
    putWord8 v_11
    putWord8 v_12
    putWord8 v_13
    putWord8 (193 :: Word8)
    putWord8 (28 :: Word8)
    putWord32be v_14
    putWord8 (25 :: Word8)
    putWord32be 74434769
    putWord32be 4041869858
    putWord16be 63569
    putWord8 v_15
    putWord16be v_16
    putWord8 v_17
    putWord16be v_18
    putWord8 v_19
    putWord8 (190 :: Word8)
    putWord16be 2671
    putWord8 (43 :: Word8)
    putWord8 v_20
    putWord8 v_21
    putWord8 v_22
    putWord32be v_23
    putWord8 (7 :: Word8)
    putWord16be v_24
    putWord32be v_25
    putWord8 v_26
    putWord32be v_27
    putWord8 (30 :: Word8)
    putWord8 v_28
    putWord8 (48 :: Word8)
    putWord16be v_29
    putWord16be 8871
    putWord32be v_30
    putWord32be 2155381268
    putWord8 (45 :: Word8)
    putWord16be 267
    putWord16be 59780
    putWord32be 2466916512
    putWord8 (192 :: Word8)
    putWord8 v_31
    putWord8 v_32
    putWord32be v_33
    putWord16be v_34
    putWord32be v_35
    putWord32be 851702763
    putWord32be 704714615
    putWord8 v_36
    putWord16be v_37
    putWord8 v_38
    putWord16be 48144
    putWord16be v_39
    putWord32be 1394412590
    putWord32be 431384179
    putWord32be 3748888517
    putWord16be v_40
    putWord16be 64572
    putWord16be v_41
    putWord16be 28998
    putWord32be 1988339770
    putWord16be v_42
    putWord8 (155 :: Word8)
    putWord16be v_43
    putWord32be v_44
    putWord8 (219 :: Word8)
    putWord32be 2963938377
    putWord8 v_45
    putWord32be 2751312128
    putWord16be v_46
    putWord8 v_47
    putWord8 (61 :: Word8)
    putWord16be v_48
    putWord16be 7576
    putWord32be v_49
    putWord8 v_50
    putWord16be 2226
    putWord8 (128 :: Word8)
    putWord32be 370197871
    putWord32be v_51
    putWord16be 34797
    putWord16be 63300
    putWord16be 11749
    putWord16be v_52
    putWord16be 16660
    putWord16be 25125
    putWord16be v_53
    putWord16be 17975
    putWord32be 3676528469
    putWord32be 2358582365
    putWord32be v_54
    putWord8 (113 :: Word8)
    putWord16be 63222
    putWord8 (254 :: Word8)
    putWord32be v_55
    putWord32be v_56
    putWord16be 18130
    putWord16be v_57
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2558542691),Hole {byte_offset = 4, hole_type = Word16Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word32Value 3259315371),Value (Word8Value 30),Value (Word16Value 47557),Value (Word16Value 32694),Hole {byte_offset = 16, hole_type = Word8Hole},Hole {byte_offset = 17, hole_type = Word16Hole},Value (Word16Value 9421),Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word8Hole},Hole {byte_offset = 23, hole_type = Word8Hole},Value (Word16Value 13643),Value (Word32Value 3627188095),Hole {byte_offset = 30, hole_type = Word8Hole},Value (Word16Value 10194),Value (Word8Value 198),Hole {byte_offset = 34, hole_type = Word16Hole},Value (Word32Value 496346808),Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word32Hole},Value (Word8Value 104),Value (Word32Value 955028121),Value (Word32Value 3019309217),Hole {byte_offset = 54, hole_type = Word8Hole},Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word8Hole},Value (Word8Value 193),Value (Word8Value 28),Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word8Value 25),Value (Word32Value 74434769),Value (Word32Value 4041869858),Value (Word16Value 63569),Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word16Hole},Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word16Hole},Hole {byte_offset = 80, hole_type = Word8Hole},Value (Word8Value 190),Value (Word16Value 2671),Value (Word8Value 43),Hole {byte_offset = 85, hole_type = Word8Hole},Hole {byte_offset = 86, hole_type = Word8Hole},Hole {byte_offset = 87, hole_type = Word8Hole},Hole {byte_offset = 88, hole_type = Word32Hole},Value (Word8Value 7),Hole {byte_offset = 93, hole_type = Word16Hole},Hole {byte_offset = 95, hole_type = Word32Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Hole {byte_offset = 100, hole_type = Word32Hole},Value (Word8Value 30),Hole {byte_offset = 105, hole_type = Word8Hole},Value (Word8Value 48),Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word16Value 8871),Hole {byte_offset = 111, hole_type = Word32Hole},Value (Word32Value 2155381268),Value (Word8Value 45),Value (Word16Value 267),Value (Word16Value 59780),Value (Word32Value 2466916512),Value (Word8Value 192),Hole {byte_offset = 129, hole_type = Word8Hole},Hole {byte_offset = 130, hole_type = Word8Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Hole {byte_offset = 135, hole_type = Word16Hole},Hole {byte_offset = 137, hole_type = Word32Hole},Value (Word32Value 851702763),Value (Word32Value 704714615),Hole {byte_offset = 149, hole_type = Word8Hole},Hole {byte_offset = 150, hole_type = Word16Hole},Hole {byte_offset = 152, hole_type = Word8Hole},Value (Word16Value 48144),Hole {byte_offset = 155, hole_type = Word16Hole},Value (Word32Value 1394412590),Value (Word32Value 431384179),Value (Word32Value 3748888517),Hole {byte_offset = 169, hole_type = Word16Hole},Value (Word16Value 64572),Hole {byte_offset = 173, hole_type = Word16Hole},Value (Word16Value 28998),Value (Word32Value 1988339770),Hole {byte_offset = 181, hole_type = Word16Hole},Value (Word8Value 155),Hole {byte_offset = 184, hole_type = Word16Hole},Hole {byte_offset = 186, hole_type = Word32Hole},Value (Word8Value 219),Value (Word32Value 2963938377),Hole {byte_offset = 195, hole_type = Word8Hole},Value (Word32Value 2751312128),Hole {byte_offset = 200, hole_type = Word16Hole},Hole {byte_offset = 202, hole_type = Word8Hole},Value (Word8Value 61),Hole {byte_offset = 204, hole_type = Word16Hole},Value (Word16Value 7576),Hole {byte_offset = 208, hole_type = Word32Hole},Hole {byte_offset = 212, hole_type = Word8Hole},Value (Word16Value 2226),Value (Word8Value 128),Value (Word32Value 370197871),Hole {byte_offset = 220, hole_type = Word32Hole},Value (Word16Value 34797),Value (Word16Value 63300),Value (Word16Value 11749),Hole {byte_offset = 230, hole_type = Word16Hole},Value (Word16Value 16660),Value (Word16Value 25125),Hole {byte_offset = 236, hole_type = Word16Hole},Value (Word16Value 17975),Value (Word32Value 3676528469),Value (Word32Value 2358582365),Hole {byte_offset = 248, hole_type = Word32Hole},Value (Word8Value 113),Value (Word16Value 63222),Value (Word8Value 254),Hole {byte_offset = 256, hole_type = Word32Hole},Hole {byte_offset = 260, hole_type = Word32Hole},Value (Word16Value 18130),Hole {byte_offset = 266, hole_type = Word16Hole}]}
