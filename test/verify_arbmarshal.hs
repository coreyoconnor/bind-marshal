-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
import Verify

import ArbMarshal
import qualified ArbMarshal.Binary as Binary
import qualified ArbMarshal.Dynamic as Dynamic

main = run_test $ do
    verify "binary and dyn serialize the same value to same bytes" $ \ sv -> 
        Binary.to_bytestring sv == Dynamic.to_bytestring sv
    verify "binary deserialize the encoded bytes to the input value" $ \ sv -> 
        Binary.from_bytestring (static_structure sv) (Binary.to_bytestring sv) == sv
    verify "dyn deserialize the encoded bytes to the input value" $ \ sv -> 
        Dynamic.from_bytestring (static_structure sv) (Binary.to_bytestring sv) == sv
    return ()

