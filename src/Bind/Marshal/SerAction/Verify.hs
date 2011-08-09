-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.SerAction.Verify ( module Bind.Marshal.SerAction.Verify
                                     , module Bind.Marshal.SerAction.Verify.Static
                                     )
where

import Bind.Marshal.Prelude

import Bind.Marshal.SerAction
import Bind.Marshal.SerAction.Verify.Static
import Bind.Marshal.Action.Verify

import Verify

import Data.IORef

import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable

import System.IO

data StorableVector1k a where
    StorableVector1k :: [a] -> StorableVector1k a
    deriving ( Show, Eq )

instance ( Storable a, Arbitrary a ) => Arbitrary (StorableVector1k a) where
    arbitrary = fmap StorableVector1k (vector 1000)

ser_1k_and_compare :: ( Storable a
                      , Arbitrary a
                      ) => (  [a]
                           -> Int
                           -> Ptr Word8 
                           -> Ptr Word8 
                           -> IO PropertyResult
                           ) 
                        -> StorableVector1k a
                        -> Property
ser_1k_and_compare f = \vector -> liftIOResult $ do
    let StorableVector1k vs = vector
    let byte_size = length vs * sizeOf (head vs)
    withArray vs 
        $ \vs_ptr  -> allocaArray0 byte_size
        $ \(ser_buffer :: Ptr Word8) -> do
            pokeArray vs_ptr vs
            let storable_buffer :: Ptr Word8 = castPtr vs_ptr
            r <- f vs byte_size storable_buffer ser_buffer
            assert_buffers_equal byte_size storable_buffer ser_buffer
            returnM r :: IO PropertyResult

