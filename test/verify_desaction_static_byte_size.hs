{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

#define DISABLE_FLV_CASE 0
#define ONLY_SMALL_CASES 0
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.DesAction.Verify.Static
import Bind.Marshal.StaticProperties
import Bind.Marshal.StdLib.Des

#if !DISABLE_FLV_CASE
import FLVHeader.Data
import FLVHeader.Des
#endif

t_0 = do 
    () <- des
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

t_4 = do
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

t_5 = do
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

t_6 = do
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
t_7 = do
    t_6
    t_6
    t_6
    t_6
    static_return ()

t_8 = do
    t_7
    t_7
    t_7
    t_7
    static_return ()
#endif

main = run_test $ do
    verify1 "t_0 can deserialize from a memory block of 0 bytes" $ marshalled_byte_count t_0 == 0
    verify1 "t_1 can deserialize from a memory block of 4 bytes" $ marshalled_byte_count t_1 == 4
    verify1 "t_2 can deserialize from a memory block of 8 bytes" $ marshalled_byte_count t_2 == 8
    verify1 "t_6 can deserialize from a memory block of 60 bytes" $ marshalled_byte_count t_6 == 60
#if !ONLY_SMALL_CASES
    verify1 "t_7 can deserialize from a memory block of 240 bytes" $ marshalled_byte_count t_7 == 240
    verify1 "t_8 can deserialize from a memory block of 960 bytes" $ marshalled_byte_count t_8 == 960
#endif
#if !DISABLE_FLV_CASE
    verify1 "des_flv_header requires 9 bytes" $ marshalled_byte_count des_flv_header == 9
#endif
    returnM () :: Test ()

