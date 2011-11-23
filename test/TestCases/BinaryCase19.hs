{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase19 where
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
    90 :: Word8 <- getWord8
    v_0 :: Word32 <- getWord32be
    4227674078 :: Word32 <- getWord32be
    v_1 :: Word16 <- getWord16be
    12904 :: Word16 <- getWord16be
    651594651 :: Word32 <- getWord32be
    v_2 :: Word8 <- getWord8
    v_3 :: Word16 <- getWord16be
    v_4 :: Word32 <- getWord32be
    198 :: Word8 <- getWord8
    4184444469 :: Word32 <- getWord32be
    931291122 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word8Value v_2 , Word16Value v_3 , Word32Value v_4 ] = vs 
    putWord8 (90 :: Word8)
    putWord32be v_0
    putWord32be 4227674078
    putWord16be v_1
    putWord16be 12904
    putWord32be 651594651
    putWord8 v_2
    putWord16be v_3
    putWord32be v_4
    putWord8 (198 :: Word8)
    putWord32be 4184444469
    putWord32be 931291122
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 90),Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word32Value 4227674078),Hole {byte_offset = 9, hole_type = Word16Hole},Value (Word16Value 12904),Value (Word32Value 651594651),Hole {byte_offset = 17, hole_type = Word8Hole},Hole {byte_offset = 18, hole_type = Word16Hole},Hole {byte_offset = 20, hole_type = Word32Hole},Value (Word8Value 198),Value (Word32Value 4184444469),Value (Word32Value 931291122)]}
