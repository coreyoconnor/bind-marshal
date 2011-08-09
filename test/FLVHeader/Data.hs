-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE ImplicitPrelude #-}
{-# LANGUAGE NoRebindableSyntax #-}
module FLVHeader.Data
where

import Bind.Marshal.Verify

import Control.DeepSeq

import Data.Word

import Foreign.Ptr
import Foreign.Storable

import System.IO

data FLVHeader = FLVHeader
    { version :: !Word8
    , has_audio :: !Bool
    , has_video :: !Bool
    , header_size :: !Word32
    }
    deriving ( Show, Eq )

instance Arbitrary FLVHeader where
    arbitrary = do
        let version = 1
        has_audio <- arbitrary
        has_video <- arbitrary
        let has_audio' = if (not has_audio) && (not has_video) then True else has_audio
        let header_size = 9
        return $! FLVHeader version has_audio' has_video header_size

instance NFData FLVHeader where
    rnf (FLVHeader !version !has_audio !has_video !header_size)
        = deepseq version 
        $! deepseq has_audio
        $! deepseq has_video
        $! rnf header_size

instance Storable FLVHeader where
    sizeOf _ = 9
    alignment _ = 1
    {-# INLINE peek #-}
    peek p = do
        -- First 3 bytes should be ['F','L','V'] in ASCII
        'F' <- peek_char8 (castPtr p)
        let p1 = plusPtr p 1
        'L' <- peek_char8 p1
        let p2 = plusPtr p1 1
        'V' <- peek_char8 p2
        let p3 = plusPtr p2 1
        version :: Word8 <- peek p3
        let p4 = plusPtr p3 1
        flags :: Word8 <- peek p4
        let p5 = plusPtr p4 1
        header_size :: Word32 <- peek p5
        let ( has_audio, has_video ) = case flags of
                                            1 -> ( True, False )
                                            4 -> ( False, True )
                                            5 -> ( True, True )
        return $! FLVHeader version has_audio has_video header_size
    {-# INLINE poke #-}
    poke p v = do
        -- First 3 bytes should be ['F','L','V'] in ASCII
        poke_char8 (castPtr p) 'F'
        let p1 = plusPtr p 1
        poke_char8 p1 'L'
        let p2 = plusPtr p1 1
        poke_char8 p2 'V'
        let p3 = plusPtr p2 1
        poke p3 $! version v
        let p4 = plusPtr p3 1
        case ( has_audio v, has_video v ) of
            ( True, False ) -> poke p4 ( 1 :: Word8 )
            ( False, True ) -> poke p4 ( 4 :: Word8 )
            ( True, True ) -> poke p4 ( 5 :: Word8 )
        let p5 = plusPtr p4 1
        poke p5 $! header_size v
        return ()

peek_char8 :: Ptr Word8 -> IO Char
peek_char8 p = do
    v :: Word8 <- peek p
    return $! toEnum $! fromEnum v

poke_char8 :: Ptr Word8 -> Char -> IO ()
poke_char8 p c = do
    let v :: Word8 = toEnum $! fromEnum c
    poke p v

