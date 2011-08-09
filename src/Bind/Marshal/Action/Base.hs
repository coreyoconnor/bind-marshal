-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE MagicHash #-}
module Bind.Marshal.Action.Base 
    where

import Bind.Marshal.Prelude

import qualified Prelude

import Bind.Marshal.DataModel

import Control.DeepSeq

import Foreign.Ptr

import GHC.Prim

-- | All actions have a buffering requirement. In the case of an action with a static data model the
-- buffer requirement is the memory required by the marshaled data.
-- XXX: All actions? Maybe easier to just have a StaticBufferReq that is only defined for static
-- buffer actions.
type family BufferReq action

data BufferRegion tag = BufferRegion 
    { buffer_region_start :: {-# UNPACK #-} !BytePtr
    , buffer_region_size :: {-# UNPACK #-} !Size
    } 

{-# INLINE buffer_region_end #-}
buffer_region_end :: BufferRegion tag -> BytePtr
buffer_region_end (BufferRegion start size) = start `plusPtr` size

{-# INLINE pop_bytes #-}
pop_bytes :: BufferRegion tag -> Size -> BufferRegion tag
pop_bytes (BufferRegion start size) !to_pop 
    = BufferRegion (start `plusPtr` to_pop)
                   (size - to_pop)

instance NFData (BufferRegion tag) where
    rnf (BufferRegion !start !size) = ()

type Iter = Ptr Word8

