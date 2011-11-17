{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.DesAction.Verify ( module Bind.Marshal.DesAction.Verify
                                     , module Bind.Marshal.DesAction.Verify.Static
                                     )
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Static
import Bind.Marshal.DesAction.Dynamic.Base
import Bind.Marshal.DesAction.Verify.Static

import Data.IORef

import Verify

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

des_1k_and_compare :: ( Show a
                      , Storable a
                      , Eq a
                      , Arbitrary a
                      ) => (  Int -> DesBuffer -> IO [a] ) 
                        -> StorableVector1k a
                        -> Property
des_1k_and_compare f = \vector -> liftIOResult $ do
    let StorableVector1k vs = vector
    let byte_size = length vs * sizeOf (head vs)
    -- assume: 
    --  pokeArray ptr vs >>= vs' <- peekArray ptr 
    --      implies
    --  vs' == vs
    allocaArray byte_size $ \(des_ptr :: Ptr Word8) -> do
        pokeArray (castPtr des_ptr) vs
        let des_buffer = BufferRegion des_ptr byte_size
        des_vs <- f byte_size des_buffer
        unless (vs == des_vs) 
            $ fail $ show vs ++ " /= " ++ show des_vs :: IO ()
        returnM succeeded :: IO PropertyResult

