-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module FLVHeader.Ser where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StdLib.Ser
import Bind.Marshal.StdLib.Utils.Ser

import FLVHeader.Data
 
{-# INLINE ser_flv_header #-}
ser_flv_header h = do
    ser_char_8 'F'
    ser_char_8 'L'
    ser_char_8 'V'
    ser $ version h
    case ( has_audio h, has_video h ) of
        ( True, False ) -> ser ( 1 :: Word8 )
        ( False, True ) -> ser ( 4 :: Word8 )
        ( True, True ) -> ser ( 5 :: Word8 )
    ser $ header_size h
    static_return ()

