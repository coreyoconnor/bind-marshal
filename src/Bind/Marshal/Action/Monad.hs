-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE MagicHash #-}
module Bind.Marshal.Action.Monad ( module Bind.Marshal.Action.Monad
                                 , module Bind.Marshal.Action.Monad.Static
                                 ) 
    where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.DataModel
import Bind.Marshal.StaticProperties

import qualified Control.Monad as BaseMonad

import Data.Strict.Either
import Data.Strict.Tuple

import Foreign.Ptr

import GHC.Exts

import System.IO

-- The return instance is only currently defined as a sealed action. 
-- TODO: Add a more generic return instance.
instance BufferDelegate bd => Return (DynAction Sealed Sealed Sealed bd tag) where
    {-# INLINE returnM #-}
    returnM v = SealedSealedAction (\ eval_cont -> eval_cont v)

-- | Currently only a DynamicDesAction without a tail or a head data model can be used as a
-- non-parameterized monad. I would like to be able to automatically lift any other DynamicDesAction
-- via dyn_action when a non-parameterized monad is required, but I have been stymied attempting to
-- do so.
instance BufferDelegate bd => BaseMonad.Monad (DynAction Sealed Sealed Sealed bd tag) where
    {-# INLINE return #-}
    return v = SealedSealedAction (\ eval_cont -> eval_cont v )
    {-# INLINE (>>=) #-}
    (>>=) (SealedSealedAction ma) fmb = SealedSealedAction 
        ( \ eval_cont -> ma (\v -> case fmb v of
                                SealedSealedAction mb -> mb eval_cont
                           )
        )
    {-# INLINE (>>) #-}
    (>>) (SealedSealedAction ma) (SealedSealedAction mb) 
        = SealedSealedAction ( \ eval_cont -> ma (const $! mb eval_cont) )

{-# INLINE returnM_v_bd #-}
returnM_v_bd :: a -> BDIter bd -> IO (a, BDIter bd)
returnM_v_bd a !bd_iter = returnM (a, bd_iter)

{-# INLINE returnM_v_i #-}
returnM_v_i :: a -> Iter -> IO (a, Iter)
returnM_v_i !a !iter = returnM (a, iter)

{-# INLINE post_bind #-}
post_bind p_0 p_1 = \ !a !iter -> do
    (!b, !iter') <- p_0 a iter
    p_1 b iter'

{-# INLINE resolve_iter #-}
resolve_iter :: BufferDelegate bd => Size -> BDIter bd -> IO (BDIter bd)
resolve_iter 0              !bd_iter = returnM bd_iter
resolve_iter !required_size !bd_iter = case max_bytes_final bd_iter of
    0                -> case required_size > max_bytes_avail bd_iter of
                            True -> gen_region required_size (buffer_delegate bd_iter)
                            False -> returnM ( bd_iter { max_bytes_final = required_size } )
    finalized_size   -> case required_size + finalized_size > max_bytes_avail bd_iter of
                            True -> gen_region required_size =<< finalize_region bd_iter
                            False -> returnM ( bd_iter { max_bytes_final = finalized_size + required_size } )

{- A dynamic memory action bound to another dynamic memory action needs to account for buffering in
 - some cases.
 -
 - By some flimsy application of the monad laws it is sufficient to analyse only the following
 - equation to determine the rules for a dynamic action bound to another dynamic action:*
 -  pre_action >> post_action = equiv_action
 - 
 - Given: A dynamic action is provides the necessary buffering for the mid and post memory actions. 
 - 
 - No bind between two dynamic actions requires the insertion of buffering. All buffering is already
 - accounted for by the post_action's pre actions and the post_action's post actions. In this case the
 - post_action's pre_action IS the pre_actions' and therefor the required buffering is handled by
 - the pre_action.
 -
 - In the case where a pre_action is a static memory action no buffering needs to be inserted: The
 - post_action already accounts for the buffering required for it's execution. The pre_action does
 - not already account for the buffering required for it's execution however the buffering will be
 - inserted.
 -
 - In the case where a post_action is a static memory action buffer handling needs to be inserted
 e only if the pre_action is a dynamic action which has an empty post action. If the dynamic action
 - does not have an empty post action then the buffering for the static action is already covered by
 - the dynamic action.
 -
 - * This assumes the dynamic action is a monad. However the rules we are deriving from analyzing
 - this equation effect whether or not a dynamic action is a monad. If the derived rules do not
 - suppor the monad laws then only analyzing that equation is insufficient.
 -}

-- dynamic actions can have none, one, or both of the attributes: pre_open ; post_open
-- pre_open means that there is a non 0 sized pre buffer requirement.
-- post_open means that there is a non 0 sized post buffer requirement.
--
-- static actions can have a zero size requirement or a non-zero size requirement.
-- 
-- What buffer handling is required depends on the types and attributes of the actions bound
-- together. The buffer handling may be none, one or both of: finalize_region, gen_region.
--
-- XXX: Laziness is inserted after the finalize_region and before the gen_region handling.
-- XXX: It may be the case that using a separate type from a numeric to represent "seal"ing the
-- buffer requirement might enable me to remove the static memory action entirely.
--
-- The buffer handling is inserted according to which Bind instance matches. A table which
-- summarizes all the required instances:
-- ( pre = pre_open, post = post_open, fr = finalize_region, gr = gen_region )
-- ( lhs type == static && rhs type == static is in Action.Monad.Static )
--
-- case # | lhs type | lhs pre | lhs post | rhs type | rhs pre | rhs post | fr | gr |
-- ----------------------------------------------------------------------------------
--      1 | dyn      |         |          | dyn      |         |          |    |    |
--      2 | dyn      |         |    X     | dyn      |         |          |  X |    |
--      3 | dyn      |    X    |          | dyn      |         |          |    |    |
--      4 | dyn      |    X    |    X     | dyn      |         |          |  X |    |
--      5 | static   |         |          | dyn      |         |          |  X |    |
--      6 | dyn      |         |          | dyn      |         |    X     |    |    |
--      7 | dyn      |         |    X     | dyn      |         |    X     |  X |    |
--      8 | dyn      |    X    |          | dyn      |         |    X     |    |    |
--      9 | dyn      |    X    |    X     | dyn      |         |    X     |  X |    |
--     10 | static   |         |          | dyn      |         |    X     |  X |    |
--     11 | dyn      |         |          | dyn      |    X    |          |    |  X |
--     12 | dyn      |         |    X     | dyn      |    X    |          |    |    |
--     13 | dyn      |    X    |          | dyn      |    X    |          |    |  X |
--     14 | dyn      |    X    |    X     | dyn      |    X    |          |    |    |
--     15 | static   |         |          | dyn      |    X    |          |    |    |
--     16 | dyn      |         |          | dyn      |    X    |     X    |    |  X |
--     17 | dyn      |         |    X     | dyn      |    X    |     X    |    |    |
--     18 | dyn      |    X    |          | dyn      |    X    |     X    |    |  X |
--     19 | dyn      |    X    |    X     | dyn      |    X    |     X    |    |    |
--     20 | static   |         |          | dyn      |    X    |     X    |    |    |
--     21 | dyn      |         |          | static   |         |          |    |  X |
--     22 | dyn      |         |    X     | static   |         |          |    |    |
--     23 | dyn      |    X    |          | static   |         |          |    |  X |
--     24 | dyn      |    X    |    X     | static   |         |          |    |    |
--
-- 
-- XXX: I think only a few Bind instances are actually required. My attempts to simplify have, thus
-- far, failed. The problem I keep running into is a failure to match against the most specific
-- instance. 
--
-- (At least, what *I* think to be the most specific instance. Which is incomplete.)
--
-- The type checker traces indicate type inference is choosing a witness then infering more specific
-- types for the constraint's type class parameters. So an instance like Foo a b is chosen then a is
-- unified with D0. I would expect a to be unified with D0 then the instance Foo D0 b chosen.
--

-- case 1
instance ( bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         ) => Bind (DynAction Sealed Sealed Sealed bd_0 tag_0) 
                   (DynAction Sealed Sealed Sealed bd_1 tag_1) 
                   (DynAction Sealed Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedSealedAction ma) fmb = SealedSealedAction 
        ( \ eval_cont -> ma (\v -> case fmb v of
                                SealedSealedAction mb -> mb eval_cont
                           )
        )

-- case 2
instance ( post_s_0  ~ post_sa_0
         , BufferDelegate bd_2
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         ) => Bind (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction Sealed Sealed Sealed bd_1 tag_1) 
                   (DynAction Sealed Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedOpenAction ma post) fmb = SealedSealedAction 
        ( \ eval_cont -> ma post (\v -> case fmb v of
                                    SealedSealedAction mb -> mb eval_cont
                                )
        )
            

-- case 3
instance ( pre_s_2   ~ pre_s_0
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         ) => Bind (DynAction (Open pre_s_0) Sealed Sealed bd_0 tag_0) 
                   (DynAction Sealed Sealed Sealed bd_1 tag_1) 
                   (DynAction (Open pre_s_2) Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenSealedAction pre_accum ma) fmb = OpenSealedAction
        pre_accum
        (\ pre eval_cont -> 
            ma pre 
               (\v -> case fmb v of
                    SealedSealedAction mb -> mb eval_cont
               )
        )
            
-- case 4
instance ( pre_s_2   ~ pre_s_0
         , post_s_0  ~ post_sa_0
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0 
         , bd_2 ~ bd_1 
         ) => Bind (DynAction (Open pre_s_0) (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction Sealed Sealed Sealed bd_1 tag_1) 
                   (DynAction (Open pre_s_2) Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenOpenAction pre ma post) fmb = OpenSealedAction
        pre
        (\ pre_final eval_cont -> 
            ma pre_final 
               post 
               (\a -> case fmb a of
                        SealedSealedAction mb -> mb eval_cont
               )
        )


-- case 5
instance ( pre_s_2 ~ static_size
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (StaticMemAction tag_0 static_size) 
                   (DynAction Sealed Sealed Sealed bd_1 tag_1) 
                   (DynAction (Open pre_s_2) Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (StaticMemAction ma) fmb = OpenSealedAction
        (io_eval_static (StaticMemAction ma))
        (\ pre eval_cont !bd_iter -> do
            (v, (Ptr p')) <- pre (Ptr (curr_addr bd_iter))
            case fmb v of 
                SealedSealedAction mb -> mb eval_cont (bd_iter {curr_addr = p'})
        )

-- case 6
instance ( post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed Sealed Sealed bd_0 tag_0) 
                   (DynAction Sealed (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction Sealed (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedSealedAction ma) fmb = SealedOpenAction
        (\ post 
           (eval_cont :: c -> BDIter bd_2 -> IO d)
           !bd_iter -> do
                (a, !bd_iter') <- ma returnM_v_bd bd_iter
                case fmb a of 
                    SealedOpenAction mb mb_post -> do
                        mb (mb_post `post_bind` post)
                           eval_cont           
                           bd_iter'
        )
        returnM_v_i
        

-- case 7
instance ( post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , post_s_0  ~ post_sa_0
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction Sealed (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction Sealed (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedOpenAction ma ma_post) fmb = SealedOpenAction
        (\ post
           (eval_cont :: c -> BDIter bd_2 -> IO d)
           !bd_iter -> do
                (a, !bd_iter') <- ma ma_post (\a !bd_iter' -> returnM (a, bd_iter')) bd_iter
                case fmb a of 
                    SealedOpenAction mb mb_post -> mb (mb_post `post_bind` post)
                                                      eval_cont
                                                      bd_iter'
        )
        returnM_v_i

-- case 8
instance ( pre_s_2   ~ pre_s_0
         , post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) Sealed Sealed bd_0 tag_0) 
                   (DynAction Sealed (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenSealedAction !pre !ma) !fmb = OpenOpenAction
        pre
        (\ pre
           post 
           (eval_cont :: c -> BDIter bd_2 -> IO d)
           !bd_iter -> do
                (a, !bd_iter') <- ma pre (\a !bd_iter' -> returnM (a, bd_iter')) bd_iter
                case fmb a of 
                    SealedOpenAction mb mb_post -> mb (mb_post `post_bind` post)
                                                      eval_cont
                                                      bd_iter'
        )
        returnM_v_i

-- case 9
instance ( pre_s_2   ~ pre_s_0
         , post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , post_s_0  ~ post_sa_0
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction Sealed (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenOpenAction ma_pre ma ma_post) fmb = OpenOpenAction
        ma_pre
        (\ pre
           post
           (eval_cont :: c -> BDIter bd_2 -> IO d)
           !bd_iter -> do
                (a, !bd_iter') <- ma pre ma_post (\a !bd_iter' -> returnM (a, bd_iter')) bd_iter
                case fmb a of
                    SealedOpenAction mb mb_post -> mb (mb_post `post_bind` post)
                                                      eval_cont
                                                      bd_iter'
        )
        returnM_v_i

-- case 10
instance ( pre_s_2   ~ static_size
         , post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (StaticMemAction tag_0 static_size) 
                   (DynAction Sealed (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (StaticMemAction ma) fmb = OpenOpenAction
            (io_eval_static (StaticMemAction ma))
            (\ pre 
               post 
               (eval_cont :: c -> BDIter bd_2 -> IO d) 
               !bd_iter -> do
                    (!a, (Ptr p')) <- pre (Ptr (curr_addr bd_iter))
                    let !bd_iter' = bd_iter { curr_addr = p' }
                    case fmb a of
                        SealedOpenAction mb mb_post -> mb (mb_post `post_bind` post)
                                                          eval_cont
                                                          bd_iter'
            )
            returnM_v_i

-- case 11
instance ( Nat pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed Sealed Sealed bd_0 tag_0) 
                   (DynAction (Open pre_s_1) Sealed Sealed bd_1 tag_1) 
                   (DynAction Sealed Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedSealedAction ma) fmb = case toInt (undefined :: pre_s_1) of
        !required_size -> SealedSealedAction
            (\ eval_cont !bd_iter -> do
                (a, !bd_iter') <- ma (\a !bd_iter' -> returnM (a, bd_iter')) bd_iter
                case fmb a of
                    OpenSealedAction pre mb -> mb pre eval_cont =<< resolve_iter required_size bd_iter'
            )

-- case 12
instance ( post_s_0  ~ Add post_sa_0 pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction (Open pre_s_1) Sealed Sealed bd_1 tag_1) 
                   (DynAction Sealed Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedOpenAction ma post) fmb = SealedSealedAction
        (\ eval_cont !bd_iter -> do
            (a, !bd_iter') <- ma post (\a !bd_iter' -> returnM (a, bd_iter')) bd_iter
            case fmb a of
                OpenSealedAction pre mb -> mb pre eval_cont bd_iter'
        )

-- case 13
instance ( pre_s_2   ~ pre_s_0
         , Nat pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) Sealed Sealed bd_0 tag_0) 
                   (DynAction (Open pre_s_1) Sealed Sealed bd_1 tag_1) 
                   (DynAction (Open pre_s_2) Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenSealedAction ma_pre ma) fmb = case toInt (undefined :: pre_s_1) of
        !required_size -> OpenSealedAction
            ma_pre
            (\ pre
               eval_cont
               !bd_iter -> do
                    (a, !bd_iter') <- ma pre returnM_v_bd bd_iter
                    case fmb a of
                        OpenSealedAction mb_pre mb -> mb mb_pre eval_cont =<< resolve_iter required_size bd_iter'
            )

-- case 14
instance ( pre_s_2   ~ pre_s_0
         , post_s_0  ~ Add post_sa_0 pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction (Open pre_s_1) Sealed Sealed bd_1 tag_1) 
                   (DynAction (Open pre_s_2) Sealed Sealed bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenOpenAction ma_pre ma ma_post) fmb = OpenSealedAction
        ma_pre
        (\ pre
           eval_cont
           !bd_iter -> do
                (a, !bd_iter') <- ma pre ma_post (\a !bd_iter' -> returnM (a, bd_iter')) bd_iter
                case fmb a of
                    OpenSealedAction mb_pre mb -> mb mb_pre eval_cont bd_iter'
        )

-- case 15
instance ( pre_s_2   ~ Add static_size pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (StaticMemAction tag_0 static_size) 
                   (DynAction (Open pre_s_1) Sealed Sealed bd_1 tag_1) 
                   (DynAction (Open pre_s_2) Sealed Sealed bd_1 tag_1)
    where
    {-# INLINE (>>=) #-}
    (>>=) (StaticMemAction !ma) !fmb = OpenSealedAction
            (io_eval_static (StaticMemAction ma))
            (\ pre eval_cont !bd_iter -> do
                (a, (Ptr p')) <- pre (Ptr (curr_addr bd_iter))
                case fmb a of
                    OpenSealedAction mb_pre mb -> mb mb_pre eval_cont (bd_iter {curr_addr=p'})
            )

-- case 16
instance ( post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , Nat pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed Sealed Sealed bd_0 tag_0) 
                   (DynAction (Open pre_s_1) (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction Sealed (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedSealedAction ma) fmb = case toInt (undefined :: pre_s_1) of
        !required_size -> SealedOpenAction
            (\ post
               eval_cont
               !bd_iter -> do
                    (a, !bd_iter') <- ma (\a bd_iter' -> returnM (a, bd_iter')) bd_iter
                    case fmb a of
                        OpenOpenAction mb_pre mb mb_post ->
                            mb mb_pre
                               (mb_post `post_bind` post)
                               eval_cont
                            =<< resolve_iter required_size bd_iter'
            )
            returnM_v_i

-- case 17
instance ( post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , post_s_0  ~ Add post_sa_0 pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction (Open pre_s_1) (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction Sealed (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedOpenAction ma ma_post) fmb = SealedOpenAction
            (\ post
               eval_cont
               !bd_iter -> do
                    (a, !bd_iter') <- ma ma_post returnM_v_bd bd_iter
                    case fmb a of 
                        OpenOpenAction mb_pre mb mb_post -> mb mb_pre 
                                                               (mb_post `post_bind` post)
                                                               eval_cont
                                                               bd_iter'
            )
            returnM_v_i

-- case 18
instance ( pre_s_2   ~ pre_s_0
         , post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , Nat pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) Sealed Sealed bd_0 tag_0) 
                   (DynAction (Open pre_s_1) (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenSealedAction ma_pre ma) fmb = case toInt (undefined :: pre_s_1) of
        !required_size -> OpenOpenAction
            ma_pre
            (\ pre
               post
               eval_cont
               !bd_iter -> do
                    (a, !bd_iter') <- ma ma_pre returnM_v_bd bd_iter
                    case fmb a of
                        OpenOpenAction mb_pre mb mb_post -> 
                            mb mb_pre
                               (mb_post `post_bind` post)
                               eval_cont
                            =<< resolve_iter required_size bd_iter'
            )
            returnM_v_i

-- case 19
instance ( pre_s_2   ~ pre_s_0
         , post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , post_s_0  ~ Add post_sa_0 pre_s_1
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (DynAction (Open pre_s_1) (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenOpenAction ma_pre ma ma_post) fmb = OpenOpenAction
        ma_pre
        (\ pre
           post
           eval_cont
           !bd_iter -> do
                (a, !bd_iter') <- ma pre ma_post returnM_v_bd bd_iter
                case fmb a of
                    OpenOpenAction mb_pre mb mb_post -> mb mb_pre 
                                                           (mb_post `post_bind` post) 
                                                           eval_cont 
                                                           bd_iter'
        )
        returnM_v_i

-- case 20
instance ( pre_s_2   ~ Add static_size pre_s_1
         , post_sa_2 ~ post_sa_1
         , post_s_2  ~ post_s_1
         , tag_0 ~ tag_1
         , tag_1 ~ tag_2
         , bd_2 ~ bd_1
         , BufferDelegate bd_2
         ) => Bind (StaticMemAction tag_0 static_size) 
                   (DynAction (Open pre_s_1) (Open post_sa_1) (Open post_s_1) bd_1 tag_1) 
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (StaticMemAction ma) fmb = OpenOpenAction
            (io_eval_static (StaticMemAction ma))
            (\ pre
               post
               eval_cont
               !bd_iter -> do
                    (a, (Ptr p')) <- pre (Ptr (curr_addr bd_iter))
                    let !bd_iter' = bd_iter { curr_addr = p' }
                    case fmb a of
                        OpenOpenAction mb_pre mb mb_post -> mb mb_pre
                                                               (mb_post `post_bind` post)
                                                               eval_cont
                                                               bd_iter'
            )
            returnM_v_i
                

-- case 21
instance ( post_sa_2 ~ static_size
         , Nat post_s_2
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0 
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed Sealed Sealed bd_0 tag_0) 
                   (StaticMemAction tag_1 static_size)
                   (DynAction Sealed (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedSealedAction ma) fmb = case toInt (undefined :: post_s_2) of
        !required_size -> SealedOpenAction
                -- If 
                --  SealedSealedAction ... a
                --  Static ... b
                --  SealedOpenAction ... c
                --
                -- post :: a -> Iter -> IO (c, Iter)
                -- eval_cont :: c -> ...
                (\ post eval_cont !bd_iter -> do
                    (a, !bd_iter') <- ma returnM_v_bd bd_iter
                    !bd_iter'' <- resolve_iter required_size bd_iter'
                    (!c, (Ptr p''')) <- post a (Ptr (curr_addr bd_iter''))
                    eval_cont c (bd_iter'' {curr_addr = p'''})
                )
                -- a -> Iter -> IO (b, Iter)
                (io_eval_static . fmb) 

-- case 22
instance ( post_sa_2 ~ Add post_sa_0 static_size
         , post_s_0 ~ post_s_2
         , tag_2 ~ tag_0
         , tag_2 ~ tag_1
         , bd_2 ~ bd_0
         , BufferDelegate bd_2
         ) => Bind (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (StaticMemAction tag_1 static_size)
                   (DynAction Sealed (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (SealedOpenAction ma ma_post) fmb = SealedOpenAction
        ma
        (\ !a !iter -> do
            (!b, !iter') <- ma_post a iter
            io_eval_static (fmb b) iter'
        )

-- case 23
instance ( pre_s_2 ~ pre_s_0
         , post_sa_2 ~ static_size
         , Nat post_s_2
         , tag_0 ~ tag_1
         , tag_1 ~ tag_2
         , bd_2 ~ bd_0
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) Sealed Sealed bd_0 tag_0) 
                   (StaticMemAction tag_1 static_size)
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenSealedAction ma_pre ma) fmb = case toInt ( undefined :: post_s_2 ) of
        !required_size -> OpenOpenAction
            ma_pre
            (\ pre
               post
               eval_cont
               !bd_iter -> do
                    (a, !bd_iter') <- ma ma_pre returnM_v_bd bd_iter
                    !bd_iter'' <- resolve_iter required_size bd_iter'
                    (!c, (Ptr p''')) <- post a (Ptr (curr_addr bd_iter''))
                    eval_cont c (bd_iter'' { curr_addr = p''' })
            )
            (io_eval_static . fmb)

-- case 24
instance ( pre_s_2 ~ pre_s_0
         , post_sa_2 ~ Add post_sa_0 static_size
         , post_s_0 ~ post_s_2
         , tag_0 ~ tag_1
         , tag_1 ~ tag_2
         , bd_2 ~ bd_0
         , BufferDelegate bd_2
         ) => Bind (DynAction (Open pre_s_0) (Open post_sa_0) (Open post_s_0) bd_0 tag_0) 
                   (StaticMemAction tag_1 static_size)
                   (DynAction (Open pre_s_2) (Open post_sa_2) (Open post_s_2) bd_2 tag_2)
    where
    {-# INLINE (>>=) #-}
    (>>=) (OpenOpenAction ma_pre ma ma_post) fmb = OpenOpenAction
        ma_pre
        ma
        (\ !a !iter -> do
            (!b, !iter') <- ma_post a iter
            io_eval_static (fmb b) iter'
        )
                

instance BufferDelegate bd => Fail (DynAction Sealed Sealed Sealed bd tag) where
    {-# INLINE fail #-}
    fail !err_txt = SealedSealedAction (\ eval_cont !bd_iter -> fail err_txt)

instance BufferDelegate bd => Fail (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd tag) where
    {-# INLINE fail #-}
    fail !err_txt = SealedOpenAction (\ post eval_cont !bd_iter -> fail err_txt) (returnM_v_i)

{-# INLINE dyn_fail #-}
dyn_fail :: forall bd tag a . BufferDelegate bd 
            => String -> DynAction Sealed Sealed Sealed bd tag a
dyn_fail = fail

-- | Converts an action to a sealed dynamic memory action value. Possibly inserts gen_region or
-- finalize_region passes.
class SealedDynAction (action :: * -> *) bd where
    type DynActionTag action
    {-# INLINE dyn_action #-}
    dyn_action :: action a -> DynAction Sealed Sealed Sealed 
                                        bd
                                        (DynActionTag action) 
                                        a


instance ( bd_1 ~ bd_0
         , BufferDelegate bd_1
         ) => SealedDynAction (DynAction Sealed Sealed Sealed bd_0 tag) bd_1 where
    type DynActionTag (DynAction Sealed Sealed Sealed bd_0 tag) = tag
    {-# INLINE dyn_action #-}
    dyn_action (SealedSealedAction a) = SealedSealedAction a


-- | a dynamic block that already has an empty tail and a DMNil pre model can be trivially lifted to
-- a fixed dynamic block.
--
-- XXX: Any easier way to unify the input type parameter a with the action's type parameter a?
instance ( BufferDelegate bd 
         , Nat size
         ) => SealedDynAction (StaticMemAction tag size) bd where
    type DynActionTag (StaticMemAction tag size) = tag
    {-# INLINE dyn_action #-}
    dyn_action (StaticMemAction ma) = case toInt (undefined :: size) of 
        !required_size -> SealedSealedAction 
            ( \ eval_cont !bd_iter -> do
                    !bd_iter' <- resolve_iter required_size bd_iter
                    -- (# !v, p' #) <- inline $! ma (\ !v !p' -> returnM (# v, p' #)) fail (curr_addr bd_iter')
                    -- eval_cont v ( bd_iter' { curr_addr = p' } )
                    ma (\ !v !p' -> eval_cont v ( bd_iter' { curr_addr = p' } )) fail (curr_addr bd_iter')
            )
    
instance ( BufferDelegate bd_1
         , bd_0 ~ bd_1
         , Nat pre_s
         ) => SealedDynAction (DynAction (Open pre_s) Sealed Sealed bd_0 tag) bd_1 where
    type DynActionTag (DynAction (Open pre_s) Sealed Sealed bd_0 tag) = tag
    {-# INLINE dyn_action #-}
    dyn_action (OpenSealedAction pre m) = case toInt (undefined :: pre_s) of
        !required_size -> SealedSealedAction 
            (\ eval_cont !bd_iter -> do
                m pre eval_cont =<< resolve_iter required_size bd_iter
            )


instance ( BufferDelegate bd_1
         , bd_0 ~ bd_1
         , post_s_0 ~ post_sa_0
         ) => SealedDynAction (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd_0 tag) bd_1 where
    type DynActionTag (DynAction Sealed (Open post_sa_0) (Open post_s_0) bd_0 tag) = tag
    {-# INLINE dyn_action #-}
    dyn_action (SealedOpenAction m post) = SealedSealedAction (m post)

-- | A dynamic block can be lifted to a "fixed" Dyn by capping the post_m_tail with DMNil and then
-- reifying the pre_m model
instance ( post_s ~ post_sa
         , Nat pre_s
         , BufferDelegate bd_0
         , bd_0 ~ bd_1
         ) => SealedDynAction (DynAction (Open pre_s) (Open post_sa) (Open post_s) bd_0 tag) bd_1 where
    type DynActionTag (DynAction (Open pre_s) (Open post_sa) (Open post_s) bd_0 tag) = tag
    {-# INLINE dyn_action #-}
    dyn_action (OpenOpenAction pre m post) = case toInt (undefined :: pre_s) of
        !required_size -> SealedSealedAction 
            (\ eval_cont !bd_iter -> do
                m pre post eval_cont =<< resolve_iter required_size bd_iter
            )

