{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE OverlappingInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
import Prelude

-- we have a few non-parameterize functor types
data Foo a
data Bar a

-- this group is defined external to this library!
class Zab (m :: * -> *) where
    zab_bind :: m a -> m b -> m b
    zab_bind = undefined

instance Zab Foo
instance Zab Bar

-- a simple equation that introducs the Zab constraint
zab :: Zab m => m ()
zab = undefined

non_zab :: pft ()
non_zab = undefined

--
class Bind m u v where
    bind :: m u () -> m v ()
    bind = undefined

data Dyn u a
data Static u a

data U
data V

fix_dyn :: Dyn u () -> Dyn u ()
fix_dyn = undefined

data TTrue
data TFalse

instance u ~ U => Zab (Dyn u) where
    zab_bind = undefined

instance ( IsForcedU u truth, Bind' u v truth ) => Bind Dyn u v

class IsForcedU u truth | u -> truth

instance truth ~ TTrue => IsForcedU U truth
instance (v ~ V, truth ~ TFalse) => IsForcedU v truth

class Bind' u v truth

instance v ~ U => Bind' U v TTrue
instance ( u ~ V, v ~ V) => Bind' u v truth

t_0 = fix_dyn $! bind zab

t_1 = fix_dyn $! bind non_zab

