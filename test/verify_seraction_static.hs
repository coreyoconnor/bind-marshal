-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

#define ONLY_SMALL_CASES 0
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Static
import Bind.Marshal.SerAction.Verify.Static
import Bind.Marshal.StdLib.Ser

import Foreign.Storable
import Foreign.Marshal.Alloc

import System.IO

t_0 = do
    ser ()
    returnM ()

t_1 = do
    ser ( 0 :: Word8 )
    returnM ()

t_2 (x :: Word8) = do
    ser x
    returnM ()

t_3 (x :: Word8) (y :: Word8) = do
    ser x
    ser y
    returnM ()

t_4 (x :: Word8) (y :: Word32) = do
    ser x
    ser y
    returnM ()

t_5 = do
    ser (0 :: Int32)
    ser (1 :: Int32)
    ser (2 :: Int32)
    ser (3 :: Int32)
    ser (4 :: Int32)
    ser (5 :: Word32)
    ser (6 :: Word32)
    returnM ()

#if !ONLY_SMALL_CASES
t_6 = do
    ser (0 :: Int32)
    ser (1 :: Int32)
    ser (2 :: Int32)
    ser (3 :: Int32)
    ser (4 :: Int32)
    ser (5 :: Word32)
    ser (6 :: Word32)
    ser (7 :: Word32)
    ser (8 :: Word32)
    ser (9 :: Word32)
    ser (10 :: Word8)
    ser (11 :: Word8)
    ser (12 :: Word8)
    ser (13 :: Word8)
    ser (14 :: Word8)
    returnM ()

t_7 a b c d e f g h i j k l m n o = do
    ser (a :: Int32)
    ser (b :: Int32)
    ser (c :: Int32)
    ser (d :: Int32)
    ser (e :: Int32)
    ser (f :: Word32)
    ser (g :: Word32)
    ser (h :: Word32)
    ser (i :: Word32)
    ser (j :: Word32)
    ser (k :: Word8)
    ser (l :: Word8)
    ser (m :: Word8)
    ser (n :: Word8)
    ser (o :: Word8)
    returnM ()
#endif

main = run_test $ do
    returnM () :: Test ()

