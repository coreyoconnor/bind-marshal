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
    134739095 :: Word32 <- getWord32be
    2113850728 :: Word32 <- getWord32be
    80 :: Word8 <- getWord8
    3259145265 :: Word32 <- getWord32be
    v_0 :: Word8 <- getWord8
    v_1 :: Word8 <- getWord8
    v_2 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    2588282236 :: Word32 <- getWord32be
    35 :: Word8 <- getWord8
    v_4 :: Word8 <- getWord8
    v_5 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    30872 :: Word16 <- getWord16be
    v_8 :: Word32 <- getWord32be
    12350 :: Word16 <- getWord16be
    1505489161 :: Word32 <- getWord32be
    1405 :: Word16 <- getWord16be
    1228133501 :: Word32 <- getWord32be
    60918 :: Word16 <- getWord16be
    v_9 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    53 :: Word8 <- getWord8
    v_11 :: Word32 <- getWord32be
    730631856 :: Word32 <- getWord32be
    v_12 :: Word8 <- getWord8
    v_13 :: Word8 <- getWord8
    v_14 :: Word32 <- getWord32be
    28 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    v_16 :: Word16 <- getWord16be
    v_17 :: Word8 <- getWord8
    v_18 :: Word8 <- getWord8
    229 :: Word8 <- getWord8
    v_19 :: Word32 <- getWord32be
    108 :: Word8 <- getWord8
    832637850 :: Word32 <- getWord32be
    v_20 :: Word8 <- getWord8
    v_21 :: Word16 <- getWord16be
    v_22 :: Word16 <- getWord16be
    v_23 :: Word16 <- getWord16be
    v_24 :: Word16 <- getWord16be
    2516593757 :: Word32 <- getWord32be
    v_25 :: Word8 <- getWord8
    v_26 :: Word32 <- getWord32be
    9342 :: Word16 <- getWord16be
    53646 :: Word16 <- getWord16be
    v_27 :: Word16 <- getWord16be
    3689317128 :: Word32 <- getWord32be
    v_28 :: Word16 <- getWord16be
    112 :: Word8 <- getWord8
    39080 :: Word16 <- getWord16be
    v_29 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    v_31 :: Word16 <- getWord16be
    1342887934 :: Word32 <- getWord32be
    25816 :: Word16 <- getWord16be
    v_32 :: Word8 <- getWord8
    129 :: Word8 <- getWord8
    v_33 :: Word16 <- getWord16be
    714970658 :: Word32 <- getWord32be
    v_34 :: Word32 <- getWord32be
    v_35 :: Word32 <- getWord32be
    27339 :: Word16 <- getWord16be
    v_36 :: Word16 <- getWord16be
    1916209577 :: Word32 <- getWord32be
    v_37 :: Word16 <- getWord16be
    3801424199 :: Word32 <- getWord32be
    8869 :: Word16 <- getWord16be
    1859706093 :: Word32 <- getWord32be
    17 :: Word8 <- getWord8
    v_38 :: Word8 <- getWord8
    v_39 :: Word8 <- getWord8
    233 :: Word8 <- getWord8
    436236999 :: Word32 <- getWord32be
    v_40 :: Word16 <- getWord16be
    4 :: Word8 <- getWord8
    v_41 :: Word8 <- getWord8
    v_42 :: Word32 <- getWord32be
    11 :: Word8 <- getWord8
    v_43 :: Word32 <- getWord32be
    111 :: Word8 <- getWord8
    v_44 :: Word8 <- getWord8
    v_45 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word32Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word32Value v_15 , Word16Value v_16 , Word8Value v_17 , Word8Value v_18 , Word32Value v_19 , Word8Value v_20 , Word16Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 , Word16Value v_36 , Word16Value v_37 , Word8Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word32Value v_42 , Word32Value v_43 , Word8Value v_44 , Word8Value v_45 ] = vs 
    putWord32be 134739095
    putWord32be 2113850728
    putWord8 (80 :: Word8)
    putWord32be 3259145265
    putWord8 v_0
    putWord8 v_1
    putWord8 v_2
    putWord16be v_3
    putWord32be 2588282236
    putWord8 (35 :: Word8)
    putWord8 v_4
    putWord8 v_5
    putWord32be v_6
    putWord8 v_7
    putWord16be 30872
    putWord32be v_8
    putWord16be 12350
    putWord32be 1505489161
    putWord16be 1405
    putWord32be 1228133501
    putWord16be 60918
    putWord8 v_9
    putWord32be v_10
    putWord8 (53 :: Word8)
    putWord32be v_11
    putWord32be 730631856
    putWord8 v_12
    putWord8 v_13
    putWord32be v_14
    putWord8 (28 :: Word8)
    putWord32be v_15
    putWord16be v_16
    putWord8 v_17
    putWord8 v_18
    putWord8 (229 :: Word8)
    putWord32be v_19
    putWord8 (108 :: Word8)
    putWord32be 832637850
    putWord8 v_20
    putWord16be v_21
    putWord16be v_22
    putWord16be v_23
    putWord16be v_24
    putWord32be 2516593757
    putWord8 v_25
    putWord32be v_26
    putWord16be 9342
    putWord16be 53646
    putWord16be v_27
    putWord32be 3689317128
    putWord16be v_28
    putWord8 (112 :: Word8)
    putWord16be 39080
    putWord16be v_29
    putWord16be v_30
    putWord16be v_31
    putWord32be 1342887934
    putWord16be 25816
    putWord8 v_32
    putWord8 (129 :: Word8)
    putWord16be v_33
    putWord32be 714970658
    putWord32be v_34
    putWord32be v_35
    putWord16be 27339
    putWord16be v_36
    putWord32be 1916209577
    putWord16be v_37
    putWord32be 3801424199
    putWord16be 8869
    putWord32be 1859706093
    putWord8 (17 :: Word8)
    putWord8 v_38
    putWord8 v_39
    putWord8 (233 :: Word8)
    putWord32be 436236999
    putWord16be v_40
    putWord8 (4 :: Word8)
    putWord8 v_41
    putWord32be v_42
    putWord8 (11 :: Word8)
    putWord32be v_43
    putWord8 (111 :: Word8)
    putWord8 v_44
    putWord8 v_45
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 134739095),Value (Word32Value 2113850728),Value (Word8Value 80),Value (Word32Value 3259145265),Hole {byte_offset = 13, hole_type = Word8Hole},Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Hole {byte_offset = 16, hole_type = Word16Hole},Value (Word32Value 2588282236),Value (Word8Value 35),Hole {byte_offset = 23, hole_type = Word8Hole},Hole {byte_offset = 24, hole_type = Word8Hole},Hole {byte_offset = 25, hole_type = Word32Hole},Hole {byte_offset = 29, hole_type = Word8Hole},Value (Word16Value 30872),Hole {byte_offset = 32, hole_type = Word32Hole},Value (Word16Value 12350),Value (Word32Value 1505489161),Value (Word16Value 1405),Value (Word32Value 1228133501),Value (Word16Value 60918),Hole {byte_offset = 50, hole_type = Word8Hole},Hole {byte_offset = 51, hole_type = Word32Hole},Value (Word8Value 53),Hole {byte_offset = 56, hole_type = Word32Hole},Value (Word32Value 730631856),Hole {byte_offset = 64, hole_type = Word8Hole},Hole {byte_offset = 65, hole_type = Word8Hole},Hole {byte_offset = 66, hole_type = Word32Hole},Value (Word8Value 28),Hole {byte_offset = 71, hole_type = Word32Hole},Hole {byte_offset = 75, hole_type = Word16Hole},Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word8Hole},Value (Word8Value 229),Hole {byte_offset = 80, hole_type = Word32Hole},Value (Word8Value 108),Value (Word32Value 832637850),Hole {byte_offset = 89, hole_type = Word8Hole},Hole {byte_offset = 90, hole_type = Word16Hole},Hole {byte_offset = 92, hole_type = Word16Hole},Hole {byte_offset = 94, hole_type = Word16Hole},Hole {byte_offset = 96, hole_type = Word16Hole},Value (Word32Value 2516593757),Hole {byte_offset = 102, hole_type = Word8Hole},Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word16Value 9342),Value (Word16Value 53646),Hole {byte_offset = 111, hole_type = Word16Hole},Value (Word32Value 3689317128),Hole {byte_offset = 117, hole_type = Word16Hole},Value (Word8Value 112),Value (Word16Value 39080),Hole {byte_offset = 122, hole_type = Word16Hole},Hole {byte_offset = 124, hole_type = Word16Hole},Hole {byte_offset = 126, hole_type = Word16Hole},Value (Word32Value 1342887934),Value (Word16Value 25816),Hole {byte_offset = 134, hole_type = Word8Hole},Value (Word8Value 129),Hole {byte_offset = 136, hole_type = Word16Hole},Value (Word32Value 714970658),Hole {byte_offset = 142, hole_type = Word32Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word16Value 27339),Hole {byte_offset = 152, hole_type = Word16Hole},Value (Word32Value 1916209577),Hole {byte_offset = 158, hole_type = Word16Hole},Value (Word32Value 3801424199),Value (Word16Value 8869),Value (Word32Value 1859706093),Value (Word8Value 17),Hole {byte_offset = 171, hole_type = Word8Hole},Hole {byte_offset = 172, hole_type = Word8Hole},Value (Word8Value 233),Value (Word32Value 436236999),Hole {byte_offset = 178, hole_type = Word16Hole},Value (Word8Value 4),Hole {byte_offset = 181, hole_type = Word8Hole},Hole {byte_offset = 182, hole_type = Word32Hole},Value (Word8Value 11),Hole {byte_offset = 187, hole_type = Word32Hole},Value (Word8Value 111),Hole {byte_offset = 192, hole_type = Word8Hole},Hole {byte_offset = 193, hole_type = Word8Hole}]}
