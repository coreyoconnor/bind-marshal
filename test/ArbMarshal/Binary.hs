-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module ArbMarshal.Binary ( simple_bytestring, to_bytestring, from_bytestring, ArbByteString(..) ) where

import ArbMarshal

import Verify

import Control.Applicative
import Control.DeepSeq
import Control.Monad

import Data.Binary.Put
import Data.Binary.Get
import qualified Data.ByteString.Lazy as BS
import qualified Data.ByteString.Lazy.Internal as L
import qualified Data.ByteString.Internal as S
import Data.Monoid

{-# NOINLINE simple_bytestring #-}
simple_bytestring :: Int -> BS.ByteString
simple_bytestring i = runPut $! replicateM_ i (putWord32be $ fromIntegral i)

to_bytestring :: StaticStructureValue -> BS.ByteString
to_bytestring s = runPut $! w (properties $ static_structure s) (hole_values s)
    where
        w [] _hole_values = return ()
        w (Value v : properties) hole_values = do
            put_value v
            w properties hole_values
        w (Hole _o _t : properties) ( v : hole_values) = do
            put_value v
            w properties hole_values

put_value (Word8Value v) = putWord8 v
put_value (Word16Value v) = putWord16be v
put_value (Word32Value v) = putWord32be v


from_bytestring :: StaticStructure -> BS.ByteString -> StaticStructureValue
from_bytestring s b = StaticStructureValue
    { static_structure = s
    , hole_values = runGet (w (properties s) []) b
    }
    where
        w [] out = return out
        w (Value v : properties) out = do
            _v_in <- get_value (type_for_value v)
            w properties out
        w (Hole _o t  : properties) out = do
            v <- get_value t
            w properties (out `mappend` [v])

get_value Word8Hole = Word8Value <$> getWord8
get_value Word16Hole = Word16Value <$> getWord16be
get_value Word32Hole = Word32Value <$> getWord32be

data ArbByteString = ArbByteString StaticStructure BS.ByteString

instance NFData ArbByteString where
    rnf (ArbByteString !s !bs) = rnf s `seq` rnf bs

instance Arbitrary ArbByteString where
    arbitrary = do
        sv <- arbitrary
        let bs = to_bytestring sv
        return $ ArbByteString (static_structure sv) bs

instance NFData S.ByteString where
    rnf (S.PS !p !o !l) = rnf o `seq` rnf l

instance NFData L.ByteString where
    rnf L.Empty = ()
    rnf (L.Chunk !s !b) = rnf s `seq` rnf b

