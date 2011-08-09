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
    209 :: Word8 <- getWord8
    v_2 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    v_4 :: Word16 <- getWord16be
    v_5 :: Word32 <- getWord32be
    v_6 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    v_8 :: Word8 <- getWord8
    39260 :: Word16 <- getWord16be
    211 :: Word8 <- getWord8
    57863 :: Word16 <- getWord16be
    14767 :: Word16 <- getWord16be
    154 :: Word8 <- getWord8
    v_9 :: Word16 <- getWord16be
    155 :: Word8 <- getWord8
    27071 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    23025 :: Word16 <- getWord16be
    1925355127 :: Word32 <- getWord32be
    v_11 :: Word16 <- getWord16be
    57573 :: Word16 <- getWord16be
    48378 :: Word16 <- getWord16be
    2991714902 :: Word32 <- getWord32be
    186 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    57 :: Word8 <- getWord8
    v_13 :: Word8 <- getWord8
    v_14 :: Word16 <- getWord16be
    27402 :: Word16 <- getWord16be
    217 :: Word8 <- getWord8
    630684348 :: Word32 <- getWord32be
    45633 :: Word16 <- getWord16be
    55 :: Word8 <- getWord8
    52000 :: Word16 <- getWord16be
    99 :: Word8 <- getWord8
    1625916310 :: Word32 <- getWord32be
    1409611805 :: Word32 <- getWord32be
    v_15 :: Word32 <- getWord32be
    v_16 :: Word8 <- getWord8
    8277 :: Word16 <- getWord16be
    v_17 :: Word16 <- getWord16be
    v_18 :: Word16 <- getWord16be
    v_19 :: Word8 <- getWord8
    181 :: Word8 <- getWord8
    1802738815 :: Word32 <- getWord32be
    30659 :: Word16 <- getWord16be
    2632422524 :: Word32 <- getWord32be
    52233 :: Word16 <- getWord16be
    82 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    18180 :: Word16 <- getWord16be
    v_21 :: Word32 <- getWord32be
    231 :: Word8 <- getWord8
    4112411337 :: Word32 <- getWord32be
    v_22 :: Word8 <- getWord8
    567386867 :: Word32 <- getWord32be
    2 :: Word8 <- getWord8
    v_23 :: Word32 <- getWord32be
    v_24 :: Word8 <- getWord8
    v_25 :: Word8 <- getWord8
    v_26 :: Word32 <- getWord32be
    v_27 :: Word32 <- getWord32be
    v_28 :: Word32 <- getWord32be
    24 :: Word8 <- getWord8
    4367 :: Word16 <- getWord16be
    20100 :: Word16 <- getWord16be
    v_29 :: Word32 <- getWord32be
    v_30 :: Word8 <- getWord8
    v_31 :: Word32 <- getWord32be
    v_32 :: Word32 <- getWord32be
    1562301866 :: Word32 <- getWord32be
    42964 :: Word16 <- getWord16be
    57690 :: Word16 <- getWord16be
    v_33 :: Word16 <- getWord16be
    v_34 :: Word16 <- getWord16be
    1955177252 :: Word32 <- getWord32be
    90 :: Word8 <- getWord8
    v_35 :: Word8 <- getWord8
    1823558854 :: Word32 <- getWord32be
    v_36 :: Word32 <- getWord32be
    v_37 :: Word32 <- getWord32be
    71 :: Word8 <- getWord8
    v_38 :: Word32 <- getWord32be
    1987288448 :: Word32 <- getWord32be
    3103922222 :: Word32 <- getWord32be
    205 :: Word8 <- getWord8
    v_39 :: Word16 <- getWord16be
    v_40 :: Word8 <- getWord8
    v_41 :: Word32 <- getWord32be
    v_42 :: Word16 <- getWord16be
    2440134852 :: Word32 <- getWord32be
    20336 :: Word16 <- getWord16be
    3712755120 :: Word32 <- getWord32be
    141 :: Word8 <- getWord8
    9 :: Word8 <- getWord8
    328639594 :: Word32 <- getWord32be
    v_43 :: Word16 <- getWord16be
    377744175 :: Word32 <- getWord32be
    3851718104 :: Word32 <- getWord32be
    176 :: Word8 <- getWord8
    112 :: Word8 <- getWord8
    1255559602 :: Word32 <- getWord32be
    v_44 :: Word8 <- getWord8
    v_45 :: Word8 <- getWord8
    v_46 :: Word8 <- getWord8
    v_47 :: Word8 <- getWord8
    v_48 :: Word32 <- getWord32be
    3130 :: Word16 <- getWord16be
    v_49 :: Word32 <- getWord32be
    v_50 :: Word32 <- getWord32be
    v_51 :: Word32 <- getWord32be
    v_52 :: Word16 <- getWord16be
    254 :: Word8 <- getWord8
    v_53 :: Word32 <- getWord32be
    19581 :: Word16 <- getWord16be
    v_54 :: Word32 <- getWord32be
    v_55 :: Word8 <- getWord8
    v_56 :: Word16 <- getWord16be
    4047053620 :: Word32 <- getWord32be
    v_57 :: Word16 <- getWord16be
    34002 :: Word16 <- getWord16be
    1959268807 :: Word32 <- getWord32be
    return  [ Word16Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word32Value v_23 , Word8Value v_24 , Word8Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word16Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word8Value v_44 , Word8Value v_45 , Word8Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word32Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word8Value v_55 , Word16Value v_56 , Word16Value v_57 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word32Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word8Value v_22 , Word32Value v_23 , Word8Value v_24 , Word8Value v_25 , Word32Value v_26 , Word32Value v_27 , Word32Value v_28 , Word32Value v_29 , Word8Value v_30 , Word32Value v_31 , Word32Value v_32 , Word16Value v_33 , Word16Value v_34 , Word8Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word16Value v_43 , Word8Value v_44 , Word8Value v_45 , Word8Value v_46 , Word8Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word32Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word8Value v_55 , Word16Value v_56 , Word16Value v_57 ] = vs 
    putWord16be v_0
    putWord32be v_1
    putWord8 (209 :: Word8)
    putWord8 v_2
    putWord32be v_3
    putWord16be v_4
    putWord32be v_5
    putWord8 v_6
    putWord32be v_7
    putWord8 v_8
    putWord16be 39260
    putWord8 (211 :: Word8)
    putWord16be 57863
    putWord16be 14767
    putWord8 (154 :: Word8)
    putWord16be v_9
    putWord8 (155 :: Word8)
    putWord16be 27071
    putWord32be v_10
    putWord16be 23025
    putWord32be 1925355127
    putWord16be v_11
    putWord16be 57573
    putWord16be 48378
    putWord32be 2991714902
    putWord8 (186 :: Word8)
    putWord8 v_12
    putWord8 (57 :: Word8)
    putWord8 v_13
    putWord16be v_14
    putWord16be 27402
    putWord8 (217 :: Word8)
    putWord32be 630684348
    putWord16be 45633
    putWord8 (55 :: Word8)
    putWord16be 52000
    putWord8 (99 :: Word8)
    putWord32be 1625916310
    putWord32be 1409611805
    putWord32be v_15
    putWord8 v_16
    putWord16be 8277
    putWord16be v_17
    putWord16be v_18
    putWord8 v_19
    putWord8 (181 :: Word8)
    putWord32be 1802738815
    putWord16be 30659
    putWord32be 2632422524
    putWord16be 52233
    putWord8 (82 :: Word8)
    putWord8 v_20
    putWord16be 18180
    putWord32be v_21
    putWord8 (231 :: Word8)
    putWord32be 4112411337
    putWord8 v_22
    putWord32be 567386867
    putWord8 (2 :: Word8)
    putWord32be v_23
    putWord8 v_24
    putWord8 v_25
    putWord32be v_26
    putWord32be v_27
    putWord32be v_28
    putWord8 (24 :: Word8)
    putWord16be 4367
    putWord16be 20100
    putWord32be v_29
    putWord8 v_30
    putWord32be v_31
    putWord32be v_32
    putWord32be 1562301866
    putWord16be 42964
    putWord16be 57690
    putWord16be v_33
    putWord16be v_34
    putWord32be 1955177252
    putWord8 (90 :: Word8)
    putWord8 v_35
    putWord32be 1823558854
    putWord32be v_36
    putWord32be v_37
    putWord8 (71 :: Word8)
    putWord32be v_38
    putWord32be 1987288448
    putWord32be 3103922222
    putWord8 (205 :: Word8)
    putWord16be v_39
    putWord8 v_40
    putWord32be v_41
    putWord16be v_42
    putWord32be 2440134852
    putWord16be 20336
    putWord32be 3712755120
    putWord8 (141 :: Word8)
    putWord8 (9 :: Word8)
    putWord32be 328639594
    putWord16be v_43
    putWord32be 377744175
    putWord32be 3851718104
    putWord8 (176 :: Word8)
    putWord8 (112 :: Word8)
    putWord32be 1255559602
    putWord8 v_44
    putWord8 v_45
    putWord8 v_46
    putWord8 v_47
    putWord32be v_48
    putWord16be 3130
    putWord32be v_49
    putWord32be v_50
    putWord32be v_51
    putWord16be v_52
    putWord8 (254 :: Word8)
    putWord32be v_53
    putWord16be 19581
    putWord32be v_54
    putWord8 v_55
    putWord16be v_56
    putWord32be 4047053620
    putWord16be v_57
    putWord16be 34002
    putWord32be 1959268807
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word32Hole},Value (Word8Value 209),Hole {byte_offset = 7, hole_type = Word8Hole},Hole {byte_offset = 8, hole_type = Word32Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word32Hole},Hole {byte_offset = 23, hole_type = Word8Hole},Value (Word16Value 39260),Value (Word8Value 211),Value (Word16Value 57863),Value (Word16Value 14767),Value (Word8Value 154),Hole {byte_offset = 32, hole_type = Word16Hole},Value (Word8Value 155),Value (Word16Value 27071),Hole {byte_offset = 37, hole_type = Word32Hole},Value (Word16Value 23025),Value (Word32Value 1925355127),Hole {byte_offset = 47, hole_type = Word16Hole},Value (Word16Value 57573),Value (Word16Value 48378),Value (Word32Value 2991714902),Value (Word8Value 186),Hole {byte_offset = 58, hole_type = Word8Hole},Value (Word8Value 57),Hole {byte_offset = 60, hole_type = Word8Hole},Hole {byte_offset = 61, hole_type = Word16Hole},Value (Word16Value 27402),Value (Word8Value 217),Value (Word32Value 630684348),Value (Word16Value 45633),Value (Word8Value 55),Value (Word16Value 52000),Value (Word8Value 99),Value (Word32Value 1625916310),Value (Word32Value 1409611805),Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Value (Word16Value 8277),Hole {byte_offset = 91, hole_type = Word16Hole},Hole {byte_offset = 93, hole_type = Word16Hole},Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word8Value 181),Value (Word32Value 1802738815),Value (Word16Value 30659),Value (Word32Value 2632422524),Value (Word16Value 52233),Value (Word8Value 82),Hole {byte_offset = 110, hole_type = Word8Hole},Value (Word16Value 18180),Hole {byte_offset = 113, hole_type = Word32Hole},Value (Word8Value 231),Value (Word32Value 4112411337),Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word32Value 567386867),Value (Word8Value 2),Hole {byte_offset = 128, hole_type = Word32Hole},Hole {byte_offset = 132, hole_type = Word8Hole},Hole {byte_offset = 133, hole_type = Word8Hole},Hole {byte_offset = 134, hole_type = Word32Hole},Hole {byte_offset = 138, hole_type = Word32Hole},Hole {byte_offset = 142, hole_type = Word32Hole},Value (Word8Value 24),Value (Word16Value 4367),Value (Word16Value 20100),Hole {byte_offset = 151, hole_type = Word32Hole},Hole {byte_offset = 155, hole_type = Word8Hole},Hole {byte_offset = 156, hole_type = Word32Hole},Hole {byte_offset = 160, hole_type = Word32Hole},Value (Word32Value 1562301866),Value (Word16Value 42964),Value (Word16Value 57690),Hole {byte_offset = 172, hole_type = Word16Hole},Hole {byte_offset = 174, hole_type = Word16Hole},Value (Word32Value 1955177252),Value (Word8Value 90),Hole {byte_offset = 181, hole_type = Word8Hole},Value (Word32Value 1823558854),Hole {byte_offset = 186, hole_type = Word32Hole},Hole {byte_offset = 190, hole_type = Word32Hole},Value (Word8Value 71),Hole {byte_offset = 195, hole_type = Word32Hole},Value (Word32Value 1987288448),Value (Word32Value 3103922222),Value (Word8Value 205),Hole {byte_offset = 208, hole_type = Word16Hole},Hole {byte_offset = 210, hole_type = Word8Hole},Hole {byte_offset = 211, hole_type = Word32Hole},Hole {byte_offset = 215, hole_type = Word16Hole},Value (Word32Value 2440134852),Value (Word16Value 20336),Value (Word32Value 3712755120),Value (Word8Value 141),Value (Word8Value 9),Value (Word32Value 328639594),Hole {byte_offset = 233, hole_type = Word16Hole},Value (Word32Value 377744175),Value (Word32Value 3851718104),Value (Word8Value 176),Value (Word8Value 112),Value (Word32Value 1255559602),Hole {byte_offset = 249, hole_type = Word8Hole},Hole {byte_offset = 250, hole_type = Word8Hole},Hole {byte_offset = 251, hole_type = Word8Hole},Hole {byte_offset = 252, hole_type = Word8Hole},Hole {byte_offset = 253, hole_type = Word32Hole},Value (Word16Value 3130),Hole {byte_offset = 259, hole_type = Word32Hole},Hole {byte_offset = 263, hole_type = Word32Hole},Hole {byte_offset = 267, hole_type = Word32Hole},Hole {byte_offset = 271, hole_type = Word16Hole},Value (Word8Value 254),Hole {byte_offset = 274, hole_type = Word32Hole},Value (Word16Value 19581),Hole {byte_offset = 280, hole_type = Word32Hole},Hole {byte_offset = 284, hole_type = Word8Hole},Hole {byte_offset = 285, hole_type = Word16Hole},Value (Word32Value 4047053620),Hole {byte_offset = 291, hole_type = Word16Hole},Value (Word16Value 34002),Value (Word32Value 1959268807)]}
