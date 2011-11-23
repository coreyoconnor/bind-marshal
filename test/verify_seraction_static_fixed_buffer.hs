{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

-- If I am not careful the generated constraints can take a *really* long time to discharge.
#define ONLY_SMALL_CASES 0
#define NO_LARGE_CASES 0
#define DISABLE_FLV_CASE 0

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.Action.Verify
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StdLib.Ser

import "monads-tf" Control.Monad.Trans

#if !DISABLE_FLV_CASE
import FLVHeader.Data
import FLVHeader.Ser
#endif

import Foreign.Marshal.Array
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import System.IO

t_1 = do 
    ser (0 :: Int32)
    return ()

t_2 (y :: Int32) = do 
    ser y
    return ()

t_3 (x :: Int32) (y :: Int32) = do 
    ser x
    ser y
    return ()

t_4 = do
    ser (0 :: Int32)
    ser (1 :: Int32)
    ser (2 :: Int32)
    ser (3 :: Int32)
    ser (4 :: Int32)
    ser (5 :: Word32)
    ser (6 :: Word32)
    return ()

main = run_test $ do
    storable_buffer <- liftIO $ mallocBytes 2048 :: Test ( Ptr Word8 )
    ser_buffer <- liftIO $ mallocBytes 2048 :: Test ( Ptr Word8 )
    let compare_buffer_bytes byte_size  = do
            assert_buffers_equal byte_size storable_buffer ser_buffer :: IO ()
            returnM succeeded :: IO PropertyResult
    verify "Serializes an Int32" $ \ ( i :: Int32 ) -> liftIOResult $ do
        let storable_ptr = castPtr storable_buffer
        poke storable_ptr i
        let ser_buf = BufferRegion (ser_buffer) 
                                   (sizeOf i)
        _ <- apply_ser_to_fixed_buffer (t_2 i) ser_buf
        compare_buffer_bytes 4
    verify "Serializes two Int32s" $ \ (i_0 :: Int32) (i_1 :: Int32) -> liftIOResult $ do
        let b = castPtr storable_buffer
        poke b i_0
        let b' = b `plusPtr` sizeOf i_0
        poke b' i_1
        let ser_buf = BufferRegion (ser_buffer) 
                                   ( sizeOf i_0 + sizeOf i_1 )
        _ <- apply_ser_to_fixed_buffer (t_3 i_0 i_1) ser_buf
        compare_buffer_bytes 8
#if !DISABLE_FLV_CASE
    verify "Serializes FLVHeader" $ \ (h :: FLVHeader) -> liftIOResult $ do
        let b = castPtr storable_buffer
        poke b h
        let ser_buf = BufferRegion ( ser_buffer ) 
                                   ( sizeOf h )
        _ <- apply_ser_to_fixed_buffer (ser_flv_header h) ser_buf
        compare_buffer_bytes $ sizeOf h
#endif
    liftIO $ free storable_buffer :: Test()
    liftIO $ free ser_buffer :: Test()
    returnM () :: Test ()

