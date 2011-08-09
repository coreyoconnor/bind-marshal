{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase8 where
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
    3 :: Word8 <- getWord8
    v_1 :: Word16 <- getWord16be
    v_2 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    v_4 :: Word16 <- getWord16be
    v_5 :: Word8 <- getWord8
    152 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word8 <- getWord8
    v_8 :: Word8 <- getWord8
    v_9 :: Word8 <- getWord8
    v_10 :: Word16 <- getWord16be
    36605 :: Word16 <- getWord16be
    v_11 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    v_13 :: Word32 <- getWord32be
    36104 :: Word16 <- getWord16be
    v_14 :: Word32 <- getWord32be
    v_15 :: Word32 <- getWord32be
    101 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    65534 :: Word16 <- getWord16be
    58 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    v_18 :: Word16 <- getWord16be
    3308707477 :: Word32 <- getWord32be
    v_19 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    911352897 :: Word32 <- getWord32be
    v_21 :: Word32 <- getWord32be
    v_22 :: Word16 <- getWord16be
    v_23 :: Word16 <- getWord16be
    201 :: Word8 <- getWord8
    39205 :: Word16 <- getWord16be
    v_24 :: Word16 <- getWord16be
    v_25 :: Word8 <- getWord8
    v_26 :: Word8 <- getWord8
    4096476145 :: Word32 <- getWord32be
    680 :: Word16 <- getWord16be
    v_27 :: Word32 <- getWord32be
    3675646859 :: Word32 <- getWord32be
    v_28 :: Word32 <- getWord32be
    v_29 :: Word8 <- getWord8
    154 :: Word8 <- getWord8
    3056132606 :: Word32 <- getWord32be
    2318342782 :: Word32 <- getWord32be
    2958181074 :: Word32 <- getWord32be
    255 :: Word8 <- getWord8
    214 :: Word8 <- getWord8
    239 :: Word8 <- getWord8
    v_30 :: Word8 <- getWord8
    40113 :: Word16 <- getWord16be
    v_31 :: Word16 <- getWord16be
    203 :: Word8 <- getWord8
    v_32 :: Word16 <- getWord16be
    v_33 :: Word16 <- getWord16be
    379464366 :: Word32 <- getWord32be
    v_34 :: Word8 <- getWord8
    v_35 :: Word32 <- getWord32be
    3580725469 :: Word32 <- getWord32be
    v_36 :: Word32 <- getWord32be
    v_37 :: Word16 <- getWord16be
    v_38 :: Word32 <- getWord32be
    172 :: Word8 <- getWord8
    156 :: Word8 <- getWord8
    v_39 :: Word8 <- getWord8
    v_40 :: Word16 <- getWord16be
    v_41 :: Word8 <- getWord8
    3689160082 :: Word32 <- getWord32be
    149 :: Word8 <- getWord8
    v_42 :: Word16 <- getWord16be
    2560319062 :: Word32 <- getWord32be
    5 :: Word8 <- getWord8
    v_43 :: Word32 <- getWord32be
    v_44 :: Word32 <- getWord32be
    v_45 :: Word8 <- getWord8
    3734998490 :: Word32 <- getWord32be
    v_46 :: Word16 <- getWord16be
    v_47 :: Word16 <- getWord16be
    v_48 :: Word32 <- getWord32be
    1808959143 :: Word32 <- getWord32be
    v_49 :: Word32 <- getWord32be
    81 :: Word8 <- getWord8
    v_50 :: Word32 <- getWord32be
    v_51 :: Word8 <- getWord8
    13694 :: Word16 <- getWord16be
    38593 :: Word16 <- getWord16be
    v_52 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word8Value v_51 , Word32Value v_52 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word8Value v_51 , Word32Value v_52 ] = vs 
    putWord32be v_0
    putWord8 (3 :: Word8)
    putWord16be v_1
    putWord16be v_2
    putWord8 v_3
    putWord16be v_4
    putWord8 v_5
    putWord8 (152 :: Word8)
    putWord32be v_6
    putWord8 v_7
    putWord8 v_8
    putWord8 v_9
    putWord16be v_10
    putWord16be 36605
    putWord8 v_11
    putWord8 v_12
    putWord32be v_13
    putWord16be 36104
    putWord32be v_14
    putWord32be v_15
    putWord8 (101 :: Word8)
    putWord32be v_16
    putWord16be 65534
    putWord8 (58 :: Word8)
    putWord32be v_17
    putWord16be v_18
    putWord32be 3308707477
    putWord8 v_19
    putWord8 v_20
    putWord32be 911352897
    putWord32be v_21
    putWord16be v_22
    putWord16be v_23
    putWord8 (201 :: Word8)
    putWord16be 39205
    putWord16be v_24
    putWord8 v_25
    putWord8 v_26
    putWord32be 4096476145
    putWord16be 680
    putWord32be v_27
    putWord32be 3675646859
    putWord32be v_28
    putWord8 v_29
    putWord8 (154 :: Word8)
    putWord32be 3056132606
    putWord32be 2318342782
    putWord32be 2958181074
    putWord8 (255 :: Word8)
    putWord8 (214 :: Word8)
    putWord8 (239 :: Word8)
    putWord8 v_30
    putWord16be 40113
    putWord16be v_31
    putWord8 (203 :: Word8)
    putWord16be v_32
    putWord16be v_33
    putWord32be 379464366
    putWord8 v_34
    putWord32be v_35
    putWord32be 3580725469
    putWord32be v_36
    putWord16be v_37
    putWord32be v_38
    putWord8 (172 :: Word8)
    putWord8 (156 :: Word8)
    putWord8 v_39
    putWord16be v_40
    putWord8 v_41
    putWord32be 3689160082
    putWord8 (149 :: Word8)
    putWord16be v_42
    putWord32be 2560319062
    putWord8 (5 :: Word8)
    putWord32be v_43
    putWord32be v_44
    putWord8 v_45
    putWord32be 3734998490
    putWord16be v_46
    putWord16be v_47
    putWord32be v_48
    putWord32be 1808959143
    putWord32be v_49
    putWord8 (81 :: Word8)
    putWord32be v_50
    putWord8 v_51
    putWord16be 13694
    putWord16be 38593
    putWord32be v_52
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word8Value 3),Hole {byte_offset = 5, hole_type = Word16Hole},Hole {byte_offset = 7, hole_type = Word16Hole},Hole {byte_offset = 9, hole_type = Word8Hole},Hole {byte_offset = 10, hole_type = Word16Hole},Hole {byte_offset = 12, hole_type = Word8Hole},Value (Word8Value 152),Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word16Value 36605),Hole {byte_offset = 25, hole_type = Word8Hole},Hole {byte_offset = 26, hole_type = Word8Hole},Hole {byte_offset = 27, hole_type = Word32Hole},Value (Word16Value 36104),Hole {byte_offset = 33, hole_type = Word32Hole},Hole {byte_offset = 37, hole_type = Word32Hole},Value (Word8Value 101),Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word16Value 65534),Value (Word8Value 58),Hole {byte_offset = 49, hole_type = Word32Hole},Hole {byte_offset = 53, hole_type = Word16Hole},Value (Word32Value 3308707477),Hole {byte_offset = 59, hole_type = Word8Hole},Hole {byte_offset = 60, hole_type = Word8Hole},Value (Word32Value 911352897),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word16Hole},Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word8Value 201),Value (Word16Value 39205),Hole {byte_offset = 76, hole_type = Word16Hole},Hole {byte_offset = 78, hole_type = Word8Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Value (Word32Value 4096476145),Value (Word16Value 680),Hole {byte_offset = 86, hole_type = Word32Hole},Value (Word32Value 3675646859),Hole {byte_offset = 94, hole_type = Word32Hole},Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word8Value 154),Value (Word32Value 3056132606),Value (Word32Value 2318342782),Value (Word32Value 2958181074),Value (Word8Value 255),Value (Word8Value 214),Value (Word8Value 239),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 40113),Hole {byte_offset = 118, hole_type = Word16Hole},Value (Word8Value 203),Hole {byte_offset = 121, hole_type = Word16Hole},Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word32Value 379464366),Hole {byte_offset = 129, hole_type = Word8Hole},Hole {byte_offset = 130, hole_type = Word32Hole},Value (Word32Value 3580725469),Hole {byte_offset = 138, hole_type = Word32Hole},Hole {byte_offset = 142, hole_type = Word16Hole},Hole {byte_offset = 144, hole_type = Word32Hole},Value (Word8Value 172),Value (Word8Value 156),Hole {byte_offset = 150, hole_type = Word8Hole},Hole {byte_offset = 151, hole_type = Word16Hole},Hole {byte_offset = 153, hole_type = Word8Hole},Value (Word32Value 3689160082),Value (Word8Value 149),Hole {byte_offset = 159, hole_type = Word16Hole},Value (Word32Value 2560319062),Value (Word8Value 5),Hole {byte_offset = 166, hole_type = Word32Hole},Hole {byte_offset = 170, hole_type = Word32Hole},Hole {byte_offset = 174, hole_type = Word8Hole},Value (Word32Value 3734998490),Hole {byte_offset = 179, hole_type = Word16Hole},Hole {byte_offset = 181, hole_type = Word16Hole},Hole {byte_offset = 183, hole_type = Word32Hole},Value (Word32Value 1808959143),Hole {byte_offset = 191, hole_type = Word32Hole},Value (Word8Value 81),Hole {byte_offset = 196, hole_type = Word32Hole},Hole {byte_offset = 200, hole_type = Word8Hole},Value (Word16Value 13694),Value (Word16Value 38593),Hole {byte_offset = 205, hole_type = Word32Hole}]}
