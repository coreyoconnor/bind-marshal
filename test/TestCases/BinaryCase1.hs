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
    5 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    3911904041 :: Word32 <- getWord32be
    63527 :: Word16 <- getWord16be
    2174204953 :: Word32 <- getWord32be
    v_2 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    v_4 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    199 :: Word8 <- getWord8
    54103 :: Word16 <- getWord16be
    v_6 :: Word8 <- getWord8
    1348120990 :: Word32 <- getWord32be
    2065971697 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    80 :: Word8 <- getWord8
    v_8 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    v_10 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    51438 :: Word16 <- getWord16be
    v_13 :: Word32 <- getWord32be
    v_14 :: Word16 <- getWord16be
    v_15 :: Word16 <- getWord16be
    19866 :: Word16 <- getWord16be
    752218326 :: Word32 <- getWord32be
    v_16 :: Word16 <- getWord16be
    v_17 :: Word16 <- getWord16be
    43455 :: Word16 <- getWord16be
    v_18 :: Word32 <- getWord32be
    3313436076 :: Word32 <- getWord32be
    v_19 :: Word32 <- getWord32be
    v_20 :: Word16 <- getWord16be
    36943 :: Word16 <- getWord16be
    1172806933 :: Word32 <- getWord32be
    48 :: Word8 <- getWord8
    22526 :: Word16 <- getWord16be
    197463741 :: Word32 <- getWord32be
    56146 :: Word16 <- getWord16be
    v_21 :: Word32 <- getWord32be
    24 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    v_23 :: Word32 <- getWord32be
    62 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    v_25 :: Word32 <- getWord32be
    3437835160 :: Word32 <- getWord32be
    v_26 :: Word16 <- getWord16be
    v_27 :: Word16 <- getWord16be
    11956 :: Word16 <- getWord16be
    v_28 :: Word32 <- getWord32be
    v_29 :: Word16 <- getWord16be
    v_30 :: Word8 <- getWord8
    11 :: Word8 <- getWord8
    v_31 :: Word32 <- getWord32be
    v_32 :: Word16 <- getWord16be
    v_33 :: Word32 <- getWord32be
    27876 :: Word16 <- getWord16be
    v_34 :: Word16 <- getWord16be
    v_35 :: Word16 <- getWord16be
    v_36 :: Word16 <- getWord16be
    1419402325 :: Word32 <- getWord32be
    v_37 :: Word8 <- getWord8
    v_38 :: Word32 <- getWord32be
    v_39 :: Word8 <- getWord8
    return  [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word32Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word32Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 ] = vs 
    putWord8 (5 :: Word8)
    putWord32be v_0
    putWord8 v_1
    putWord32be 3911904041
    putWord16be 63527
    putWord32be 2174204953
    putWord16be v_2
    putWord8 v_3
    putWord8 v_4
    putWord16be v_5
    putWord8 (199 :: Word8)
    putWord16be 54103
    putWord8 v_6
    putWord32be 1348120990
    putWord32be 2065971697
    putWord32be v_7
    putWord8 (80 :: Word8)
    putWord32be v_8
    putWord8 v_9
    putWord32be v_10
    putWord32be v_11
    putWord16be v_12
    putWord16be 51438
    putWord32be v_13
    putWord16be v_14
    putWord16be v_15
    putWord16be 19866
    putWord32be 752218326
    putWord16be v_16
    putWord16be v_17
    putWord16be 43455
    putWord32be v_18
    putWord32be 3313436076
    putWord32be v_19
    putWord16be v_20
    putWord16be 36943
    putWord32be 1172806933
    putWord8 (48 :: Word8)
    putWord16be 22526
    putWord32be 197463741
    putWord16be 56146
    putWord32be v_21
    putWord8 (24 :: Word8)
    putWord32be v_22
    putWord32be v_23
    putWord8 (62 :: Word8)
    putWord32be v_24
    putWord32be v_25
    putWord32be 3437835160
    putWord16be v_26
    putWord16be v_27
    putWord16be 11956
    putWord32be v_28
    putWord16be v_29
    putWord8 v_30
    putWord8 (11 :: Word8)
    putWord32be v_31
    putWord16be v_32
    putWord32be v_33
    putWord16be 27876
    putWord16be v_34
    putWord16be v_35
    putWord16be v_36
    putWord32be 1419402325
    putWord8 v_37
    putWord32be v_38
    putWord8 v_39
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 5),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Value (Word32Value 3911904041),Value (Word16Value 63527),Value (Word32Value 2174204953),Hole {byte_offset = 16, hole_type = Word16Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word16Hole},Value (Word8Value 199),Value (Word16Value 54103),Hole {byte_offset = 25, hole_type = Word8Hole},Value (Word32Value 1348120990),Value (Word32Value 2065971697),Hole {byte_offset = 34, hole_type = Word32Hole},Value (Word8Value 80),Hole {byte_offset = 39, hole_type = Word32Hole},Hole {byte_offset = 43, hole_type = Word8Hole},Hole {byte_offset = 44, hole_type = Word32Hole},Hole {byte_offset = 48, hole_type = Word32Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word16Value 51438),Hole {byte_offset = 56, hole_type = Word32Hole},Hole {byte_offset = 60, hole_type = Word16Hole},Hole {byte_offset = 62, hole_type = Word16Hole},Value (Word16Value 19866),Value (Word32Value 752218326),Hole {byte_offset = 70, hole_type = Word16Hole},Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word16Value 43455),Hole {byte_offset = 76, hole_type = Word32Hole},Value (Word32Value 3313436076),Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word16Value 36943),Value (Word32Value 1172806933),Value (Word8Value 48),Value (Word16Value 22526),Value (Word32Value 197463741),Value (Word16Value 56146),Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word8Value 24),Hole {byte_offset = 110, hole_type = Word32Hole},Hole {byte_offset = 114, hole_type = Word32Hole},Value (Word8Value 62),Hole {byte_offset = 119, hole_type = Word32Hole},Hole {byte_offset = 123, hole_type = Word32Hole},Value (Word32Value 3437835160),Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word16Value 11956),Hole {byte_offset = 137, hole_type = Word32Hole},Hole {byte_offset = 141, hole_type = Word16Hole},Hole {byte_offset = 143, hole_type = Word8Hole},Value (Word8Value 11),Hole {byte_offset = 145, hole_type = Word32Hole},Hole {byte_offset = 149, hole_type = Word16Hole},Hole {byte_offset = 151, hole_type = Word32Hole},Value (Word16Value 27876),Hole {byte_offset = 157, hole_type = Word16Hole},Hole {byte_offset = 159, hole_type = Word16Hole},Hole {byte_offset = 161, hole_type = Word16Hole},Value (Word32Value 1419402325),Hole {byte_offset = 167, hole_type = Word8Hole},Hole {byte_offset = 168, hole_type = Word32Hole},Hole {byte_offset = 172, hole_type = Word8Hole}]}
