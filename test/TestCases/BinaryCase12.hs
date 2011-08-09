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
    v_0 :: Word32 <- getWord32be
    v_1 :: Word32 <- getWord32be
    20739 :: Word16 <- getWord16be
    v_2 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    v_4 :: Word8 <- getWord8
    2938104087 :: Word32 <- getWord32be
    179 :: Word8 <- getWord8
    34902 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word8Value v_4 ] = vs 
    putWord32be v_0
    putWord32be v_1
    putWord16be 20739
    putWord32be v_2
    putWord32be v_3
    putWord8 v_4
    putWord32be 2938104087
    putWord8 (179 :: Word8)
    putWord16be 34902
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word32Hole},Value (Word16Value 20739),Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Value (Word32Value 2938104087),Value (Word8Value 179),Value (Word16Value 34902)]}
