-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

module Bind.Marshal.StaticProperties where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Static
import Bind.Marshal.DataModel

import Bind.Marshal.DesAction.Base
import Bind.Marshal.SerAction.Base

marshalled_byte_count :: forall buffer_iter_tag size out_type
                         .  ( Nat size )
                         => StaticMemAction buffer_iter_tag size out_type -> Size
marshalled_byte_count _action = toInt (undefined :: size)

