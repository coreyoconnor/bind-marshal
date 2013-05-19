-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE EmptyDataDecls #-}
{- Type and value representation of a data model.
 -
 - The type level data model is refered to by tModel in type level equations.
 -}
module Bind.Marshal.DataModel ( module Bind.Marshal.DataModel
                              , module Bind.Marshal.DataModel.Base
                              )
where

import Bind.Marshal.Prelude

import Bind.Marshal.DataModel.Base

import Data.List ( length )

import qualified Control.Monad as Monad

-- The data model of an expression is a static description of the memory structure required by the
-- expression. The structure is described by a sequence of actions that depend on a linear
-- memory region.
--
-- Type level representation of a data model.
-- A "data model" is a sequence of buffer-static actions.
-- A buffer-static action is an action that operates on a memory region of a statically known size.
-- 
-- The sequence of buffer-static actions is statically defined by:
--  containing a dynamically repeated term.
--  containing a statically repeated term
-- 
-- A term may be a buffer-static action.

-- - If a dyn action is replicated then the result is also a dynamic action.

{- Value level representation of a data model. This is used for dynamic introspection. Currently the
 - data model is a record of all data model influencing actions contained in the action monad.
 -}
data DynamicModel = DynamicModel 
    { action_seq :: ActionSeq
    }
data ActionSeq -- XXX
    
-- Current descriptions of the memory regions that compose a data model:
--  - deserialization of a type with a constant marshalled size
--  - serialization of a type with a constant marshalled size
data ActionDesc 
    = DesAction Size
    | SerAction Size

-- Complete model representation. Contains both the value level and type level representations.
data Model tModel = Model 
    { dynamic_model :: DynamicModel
    }

-- The constraint IsStaticModel verifies the deserialization scheme of apply_des_to_fixed_buffer is
-- applicable. The scheme assumes two things:
-- 1. The buffer is large enough to support all the deserialization actions performed in "action"
-- 2. The action's deserialization actions are statically fixed.
--
-- H: It is sufficient to match against the head of the serialization sequence. The rest of the
-- serialization sequence is already assured to be static iff the head is static due to the rules of
-- the DMApp equation.
--
-- XXX: Verify this constraint fails when applied to a dynamic buffer sequence.
--
type family IsStaticModel model :: Bool
type instance IsStaticModel (StaticModel size) = True

