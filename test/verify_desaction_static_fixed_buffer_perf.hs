-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.StdLib.Des

import FLVHeader.Data
import FLVHeader.Des

import Control.DeepSeq
import Control.Exception ( evaluate )
import "monads-tf" Control.Monad.Trans
import Control.Monad

import Data.Word

import Foreign.Marshal.Alloc
import Foreign.Marshal.Array ( pokeArray )
import Foreign.Ptr
import Foreign.Storable

import System.IO
import System.Random ( newStdGen, split )

import Test.QuickCheck.Gen ( Gen(..) )

{-# NOINLINE bench_des #-}
bench_des des_buf () = do
    let des = apply_des_to_fixed_buffer_unsafe des_flv_header
    foldM_ (\in_des_buf _ -> do
                ( v, out_des_buf ) <- des in_des_buf
                evaluate (rnf v)
                return out_des_buf :: IO DesBuffer
           ) des_buf
             [0 :: Int .. 49999]

{-# NOINLINE bench_storable #-}
bench_storable b () = do
    foldM_ (\in_b _ -> do
                v :: FLVHeader <- peek in_b
                evaluate (rnf v)
                return (in_b `plusPtr` 9) :: IO (Ptr FLVHeader)
           ) (castPtr b :: Ptr FLVHeader)
             [0 :: Int .. 49999]

main = run_test $ do
    buffer_0 <- liftIO $ mallocBytes (50001 * 9 * 2) :: Test ( Ptr Word32 )
    test_flv_headers <- liftIO $ gen_a_bunch arbitrary 50000 :: Test [FLVHeader]
    liftIO $ pokeArray (castPtr buffer_0) test_flv_headers :: Test ()
    let des_buf = BufferRegion (castPtr buffer_0) (9 * 50000)
    verify_faster "DesAction.Static versus storable" perf_config (bench_des des_buf) (bench_storable buffer_0)
    liftIO $ free buffer_0 :: Test()
    return () :: Test ()

