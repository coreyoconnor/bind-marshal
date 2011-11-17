{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase13 where
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
    v_1 :: Word16 <- getWord16be
    v_2 :: Word16 <- getWord16be
    v_3 :: Word32 <- getWord32be
    2008565076 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    1289452705 :: Word32 <- getWord32be
    v_5 :: Word8 <- getWord8
    v_6 :: Word16 <- getWord16be
    v_7 :: Word16 <- getWord16be
    v_8 :: Word16 <- getWord16be
    v_9 :: Word8 <- getWord8
    v_10 :: Word16 <- getWord16be
    v_11 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word32 <- getWord32be
    v_15 :: Word8 <- getWord8
    3546 :: Word16 <- getWord16be
    v_16 :: Word8 <- getWord8
    711217658 :: Word32 <- getWord32be
    v_17 :: Word16 <- getWord16be
    2492049217 :: Word32 <- getWord32be
    3165149853 :: Word32 <- getWord32be
    v_18 :: Word16 <- getWord16be
    v_19 :: Word32 <- getWord32be
    109 :: Word8 <- getWord8
    v_20 :: Word32 <- getWord32be
    12937 :: Word16 <- getWord16be
    7260 :: Word16 <- getWord16be
    1330645614 :: Word32 <- getWord32be
    141 :: Word8 <- getWord8
    v_21 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    10457 :: Word16 <- getWord16be
    2480135192 :: Word32 <- getWord32be
    v_23 :: Word16 <- getWord16be
    18 :: Word8 <- getWord8
    64627 :: Word16 <- getWord16be
    v_24 :: Word8 <- getWord8
    110 :: Word8 <- getWord8
    v_25 :: Word8 <- getWord8
    v_26 :: Word8 <- getWord8
    65 :: Word8 <- getWord8
    28107 :: Word16 <- getWord16be
    v_27 :: Word16 <- getWord16be
    v_28 :: Word16 <- getWord16be
    v_29 :: Word32 <- getWord32be
    v_30 :: Word16 <- getWord16be
    v_31 :: Word32 <- getWord32be
    v_32 :: Word16 <- getWord16be
    115 :: Word8 <- getWord8
    21539 :: Word16 <- getWord16be
    v_33 :: Word16 <- getWord16be
    4773 :: Word16 <- getWord16be
    v_34 :: Word8 <- getWord8
    8132 :: Word16 <- getWord16be
    v_35 :: Word16 <- getWord16be
    v_36 :: Word32 <- getWord32be
    v_37 :: Word32 <- getWord32be
    v_38 :: Word32 <- getWord32be
    54 :: Word8 <- getWord8
    v_39 :: Word8 <- getWord8
    143 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word8Value v_39 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word16Value v_1 , Word16Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word16Value v_6 , Word16Value v_7 , Word16Value v_8 , Word8Value v_9 , Word16Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word16Value v_30 , Word32Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word16Value v_35 , Word32Value v_36 , Word32Value v_37 , Word32Value v_38 , Word8Value v_39 ] = vs 
    putWord8 v_0
    putWord16be v_1
    putWord16be v_2
    putWord32be v_3
    putWord32be 2008565076
    putWord8 v_4
    putWord32be 1289452705
    putWord8 v_5
    putWord16be v_6
    putWord16be v_7
    putWord16be v_8
    putWord8 v_9
    putWord16be v_10
    putWord16be v_11
    putWord32be v_12
    putWord32be v_13
    putWord32be v_14
    putWord8 v_15
    putWord16be 3546
    putWord8 v_16
    putWord32be 711217658
    putWord16be v_17
    putWord32be 2492049217
    putWord32be 3165149853
    putWord16be v_18
    putWord32be v_19
    putWord8 (109 :: Word8)
    putWord32be v_20
    putWord16be 12937
    putWord16be 7260
    putWord32be 1330645614
    putWord8 (141 :: Word8)
    putWord8 v_21
    putWord32be v_22
    putWord16be 10457
    putWord32be 2480135192
    putWord16be v_23
    putWord8 (18 :: Word8)
    putWord16be 64627
    putWord8 v_24
    putWord8 (110 :: Word8)
    putWord8 v_25
    putWord8 v_26
    putWord8 (65 :: Word8)
    putWord16be 28107
    putWord16be v_27
    putWord16be v_28
    putWord32be v_29
    putWord16be v_30
    putWord32be v_31
    putWord16be v_32
    putWord8 (115 :: Word8)
    putWord16be 21539
    putWord16be v_33
    putWord16be 4773
    putWord8 v_34
    putWord16be 8132
    putWord16be v_35
    putWord32be v_36
    putWord32be v_37
    putWord32be v_38
    putWord8 (54 :: Word8)
    putWord8 v_39
    putWord8 (143 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word16Hole},Hole {byte_offset = 3, hole_type = Word16Hole},Hole {byte_offset = 5, hole_type = Word32Hole},Value (Word32Value 2008565076),Hole {byte_offset = 13, hole_type = Word8Hole},Value (Word32Value 1289452705),Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Hole {byte_offset = 23, hole_type = Word16Hole},Hole {byte_offset = 25, hole_type = Word8Hole},Hole {byte_offset = 26, hole_type = Word16Hole},Hole {byte_offset = 28, hole_type = Word16Hole},Hole {byte_offset = 30, hole_type = Word32Hole},Hole {byte_offset = 34, hole_type = Word32Hole},Hole {byte_offset = 38, hole_type = Word32Hole},Hole {byte_offset = 42, hole_type = Word8Hole},Value (Word16Value 3546),Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word32Value 711217658),Hole {byte_offset = 50, hole_type = Word16Hole},Value (Word32Value 2492049217),Value (Word32Value 3165149853),Hole {byte_offset = 60, hole_type = Word16Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Value (Word8Value 109),Hole {byte_offset = 67, hole_type = Word32Hole},Value (Word16Value 12937),Value (Word16Value 7260),Value (Word32Value 1330645614),Value (Word8Value 141),Hole {byte_offset = 80, hole_type = Word8Hole},Hole {byte_offset = 81, hole_type = Word32Hole},Value (Word16Value 10457),Value (Word32Value 2480135192),Hole {byte_offset = 91, hole_type = Word16Hole},Value (Word8Value 18),Value (Word16Value 64627),Hole {byte_offset = 96, hole_type = Word8Hole},Value (Word8Value 110),Hole {byte_offset = 98, hole_type = Word8Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Value (Word8Value 65),Value (Word16Value 28107),Hole {byte_offset = 103, hole_type = Word16Hole},Hole {byte_offset = 105, hole_type = Word16Hole},Hole {byte_offset = 107, hole_type = Word32Hole},Hole {byte_offset = 111, hole_type = Word16Hole},Hole {byte_offset = 113, hole_type = Word32Hole},Hole {byte_offset = 117, hole_type = Word16Hole},Value (Word8Value 115),Value (Word16Value 21539),Hole {byte_offset = 122, hole_type = Word16Hole},Value (Word16Value 4773),Hole {byte_offset = 126, hole_type = Word8Hole},Value (Word16Value 8132),Hole {byte_offset = 129, hole_type = Word16Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Hole {byte_offset = 135, hole_type = Word32Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word8Value 54),Hole {byte_offset = 144, hole_type = Word8Hole},Value (Word8Value 143)]}
