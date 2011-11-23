{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase15 where
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
    v_0 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    v_4 :: Word16 <- getWord16be
    48219 :: Word16 <- getWord16be
    4325 :: Word16 <- getWord16be
    3490434580 :: Word32 <- getWord32be
    v_5 :: Word8 <- getWord8
    v_6 :: Word16 <- getWord16be
    v_7 :: Word8 <- getWord8
    v_8 :: Word16 <- getWord16be
    45009 :: Word16 <- getWord16be
    v_9 :: Word16 <- getWord16be
    v_10 :: Word8 <- getWord8
    v_11 :: Word32 <- getWord32be
    129 :: Word8 <- getWord8
    v_12 :: Word32 <- getWord32be
    v_13 :: Word16 <- getWord16be
    6150 :: Word16 <- getWord16be
    v_14 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    1868620351 :: Word32 <- getWord32be
    v_16 :: Word32 <- getWord32be
    247 :: Word8 <- getWord8
    v_17 :: Word16 <- getWord16be
    72 :: Word8 <- getWord8
    135 :: Word8 <- getWord8
    1787028532 :: Word32 <- getWord32be
    v_18 :: Word8 <- getWord8
    32520 :: Word16 <- getWord16be
    v_19 :: Word32 <- getWord32be
    v_20 :: Word16 <- getWord16be
    6180 :: Word16 <- getWord16be
    56578 :: Word16 <- getWord16be
    v_21 :: Word8 <- getWord8
    v_22 :: Word8 <- getWord8
    v_23 :: Word16 <- getWord16be
    424722519 :: Word32 <- getWord32be
    v_24 :: Word32 <- getWord32be
    v_25 :: Word8 <- getWord8
    36689 :: Word16 <- getWord16be
    v_26 :: Word32 <- getWord32be
    49215 :: Word16 <- getWord16be
    v_27 :: Word8 <- getWord8
    v_28 :: Word16 <- getWord16be
    46893 :: Word16 <- getWord16be
    154 :: Word8 <- getWord8
    212 :: Word8 <- getWord8
    22666 :: Word16 <- getWord16be
    7313 :: Word16 <- getWord16be
    1492607485 :: Word32 <- getWord32be
    3056420829 :: Word32 <- getWord32be
    v_29 :: Word16 <- getWord16be
    21211 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    v_31 :: Word8 <- getWord8
    817608511 :: Word32 <- getWord32be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word16 <- getWord16be
    v_34 :: Word8 <- getWord8
    2312997795 :: Word32 <- getWord32be
    2156046820 :: Word32 <- getWord32be
    2931456532 :: Word32 <- getWord32be
    v_35 :: Word8 <- getWord8
    v_36 :: Word32 <- getWord32be
    v_37 :: Word8 <- getWord8
    v_38 :: Word32 <- getWord32be
    v_39 :: Word8 <- getWord8
    v_40 :: Word32 <- getWord32be
    2702407550 :: Word32 <- getWord32be
    1033057760 :: Word32 <- getWord32be
    3287232216 :: Word32 <- getWord32be
    94 :: Word8 <- getWord8
    235 :: Word8 <- getWord8
    v_41 :: Word32 <- getWord32be
    58 :: Word8 <- getWord8
    3637507167 :: Word32 <- getWord32be
    36921 :: Word16 <- getWord16be
    v_42 :: Word8 <- getWord8
    v_43 :: Word16 <- getWord16be
    v_44 :: Word16 <- getWord16be
    v_45 :: Word8 <- getWord8
    176 :: Word8 <- getWord8
    171 :: Word8 <- getWord8
    51 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word32Value v_16 , Word16Value v_17 , Word8Value v_18 , Word32Value v_19 , Word16Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word8Value v_27 , Word16Value v_28 , Word16Value v_29 , Word16Value v_30 , Word8Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 , Word32Value v_40 , Word32Value v_41 , Word8Value v_42 , Word16Value v_43 , Word16Value v_44 , Word8Value v_45 ] = vs 
    putWord32be v_0
    putWord16be v_1
    putWord32be v_2
    putWord32be v_3
    putWord16be v_4
    putWord16be 48219
    putWord16be 4325
    putWord32be 3490434580
    putWord8 v_5
    putWord16be v_6
    putWord8 v_7
    putWord16be v_8
    putWord16be 45009
    putWord16be v_9
    putWord8 v_10
    putWord32be v_11
    putWord8 (129 :: Word8)
    putWord32be v_12
    putWord16be v_13
    putWord16be 6150
    putWord8 v_14
    putWord32be v_15
    putWord32be 1868620351
    putWord32be v_16
    putWord8 (247 :: Word8)
    putWord16be v_17
    putWord8 (72 :: Word8)
    putWord8 (135 :: Word8)
    putWord32be 1787028532
    putWord8 v_18
    putWord16be 32520
    putWord32be v_19
    putWord16be v_20
    putWord16be 6180
    putWord16be 56578
    putWord8 v_21
    putWord8 v_22
    putWord16be v_23
    putWord32be 424722519
    putWord32be v_24
    putWord8 v_25
    putWord16be 36689
    putWord32be v_26
    putWord16be 49215
    putWord8 v_27
    putWord16be v_28
    putWord16be 46893
    putWord8 (154 :: Word8)
    putWord8 (212 :: Word8)
    putWord16be 22666
    putWord16be 7313
    putWord32be 1492607485
    putWord32be 3056420829
    putWord16be v_29
    putWord16be 21211
    putWord16be v_30
    putWord8 v_31
    putWord32be 817608511
    putWord16be v_32
    putWord16be v_33
    putWord8 v_34
    putWord32be 2312997795
    putWord32be 2156046820
    putWord32be 2931456532
    putWord8 v_35
    putWord32be v_36
    putWord8 v_37
    putWord32be v_38
    putWord8 v_39
    putWord32be v_40
    putWord32be 2702407550
    putWord32be 1033057760
    putWord32be 3287232216
    putWord8 (94 :: Word8)
    putWord8 (235 :: Word8)
    putWord32be v_41
    putWord8 (58 :: Word8)
    putWord32be 3637507167
    putWord16be 36921
    putWord8 v_42
    putWord16be v_43
    putWord16be v_44
    putWord8 v_45
    putWord8 (176 :: Word8)
    putWord8 (171 :: Word8)
    putWord8 (51 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word16Hole},Hole {byte_offset = 6, hole_type = Word32Hole},Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word16Hole},Value (Word16Value 48219),Value (Word16Value 4325),Value (Word32Value 3490434580),Hole {byte_offset = 24, hole_type = Word8Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word8Hole},Hole {byte_offset = 28, hole_type = Word16Hole},Value (Word16Value 45009),Hole {byte_offset = 32, hole_type = Word16Hole},Hole {byte_offset = 34, hole_type = Word8Hole},Hole {byte_offset = 35, hole_type = Word32Hole},Value (Word8Value 129),Hole {byte_offset = 40, hole_type = Word32Hole},Hole {byte_offset = 44, hole_type = Word16Hole},Value (Word16Value 6150),Hole {byte_offset = 48, hole_type = Word8Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Value (Word32Value 1868620351),Hole {byte_offset = 57, hole_type = Word32Hole},Value (Word8Value 247),Hole {byte_offset = 62, hole_type = Word16Hole},Value (Word8Value 72),Value (Word8Value 135),Value (Word32Value 1787028532),Hole {byte_offset = 70, hole_type = Word8Hole},Value (Word16Value 32520),Hole {byte_offset = 73, hole_type = Word32Hole},Hole {byte_offset = 77, hole_type = Word16Hole},Value (Word16Value 6180),Value (Word16Value 56578),Hole {byte_offset = 83, hole_type = Word8Hole},Hole {byte_offset = 84, hole_type = Word8Hole},Hole {byte_offset = 85, hole_type = Word16Hole},Value (Word32Value 424722519),Hole {byte_offset = 91, hole_type = Word32Hole},Hole {byte_offset = 95, hole_type = Word8Hole},Value (Word16Value 36689),Hole {byte_offset = 98, hole_type = Word32Hole},Value (Word16Value 49215),Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word16Hole},Value (Word16Value 46893),Value (Word8Value 154),Value (Word8Value 212),Value (Word16Value 22666),Value (Word16Value 7313),Value (Word32Value 1492607485),Value (Word32Value 3056420829),Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word16Value 21211),Hole {byte_offset = 127, hole_type = Word16Hole},Hole {byte_offset = 129, hole_type = Word8Hole},Value (Word32Value 817608511),Hole {byte_offset = 134, hole_type = Word16Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Value (Word32Value 2312997795),Value (Word32Value 2156046820),Value (Word32Value 2931456532),Hole {byte_offset = 151, hole_type = Word8Hole},Hole {byte_offset = 152, hole_type = Word32Hole},Hole {byte_offset = 156, hole_type = Word8Hole},Hole {byte_offset = 157, hole_type = Word32Hole},Hole {byte_offset = 161, hole_type = Word8Hole},Hole {byte_offset = 162, hole_type = Word32Hole},Value (Word32Value 2702407550),Value (Word32Value 1033057760),Value (Word32Value 3287232216),Value (Word8Value 94),Value (Word8Value 235),Hole {byte_offset = 180, hole_type = Word32Hole},Value (Word8Value 58),Value (Word32Value 3637507167),Value (Word16Value 36921),Hole {byte_offset = 191, hole_type = Word8Hole},Hole {byte_offset = 192, hole_type = Word16Hole},Hole {byte_offset = 194, hole_type = Word16Hole},Hole {byte_offset = 196, hole_type = Word8Hole},Value (Word8Value 176),Value (Word8Value 171),Value (Word8Value 51)]}
