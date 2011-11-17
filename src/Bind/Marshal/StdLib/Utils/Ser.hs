{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE ScopedTypeVariables #-}
module Bind.Marshal.StdLib.Utils.Ser where

import Bind.Marshal.Prelude

import Bind.Marshal.DataModel
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StdLib.Ser


{-# INLINE ser_char_8 #-}

-- serialize an 8-bit byte from a Char. Assumes the Char truncates to 8 bits without loss of
-- representation.
#if RELEASE_BUILD
ser_char_8 :: forall m tRunState tModel.
              ( Word8 ~ NextSerType tS
              ) => 
              SerAction tRunState tModel
                        tRunState' (DMApp tModel (SBUnit (StaticSerActionRep Word8)))
                        tS (StateAfterSer tS)
                        SerBuffer
#endif
ser_char_8 !( c :: Char ) = case fromIntegral $! fromEnum c of
    !(v :: Word8) -> ser v

