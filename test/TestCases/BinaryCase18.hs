{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase18 where
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
    116 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    76 :: Word8 <- getWord8
    15779 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    3468521939 :: Word32 <- getWord32be
    4266389212 :: Word32 <- getWord32be
    1257768946 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    v_4 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    v_6 :: Word16 <- getWord16be
    133 :: Word8 <- getWord8
    3 :: Word8 <- getWord8
    v_7 :: Word8 <- getWord8
    27106 :: Word16 <- getWord16be
    593729103 :: Word32 <- getWord32be
    v_8 :: Word32 <- getWord32be
    75 :: Word8 <- getWord8
    197847291 :: Word32 <- getWord32be
    109 :: Word8 <- getWord8
    16573 :: Word16 <- getWord16be
    243000518 :: Word32 <- getWord32be
    v_9 :: Word32 <- getWord32be
    v_10 :: Word8 <- getWord8
    1019831798 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word32 <- getWord32be
    v_13 :: Word32 <- getWord32be
    3061033733 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    211 :: Word8 <- getWord8
    159 :: Word8 <- getWord8
    v_15 :: Word32 <- getWord32be
    64487 :: Word16 <- getWord16be
    47 :: Word8 <- getWord8
    2937823586 :: Word32 <- getWord32be
    8531 :: Word16 <- getWord16be
    3804742798 :: Word32 <- getWord32be
    v_16 :: Word16 <- getWord16be
    3291099707 :: Word32 <- getWord32be
    12937 :: Word16 <- getWord16be
    57076 :: Word16 <- getWord16be
    v_17 :: Word32 <- getWord32be
    253 :: Word8 <- getWord8
    v_18 :: Word32 <- getWord32be
    12442 :: Word16 <- getWord16be
    1910038088 :: Word32 <- getWord32be
    65170 :: Word16 <- getWord16be
    v_19 :: Word32 <- getWord32be
    253 :: Word8 <- getWord8
    122 :: Word8 <- getWord8
    1 :: Word8 <- getWord8
    1857112340 :: Word32 <- getWord32be
    v_20 :: Word16 <- getWord16be
    v_21 :: Word32 <- getWord32be
    94 :: Word8 <- getWord8
    v_22 :: Word16 <- getWord16be
    v_23 :: Word32 <- getWord32be
    43735 :: Word16 <- getWord16be
    70 :: Word8 <- getWord8
    135 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    473702538 :: Word32 <- getWord32be
    v_25 :: Word8 <- getWord8
    3063629385 :: Word32 <- getWord32be
    v_26 :: Word16 <- getWord16be
    174 :: Word8 <- getWord8
    v_27 :: Word32 <- getWord32be
    52 :: Word8 <- getWord8
    183 :: Word8 <- getWord8
    17376 :: Word16 <- getWord16be
    34203 :: Word16 <- getWord16be
    1111746689 :: Word32 <- getWord32be
    v_28 :: Word8 <- getWord8
    3483132253 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word16Value v_5 , Word16Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word8Value v_10 , Word32Value v_11 , Word32Value v_12 , Word32Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word32Value v_27 , Word8Value v_28 ] = vs 
    putWord8 (116 :: Word8)
    putWord32be v_0
    putWord8 v_1
    putWord8 (76 :: Word8)
    putWord16be 15779
    putWord8 v_2
    putWord32be 3468521939
    putWord32be 4266389212
    putWord32be 1257768946
    putWord16be v_3
    putWord8 v_4
    putWord16be v_5
    putWord16be v_6
    putWord8 (133 :: Word8)
    putWord8 (3 :: Word8)
    putWord8 v_7
    putWord16be 27106
    putWord32be 593729103
    putWord32be v_8
    putWord8 (75 :: Word8)
    putWord32be 197847291
    putWord8 (109 :: Word8)
    putWord16be 16573
    putWord32be 243000518
    putWord32be v_9
    putWord8 v_10
    putWord32be 1019831798
    putWord32be v_11
    putWord32be v_12
    putWord32be v_13
    putWord32be 3061033733
    putWord8 v_14
    putWord8 (211 :: Word8)
    putWord8 (159 :: Word8)
    putWord32be v_15
    putWord16be 64487
    putWord8 (47 :: Word8)
    putWord32be 2937823586
    putWord16be 8531
    putWord32be 3804742798
    putWord16be v_16
    putWord32be 3291099707
    putWord16be 12937
    putWord16be 57076
    putWord32be v_17
    putWord8 (253 :: Word8)
    putWord32be v_18
    putWord16be 12442
    putWord32be 1910038088
    putWord16be 65170
    putWord32be v_19
    putWord8 (253 :: Word8)
    putWord8 (122 :: Word8)
    putWord8 (1 :: Word8)
    putWord32be 1857112340
    putWord16be v_20
    putWord32be v_21
    putWord8 (94 :: Word8)
    putWord16be v_22
    putWord32be v_23
    putWord16be 43735
    putWord8 (70 :: Word8)
    putWord8 (135 :: Word8)
    putWord32be v_24
    putWord32be 473702538
    putWord8 v_25
    putWord32be 3063629385
    putWord16be v_26
    putWord8 (174 :: Word8)
    putWord32be v_27
    putWord8 (52 :: Word8)
    putWord8 (183 :: Word8)
    putWord16be 17376
    putWord16be 34203
    putWord32be 1111746689
    putWord8 v_28
    putWord32be 3483132253
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 116),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Value (Word8Value 76),Value (Word16Value 15779),Hole {byte_offset = 9, hole_type = Word8Hole},Value (Word32Value 3468521939),Value (Word32Value 4266389212),Value (Word32Value 1257768946),Hole {byte_offset = 22, hole_type = Word16Hole},Hole {byte_offset = 24, hole_type = Word8Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word16Hole},Value (Word8Value 133),Value (Word8Value 3),Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word16Value 27106),Value (Word32Value 593729103),Hole {byte_offset = 38, hole_type = Word32Hole},Value (Word8Value 75),Value (Word32Value 197847291),Value (Word8Value 109),Value (Word16Value 16573),Value (Word32Value 243000518),Hole {byte_offset = 54, hole_type = Word32Hole},Hole {byte_offset = 58, hole_type = Word8Hole},Value (Word32Value 1019831798),Hole {byte_offset = 63, hole_type = Word32Hole},Hole {byte_offset = 67, hole_type = Word32Hole},Hole {byte_offset = 71, hole_type = Word32Hole},Value (Word32Value 3061033733),Hole {byte_offset = 79, hole_type = Word8Hole},Value (Word8Value 211),Value (Word8Value 159),Hole {byte_offset = 82, hole_type = Word32Hole},Value (Word16Value 64487),Value (Word8Value 47),Value (Word32Value 2937823586),Value (Word16Value 8531),Value (Word32Value 3804742798),Hole {byte_offset = 99, hole_type = Word16Hole},Value (Word32Value 3291099707),Value (Word16Value 12937),Value (Word16Value 57076),Hole {byte_offset = 109, hole_type = Word32Hole},Value (Word8Value 253),Hole {byte_offset = 114, hole_type = Word32Hole},Value (Word16Value 12442),Value (Word32Value 1910038088),Value (Word16Value 65170),Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word8Value 253),Value (Word8Value 122),Value (Word8Value 1),Value (Word32Value 1857112340),Hole {byte_offset = 137, hole_type = Word16Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word8Value 94),Hole {byte_offset = 144, hole_type = Word16Hole},Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word16Value 43735),Value (Word8Value 70),Value (Word8Value 135),Hole {byte_offset = 154, hole_type = Word32Hole},Value (Word32Value 473702538),Hole {byte_offset = 162, hole_type = Word8Hole},Value (Word32Value 3063629385),Hole {byte_offset = 167, hole_type = Word16Hole},Value (Word8Value 174),Hole {byte_offset = 170, hole_type = Word32Hole},Value (Word8Value 52),Value (Word8Value 183),Value (Word16Value 17376),Value (Word16Value 34203),Value (Word32Value 1111746689),Hole {byte_offset = 184, hole_type = Word8Hole},Value (Word32Value 3483132253)]}
