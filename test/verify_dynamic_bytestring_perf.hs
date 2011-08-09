-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
import Verify

import ArbMarshal
import qualified ArbMarshal.Binary as Binary
import qualified ArbMarshal.Dynamic as Dynamic

import Bind.Marshal.Verify

{-# NOINLINE bench_to_dynamic #-}
bench_to_dynamic sv = return $! Dynamic.to_bytestring sv

{-# NOINLINE bench_to_binary #-}
bench_to_binary sv = return $! Binary.to_bytestring sv

{-# NOINLINE bench_from_dynamic #-}
bench_from_dynamic (Binary.ArbByteString s b) = return $! Dynamic.from_bytestring s b

{-# NOINLINE bench_from_binary #-}
bench_from_binary (Binary.ArbByteString s b) = return $! Binary.from_bytestring s b

main = run_test $ do
    verify_faster "simple bytestring - versus binary" (perf_config  {min_size = 8})
                  (return . Dynamic.simple_bytestring . unMax4KBInt ) 
                  (return . Binary.simple_bytestring . unMax4KBInt )
    verify_faster "to_bytestring - versus binary" (perf_config  { min_size = 3200
                                                                , max_case_size = 10
                                                                }
                                                  )
                  bench_to_dynamic bench_to_binary
    verify_faster "from_bytestring - versus binary" (perf_config { min_size = 12000
                                                                 , max_case_size = 10
                                                                 }
                                                    )
                  bench_from_dynamic bench_from_binary
    return ()

