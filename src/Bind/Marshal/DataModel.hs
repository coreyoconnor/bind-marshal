-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE EmptyDataDecls #-}
{- | The data model of a memory action describe the buffering requirements of the action. The
 - buffering requirements are considered either Static or Dynamic.
 -}
module Bind.Marshal.DataModel ( module Bind.Marshal.DataModel
                              , module Bind.Marshal.DataModel.Base
                              )
where

import Bind.Marshal.Prelude

-- | One class of memory actions are those that act on a memory region with a statically defined
-- size.
--
-- For serialization actions this would represent the maximum number of bytes that could be output
-- by the action. For deserialization actions this would be the maximum number of bytes that would
-- be read from.
--
-- This system behaves optimally when actions act on exactly max_buffer_req bytes and not less.  For
-- instance: Suppose the current memory region is smaller than the max_buffer_req of a
-- deserialization action. Applying the action to the memory region could still succeed without
-- failure: So long as the action never read beyond the actual memory region bounds.
-- In bind-marshal this case triggers a slow path: A new memory region of the max size is allocated
-- and the deserialization action is applied to this new region. If the deserialization action was
-- found to have read into bytes not defined by the original region then the action failed.
-- Otherwise the new region is deallocated and the action's result is returned.
--
-- XXX: Resolve this by extending with a min buffer req.
data Static max_buffer_req

-- | An action that has buffering requirements that cannot be approximated by only a maximum size is
-- considered dynamic. A dynamic action is represented by an action on a buffer delegate prefixed
-- with a static action and followed by a static action.
--
-- The Dynamic type is parameterized by the buffering requirements of the static prefix and suffix.
-- The static suffix requirement is split into post_req_accumulator and post_req. The first
-- representing the suffix buffer requirement of this Dynamic action's suffix action. The second
-- representing the suffix buffer requirement of the final Dynamic action this action was composed
-- into.
data Dynamic pre_req post_req_accumulator post_req
             buffer_delegate

-- | The prefix and suffix buffering requirements of a Dynamic memory actions are either sealed or
-- open. A sealed requirement means the action accounts for the buffering requirements already.
--
-- XXX: See if this can be unified with NoAction
data Sealed

-- | An open buffering requirement means that the pre-buffering or post-buffering requirement is not
-- handled by the dynamic memory action.
--
-- XXX: See if this can be unified with Static
data Open max_buffer_req

-- | There are also actions that do not act on a memory region at all. EG: return
data NoAction

