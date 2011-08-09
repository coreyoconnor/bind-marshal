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
    v_0 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    1202589112 :: Word32 <- getWord32be
    1810371418 :: Word32 <- getWord32be
    2647 :: Word16 <- getWord16be
    v_2 :: Word16 <- getWord16be
    v_3 :: Word32 <- getWord32be
    1601 :: Word16 <- getWord16be
    v_4 :: Word16 <- getWord16be
    58644 :: Word16 <- getWord16be
    v_5 :: Word32 <- getWord32be
    v_6 :: Word8 <- getWord8
    4243473788 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    1149154291 :: Word32 <- getWord32be
    70 :: Word8 <- getWord8
    v_9 :: Word32 <- getWord32be
    v_10 :: Word16 <- getWord16be
    16 :: Word8 <- getWord8
    v_11 :: Word16 <- getWord16be
    116 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    2210403126 :: Word32 <- getWord32be
    v_13 :: Word8 <- getWord8
    1610444058 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    49651 :: Word16 <- getWord16be
    951016925 :: Word32 <- getWord32be
    v_16 :: Word16 <- getWord16be
    v_17 :: Word16 <- getWord16be
    v_18 :: Word16 <- getWord16be
    v_19 :: Word16 <- getWord16be
    2098628348 :: Word32 <- getWord32be
    28 :: Word8 <- getWord8
    33851 :: Word16 <- getWord16be
    v_20 :: Word16 <- getWord16be
    2767108726 :: Word32 <- getWord32be
    243 :: Word8 <- getWord8
    61027 :: Word16 <- getWord16be
    v_21 :: Word8 <- getWord8
    3046019994 :: Word32 <- getWord32be
    4196051485 :: Word32 <- getWord32be
    v_22 :: Word32 <- getWord32be
    v_23 :: Word8 <- getWord8
    v_24 :: Word8 <- getWord8
    16093 :: Word16 <- getWord16be
    31748 :: Word16 <- getWord16be
    233 :: Word8 <- getWord8
    v_25 :: Word16 <- getWord16be
    3476894092 :: Word32 <- getWord32be
    v_26 :: Word32 <- getWord32be
    34218 :: Word16 <- getWord16be
    v_27 :: Word32 <- getWord32be
    v_28 :: Word8 <- getWord8
    v_29 :: Word16 <- getWord16be
    158 :: Word8 <- getWord8
    v_30 :: Word32 <- getWord32be
    v_31 :: Word8 <- getWord8
    21976 :: Word16 <- getWord16be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word32 <- getWord32be
    48640 :: Word16 <- getWord16be
    return  [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 ] = vs 
    putWord8 v_0
    putWord32be v_1
    putWord32be 1202589112
    putWord32be 1810371418
    putWord16be 2647
    putWord16be v_2
    putWord32be v_3
    putWord16be 1601
    putWord16be v_4
    putWord16be 58644
    putWord32be v_5
    putWord8 v_6
    putWord32be 4243473788
    putWord8 v_7
    putWord32be v_8
    putWord32be 1149154291
    putWord8 (70 :: Word8)
    putWord32be v_9
    putWord16be v_10
    putWord8 (16 :: Word8)
    putWord16be v_11
    putWord8 (116 :: Word8)
    putWord8 v_12
    putWord32be 2210403126
    putWord8 v_13
    putWord32be 1610444058
    putWord8 v_14
    putWord32be v_15
    putWord16be 49651
    putWord32be 951016925
    putWord16be v_16
    putWord16be v_17
    putWord16be v_18
    putWord16be v_19
    putWord32be 2098628348
    putWord8 (28 :: Word8)
    putWord16be 33851
    putWord16be v_20
    putWord32be 2767108726
    putWord8 (243 :: Word8)
    putWord16be 61027
    putWord8 v_21
    putWord32be 3046019994
    putWord32be 4196051485
    putWord32be v_22
    putWord8 v_23
    putWord8 v_24
    putWord16be 16093
    putWord16be 31748
    putWord8 (233 :: Word8)
    putWord16be v_25
    putWord32be 3476894092
    putWord32be v_26
    putWord16be 34218
    putWord32be v_27
    putWord8 v_28
    putWord16be v_29
    putWord8 (158 :: Word8)
    putWord32be v_30
    putWord8 v_31
    putWord16be 21976
    putWord16be v_32
    putWord32be v_33
    putWord16be 48640
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word32Value 1202589112),Value (Word32Value 1810371418),Value (Word16Value 2647),Hole {byte_offset = 15, hole_type = Word16Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Value (Word16Value 1601),Hole {byte_offset = 23, hole_type = Word16Hole},Value (Word16Value 58644),Hole {byte_offset = 27, hole_type = Word32Hole},Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word32Value 4243473788),Hole {byte_offset = 36, hole_type = Word8Hole},Hole {byte_offset = 37, hole_type = Word32Hole},Value (Word32Value 1149154291),Value (Word8Value 70),Hole {byte_offset = 46, hole_type = Word32Hole},Hole {byte_offset = 50, hole_type = Word16Hole},Value (Word8Value 16),Hole {byte_offset = 53, hole_type = Word16Hole},Value (Word8Value 116),Hole {byte_offset = 56, hole_type = Word8Hole},Value (Word32Value 2210403126),Hole {byte_offset = 61, hole_type = Word8Hole},Value (Word32Value 1610444058),Hole {byte_offset = 66, hole_type = Word8Hole},Hole {byte_offset = 67, hole_type = Word32Hole},Value (Word16Value 49651),Value (Word32Value 951016925),Hole {byte_offset = 77, hole_type = Word16Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word16Hole},Hole {byte_offset = 83, hole_type = Word16Hole},Value (Word32Value 2098628348),Value (Word8Value 28),Value (Word16Value 33851),Hole {byte_offset = 92, hole_type = Word16Hole},Value (Word32Value 2767108726),Value (Word8Value 243),Value (Word16Value 61027),Hole {byte_offset = 101, hole_type = Word8Hole},Value (Word32Value 3046019994),Value (Word32Value 4196051485),Hole {byte_offset = 110, hole_type = Word32Hole},Hole {byte_offset = 114, hole_type = Word8Hole},Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 16093),Value (Word16Value 31748),Value (Word8Value 233),Hole {byte_offset = 121, hole_type = Word16Hole},Value (Word32Value 3476894092),Hole {byte_offset = 127, hole_type = Word32Hole},Value (Word16Value 34218),Hole {byte_offset = 133, hole_type = Word32Hole},Hole {byte_offset = 137, hole_type = Word8Hole},Hole {byte_offset = 138, hole_type = Word16Hole},Value (Word8Value 158),Hole {byte_offset = 141, hole_type = Word32Hole},Hole {byte_offset = 145, hole_type = Word8Hole},Value (Word16Value 21976),Hole {byte_offset = 148, hole_type = Word16Hole},Hole {byte_offset = 150, hole_type = Word32Hole},Value (Word16Value 48640)]}
