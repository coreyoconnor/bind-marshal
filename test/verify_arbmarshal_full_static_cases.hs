-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
#define ONLY_ONE
-- #define FEW_SER_EQUIVS
-- #define ALL_SER_EQUIVS
import Verify

import ArbMarshal
import qualified ArbMarshal.Binary as Binary

import Data.Binary.Get (runGet)
import Data.Binary.Put (runPut)

import Bind.Marshal.Dynamic
import Bind.Marshal.StdLib

import Control.DeepSeq
import Control.Monad
import Control.Monad.IO.Class

#ifdef ONLY_ONE
import qualified TestCases.FullStaticCase0 as FullStaticCase0
#else
import qualified TestCases.FullStaticCase1 as FullStaticCase1
import qualified TestCases.FullStaticCase2 as FullStaticCase2
import qualified TestCases.FullStaticCase3 as FullStaticCase3
import qualified TestCases.FullStaticCase4 as FullStaticCase4
import qualified TestCases.FullStaticCase5 as FullStaticCase5
import qualified TestCases.FullStaticCase6 as FullStaticCase6
import qualified TestCases.FullStaticCase7 as FullStaticCase7
import qualified TestCases.FullStaticCase8 as FullStaticCase8
import qualified TestCases.FullStaticCase9 as FullStaticCase9
import qualified TestCases.FullStaticCase10 as FullStaticCase10
import qualified TestCases.FullStaticCase11 as FullStaticCase11
import qualified TestCases.FullStaticCase12 as FullStaticCase12
import qualified TestCases.FullStaticCase13 as FullStaticCase13
import qualified TestCases.FullStaticCase14 as FullStaticCase14
import qualified TestCases.FullStaticCase15 as FullStaticCase15
import qualified TestCases.FullStaticCase16 as FullStaticCase16
import qualified TestCases.FullStaticCase17 as FullStaticCase17
import qualified TestCases.FullStaticCase18 as FullStaticCase18
import qualified TestCases.FullStaticCase19 as FullStaticCase19
#endif

#ifdef ONLY_ONE
import qualified TestCases.BinaryCase0 as BinaryCase0
#else
import qualified TestCases.BinaryCase1 as BinaryCase1
import qualified TestCases.BinaryCase2 as BinaryCase2
import qualified TestCases.BinaryCase3 as BinaryCase3
import qualified TestCases.BinaryCase4 as BinaryCase4
import qualified TestCases.BinaryCase5 as BinaryCase5
import qualified TestCases.BinaryCase6 as BinaryCase6
import qualified TestCases.BinaryCase7 as BinaryCase7
import qualified TestCases.BinaryCase8 as BinaryCase8
import qualified TestCases.BinaryCase9 as BinaryCase9
import qualified TestCases.BinaryCase10 as BinaryCase10
import qualified TestCases.BinaryCase11 as BinaryCase11
import qualified TestCases.BinaryCase12 as BinaryCase12
import qualified TestCases.BinaryCase13 as BinaryCase13
import qualified TestCases.BinaryCase14 as BinaryCase14
import qualified TestCases.BinaryCase15 as BinaryCase15
import qualified TestCases.BinaryCase16 as BinaryCase16
import qualified TestCases.BinaryCase17 as BinaryCase17
import qualified TestCases.BinaryCase18 as BinaryCase18
import qualified TestCases.BinaryCase19 as BinaryCase19
#endif

main = run_test $ do
#if 0
    verify1 "case 0 deserialization vs rd binary" 
            ( verify_full_static_des_vs_rd_binary FullStaticCase0.static_structure 
                                                  FullStaticCase0.des_static_structure
            )
    verify1 "case 0 serialization vs rd binary" 
            ( verify_full_static_ser_vs_rd_binary FullStaticCase0.static_structure 
                                                  FullStaticCase0.ser_static_structure
            )
    verify1 "case 0 deserialization vs equiv binary" 
            ( verify_full_static_des_vs_equiv_binary FullStaticCase0.static_structure 
                                                     FullStaticCase0.des_static_structure
                                                     BinaryCase0.des_static_structure
            )
#endif
#ifdef ONLY_ONE
    verify1 "case 0 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase0.static_structure 
                                                     FullStaticCase0.ser_static_structure
                                                     BinaryCase0.ser_static_structure
            )
#else
    verify1 "case 1 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase1.static_structure 
                                                     FullStaticCase1.ser_static_structure
                                                     BinaryCase1.ser_static_structure
            )
    verify1 "case 2 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase2.static_structure 
                                                     FullStaticCase2.ser_static_structure
                                                     BinaryCase2.ser_static_structure
            )
    verify1 "case 3 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase3.static_structure 
                                                     FullStaticCase3.ser_static_structure
                                                     BinaryCase3.ser_static_structure
            )
    verify1 "case 4 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase4.static_structure 
                                                     FullStaticCase4.ser_static_structure
                                                     BinaryCase4.ser_static_structure
            )
    verify1 "case 5 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase5.static_structure 
                                                     FullStaticCase5.ser_static_structure
                                                     BinaryCase5.ser_static_structure
            )
    verify1 "case 6 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase6.static_structure 
                                                     FullStaticCase6.ser_static_structure
                                                     BinaryCase6.ser_static_structure
            )
    verify1 "case 7 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase7.static_structure 
                                                     FullStaticCase7.ser_static_structure
                                                     BinaryCase7.ser_static_structure
            )
    verify1 "case 8 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase8.static_structure 
                                                     FullStaticCase8.ser_static_structure
                                                     BinaryCase8.ser_static_structure
            )
    verify1 "case 9 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase9.static_structure 
                                                     FullStaticCase9.ser_static_structure
                                                     BinaryCase9.ser_static_structure
            )
    verify1 "case 10 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase10.static_structure 
                                                     FullStaticCase10.ser_static_structure
                                                     BinaryCase10.ser_static_structure
            )
    verify1 "case 11 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase11.static_structure 
                                                     FullStaticCase11.ser_static_structure
                                                     BinaryCase11.ser_static_structure
            )
    verify1 "case 12 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase12.static_structure 
                                                     FullStaticCase12.ser_static_structure
                                                     BinaryCase12.ser_static_structure
            )
    verify1 "case 13 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase13.static_structure 
                                                     FullStaticCase13.ser_static_structure
                                                     BinaryCase13.ser_static_structure
            )
    verify1 "case 14 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase14.static_structure 
                                                     FullStaticCase14.ser_static_structure
                                                     BinaryCase14.ser_static_structure
            )
    verify1 "case 15 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase15.static_structure 
                                                     FullStaticCase15.ser_static_structure
                                                     BinaryCase15.ser_static_structure
            )
    verify1 "case 16 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase16.static_structure 
                                                     FullStaticCase16.ser_static_structure
                                                     BinaryCase16.ser_static_structure
            )
    verify1 "case 17 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase17.static_structure 
                                                     FullStaticCase17.ser_static_structure
                                                     BinaryCase17.ser_static_structure
            )
    verify1 "case 18 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase18.static_structure 
                                                     FullStaticCase18.ser_static_structure
                                                     BinaryCase18.ser_static_structure
            )
    verify1 "case 19 serialization vs equiv binary" 
            ( verify_full_static_ser_vs_equiv_binary FullStaticCase19.static_structure 
                                                     FullStaticCase19.ser_static_structure
                                                     BinaryCase19.ser_static_structure
            )
#endif
    return ()

verify_full_static_des_vs_rd_binary ss des_ss = liftIOResult $ do
    ssvs <- liftIO $ replicateM 30000 (ssv_for_ss ss)
    let bss = deepseq ssvs $ map Binary.to_bytestring ssvs
        in_data = deepseq bss $ zip ssvs bss
    ( t_0, t_1) <- liftIO $ time_and_compare in_data
                              (\(ssv,bs) -> return $ decode_ (dyn_action des_ss) bs)
                              (\(ssv,bs) -> return $ hole_values $ Binary.from_bytestring ss bs)
    log_out $ "static des: " ++ show t_0
    log_out $ "rd binary: " ++ show t_1
    case t_0 > t_1 of
        False -> return succeeded
        True -> return failed

verify_full_static_ser_vs_rd_binary ss ser_ss = liftIOResult $ do
    ssvs <- liftIO $ replicateM 30000 (ssv_for_ss ss)
    ( t_0, t_1) <- liftIO $ time_and_compare ssvs
                              (return . encode_ . dyn_action . ser_ss . hole_values)
                              (return . Binary.to_bytestring)
    log_out $ "static ser: " ++ show t_0
    log_out $ "rd binary: " ++ show t_1
    case t_0 > t_1 of
        False -> return succeeded
        True -> return failed

verify_full_static_des_vs_equiv_binary ss des_ss get = liftIOResult $ do
    ssvs <- liftIO $ replicateM 30000 (ssv_for_ss ss)
    let bss = deepseq ssvs $ map Binary.to_bytestring ssvs
        in_data = deepseq bss $ zip ssvs bss
    ( t_0, t_1) <- liftIO $ time_and_compare in_data
                              (\(ssv,bs) -> return $ decode_ (dyn_action des_ss) bs)
                              (\(ssv,bs) -> return $ runGet get bs)
    log_out $ "static des: " ++ show t_0
    log_out $ "equiv binary: " ++ show t_1
    case t_0 > t_1 of
        False -> return succeeded
        True -> return failed

verify_full_static_ser_vs_equiv_binary ss ser_ss put = liftIOResult $ do
    ssvs <- liftIO $ replicateM 30000 (ssv_for_ss ss)
    ( t_0, t_1) <- liftIO $ time_and_compare ssvs
                              (return . encode_ . dyn_action . ser_ss . hole_values)
                              (return . runPut . put . hole_values)
    log_out $ "static ser: " ++ show t_0
    log_out $ "equiv binary: " ++ show t_1
    case t_0 > t_1 of
        False -> return succeeded
        True -> return failed

