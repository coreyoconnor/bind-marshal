{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase1 where
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
    15 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    v_2 :: Word16 <- getWord16be
    199874409 :: Word32 <- getWord32be
    v_3 :: Word16 <- getWord16be
    3162237090 :: Word32 <- getWord32be
    v_4 :: Word32 <- getWord32be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word16 <- getWord16be
    v_7 :: Word32 <- getWord32be
    1358621296 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    v_9 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    37930 :: Word16 <- getWord16be
    v_12 :: Word8 <- getWord8
    2118906557 :: Word32 <- getWord32be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word32 <- getWord32be
    v_15 :: Word8 <- getWord8
    v_16 :: Word8 <- getWord8
    v_17 :: Word16 <- getWord16be
    v_18 :: Word16 <- getWord16be
    v_19 :: Word32 <- getWord32be
    14790 :: Word16 <- getWord16be
    v_20 :: Word16 <- getWord16be
    v_21 :: Word32 <- getWord32be
    v_22 :: Word16 <- getWord16be
    v_23 :: Word16 <- getWord16be
    49367 :: Word16 <- getWord16be
    v_24 :: Word8 <- getWord8
    v_25 :: Word8 <- getWord8
    v_26 :: Word8 <- getWord8
    v_27 :: Word8 <- getWord8
    217 :: Word8 <- getWord8
    v_28 :: Word8 <- getWord8
    122 :: Word8 <- getWord8
    3567697002 :: Word32 <- getWord32be
    49009 :: Word16 <- getWord16be
    v_29 :: Word8 <- getWord8
    17782 :: Word16 <- getWord16be
    64569 :: Word16 <- getWord16be
    v_30 :: Word32 <- getWord32be
    1247184809 :: Word32 <- getWord32be
    3952429815 :: Word32 <- getWord32be
    170 :: Word8 <- getWord8
    865850514 :: Word32 <- getWord32be
    v_31 :: Word16 <- getWord16be
    v_32 :: Word8 <- getWord8
    v_33 :: Word16 <- getWord16be
    64271 :: Word16 <- getWord16be
    1113067006 :: Word32 <- getWord32be
    v_34 :: Word8 <- getWord8
    v_35 :: Word8 <- getWord8
    v_36 :: Word8 <- getWord8
    34566 :: Word16 <- getWord16be
    1521145441 :: Word32 <- getWord32be
    v_37 :: Word8 <- getWord8
    52540911 :: Word32 <- getWord32be
    v_38 :: Word8 <- getWord8
    v_39 :: Word8 <- getWord8
    48 :: Word8 <- getWord8
    31082 :: Word16 <- getWord16be
    21696 :: Word16 <- getWord16be
    v_40 :: Word8 <- getWord8
    v_41 :: Word8 <- getWord8
    v_42 :: Word16 <- getWord16be
    62813 :: Word16 <- getWord16be
    927326408 :: Word32 <- getWord32be
    v_43 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word32Value v_7 , Word16Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word8Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word32Value v_7 , Word16Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word8Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 ] = vs 
    putWord8 (15 :: Word8)
    putWord32be v_0
    putWord8 v_1
    putWord16be v_2
    putWord32be 199874409
    putWord16be v_3
    putWord32be 3162237090
    putWord32be v_4
    putWord16be v_5
    putWord16be v_6
    putWord32be v_7
    putWord32be 1358621296
    putWord16be v_8
    putWord16be v_9
    putWord32be v_10
    putWord32be v_11
    putWord16be 37930
    putWord8 v_12
    putWord32be 2118906557
    putWord32be v_13
    putWord32be v_14
    putWord8 v_15
    putWord8 v_16
    putWord16be v_17
    putWord16be v_18
    putWord32be v_19
    putWord16be 14790
    putWord16be v_20
    putWord32be v_21
    putWord16be v_22
    putWord16be v_23
    putWord16be 49367
    putWord8 v_24
    putWord8 v_25
    putWord8 v_26
    putWord8 v_27
    putWord8 (217 :: Word8)
    putWord8 v_28
    putWord8 (122 :: Word8)
    putWord32be 3567697002
    putWord16be 49009
    putWord8 v_29
    putWord16be 17782
    putWord16be 64569
    putWord32be v_30
    putWord32be 1247184809
    putWord32be 3952429815
    putWord8 (170 :: Word8)
    putWord32be 865850514
    putWord16be v_31
    putWord8 v_32
    putWord16be v_33
    putWord16be 64271
    putWord32be 1113067006
    putWord8 v_34
    putWord8 v_35
    putWord8 v_36
    putWord16be 34566
    putWord32be 1521145441
    putWord8 v_37
    putWord32be 52540911
    putWord8 v_38
    putWord8 v_39
    putWord8 (48 :: Word8)
    putWord16be 31082
    putWord16be 21696
    putWord8 v_40
    putWord8 v_41
    putWord16be v_42
    putWord16be 62813
    putWord32be 927326408
    putWord32be v_43
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 15),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word16Hole},Value (Word32Value 199874409),Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word32Value 3162237090),Hole {byte_offset = 18, hole_type = Word32Hole},Hole {byte_offset = 22, hole_type = Word16Hole},Hole {byte_offset = 24, hole_type = Word16Hole},Hole {byte_offset = 26, hole_type = Word32Hole},Value (Word32Value 1358621296),Hole {byte_offset = 34, hole_type = Word16Hole},Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word32Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word16Value 37930),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 2118906557),Hole {byte_offset = 53, hole_type = Word32Hole},Hole {byte_offset = 57, hole_type = Word32Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word8Hole},Hole {byte_offset = 63, hole_type = Word16Hole},Hole {byte_offset = 65, hole_type = Word16Hole},Hole {byte_offset = 67, hole_type = Word32Hole},Value (Word16Value 14790),Hole {byte_offset = 73, hole_type = Word16Hole},Hole {byte_offset = 75, hole_type = Word32Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word16Hole},Value (Word16Value 49367),Hole {byte_offset = 85, hole_type = Word8Hole},Hole {byte_offset = 86, hole_type = Word8Hole},Hole {byte_offset = 87, hole_type = Word8Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Value (Word8Value 217),Hole {byte_offset = 90, hole_type = Word8Hole},Value (Word8Value 122),Value (Word32Value 3567697002),Value (Word16Value 49009),Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word16Value 17782),Value (Word16Value 64569),Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word32Value 1247184809),Value (Word32Value 3952429815),Value (Word8Value 170),Value (Word32Value 865850514),Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word16Value 64271),Value (Word32Value 1113067006),Hole {byte_offset = 131, hole_type = Word8Hole},Hole {byte_offset = 132, hole_type = Word8Hole},Hole {byte_offset = 133, hole_type = Word8Hole},Value (Word16Value 34566),Value (Word32Value 1521145441),Hole {byte_offset = 140, hole_type = Word8Hole},Value (Word32Value 52540911),Hole {byte_offset = 145, hole_type = Word8Hole},Hole {byte_offset = 146, hole_type = Word8Hole},Value (Word8Value 48),Value (Word16Value 31082),Value (Word16Value 21696),Hole {byte_offset = 152, hole_type = Word8Hole},Hole {byte_offset = 153, hole_type = Word8Hole},Hole {byte_offset = 154, hole_type = Word16Hole},Value (Word16Value 62813),Value (Word32Value 927326408),Hole {byte_offset = 162, hole_type = Word32Hole}]}
