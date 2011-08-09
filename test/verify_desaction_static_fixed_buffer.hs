-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

-- If I am not careful the generated constraints can take a *really* long time to discharge.
#define ONLY_SMALL_CASES 0
-- Sometimes compiling the case of 1400 bytes takes over a day. :-(
#define NO_LARGE_CASES 0
#define DISABLE_FLV_CASE 0
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.StdLib.Des

import "monads-tf" Control.Monad.Trans

#if !DISABLE_FLV_CASE
import FLVHeader.Data
import FLVHeader.Des
#endif

import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import System.IO

t_0 = do 
    static_return ()

t_1 = do 
    y :: Int32 <- des 
    static_return y

t_2 = do
    x :: Int32 <- des
    y :: Int32 <- des
    static_return ( x, y )

t_3 = do
    x :: Int32 <- des
    y :: Int32 <- des
    static_return ()

-- The buffer size in this case is static even though there is a deserialized value dependency:
-- Regardless of the value deserialized the buffer requirement is the same.
t_4 = do
    b :: Word8 <- des
    if b == 0 
        then do
            _ :: Int32 <- des
            static_return ()
        else do
            _ :: Word8 <- des
            _ :: Word8 <- des
            _ :: Word8 <- des
            _ :: Word8 <- des
            static_return ()
    static_return ()

#if !ONLY_SMALL_CASES
t_6 = do
    a0 :: Int32 <- des
    a1 :: Int32 <- des
    a2 :: Int32 <- des
    a3 :: Int32 <- des
    a4 :: Int32 <- des
    a5 :: Int32 <- des
    a6 :: Int32 <- des
    a7 :: Int32 <- des
    a8 :: Int32 <- des
    a9 :: Int32 <- des
    a10 :: Int32 <- des
    a11 :: Int32 <- des
    a12 :: Int32 <- des
    a13 :: Int32 <- des
    a14 :: Int32 <- des
    static_return ( a0 
            + a1
            + a2
            + a3
            + a4
            + a5
            + a6
            + a7
            + a8
            + a9
            + a10
            + a11
            + a12
            + a13
            + a14
            )

t_7 = do
    b0 <- t_6
    b1 <- t_6
    b2 <- t_6
    b3 <- t_6
    b4 <- t_6
    b5 <- t_6
    b6 <- t_6
    b7 <- t_6
    b8 <- t_6
    b9 <- t_6
    static_return ( b0 
            + b1 
            + b2 
            + b3
            + b4
            + b5
            + b6
            + b7
            + b8
            + b9
            )

#if !NO_LARGE_CASES
t_8 = do
    b0 <- t_7
    b1 <- t_7
    b2 <- t_7
    b3 <- t_7
    b4 <- t_7
    b5 <- t_7
    b6 <- t_7
    b7 <- t_7
    b8 <- t_7
    b9 <- t_7
    static_return ( b0 
            + b1 
            + b2 
            + b3
            + b4
            + b5
            + b6
            + b7
            + b8
            + b9
            )
#endif

#endif

buffer_size = 8000

main = run_test $ do
    buffer_0 <- liftIO $ mallocBytes buffer_size :: Test ( Ptr Word8 )
    verify "Deserializes an Int32" $ \ ( i :: Int32 ) -> liftIOResult $ do
        let b = castPtr buffer_0
        poke b i
        let des_buf = BufferRegion buffer_0 4
        (i_des, b_end') <- apply_des_to_fixed_buffer t_1 des_buf
        unless (i_des == i) $ fail $ show i_des ++ " /= " ++ show i :: IO ()
        returnM succeeded :: IO PropertyResult
    verify "Deserializes two Int32s" $ \ (i_0 :: Int32) (i_1 :: Int32) -> liftIOResult $ do
        let b = castPtr buffer_0
        poke b i_0
        let b' = b `plusPtr` 4
        poke b' i_1
        let des_buf = BufferRegion buffer_0 8
        ( (i_0_des, i_1_des), b_end' ) <- apply_des_to_fixed_buffer t_2 des_buf
        unless (i_0_des == i_0) $ fail $ show i_0_des ++ " /= " ++ show i_0 :: IO ()
        unless (i_1_des == i_1) $ fail $ show i_1_des ++ " /= " ++ show i_1 :: IO ()
        returnM succeeded :: IO PropertyResult
    verify "Deserializes two Int32s with no return" $ \ (i_0 :: Int32) (i_1 :: Int32) -> liftIOResult $ do
        let b = castPtr buffer_0
        poke b i_0
        let b' = b `plusPtr` 4
        poke b' i_1
        let des_buf = BufferRegion buffer_0 8
        ( (), b_end' ) <- apply_des_to_fixed_buffer t_3 des_buf
        returnM succeeded :: IO PropertyResult
    verify "Deserializes with a if/then/else" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 5
        ( (), b_end' ) <- apply_des_to_fixed_buffer t_4 des_buf
        returnM succeeded :: IO PropertyResult
#if !DISABLE_FLV_CASE
    verify "Deserializes with des_flv_header" $ \ ( h :: FLVHeader ) -> liftIOResult $ do
        poke (castPtr buffer_0) h
        let des_buf = BufferRegion buffer_0 9
        ( _, b_end' ) <- apply_des_to_fixed_buffer des_flv_header des_buf
        returnM succeeded :: IO PropertyResult
#endif
#if !ONLY_SMALL_CASES
    verify1 "Can at least try to deserialize t_7" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 buffer_size
        ( sum, des_buf' ) <- apply_des_to_fixed_buffer t_7 des_buf
        print sum
        returnM succeeded :: IO PropertyResult
#if !NO_LARGE_CASES
    verify1 "Can at least try to deserialize t_8" $ liftIOResult $ do
        let des_buf = BufferRegion buffer_0 buffer_size
        ( sum, des_buf' ) <- apply_des_to_fixed_buffer t_8 des_buf
        print sum
        returnM succeeded :: IO PropertyResult
#endif
#endif
    liftIO $ free buffer_0 :: Test()
    returnM () :: Test ()

