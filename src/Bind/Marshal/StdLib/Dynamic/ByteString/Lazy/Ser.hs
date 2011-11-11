-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.StdLib.Dynamic.ByteString.Lazy.Ser ( encode
                                                       , encode_
                                                       , with_bytestring_handler
                                                       )
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action
import Bind.Marshal.SerAction

import qualified Data.ByteString.Lazy as L
import qualified Data.ByteString.Lazy.Internal as L
import qualified Data.ByteString as S
import qualified Data.ByteString.Internal as S
import Data.IORef
import Data.Maybe

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

-- I think I need to provide a IO-free formulation for dynamic&static ops to get sufficient
-- laziness. Or at least that would make it easier for me to understand the laziness properties.
data LazyBSSer = LazyBSSer
    { out_bytestring :: L.ByteString
    , ser_fp :: ForeignPtr Word8
    }

defaultChunkSize = L.defaultChunkSize

instance BufferDelegate LazyBSSer where
    {-# INLINE gen_region #-}
    gen_region !required_size !bd = do
        let !buffer_size = max required_size defaultChunkSize
        next_ser_fp <- mallocPlainForeignPtrBytes buffer_size 
        let !bd' = LazyBSSer (out_bytestring bd)
                             next_ser_fp
        let !(Ptr start_addr) = unsafeForeignPtrToPtr next_ser_fp
        returnM $! BDIter buffer_size
                          0
                          bd'
                          start_addr
                          start_addr :: IO (BDIter LazyBSSer)

    {-# INLINE finalize_region #-}
    finalize_region !bd_iter = case buffer_delegate bd_iter of
        !bd -> do
            returnM $! LazyBSSer (finalize_chunk bd $! bytes_final bd_iter)
                                 undefined :: IO LazyBSSer

finalize_chunk :: LazyBSSer -> Size -> L.ByteString
finalize_chunk !bd 0 = out_bytestring bd
finalize_chunk !bd !bytes_final = 
    let strict_bs = S.fromForeignPtr (ser_fp bd) 0 bytes_final
    in out_bytestring bd `L.append` L.chunk strict_bs L.Empty

-- XXX: not exception safe.
with_bytestring_handler :: forall a . L.ByteString 
                           -> ( LazyBSSer -> IO (a, LazyBSSer) ) 
                           -> IO (a, L.ByteString)
with_bytestring_handler bs_0 f = do
    let bd = LazyBSSer bs_0 undefined
    !(v, !bd') <- f bd
    returnM $! (v, out_bytestring bd') :: IO (a, L.ByteString)

{-# NOINLINE encode_ #-}
encode_ :: SealedSerAction LazyBSSer () -> L.ByteString
encode_ !ser_action = unsafePerformIO ( do
    !( (), !bd') <- ser_to_buffer_delegate ser_action (LazyBSSer L.empty undefined)
    returnM $! out_bytestring bd' :: IO L.ByteString
    )

{-# NOINLINE encode #-}
encode :: SealedSerAction LazyBSSer a -> (a, L.ByteString)
encode ser_action = unsafePerformIO (
    with_bytestring_handler L.empty (ser_to_buffer_delegate ser_action)
    )
