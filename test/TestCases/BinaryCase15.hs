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
    1679520206 :: Word32 <- getWord32be
    v_1 :: Word32 <- getWord32be
    v_2 :: Word16 <- getWord16be
    17086 :: Word16 <- getWord16be
    v_3 :: Word8 <- getWord8
    2380958533 :: Word32 <- getWord32be
    return  [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word16Value v_2 , Word8Value v_3 ] = vs 
    putWord32be v_0
    putWord32be 1679520206
    putWord32be v_1
    putWord16be v_2
    putWord16be 17086
    putWord8 v_3
    putWord32be 2380958533
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word32Value 1679520206),Hole {byte_offset = 8, hole_type = Word32Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word16Value 17086),Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word32Value 2380958533)]}
