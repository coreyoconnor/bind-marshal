-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

-- sometimes the generated constraints take a *really* long time to discharge.
#define ONLY_SMALL_CASES 0
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action.Base
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.DesAction.Verify.Static
import Bind.Marshal.StdLib.Des

import Foreign.Storable
import Foreign.Marshal.Alloc

import System.IO

t_0 = do 
    () <- des
    returnM () 

t_1 = do 
    y :: Int32 <- des 
    returnM y

t_2 = do
    x :: Int32 <- des
    y :: Int32 <- des
    returnM ( x, y )

t_3 = do
    x :: Int32 <- des
    y :: Int32 <- des
    returnM ()

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
    returnM ()

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
    returnM ()

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
    returnM ( a0 
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
    returnM ( b0 + b1 + b2 + b3)

#endif

main = run_test $ do
    returnM () :: Test ()

