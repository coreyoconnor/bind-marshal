-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.Verify ( module Bind.Marshal.Verify
                           , module Verify
                           )
where

import Bind.Marshal.Prelude

import Verify

import Control.DeepSeq

import qualified Prelude
import qualified "monads-tf" Control.Monad.State.Strict as MTState

instance Prelude.Monad m => Return ( MTState.StateT s m ) where
    returnM = Prelude.return

instance ( Prelude.Functor m, Prelude.Monad m ) 
         => Bind ( MTState.StateT s m ) 
                 ( MTState.StateT s m ) 
                 ( MTState.StateT s m ) 
    where
        (>>=) = (Prelude.>>=)

instance MTState.Monad (MTState.StateT s m) => Fail (MTState.StateT s m) where
    fail = Prelude.fail

instance Bind Gen Gen Gen
    where
        (>>=) = (Prelude.>>=)

data Max4MBInt = Max4MBInt { unMax4KBInt :: !Int }
    deriving ( Eq, Ord, Show )

instance NFData Max4MBInt where
    rnf (Max4MBInt !i) = rnf i

instance Arbitrary Max4MBInt where
    arbitrary = do
        Max4MBInt <$> choose (0, 4 * 1024 * 1024)

data Max1KBInt = Max1KBInt Int
    deriving ( Eq, Ord, Show )

instance Arbitrary Max1KBInt where
    arbitrary = do
        Max1KBInt <$> choose (0, 1 * 1024)

