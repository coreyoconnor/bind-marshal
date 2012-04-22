{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.StdLib.Utils.Des ( module Bind.Marshal.StdLib.Utils.Des 
                                     )
    where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.DataModel
import Bind.Marshal.DesAction.Static
import Bind.Marshal.StdLib.Des

{-# INLINE des_char_8 #-}
des_char_8 = do
    v :: Word8 <- des
    return $! toEnum $! fromEnum v

{-# INLINE expect #-}
expect v d msg = do
    v_actual <- d
    if v == v_actual
        then return ()
        else fail msg

