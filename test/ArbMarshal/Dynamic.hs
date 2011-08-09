-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module ArbMarshal.Dynamic ( simple_bytestring, to_bytestring, from_bytestring ) where

import Bind.Marshal.Prelude

import Bind.Marshal.Dynamic
import Bind.Marshal.StdLib

import ArbMarshal

import Control.Applicative

import Data.Monoid

import qualified Data.ByteString.Lazy as BS

{-# NOINLINE simple_bytestring #-}
simple_bytestring :: Int -> BS.ByteString
simple_bytestring i = encode_ $! replicateM_ i (dyn_action $ ser_word32_be $ fromIntegral i)

to_bytestring :: StaticStructureValue -> BS.ByteString
to_bytestring s =  encode_ $! bytes' (properties $ static_structure s) (hole_values s)
    where
        bytes' [] _hole_values = returnM ()
        bytes' (Value v : properties) hole_values = do
            ser_value v
            bytes' properties hole_values
        bytes' (Hole _o _t : properties) ( v : hole_values) = do
            ser_value v
            bytes' properties hole_values

ser_value (Word8Value  v) = dyn_action $ ser           v
ser_value (Word16Value v) = dyn_action $ ser_word16_be v
ser_value (Word32Value v) = dyn_action $ ser_word32_be v

from_bytestring :: StaticStructure -> BS.ByteString -> StaticStructureValue
from_bytestring s b = StaticStructureValue
    { static_structure = s
    , hole_values = decode_ (w (properties s) []) b
    }
    where
        w [] out = returnM out 
        w (Value v : properties) out = do
            _v_in <- get_value (type_for_value v)
            w properties out
        w (Hole _o t  : properties) out = do
            v <- get_value t
            w properties (out `mappend` [v])

get_value Word8Hole  = dyn_action $ Word8Value  <$> des
get_value Word16Hole = dyn_action $ Word16Value <$> des_word16_be
get_value Word32Hole = dyn_action $ Word32Value <$> des_word32_be

