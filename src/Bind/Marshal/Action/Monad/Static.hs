{-# LANGUAGE OverlappingInstances #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)
{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE CPP #-}
module Bind.Marshal.Action.Monad.Static where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.DataModel

import Data.Traversable

import GHC.Exts ( inline )

-- | The static memory action monad is constructed via the parameterized monad Return and Bind
-- instances.
--
-- Typically you can just use 'return' like usual. There are cases where the compiler will not be
-- able to pick a suitable default for the monad's type. 
-- EG: "dyn_action ( return () >> return () )"
-- In these cases return should be replaced by returnM with a type annotation fixing the monad type.
-- EG: "dyn_action ( return () :: StaticDesAction D0 () )"
--  
instance ( m ~ 0
         )
         => Return (StaticMemAction tag m)
    where
    {-# INLINE returnM #-}
    returnM !v = StaticMemAction (s_eval_path v)  

s_eval_path :: forall a c 
               .  a 
               -> ( a -> StaticIter c )
               -> ( String -> IO c )
               -> StaticIter c
s_eval_path !a eval_cont _fail_cont = eval_cont a

-- | Like return but it pads the buffer req by a given amount
--
-- This is safe for use in both deserialization and serialization actions.
-- This does not change the position for the next serialization or deserialization. This only
-- increases the type level buffer requirement.
return_padded :: forall n a tag . Sing n -> a -> StaticMemAction tag n a
return_padded _ !v = StaticMemAction ( s_eval_path v )

-- | possibly-failing pattern matches require a Fail instance.
instance Fail ( StaticMemAction tag
                                m
              ) 
    where
        {-# INLINE fail #-}
        fail !err_txt = StaticMemAction ( \ _eval_cont fail_cont !_p -> fail_cont err_txt )

-- | The static memory action monad is constructed via the parameterized monad Return and Bind
-- instances.
instance ( size_2 ~ (size_0 + size_1)
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
        = StaticMemAction ( \ eval_cont fail_cont -> ma (\ _ -> mb eval_cont fail_cont ) 
                                                        fail_cont
                          )

-- | A form of replicateM whose type contains the number of replications. 
--
-- This implies that this equation cannot replicate the action a variable number of times. That's
-- what the normal replicateM is for.
--
-- XXX: Unimplemented
static_replicateM :: forall tag max_count total_size f_size a .
                     ( SingI max_count
                     , total_size ~ (max_count * f_size)
                     , Monoid a
                     ) => Sing max_count 
                       -> StaticMemAction tag f_size a
                       -> StaticMemAction tag total_size a
static_replicateM ( _ :: Sing count ) f = case fromInteger $! fromSing (sing :: Sing max_count) of
    n -> bounded_replicateM ( undefined :: Sing max_count ) n f

-- | Like replicateM but the count is no more than n times where n is a type variable.
--
--
-- XXX: Unimplemented
bounded_replicateM :: forall tag max_count total_size f_size a .
                      ( SingI max_count
                      , total_size ~ (max_count * f_size)
                      , Monoid a
                      ) => Sing max_count
                        -> Int
                        -> StaticMemAction tag f_size a
                        -> StaticMemAction tag total_size a
bounded_replicateM _ count f = undefined

-- | variant of static_replicateM that ignores the result of the action.
-- XXX: Unimplemented
static_replicateM_ :: forall tag max_count total_size f_size a .
                      ( SingI max_count
                      , total_size ~ (max_count * f_size)
                      ) => Sing max_count 
                        -> StaticMemAction tag f_size a
                        -> StaticMemAction tag total_size ()
static_replicateM_ _ f = case fromInteger $! fromSing (sing :: Sing max_count) of
    n -> bounded_replicateM_ (sing :: Sing max_count) n f

-- | variant of bounded_replicateM that ignores the result of the action.
-- XXX: Unimplemented
bounded_replicateM_ :: forall tag max_count total_size f_size a .
                       ( SingI max_count
                       , total_size ~ (max_count * f_size)
                       ) => Sing max_count
                         -> Int
                         -> StaticMemAction tag f_size a
                         -> StaticMemAction tag total_size ()
bounded_replicateM_ (_ :: Sing max_count) count f = undefined

-- | Accumulates using the provided static action accumulation function.
--
-- XXX: Not the prettiest of implementations...
-- XXX: Possible to provide loop unrolling through RULES? Possibly need *a lot*.
{-# INLINE bounded_accum #-}
bounded_accum :: forall tag a max_count f_size total_size .
                 ( total_size ~ (max_count * f_size)
                 , SingI max_count
                 ) => Sing max_count
                   -> Int
                   -> ( a -> StaticMemAction tag f_size a )
                   -> a
                   -> StaticMemAction tag total_size a
bounded_accum _ !count !f !a = case fromInteger $! fromSing (sing :: Sing max_count) of
    !max_count 
        | max_count < count -> fail $ "bounded_accum: requested count "
                                    ++ "(" ++ show count ++ ") "
                                    ++ "exceeds max_count "
                                    ++ "(" ++ show max_count ++ ")"
        | otherwise         -> StaticMemAction ( \ on_done on_fail -> 
            -- duplicate the f action n times 
            let loop !0 !a_final = on_done a_final
                loop !n !a'      = case f a' of
                        StaticMemAction f_action -> f_action (loop $! n - 1)
                                                             on_fail
            in loop count a
        )
    
-- XXX: rewrite point free
{-# INLINE bounded_accum_ #-}
bounded_accum_ :: forall tag max_count f_size total_size a .
                  ( total_size ~ (max_count * f_size)
                  , SingI max_count
                  ) => Sing max_count
                    -> Int
                    -> ( a -> StaticMemAction tag f_size a )
                    -> a 
                    -> StaticMemAction tag total_size ()
bounded_accum_ _ !count !f !a = do
    _ <- bounded_accum ( undefined :: Sing max_count ) count f a
    return ()

