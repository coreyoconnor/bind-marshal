-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

#define DISABLE_FLV_CASE 0
#define ONLY_SMALL_CASES 1
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad
import Bind.Marshal.Action.Static
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.StaticProperties
import Bind.Marshal.StdLib.Des

#if !DISABLE_FLV_CASE
import FLVHeader.Data
import FLVHeader.Des
#endif

import Foreign.Marshal.Alloc
import Foreign.Storable

import System.IO

repl_1k = static_replicateM (undefined :: D1000)

t_0 = repl_1k $ do 
    () <- des
    static_return () 

t_1 = repl_1k $ do 
    y :: Int32 <- des 
    static_return y

t_2 = repl_1k $ do
    x :: Int32 <- des
    y :: Int32 <- des
    static_return ( x, y )

t_3 = repl_1k $ do
    x :: Int32 <- des
    y :: Int32 <- des
    static_return ()

t_4 = repl_1k $ do
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    static_return ()

t_5 = repl_1k $ do
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    static_return ()

t_6 = repl_1k $ do
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    _ :: Int32 <- des
    static_return ()

#if !ONLY_SMALL_CASES
t_7 = repl_1k $ do
    t_6
    t_6
    t_6
    t_6
    static_return ()
#endif

main = run_test $ do
    verify1 "t_0 x 1k can deserialize from a memory block of 0 bytes" $ marshalled_byte_count t_0 == 0
    verify1 "t_1 x 1k can deserialize from a memory block of 4k bytes" $ marshalled_byte_count t_1 == 4000
    verify1 "t_2 x 1k can deserialize from a memory block of 8k bytes" $ marshalled_byte_count t_2 == 8000
    verify1 "t_6 x 1k can deserialize from a memory block of 60k bytes" $ marshalled_byte_count t_6 == 60000
#if !ONLY_SMALL_CASES
    verify1 "t_7 x 1k can deserialize from a memory block of 240k bytes" $ marshalled_byte_count t_7 == 240000
#endif
#if !DISABLE_FLV_CASE
    verify1 "des_flv_header x 1k requires 9k bytes" $ marshalled_byte_count des_flv_header == 9000
#endif
    returnM () :: Test ()

