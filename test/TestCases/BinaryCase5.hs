{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase5 where
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
    237 :: Word8 <- getWord8
    2432342725 :: Word32 <- getWord32be
    v_0 :: Word32 <- getWord32be
    14 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    133 :: Word8 <- getWord8
    v_2 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    31500 :: Word16 <- getWord16be
    29725 :: Word16 <- getWord16be
    45309 :: Word16 <- getWord16be
    4041880020 :: Word32 <- getWord32be
    6097 :: Word16 <- getWord16be
    2505111969 :: Word32 <- getWord32be
    v_4 :: Word32 <- getWord32be
    227 :: Word8 <- getWord8
    2045292545 :: Word32 <- getWord32be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word32 <- getWord32be
    14 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    2434 :: Word16 <- getWord16be
    2125984829 :: Word32 <- getWord32be
    3037258204 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    247 :: Word8 <- getWord8
    30 :: Word8 <- getWord8
    15313 :: Word16 <- getWord16be
    v_9 :: Word32 <- getWord32be
    190 :: Word8 <- getWord8
    84 :: Word8 <- getWord8
    224 :: Word8 <- getWord8
    145 :: Word8 <- getWord8
    188 :: Word8 <- getWord8
    48590 :: Word16 <- getWord16be
    v_10 :: Word8 <- getWord8
    v_11 :: Word16 <- getWord16be
    v_12 :: Word32 <- getWord32be
    45257 :: Word16 <- getWord16be
    44707 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    255 :: Word8 <- getWord8
    v_14 :: Word32 <- getWord32be
    12729 :: Word16 <- getWord16be
    v_15 :: Word8 <- getWord8
    57436 :: Word16 <- getWord16be
    v_16 :: Word32 <- getWord32be
    v_17 :: Word8 <- getWord8
    24 :: Word8 <- getWord8
    v_18 :: Word32 <- getWord32be
    v_19 :: Word16 <- getWord16be
    v_20 :: Word8 <- getWord8
    v_21 :: Word8 <- getWord8
    v_22 :: Word16 <- getWord16be
    v_23 :: Word8 <- getWord8
    3487 :: Word16 <- getWord16be
    2698337360 :: Word32 <- getWord32be
    171 :: Word8 <- getWord8
    57 :: Word8 <- getWord8
    146 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    v_25 :: Word16 <- getWord16be
    v_26 :: Word8 <- getWord8
    v_27 :: Word8 <- getWord8
    v_28 :: Word16 <- getWord16be
    v_29 :: Word8 <- getWord8
    64836 :: Word16 <- getWord16be
    v_30 :: Word16 <- getWord16be
    v_31 :: Word8 <- getWord8
    40363 :: Word16 <- getWord16be
    65 :: Word8 <- getWord8
    v_32 :: Word8 <- getWord8
    188 :: Word8 <- getWord8
    v_33 :: Word16 <- getWord16be
    v_34 :: Word32 <- getWord32be
    23 :: Word8 <- getWord8
    v_35 :: Word16 <- getWord16be
    8959 :: Word16 <- getWord16be
    218 :: Word8 <- getWord8
    v_36 :: Word32 <- getWord32be
    v_37 :: Word8 <- getWord8
    125 :: Word8 <- getWord8
    v_38 :: Word32 <- getWord32be
    v_39 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 , Word32Value v_4 , Word16Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word32Value v_9 , Word8Value v_10 , Word16Value v_11 , Word32Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word32Value v_18 , Word16Value v_19 , Word8Value v_20 , Word8Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word16Value v_25 , Word8Value v_26 , Word8Value v_27 , Word16Value v_28 , Word8Value v_29 , Word16Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word16Value v_35 , Word32Value v_36 , Word8Value v_37 , Word32Value v_38 , Word16Value v_39 ] = vs 
    putWord8 (237 :: Word8)
    putWord32be 2432342725
    putWord32be v_0
    putWord8 (14 :: Word8)
    putWord32be v_1
    putWord8 (133 :: Word8)
    putWord16be v_2
    putWord8 v_3
    putWord16be 31500
    putWord16be 29725
    putWord16be 45309
    putWord32be 4041880020
    putWord16be 6097
    putWord32be 2505111969
    putWord32be v_4
    putWord8 (227 :: Word8)
    putWord32be 2045292545
    putWord16be v_5
    putWord32be v_6
    putWord8 (14 :: Word8)
    putWord32be v_7
    putWord16be 2434
    putWord32be 2125984829
    putWord32be 3037258204
    putWord16be v_8
    putWord8 (247 :: Word8)
    putWord8 (30 :: Word8)
    putWord16be 15313
    putWord32be v_9
    putWord8 (190 :: Word8)
    putWord8 (84 :: Word8)
    putWord8 (224 :: Word8)
    putWord8 (145 :: Word8)
    putWord8 (188 :: Word8)
    putWord16be 48590
    putWord8 v_10
    putWord16be v_11
    putWord32be v_12
    putWord16be 45257
    putWord16be 44707
    putWord32be v_13
    putWord8 (255 :: Word8)
    putWord32be v_14
    putWord16be 12729
    putWord8 v_15
    putWord16be 57436
    putWord32be v_16
    putWord8 v_17
    putWord8 (24 :: Word8)
    putWord32be v_18
    putWord16be v_19
    putWord8 v_20
    putWord8 v_21
    putWord16be v_22
    putWord8 v_23
    putWord16be 3487
    putWord32be 2698337360
    putWord8 (171 :: Word8)
    putWord8 (57 :: Word8)
    putWord8 (146 :: Word8)
    putWord32be v_24
    putWord16be v_25
    putWord8 v_26
    putWord8 v_27
    putWord16be v_28
    putWord8 v_29
    putWord16be 64836
    putWord16be v_30
    putWord8 v_31
    putWord16be 40363
    putWord8 (65 :: Word8)
    putWord8 v_32
    putWord8 (188 :: Word8)
    putWord16be v_33
    putWord32be v_34
    putWord8 (23 :: Word8)
    putWord16be v_35
    putWord16be 8959
    putWord8 (218 :: Word8)
    putWord32be v_36
    putWord8 v_37
    putWord8 (125 :: Word8)
    putWord32be v_38
    putWord16be v_39
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 237),Value (Word32Value 2432342725),Hole {byte_offset = 5, hole_type = Word32Hole},Value (Word8Value 14),Hole {byte_offset = 10, hole_type = Word32Hole},Value (Word8Value 133),Hole {byte_offset = 15, hole_type = Word16Hole},Hole {byte_offset = 17, hole_type = Word8Hole},Value (Word16Value 31500),Value (Word16Value 29725),Value (Word16Value 45309),Value (Word32Value 4041880020),Value (Word16Value 6097),Value (Word32Value 2505111969),Hole {byte_offset = 34, hole_type = Word32Hole},Value (Word8Value 227),Value (Word32Value 2045292545),Hole {byte_offset = 43, hole_type = Word16Hole},Hole {byte_offset = 45, hole_type = Word32Hole},Value (Word8Value 14),Hole {byte_offset = 50, hole_type = Word32Hole},Value (Word16Value 2434),Value (Word32Value 2125984829),Value (Word32Value 3037258204),Hole {byte_offset = 64, hole_type = Word16Hole},Value (Word8Value 247),Value (Word8Value 30),Value (Word16Value 15313),Hole {byte_offset = 70, hole_type = Word32Hole},Value (Word8Value 190),Value (Word8Value 84),Value (Word8Value 224),Value (Word8Value 145),Value (Word8Value 188),Value (Word16Value 48590),Hole {byte_offset = 81, hole_type = Word8Hole},Hole {byte_offset = 82, hole_type = Word16Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Value (Word16Value 45257),Value (Word16Value 44707),Hole {byte_offset = 92, hole_type = Word32Hole},Value (Word8Value 255),Hole {byte_offset = 97, hole_type = Word32Hole},Value (Word16Value 12729),Hole {byte_offset = 103, hole_type = Word8Hole},Value (Word16Value 57436),Hole {byte_offset = 106, hole_type = Word32Hole},Hole {byte_offset = 110, hole_type = Word8Hole},Value (Word8Value 24),Hole {byte_offset = 112, hole_type = Word32Hole},Hole {byte_offset = 116, hole_type = Word16Hole},Hole {byte_offset = 118, hole_type = Word8Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word16Value 3487),Value (Word32Value 2698337360),Value (Word8Value 171),Value (Word8Value 57),Value (Word8Value 146),Hole {byte_offset = 132, hole_type = Word32Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Hole {byte_offset = 139, hole_type = Word8Hole},Hole {byte_offset = 140, hole_type = Word16Hole},Hole {byte_offset = 142, hole_type = Word8Hole},Value (Word16Value 64836),Hole {byte_offset = 145, hole_type = Word16Hole},Hole {byte_offset = 147, hole_type = Word8Hole},Value (Word16Value 40363),Value (Word8Value 65),Hole {byte_offset = 151, hole_type = Word8Hole},Value (Word8Value 188),Hole {byte_offset = 153, hole_type = Word16Hole},Hole {byte_offset = 155, hole_type = Word32Hole},Value (Word8Value 23),Hole {byte_offset = 160, hole_type = Word16Hole},Value (Word16Value 8959),Value (Word8Value 218),Hole {byte_offset = 165, hole_type = Word32Hole},Hole {byte_offset = 169, hole_type = Word8Hole},Value (Word8Value 125),Hole {byte_offset = 171, hole_type = Word32Hole},Hole {byte_offset = 175, hole_type = Word16Hole}]}
