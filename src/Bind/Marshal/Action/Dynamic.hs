{-# LANGUAGE RankNTypes #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE MagicHash #-}
{- The laziness of a dynamic memory action: 
 -  The dependent point is initially the start of the buffer.
 -  On forcing the thunk for of a dynamic dependency all static buffer actions since the last update
 -  point 
 -
 -  In the case of deserialization:
 -      The deserialization procedure may or may not vary depending on deserialized values or free
 -      variables in the deserialization monad equation.
 -          1. A static memory action is the case where the deserializtion procedure does not vary
 -          dependending on the deserialized values 
 -          2. A dynamic memory action is the case where the deserialization procedure does vary due
 -          to values deserialized or the value of free variables.
 -  
 -  The case of serialization the procedure may only vary depending on the free variables.
 -
 -  A static memory action has the following laziness properties:
 -      - When forcing the thunk of a value to WHNF (?) (deserialization only) the deserialization
 -      actions up to, and possibly beyond, the point of the constructor expression for that value
 -      are executed.
 -
 -  A dynamic memory action has the following laziness properties:
 -
 -
 - Aight WKLTLK:JASDF
 -
 - A dynamic memory action is a sequence of static buffer actions.
 -
 - A dynamic memory aciton monad is partitioned into static buffer actions during type checking.
 - This may be inefficient. XXX: Provide equations to allow the user to force the partitioning.
 -
 - A dynamic memory action either consumes from a buffer source (deserialization) or produces for a
 - buffer sink (serialization).
 -
 - In the case of deserialization:
 -  The buffer source will produce a buffer at least as large as the next static memory action to
 -  execute.
 - 
 - In the case of serialization:
 -  The buffer sink can efficiently consumes buffers at least as large as the next static memory
 -  action to execute.
 -
 - In both cases there is the need for a memory buffer producer.
 -  The memory buffer producer assures there is a buffer with a region large enough for the next
 -  static memory action.
 -
 -  In the deserialization case the memory buffer producer is then copied to from some byte source.
 -  The byte source is either an iteratee or a sync read source.
 -      In the iteratee case:
 -          0. Enough bytes are copied from the iteratee buffer any pending static buffer actions
 -          have a complete input buffer.
 -          1. The buffer provided by the iteratee is consumed until there is not enough bytes for
 -          the next static buffer action.
 -          2. The memory buffer producer provides a buffer large enough for the next static buffer
 -          action.
 -          3. The iteratee bytes are copied into the buffer and the next static buffer action is
 -          now pending.
 -      In the case of a sync read source:
 -          0. The memory buffer producer provides a buffer large enough for the next static buffer
 -          action.
 -          1. The buffer is filled.
 -          2. The next static buffer action is executed.
 -          3. move onto evaluating the next static buffer action.
 -
 - Ideally the buffering could also take into account where values the deserialization equation
 - depends on are forced.
 -
 - In the serialization case the memory buffer producer may be used to copy to some byte
 - destination.
 -
 - The byte destination is either an iteratee or a sync write dest:
 -      In the iteratee case:
 -          0. The iteratee provides a buffer with a size that assures a non-blocking write of all the
 -          bytes in the buffer to the destination.
 -          1. If the current buffer is not empty (The previous static buffer action could not
 -          completely output to the iteratee buffer) then the buffer is first emptied into the
 -          iteratee buffer. (Possibly delaying until the next iterate point)
 -          2. If the next static buffer action can entirely be output to the remaining iteratee
 -          buffer space then the static buffer action is applied to iteratee buffer.
 -              otherwise a buffer is acquired with enough space for the static buffer
 -              serialization action. This buffer is then the current buffer and will be output as
 -              iteratee buffers come available.
 - 
 - The implementation of dynamic buffer actions can be partitioned, according to the overview above,
 - into:
 -  - A buffer manager
 -      - Assures a buffer exists backing the current buffer region.
 -      - current buffer region can be mutated in accordance with current buffer.
 -  - Iteratee based serialization
 -      - serialization buffer manager
 -      - Handle
 -      - Fd
 -      - in-memory
 -  - Iteratee based deserialization
 -      - deserialization buffer manager
 -      - Handle
 -      - Fd
 -      - in-memory
 -  - parameterized monad that composition of static data models into a dynamic data model.
 -      - Automatic lifting of static data models into a dynamic data model
 -      - grouping of static data models.
 -          - Should be done with care. Probably no grouping over a certain level.
 -
 - The easiest implementation is that of the in-memory deserialization. I'll start with that.
 -}
module Bind.Marshal.Action.Dynamic ( module Bind.Marshal.Action.Dynamic
                                   )
    where

import Bind.Marshal.Prelude

import qualified Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.StaticProperties

import Data.Strict.Either
import Data.Strict.Tuple

import GHC.Exts
import GHC.Prim

import System.IO

-- | All Dynamic memory actions have either a sealed buffer size requirement or an open buffer size
-- requirement. 
data Sealed

-- | An open buffering requirement means that the pre-buffering or post-buffering requirement is not
-- handled by the dynamic memory action.
data Open n

-- | A dynamic memory action a buffer handler action optionally paired with a statically defined pre
-- buffer action and/or post buffer action.
--
-- A pre buffer action exists iff the type level pre buffer size requirement is Open n.
-- A post buffer action exists iff the type level post buffer size requirement is Open n.
data family DynAction_ pre_req 
                       post_req_accumulator
                       post_req     -- often shortened to pre_r post_ra post_r
                       buffer_delegate
                       :: * -> * -> *

-- | A dynamic action with the buffering requirements abstracted away.
--
-- Typically the user of this library is not concerned about the buffering requirements for dynamic
-- actions. 
type DynAction buffer_delegate tag a = forall pre_req 
                                              post_req_accumulator
                                              post_req .
                                                DynAction_ pre_req
                                                           post_req_accumulator
                                                           post_req
                                                           buffer_delegate
                                                           tag
                                                           a

class BufferDelegate buffer_delegate where
    -- will not be invoked if max_bytes_avail > next static actions requirement
    gen_region ::    Size -- Size is maximum size of buffer required by next static eval
                  -> buffer_delegate 
                  -> IO (BDIter buffer_delegate)
    -- will not be invoked if max_bytes_final is 0
    finalize_region ::    BDIter buffer_delegate 
                       -> IO buffer_delegate

-- max bytes avail, max bytes finalized, buffer delegate, iter
data BDIter bd = BDIter 
    { max_bytes_avail :: {-# UNPACK #-} !Size -- 
    , max_bytes_final :: {-# UNPACK #-} !Size -- increment with max_bytes required by static
    , buffer_delegate :: !bd
    , start_addr :: !Addr#
    , curr_addr :: !Addr#
    }

bytes_final :: BDIter bd -> Size
bytes_final !bd_iter = I# (minusAddr# (curr_addr bd_iter) (start_addr bd_iter))

newtype instance DynAction_ Sealed
                            Sealed
                            Sealed
                            bd
                            tag
                            a =
    SealedSealedAction ( forall b . ( a -> BDIter bd -> IO b)
                                    -> BDIter bd -> IO b
                       )

data instance DynAction_ Sealed
                         post_ra 
                         (Open n)
                         bd
                         tag
                         a 
                    where
    SealedOpenAction :: forall post_ra a b n bd tag . BufferDelegate bd
                        => ( forall c d . ( a -> Iter -> IO (c, Iter) )
                             -> ( c -> BDIter bd -> IO d )
                             -> BDIter bd -> IO d
                           ) 
                        -> ( a -> Iter -> IO (b, Iter) )
                        -> DynAction_ Sealed post_ra (Open n) bd tag b

data instance DynAction_ (Open n)
                         post_ra 
                         Sealed
                         bd
                         tag
                         a 
                    where
    OpenSealedAction :: forall n post_ra bd tag a b . BufferDelegate bd
                        => ( Iter -> IO (a, Iter) )
                        -> ( forall c . ( Iter -> IO (a, Iter) )
                             -> ( b -> BDIter bd -> IO c )
                             -> BDIter bd -> IO c
                           ) 
                        -> DynAction_ (Open n) post_ra Sealed bd tag b

data instance DynAction_ (Open n_0)
                         post_ra 
                         (Open n_1)
                         bd
                         tag
                         a 
                    where
    OpenOpenAction :: forall post_ra n_0 n_1 tag bd a b e. BufferDelegate bd
                      => ( Iter -> IO (a, Iter) )
                      -> ( forall c d . ( Iter -> IO (a, Iter) )
                             -> ( b -> Iter -> IO (c, Iter) )
                             -> ( c -> BDIter bd -> IO d )
                             -> BDIter bd -> IO d
                         ) 
                      -> ( b -> Iter -> IO (e, Iter ) )
                      -> DynAction_ (Open n_0) post_ra (Open n_1) bd tag e

instance Functor (DynAction_ Sealed Sealed Sealed bd tag) where
    fmap f (SealedSealedAction a) 
        = SealedSealedAction ( \eval_cont -> a (\v -> eval_cont (f v)) ) 

instance Functor (DynAction_ Sealed post_ra (Open n) bd tag) where
    fmap (f :: b -> b') (SealedOpenAction ma post) 
        = SealedOpenAction ma
                           (\a !iter -> do
                            (!b, !iter') <- post a iter 
                            returnM (f b, iter') :: IO (b', Iter)
                           )

instance Functor (DynAction_ (Open n) post_ra Sealed bd tag) where
    fmap f (OpenSealedAction pre a) 
        = undefined

instance Functor (DynAction_ (Open n_1) post_ra (Open n_0) bd tag) where
    fmap f (OpenOpenAction pre a post) 
        = undefined

