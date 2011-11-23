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
    3199546891 :: Word32 <- getWord32be
    v_0 :: Word8 <- getWord8
    70 :: Word8 <- getWord8
    122 :: Word8 <- getWord8
    v_1 :: Word32 <- getWord32be
    61207 :: Word16 <- getWord16be
    v_2 :: Word16 <- getWord16be
    58176 :: Word16 <- getWord16be
    v_3 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    56797 :: Word16 <- getWord16be
    1205547796 :: Word32 <- getWord32be
    v_5 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    29534 :: Word16 <- getWord16be
    191453058 :: Word32 <- getWord32be
    1813216337 :: Word32 <- getWord32be
    1 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    v_8 :: Word32 <- getWord32be
    v_9 :: Word32 <- getWord32be
    38641 :: Word16 <- getWord16be
    51152 :: Word16 <- getWord16be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word8 <- getWord8
    v_12 :: Word32 <- getWord32be
    57298 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    v_14 :: Word16 <- getWord16be
    4162138034 :: Word32 <- getWord32be
    v_15 :: Word16 <- getWord16be
    v_16 :: Word8 <- getWord8
    v_17 :: Word8 <- getWord8
    37037 :: Word16 <- getWord16be
    665163427 :: Word32 <- getWord32be
    144 :: Word8 <- getWord8
    3604857952 :: Word32 <- getWord32be
    v_18 :: Word16 <- getWord16be
    v_19 :: Word16 <- getWord16be
    4552 :: Word16 <- getWord16be
    38638 :: Word16 <- getWord16be
    2904628998 :: Word32 <- getWord32be
    v_20 :: Word32 <- getWord32be
    v_21 :: Word8 <- getWord8
    v_22 :: Word8 <- getWord8
    29548 :: Word16 <- getWord16be
    v_23 :: Word16 <- getWord16be
    125 :: Word8 <- getWord8
    v_24 :: Word8 <- getWord8
    17406 :: Word16 <- getWord16be
    v_25 :: Word16 <- getWord16be
    v_26 :: Word32 <- getWord32be
    v_27 :: Word16 <- getWord16be
    65416 :: Word16 <- getWord16be
    4012331883 :: Word32 <- getWord32be
    v_28 :: Word16 <- getWord16be
    v_29 :: Word16 <- getWord16be
    17 :: Word8 <- getWord8
    2128270985 :: Word32 <- getWord32be
    v_30 :: Word8 <- getWord8
    v_31 :: Word8 <- getWord8
    v_32 :: Word16 <- getWord16be
    7877 :: Word16 <- getWord16be
    v_33 :: Word8 <- getWord8
    88 :: Word8 <- getWord8
    return  [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word16Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word16Value v_32 , Word8Value v_33 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word16Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word16Value v_32 , Word8Value v_33 ] = vs 
    putWord32be 3199546891
    putWord8 v_0
    putWord8 (70 :: Word8)
    putWord8 (122 :: Word8)
    putWord32be v_1
    putWord16be 61207
    putWord16be v_2
    putWord16be 58176
    putWord16be v_3
    putWord32be v_4
    putWord16be 56797
    putWord32be 1205547796
    putWord16be v_5
    putWord8 v_6
    putWord16be 29534
    putWord32be 191453058
    putWord32be 1813216337
    putWord8 (1 :: Word8)
    putWord32be v_7
    putWord32be v_8
    putWord32be v_9
    putWord16be 38641
    putWord16be 51152
    putWord32be v_10
    putWord8 v_11
    putWord32be v_12
    putWord16be 57298
    putWord8 v_13
    putWord16be v_14
    putWord32be 4162138034
    putWord16be v_15
    putWord8 v_16
    putWord8 v_17
    putWord16be 37037
    putWord32be 665163427
    putWord8 (144 :: Word8)
    putWord32be 3604857952
    putWord16be v_18
    putWord16be v_19
    putWord16be 4552
    putWord16be 38638
    putWord32be 2904628998
    putWord32be v_20
    putWord8 v_21
    putWord8 v_22
    putWord16be 29548
    putWord16be v_23
    putWord8 (125 :: Word8)
    putWord8 v_24
    putWord16be 17406
    putWord16be v_25
    putWord32be v_26
    putWord16be v_27
    putWord16be 65416
    putWord32be 4012331883
    putWord16be v_28
    putWord16be v_29
    putWord8 (17 :: Word8)
    putWord32be 2128270985
    putWord8 v_30
    putWord8 v_31
    putWord16be v_32
    putWord16be 7877
    putWord8 v_33
    putWord8 (88 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 3199546891),Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word8Value 70),Value (Word8Value 122),Hole {byte_offset = 7, hole_type = Word32Hole},Value (Word16Value 61207),Hole {byte_offset = 13, hole_type = Word16Hole},Value (Word16Value 58176),Hole {byte_offset = 17, hole_type = Word16Hole},Hole {byte_offset = 19, hole_type = Word32Hole},Value (Word16Value 56797),Value (Word32Value 1205547796),Hole {byte_offset = 29, hole_type = Word16Hole},Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word16Value 29534),Value (Word32Value 191453058),Value (Word32Value 1813216337),Value (Word8Value 1),Hole {byte_offset = 43, hole_type = Word32Hole},Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word32Hole},Value (Word16Value 38641),Value (Word16Value 51152),Hole {byte_offset = 59, hole_type = Word32Hole},Hole {byte_offset = 63, hole_type = Word8Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word16Value 57298),Hole {byte_offset = 70, hole_type = Word8Hole},Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word32Value 4162138034),Hole {byte_offset = 77, hole_type = Word16Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Hole {byte_offset = 80, hole_type = Word8Hole},Value (Word16Value 37037),Value (Word32Value 665163427),Value (Word8Value 144),Value (Word32Value 3604857952),Hole {byte_offset = 92, hole_type = Word16Hole},Hole {byte_offset = 94, hole_type = Word16Hole},Value (Word16Value 4552),Value (Word16Value 38638),Value (Word32Value 2904628998),Hole {byte_offset = 104, hole_type = Word32Hole},Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word8Hole},Value (Word16Value 29548),Hole {byte_offset = 112, hole_type = Word16Hole},Value (Word8Value 125),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 17406),Hole {byte_offset = 118, hole_type = Word16Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Hole {byte_offset = 124, hole_type = Word16Hole},Value (Word16Value 65416),Value (Word32Value 4012331883),Hole {byte_offset = 132, hole_type = Word16Hole},Hole {byte_offset = 134, hole_type = Word16Hole},Value (Word8Value 17),Value (Word32Value 2128270985),Hole {byte_offset = 141, hole_type = Word8Hole},Hole {byte_offset = 142, hole_type = Word8Hole},Hole {byte_offset = 143, hole_type = Word16Hole},Value (Word16Value 7877),Hole {byte_offset = 147, hole_type = Word8Hole},Value (Word8Value 88)]}
