{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase12 where
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
    v_0 :: Word16 <- getWord16be
    6679 :: Word16 <- getWord16be
    140939893 :: Word32 <- getWord32be
    3696995575 :: Word32 <- getWord32be
    560 :: Word16 <- getWord16be
    21941 :: Word16 <- getWord16be
    v_1 :: Word16 <- getWord16be
    1823932093 :: Word32 <- getWord32be
    29974 :: Word16 <- getWord16be
    v_2 :: Word8 <- getWord8
    58430 :: Word16 <- getWord16be
    44810 :: Word16 <- getWord16be
    120 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    24689 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    v_5 :: Word32 <- getWord32be
    179 :: Word8 <- getWord8
    v_6 :: Word8 <- getWord8
    30 :: Word8 <- getWord8
    v_7 :: Word32 <- getWord32be
    v_8 :: Word32 <- getWord32be
    v_9 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word16Value v_1 , Word8Value v_2 , Word32Value v_3 , Word32Value v_4 , Word32Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word16Value v_9 ] = vs 
    putWord16be v_0
    putWord16be 6679
    putWord32be 140939893
    putWord32be 3696995575
    putWord16be 560
    putWord16be 21941
    putWord16be v_1
    putWord32be 1823932093
    putWord16be 29974
    putWord8 v_2
    putWord16be 58430
    putWord16be 44810
    putWord8 (120 :: Word8)
    putWord32be v_3
    putWord16be 24689
    putWord32be v_4
    putWord32be v_5
    putWord8 (179 :: Word8)
    putWord8 v_6
    putWord8 (30 :: Word8)
    putWord32be v_7
    putWord32be v_8
    putWord16be v_9
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word16Value 6679),Value (Word32Value 140939893),Value (Word32Value 3696995575),Value (Word16Value 560),Value (Word16Value 21941),Hole {byte_offset = 16, hole_type = Word16Hole},Value (Word32Value 1823932093),Value (Word16Value 29974),Hole {byte_offset = 24, hole_type = Word8Hole},Value (Word16Value 58430),Value (Word16Value 44810),Value (Word8Value 120),Hole {byte_offset = 30, hole_type = Word32Hole},Value (Word16Value 24689),Hole {byte_offset = 36, hole_type = Word32Hole},Hole {byte_offset = 40, hole_type = Word32Hole},Value (Word8Value 179),Hole {byte_offset = 45, hole_type = Word8Hole},Value (Word8Value 30),Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word32Hole},Hole {byte_offset = 55, hole_type = Word16Hole}]}
