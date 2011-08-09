-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE CPP #-}
module Bind.Marshal.Action.Monad.Static where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.DataModel

import GHC.Exts ( inline )

-- | The static memory action monad is constructed via the parameterized monad Return and Bind
-- instances.
instance ( m ~ D0
         )
         => Return (StaticMemAction tag m)
    where
    {-# INLINE returnM #-}
    returnM !v = StaticMemAction ( \ eval_cont _fail_cont -> eval_cont v )

-- This duplicates the returnM for a static mem action due to some silliness in the GHC 6.12
-- inliner. Without the duplication the inliner fails to, well, inline and the optimization of using
-- CPS form in returnM is lost.
{-# INLINE static_return #-}
static_return :: a -> StaticMemAction tag D0 a
static_return !v = StaticMemAction ( \ eval_cont _fail_cont -> eval_cont v )

-- | possibly-failing pattern matches require a Fail instance.
instance Fail ( StaticMemAction tag
                                m
              ) 
    where
        {-# INLINE fail #-}
        fail !err_txt = StaticMemAction ( \ _eval_cont fail_cont !_p -> fail_cont err_txt )

-- | The static memory action monad is constructed via the parameterized monad Return and Bind
-- instances.
instance ( size_2 ~ Add size_0 size_1
         , buffer_0 ~ buffer_1
         , buffer_0 ~ buffer_2
         ) => Bind (StaticMemAction buffer_0 size_0)
                   (StaticMemAction buffer_1 size_1)
                   (StaticMemAction buffer_2 size_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (StaticMemAction ma) fmb 
        = StaticMemAction 
            ( \ eval_cont fail_cont
                -> ma (\ !v -> case (fmb v) of
                                StaticMemAction mb -> mb eval_cont fail_cont
                      )
                      fail_cont
            )

    {-# INLINE (>>) #-}
    (>>) (StaticMemAction ma) (StaticMemAction mb) 
        = StaticMemAction ( \ eval_cont fail_cont -> ma (\ !v -> mb eval_cont fail_cont ) 
                                                        fail_cont
                          )

