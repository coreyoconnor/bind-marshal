module Bind.Marshal.StdLib.Packed where

import Bind.Marshal.Prelude

import Bind.Marshal.DesAction.Static
import Bind.Marshal.SerAction.Static

import qualified Algebra.ToInteger as Num

-- XXX: Assert 
des_packed :: forall t .
              ( CanDeserialize t
              , Num.C t
              ) => StaticDesAction D8 t
des_packed = fromIntegral <$> des_packed_w64

des_packed_w64 :: StaticDesAction D8 Word64
des_packed_w64 = undefined

ser_packed :: forall t .
              ( CanSerialize t
              , Num.C t
              ) => t -> StaticSerAction D8 ()
ser_packed = ser_packed_w64 . fromIntegral

ser_packed_w64 :: Word64 -> StaticSerAction D8 ()
ser_packed_w64 = undefined

