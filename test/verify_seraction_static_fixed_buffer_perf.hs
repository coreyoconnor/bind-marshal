-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.SerAction.Base
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StdLib.Ser

import FLVHeader.Data
import FLVHeader.Ser

import Control.DeepSeq
import "monads-tf" Control.Monad.Trans

import Foreign.Marshal.Alloc
import Foreign.Marshal.Array ( pokeArray, peekArray )
import Foreign.Ptr
import Foreign.Storable

import System.IO
import System.Random ( newStdGen, split )

import Test.QuickCheck.Gen ( Gen(..) )

{-# NOINLINE bench_ser #-}
bench_ser buffer flv_header = do
    let !b = BufferRegion buffer 9
    () <- apply_ser_to_fixed_buffer_unsafe_ (ser_flv_header flv_header) b
    returnM () :: IO ()

{-# NOINLINE bench_storable #-}
bench_storable buffer flv_header = do
    () <- poke (castPtr buffer) flv_header
    returnM () :: IO ()

main = run_test $ do
    buffer <- liftIO $ mallocBytes (50001 * 9 * 2) :: Test ( Ptr Word8 )
    verify_faster "SerAction.Static versus storable" perf_config
                  ( bench_ser buffer ) 
                  ( bench_storable buffer )
    liftIO $ free buffer :: Test()
    returnM () :: Test ()

