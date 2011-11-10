-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.StdLib.Dynamic.ByteString.Lazy.Des ( decode
                                                       , decode_
                                                       , with_bytestring_provider
                                                       )
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action
import Bind.Marshal.DesAction

import qualified Data.ByteString.Lazy as L
import qualified Data.ByteString.Lazy.Internal as L
import qualified Data.ByteString as S
import qualified Data.ByteString.Internal as S
import Data.IORef

import System.IO.Unsafe ( unsafePerformIO )
import Foreign.Marshal.Array
import Foreign.Marshal.Alloc
import Foreign.Ptr

import GHC.Exts
import GHC.ForeignPtr           ( ForeignPtr(..)
                                , mallocPlainForeignPtrBytes
                                , unsafeForeignPtrToPtr
                                , touchForeignPtr
                                )
import GHC.Prim

import System.IO

{- Deserialization from a lazy bytestring either goes through a slow path or fast path:
 - fast path is when the required_size to gen_region is less than the remaining bytes in the head
 - chunk.
 -  Then the buffer region provided by gen_region points directly into the head chunk.
 - slow path is when the required_size to gen_region is larger than the remaining bytes in the head
 - chunk.
 -  Then the buffer region provided by gen_region is to a newly allocated buffer containing the
 -  remaining bytes from the head chunk and sufficient bytes from the next chunk to satisfy the
 -  requirement.
 -
 - XXX: The fast path is NOT implemented
 -}
data LazyBSDes = LazyBSDes
    { bs :: !L.ByteString
    , buffer :: {-# UNPACK #-} !(Ptr Word8)
    , buffer_size :: {-# UNPACK #-} !Size
    }

defaultChunkSize = L.defaultChunkSize

with_bytestring_provider :: forall a . L.ByteString 
                            -> ( LazyBSDes -> IO (a, LazyBSDes) ) 
                            -> IO (a, L.ByteString)
with_bytestring_provider in_bs f = do
    buffer <- mallocBytes defaultChunkSize
    let bd = LazyBSDes in_bs buffer defaultChunkSize
    (a, bd') <- f bd
    returnM ( a, bs bd' ) :: IO ( a, L.ByteString )

instance BufferDelegate LazyBSDes where
    gen_region !required_size !bd = 
        case required_size > buffer_size bd of
            True -> do
                buffer'@(Ptr start_addr) <- reallocBytes (buffer bd) required_size
                -- The actual bytestring may have fewer bytes than required_size
                -- In which case bytes is shorter than required_size.
                -- This is OK so long as the deserialization doesn't actually read the junk bytes
                -- that will be in the buffer. Otherwise bad stuff may happen.
                let bytes = {-# SCC "lazy_bs_unpack_0" #-} L.unpack $! L.take (fromIntegral required_size) $! bs bd
                pokeArray buffer' bytes
                returnM $! BDIter required_size
                                  0
                                  ( bd { buffer = buffer', buffer_size = required_size } )
                                  start_addr
                                  start_addr
                        :: IO (BDIter LazyBSDes)
            False -> do
                let !(Ptr start_addr) = buffer bd
                    bytes = {-# SCC "lazy_bs_unpack_1" #-} L.unpack $! L.take (fromIntegral $! buffer_size bd) $! bs bd
                pokeArray (buffer bd) bytes
                returnM $! BDIter (buffer_size bd)
                                  0
                                  bd
                                  start_addr
                                  start_addr
                        :: IO (BDIter LazyBSDes)
    finalize_region bd_iter = case minusAddr# (curr_addr bd_iter) (start_addr bd_iter) of
        consumed_byte_count -> 
            let !bd = buffer_delegate bd_iter
                !bs' = {-# SCC "lazy_bs_drop" #-} L.drop (fromIntegral $! I# consumed_byte_count) (bs bd)
            in returnM $! bd { bs = bs' } :: IO LazyBSDes

{-# NOINLINE decode #-}
decode :: forall a . SealedDynamicDesAction LazyBSDes a 
           -> L.ByteString 
           -> (a, L.ByteString)
decode des_action b = unsafePerformIO ( do
    with_bytestring_provider b (des_from_buffer_delegate des_action)
    )

{-# NOINLINE decode_ #-}
decode_ :: forall a . SealedDynamicDesAction LazyBSDes a -> L.ByteString -> a
decode_ des_action b = unsafePerformIO ( do
    ( a, _ ) <- with_bytestring_provider b (des_from_buffer_delegate des_action)
    returnM a :: IO a
    )

