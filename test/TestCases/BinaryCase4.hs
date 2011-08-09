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
    129 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    1745008075 :: Word32 <- getWord32be
    237 :: Word8 <- getWord8
    34986 :: Word16 <- getWord16be
    v_1 :: Word8 <- getWord8
    v_2 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    33 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    v_6 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    v_9 :: Word8 <- getWord8
    37242 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    130 :: Word8 <- getWord8
    v_11 :: Word16 <- getWord16be
    v_12 :: Word16 <- getWord16be
    254 :: Word8 <- getWord8
    27392 :: Word16 <- getWord16be
    v_13 :: Word16 <- getWord16be
    33 :: Word8 <- getWord8
    v_14 :: Word8 <- getWord8
    2886830717 :: Word32 <- getWord32be
    60492 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    3270584180 :: Word32 <- getWord32be
    v_17 :: Word8 <- getWord8
    124 :: Word8 <- getWord8
    129 :: Word8 <- getWord8
    1883577371 :: Word32 <- getWord32be
    v_18 :: Word32 <- getWord32be
    12671 :: Word16 <- getWord16be
    v_19 :: Word8 <- getWord8
    v_20 :: Word32 <- getWord32be
    115 :: Word8 <- getWord8
    v_21 :: Word16 <- getWord16be
    v_22 :: Word8 <- getWord8
    32 :: Word8 <- getWord8
    4550 :: Word16 <- getWord16be
    4262293287 :: Word32 <- getWord32be
    v_23 :: Word16 <- getWord16be
    151 :: Word8 <- getWord8
    v_24 :: Word16 <- getWord16be
    v_25 :: Word8 <- getWord8
    v_26 :: Word32 <- getWord32be
    149 :: Word8 <- getWord8
    v_27 :: Word16 <- getWord16be
    67 :: Word8 <- getWord8
    7060 :: Word16 <- getWord16be
    630441585 :: Word32 <- getWord32be
    1877597801 :: Word32 <- getWord32be
    40996 :: Word16 <- getWord16be
    52982 :: Word16 <- getWord16be
    1387114885 :: Word32 <- getWord32be
    v_28 :: Word16 <- getWord16be
    v_29 :: Word8 <- getWord8
    145 :: Word8 <- getWord8
    v_30 :: Word8 <- getWord8
    v_31 :: Word16 <- getWord16be
    184 :: Word8 <- getWord8
    49552 :: Word16 <- getWord16be
    v_32 :: Word32 <- getWord32be
    1479873309 :: Word32 <- getWord32be
    v_33 :: Word32 <- getWord32be
    69 :: Word8 <- getWord8
    595851813 :: Word32 <- getWord32be
    79 :: Word8 <- getWord8
    26058 :: Word16 <- getWord16be
    945175652 :: Word32 <- getWord32be
    57975 :: Word16 <- getWord16be
    v_34 :: Word32 <- getWord32be
    v_35 :: Word16 <- getWord16be
    v_36 :: Word8 <- getWord8
    823389206 :: Word32 <- getWord32be
    101 :: Word8 <- getWord8
    v_37 :: Word32 <- getWord32be
    v_38 :: Word8 <- getWord8
    7189 :: Word16 <- getWord16be
    v_39 :: Word32 <- getWord32be
    203 :: Word8 <- getWord8
    1216252055 :: Word32 <- getWord32be
    3590855486 :: Word32 <- getWord32be
    11002 :: Word16 <- getWord16be
    104 :: Word8 <- getWord8
    158196975 :: Word32 <- getWord32be
    132 :: Word8 <- getWord8
    37409 :: Word16 <- getWord16be
    v_40 :: Word32 <- getWord32be
    v_41 :: Word32 <- getWord32be
    36703 :: Word16 <- getWord16be
    v_42 :: Word8 <- getWord8
    169 :: Word8 <- getWord8
    51949 :: Word16 <- getWord16be
    2266927124 :: Word32 <- getWord32be
    4125292452 :: Word32 <- getWord32be
    v_43 :: Word8 <- getWord8
    v_44 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    v_46 :: Word16 <- getWord16be
    368495509 :: Word32 <- getWord32be
    1397684059 :: Word32 <- getWord32be
    3116805292 :: Word32 <- getWord32be
    112 :: Word8 <- getWord8
    250 :: Word8 <- getWord8
    v_47 :: Word8 <- getWord8
    1232463606 :: Word32 <- getWord32be
    41 :: Word8 <- getWord8
    v_48 :: Word32 <- getWord32be
    108 :: Word8 <- getWord8
    64853 :: Word16 <- getWord16be
    v_49 :: Word32 <- getWord32be
    86 :: Word8 <- getWord8
    32412 :: Word16 <- getWord16be
    31 :: Word8 <- getWord8
    v_50 :: Word8 <- getWord8
    80 :: Word8 <- getWord8
    v_51 :: Word32 <- getWord32be
    43 :: Word8 <- getWord8
    301494050 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word32Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word8Value v_38 , Word32Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word16Value v_21 , Word8Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word32Value v_32 , Word32Value v_33 , Word32Value v_34 , Word16Value v_35 , Word8Value v_36 , Word32Value v_37 , Word8Value v_38 , Word32Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 ] = vs 
    putWord8 (129 :: Word8)
    putWord32be v_0
    putWord32be 1745008075
    putWord8 (237 :: Word8)
    putWord16be 34986
    putWord8 v_1
    putWord32be v_2
    putWord16be v_3
    putWord32be v_4
    putWord8 (33 :: Word8)
    putWord16be v_5
    putWord32be v_6
    putWord32be v_7
    putWord16be v_8
    putWord8 v_9
    putWord16be 37242
    putWord32be v_10
    putWord8 (130 :: Word8)
    putWord16be v_11
    putWord16be v_12
    putWord8 (254 :: Word8)
    putWord16be 27392
    putWord16be v_13
    putWord8 (33 :: Word8)
    putWord8 v_14
    putWord32be 2886830717
    putWord16be 60492
    putWord8 v_15
    putWord32be v_16
    putWord32be 3270584180
    putWord8 v_17
    putWord8 (124 :: Word8)
    putWord8 (129 :: Word8)
    putWord32be 1883577371
    putWord32be v_18
    putWord16be 12671
    putWord8 v_19
    putWord32be v_20
    putWord8 (115 :: Word8)
    putWord16be v_21
    putWord8 v_22
    putWord8 (32 :: Word8)
    putWord16be 4550
    putWord32be 4262293287
    putWord16be v_23
    putWord8 (151 :: Word8)
    putWord16be v_24
    putWord8 v_25
    putWord32be v_26
    putWord8 (149 :: Word8)
    putWord16be v_27
    putWord8 (67 :: Word8)
    putWord16be 7060
    putWord32be 630441585
    putWord32be 1877597801
    putWord16be 40996
    putWord16be 52982
    putWord32be 1387114885
    putWord16be v_28
    putWord8 v_29
    putWord8 (145 :: Word8)
    putWord8 v_30
    putWord16be v_31
    putWord8 (184 :: Word8)
    putWord16be 49552
    putWord32be v_32
    putWord32be 1479873309
    putWord32be v_33
    putWord8 (69 :: Word8)
    putWord32be 595851813
    putWord8 (79 :: Word8)
    putWord16be 26058
    putWord32be 945175652
    putWord16be 57975
    putWord32be v_34
    putWord16be v_35
    putWord8 v_36
    putWord32be 823389206
    putWord8 (101 :: Word8)
    putWord32be v_37
    putWord8 v_38
    putWord16be 7189
    putWord32be v_39
    putWord8 (203 :: Word8)
    putWord32be 1216252055
    putWord32be 3590855486
    putWord16be 11002
    putWord8 (104 :: Word8)
    putWord32be 158196975
    putWord8 (132 :: Word8)
    putWord16be 37409
    putWord32be v_40
    putWord32be v_41
    putWord16be 36703
    putWord8 v_42
    putWord8 (169 :: Word8)
    putWord16be 51949
    putWord32be 2266927124
    putWord32be 4125292452
    putWord8 v_43
    putWord16be v_44
    putWord8 v_45
    putWord16be v_46
    putWord32be 368495509
    putWord32be 1397684059
    putWord32be 3116805292
    putWord8 (112 :: Word8)
    putWord8 (250 :: Word8)
    putWord8 v_47
    putWord32be 1232463606
    putWord8 (41 :: Word8)
    putWord32be v_48
    putWord8 (108 :: Word8)
    putWord16be 64853
    putWord32be v_49
    putWord8 (86 :: Word8)
    putWord16be 32412
    putWord8 (31 :: Word8)
    putWord8 v_50
    putWord8 (80 :: Word8)
    putWord32be v_51
    putWord8 (43 :: Word8)
    putWord32be 301494050
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 129),Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word32Value 1745008075),Value (Word8Value 237),Value (Word16Value 34986),Hole {byte_offset = 12, hole_type = Word8Hole},Hole {byte_offset = 13, hole_type = Word32Hole},Hole {byte_offset = 17, hole_type = Word16Hole},Hole {byte_offset = 19, hole_type = Word32Hole},Value (Word8Value 33),Hole {byte_offset = 24, hole_type = Word16Hole},Hole {byte_offset = 26, hole_type = Word32Hole},Hole {byte_offset = 30, hole_type = Word32Hole},Hole {byte_offset = 34, hole_type = Word16Hole},Hole {byte_offset = 36, hole_type = Word8Hole},Value (Word16Value 37242),Hole {byte_offset = 39, hole_type = Word32Hole},Value (Word8Value 130),Hole {byte_offset = 44, hole_type = Word16Hole},Hole {byte_offset = 46, hole_type = Word16Hole},Value (Word8Value 254),Value (Word16Value 27392),Hole {byte_offset = 51, hole_type = Word16Hole},Value (Word8Value 33),Hole {byte_offset = 54, hole_type = Word8Hole},Value (Word32Value 2886830717),Value (Word16Value 60492),Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Value (Word32Value 3270584180),Hole {byte_offset = 70, hole_type = Word8Hole},Value (Word8Value 124),Value (Word8Value 129),Value (Word32Value 1883577371),Hole {byte_offset = 77, hole_type = Word32Hole},Value (Word16Value 12671),Hole {byte_offset = 83, hole_type = Word8Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Value (Word8Value 115),Hole {byte_offset = 89, hole_type = Word16Hole},Hole {byte_offset = 91, hole_type = Word8Hole},Value (Word8Value 32),Value (Word16Value 4550),Value (Word32Value 4262293287),Hole {byte_offset = 99, hole_type = Word16Hole},Value (Word8Value 151),Hole {byte_offset = 102, hole_type = Word16Hole},Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word8Value 149),Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word8Value 67),Value (Word16Value 7060),Value (Word32Value 630441585),Value (Word32Value 1877597801),Value (Word16Value 40996),Value (Word16Value 52982),Value (Word32Value 1387114885),Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word8Hole},Value (Word8Value 145),Hole {byte_offset = 135, hole_type = Word8Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Value (Word8Value 184),Value (Word16Value 49552),Hole {byte_offset = 141, hole_type = Word32Hole},Value (Word32Value 1479873309),Hole {byte_offset = 149, hole_type = Word32Hole},Value (Word8Value 69),Value (Word32Value 595851813),Value (Word8Value 79),Value (Word16Value 26058),Value (Word32Value 945175652),Value (Word16Value 57975),Hole {byte_offset = 167, hole_type = Word32Hole},Hole {byte_offset = 171, hole_type = Word16Hole},Hole {byte_offset = 173, hole_type = Word8Hole},Value (Word32Value 823389206),Value (Word8Value 101),Hole {byte_offset = 179, hole_type = Word32Hole},Hole {byte_offset = 183, hole_type = Word8Hole},Value (Word16Value 7189),Hole {byte_offset = 186, hole_type = Word32Hole},Value (Word8Value 203),Value (Word32Value 1216252055),Value (Word32Value 3590855486),Value (Word16Value 11002),Value (Word8Value 104),Value (Word32Value 158196975),Value (Word8Value 132),Value (Word16Value 37409),Hole {byte_offset = 209, hole_type = Word32Hole},Hole {byte_offset = 213, hole_type = Word32Hole},Value (Word16Value 36703),Hole {byte_offset = 219, hole_type = Word8Hole},Value (Word8Value 169),Value (Word16Value 51949),Value (Word32Value 2266927124),Value (Word32Value 4125292452),Hole {byte_offset = 231, hole_type = Word8Hole},Hole {byte_offset = 232, hole_type = Word16Hole},Hole {byte_offset = 234, hole_type = Word8Hole},Hole {byte_offset = 235, hole_type = Word16Hole},Value (Word32Value 368495509),Value (Word32Value 1397684059),Value (Word32Value 3116805292),Value (Word8Value 112),Value (Word8Value 250),Hole {byte_offset = 251, hole_type = Word8Hole},Value (Word32Value 1232463606),Value (Word8Value 41),Hole {byte_offset = 257, hole_type = Word32Hole},Value (Word8Value 108),Value (Word16Value 64853),Hole {byte_offset = 264, hole_type = Word32Hole},Value (Word8Value 86),Value (Word16Value 32412),Value (Word8Value 31),Hole {byte_offset = 272, hole_type = Word8Hole},Value (Word8Value 80),Hole {byte_offset = 274, hole_type = Word32Hole},Value (Word8Value 43),Value (Word32Value 301494050)]}
