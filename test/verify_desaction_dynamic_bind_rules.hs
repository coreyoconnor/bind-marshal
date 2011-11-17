{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

#define UNDER_DEV
import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.Action
import Bind.Marshal.DataModel.Base
import Bind.Marshal.DesAction.Base
import Bind.Marshal.DesAction.Dynamic
import Bind.Marshal.DesAction.Static
import Bind.Marshal.DesAction.Verify
import Bind.Marshal.StaticProperties
import Bind.Marshal.StdLib.Des

import Bind.Marshal.StdLib.Dynamic.FixedBuffer
import Bind.Marshal.Verify.Dynamic

import Control.DeepSeq
import "monads-tf" Control.Monad.Trans

import Data.IORef

import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Ptr

import System.IO

t_static = do
    _ :: Word32 <- des
    static_return ()

-- case # | lhs type | lhs pre | lhs post | rhs type | rhs pre | rhs post | fr | gr |
-- ----------------------------------------------------------------------------------
-- P    1 | dyn      |         |          | dyn      |         |          |    |    |
-- P    2 | dyn      |         |    X     | dyn      |         |          |  X |    |
-- P    3 | dyn      |    X    |          | dyn      |         |          |  ? |  ? |
-- P    4 | dyn      |    X    |    X     | dyn      |         |          |  ? |  ? |
-- P    5 | static   |         |          | dyn      |         |          |  ? |  ? |
-- P    6 | dyn      |         |          | dyn      |         |    X     |  ? |  ? |
-- P    7 | dyn      |         |    X     | dyn      |         |    X     |  ? |  ? |
-- P    8 | dyn      |    X    |          | dyn      |         |    X     |  ? |  ? |
-- P    9 | dyn      |    X    |    X     | dyn      |         |    X     |  ? |  ? |
-- P   10 | static   |         |          | dyn      |         |    X     |  ? |  ? |
-- P   11 | dyn      |         |          | dyn      |    X    |          |  ? |  ? |
-- P   12 | dyn      |         |    X     | dyn      |    X    |          |  ? |  ? |
-- P   13 | dyn      |    X    |          | dyn      |    X    |          |  ? |  ? |
-- P   14 | dyn      |    X    |    X     | dyn      |    X    |          |  ? |  ? |
-- P   15 | static   |         |          | dyn      |    X    |          |  ? |  ? |
-- P   16 | dyn      |         |          | dyn      |    X    |     X    |  ? |  ? |
-- P   17 | dyn      |         |    X     | dyn      |    X    |     X    |  ? |  ? |
-- P   18 | dyn      |    X    |          | dyn      |    X    |     X    |  ? |  ? |
-- P   19 | dyn      |    X    |    X     | dyn      |    X    |     X    |  ? |  ? |
-- P   20 | static   |         |          | dyn      |    X    |     X    |  ? |  ? |
-- P   21 | dyn      |         |          | static   |         |          |  ? |  ? |
-- P   22 | dyn      |         |    X     | static   |         |          |  ? |  ? |
-- P   23 | dyn      |    X    |          | static   |         |          |  ? |  ? |
-- P   24 | dyn      |    X    |    X     | static   |         |          |  ? |  ? |

dyn_no_pre_no_post = dyn_action $ do
    _ :: Word32 <- des
    static_return ()

dyn_no_pre_w_post = do
    dyn_action $ do
        _ :: Word32 <- des
        static_return ()
    _ :: Word8 <- des
    static_return ()

dyn_w_pre_no_post = do
    _ :: Word16 <- des
    dyn_action $ do
        _ :: Word32 <- des
        static_return ()

dyn_w_pre_w_post = do
    _ :: Word16 <- des
    dyn_action $ do
        _ :: Word32 <- des
        static_return ()
    _ :: Word8 <- des
    static_return ()

static_non_zero = do
    _ :: Word32 <- des
    _ :: Word16 <- des
    static_return ()

static_zero = do
    () <- des
    static_return ()

t_1_expected = [ GenBuffer 4 t_1_size
               , FinalizeBuffer t_1_size
               ]
t_1_size = 8
t_1 = do
    dyn_no_pre_no_post 
    dyn_no_pre_no_post 

t_2_expected = [ GenBuffer 4 t_2_size
               , FinalizeBuffer t_2_size
               ]
t_2_size = 9
t_2 = do
    dyn_no_pre_w_post 
    dyn_no_pre_no_post 

t_3_expected = [ GenBuffer 2 t_3_size
               , FinalizeBuffer t_3_size
               ]
t_3_size = 10
t_3 = do
    dyn_w_pre_no_post 
    dyn_no_pre_no_post 

t_4_expected = [ GenBuffer 2 t_4_size
               , FinalizeBuffer t_4_size
               ]
t_4_size = 11
t_4 = do
    dyn_w_pre_w_post 
    dyn_no_pre_no_post 

t_5_expected = [ GenBuffer 6 t_5_size
               , FinalizeBuffer t_5_size
               ]
t_5_size = 10
t_5 = do
    static_non_zero
    dyn_no_pre_no_post 

t_6_expected = [ GenBuffer 4 t_6_size
               , FinalizeBuffer t_6_size
               ]
t_6_size = 9
t_6 = do
    dyn_no_pre_no_post 
    dyn_no_pre_w_post 

t_7_expected = [ GenBuffer 4 t_7_size
               , FinalizeBuffer t_7_size
               ]
t_7_size = 10
t_7 = do
    dyn_no_pre_w_post 
    dyn_no_pre_w_post 

t_8_expected = [ GenBuffer 2 t_8_size
               , FinalizeBuffer t_8_size
               ]
t_8_size = 11
t_8 = do
    dyn_w_pre_no_post 
    dyn_no_pre_w_post 

t_9_expected = [ GenBuffer 2 t_9_size
               , FinalizeBuffer t_9_size
               ]
t_9_size = 12
t_9 = do
    dyn_w_pre_w_post 
    dyn_no_pre_w_post 

t_10_expected = [ GenBuffer 6 t_10_size
                , FinalizeBuffer t_10_size
                ]
t_10_size = 11
t_10 = do
    static_non_zero
    dyn_no_pre_w_post 

t_11_expected = [ GenBuffer 4 t_11_size
                , FinalizeBuffer t_11_size
                ]
t_11_size = 10
t_11 = do
    dyn_no_pre_no_post 
    dyn_w_pre_no_post 

t_12_expected = [ GenBuffer 4 t_12_size
                , FinalizeBuffer t_12_size
                ]
t_12_size = 11
t_12 = do
    dyn_no_pre_w_post 
    dyn_w_pre_no_post 

t_13_expected = [ GenBuffer 2 t_13_size
                , FinalizeBuffer t_13_size
                ]
t_13_size = 12
t_13 = do
    dyn_w_pre_no_post 
    dyn_w_pre_no_post 

t_14_expected = [ GenBuffer 2 t_14_size
                , FinalizeBuffer t_14_size
                ]
t_14_size = 13
t_14 = do
    dyn_w_pre_w_post 
    dyn_w_pre_no_post 

t_15_expected = [ GenBuffer 8 t_15_size
                , FinalizeBuffer t_15_size
                ]
t_15_size = 12
t_15 = do
    static_non_zero 
    dyn_w_pre_no_post 

t_16_expected = [ GenBuffer 4 t_16_size
                , FinalizeBuffer t_16_size
                ]
t_16_size = 11
t_16 = do
    dyn_no_pre_no_post
    dyn_w_pre_w_post 

t_17_expected = [ GenBuffer 4 t_17_size
                , FinalizeBuffer t_17_size
                ]
t_17_size = 12
t_17 = do
    dyn_no_pre_w_post
    dyn_w_pre_w_post 

t_18_expected = [ GenBuffer 2 t_18_size
                , FinalizeBuffer t_18_size
                ]
t_18_size = 13
t_18 = do
    dyn_w_pre_no_post
    dyn_w_pre_w_post 

t_19_expected = [ GenBuffer 2 t_19_size
                , FinalizeBuffer t_19_size
                ]
t_19_size = 14
t_19 = do
    dyn_w_pre_w_post
    dyn_w_pre_w_post 

t_20_expected = [ GenBuffer 8 t_20_size
                , FinalizeBuffer t_20_size ]
t_20_size = 13
t_20 = do
    static_non_zero
    dyn_w_pre_w_post

-- t_21 is unecessary.

t_22_expected = [ GenBuffer 4 t_22_size
                , FinalizeBuffer t_22_size
                ]
t_22_size = 11
t_22 = do
    dyn_no_pre_w_post
    static_non_zero

t_23_expected = [ GenBuffer 2 t_23_size
                , FinalizeBuffer t_23_size
                ]
t_23_size = 12
t_23 = do
    dyn_w_pre_no_post
    static_non_zero

t_24_expected = [ GenBuffer 2 t_24_size
                , FinalizeBuffer t_24_size
                ]
t_24_size = 13
t_24 = do
    dyn_w_pre_w_post
    static_non_zero

fail_ss_0 = do
    dyn_fail "expected"
    dyn_no_pre_no_post

fail_ss_1 = do
    dyn_no_pre_no_post
    dyn_fail "expected"

fail_so_0 = do
    dyn_fail "expected"
    dyn_no_pre_w_post

fail_so_1 = do
    dyn_no_pre_w_post
    dyn_fail "expected"

fail_os_0 = do
    dyn_fail "expected"
    dyn_w_pre_no_post

fail_os_1 = do
    dyn_w_pre_no_post
    dyn_fail "expected"

fail_oo_0 = do
    dyn_fail "expected"
    dyn_w_pre_w_post

fail_oo_1 = do
    dyn_w_pre_w_post
    dyn_fail "expected"

buffer_byte_size :: Size
buffer_byte_size = 4 * 1024 * 1024

main = run_test $ do
    buffer_0 <- liftIO $ mallocBytes buffer_byte_size :: Test ( Ptr Word8 )

    -- the first two tests assure the parameterized monad Bind typeing is correct.
    verify1 "t_static can deserialize from a memory block of 4 bytes" $ marshalled_byte_count t_static == 4
    verify1 "Deserializes t_static" $ liftIOResult $ do
        let b = castPtr buffer_0
        let des_buf = BufferRegion b 4
        ((), b_end') <- apply_des_to_fixed_buffer t_static des_buf
        returnM succeeded :: IO PropertyResult

    -- Now try some dynamic deserializations
    validate_case buffer_0 "t_1" t_1_size t_1_expected t_1

    validate_case buffer_0 "t_2" t_2_size t_2_expected t_2

    validate_case buffer_0 "t_3" t_3_size t_3_expected (dyn_action t_3)

    validate_case buffer_0 "t_4" t_4_size t_4_expected (dyn_action t_4)

    validate_case buffer_0 "t_5" t_5_size t_5_expected (dyn_action t_5)

    validate_case buffer_0 "t_6" t_6_size t_6_expected (dyn_action t_6)

    validate_case buffer_0 "t_7" t_7_size t_7_expected (dyn_action t_7)

    validate_case buffer_0 "t_8" t_8_size t_8_expected (dyn_action t_8)

    validate_case buffer_0 "t_9" t_9_size t_9_expected (dyn_action t_9)

    validate_case buffer_0 "t_10" t_10_size t_10_expected (dyn_action t_10)

    validate_case buffer_0 "t_11" t_11_size t_11_expected (dyn_action t_11)

    validate_case buffer_0 "t_12" t_12_size t_12_expected (dyn_action t_12)

    validate_case buffer_0 "t_13" t_13_size t_13_expected (dyn_action t_13)

    validate_case buffer_0 "t_14" t_14_size t_14_expected (dyn_action t_14)

    validate_case buffer_0 "t_15" t_15_size t_15_expected (dyn_action t_15)

    validate_case buffer_0 "t_16" t_16_size t_16_expected (dyn_action t_16)

    validate_case buffer_0 "t_17" t_17_size t_17_expected (dyn_action t_17)

    validate_case buffer_0 "t_18" t_18_size t_18_expected (dyn_action t_18)

    validate_case buffer_0 "t_19" t_19_size t_19_expected (dyn_action t_19)

    validate_case buffer_0 "t_20" t_20_size t_20_expected (dyn_action t_20)

    validate_case buffer_0 "t_22" t_22_size t_22_expected (dyn_action t_22)

    validate_case buffer_0 "t_23" t_23_size t_23_expected (dyn_action t_23)

    validate_case buffer_0 "t_24" t_24_size t_24_expected (dyn_action t_24)

    verify_failure_case buffer_0 "fail_ss_0" (dyn_action fail_ss_0)

    verify_failure_case buffer_0 "fail_ss_0" (dyn_action fail_ss_1)

    verify_failure_case buffer_0 "fail_so_0" (dyn_action fail_ss_0)

    verify_failure_case buffer_0 "fail_so_0" (dyn_action fail_ss_1)

    verify_failure_case buffer_0 "fail_os_0" (dyn_action fail_ss_0)

    verify_failure_case buffer_0 "fail_os_0" (dyn_action fail_ss_1)

    verify_failure_case buffer_0 "fail_oo_0" (dyn_action fail_ss_0)

    verify_failure_case buffer_0 "fail_oo_0" (dyn_action fail_ss_1)

    liftIO $ free buffer_0 :: Test()
    returnM () :: Test ()

validate_case buffer_0 name exp_size exp_bufferings case_action = do
    log_out $ "validated there is " ++ show exp_bufferings :: Test ()
    verify1 name $ liftIOResult $ do
        let b = castPtr buffer_0
            des_buf = BufferRegion b exp_size
        fb_bd <- fixed_buffer des_buf
        log_bd <- logging_buffer_delegate fb_bd
        ((), log_bd') <- des_from_buffer_delegate case_action log_bd
        dump_request_log log_bd'
        verify_logged_requests log_bd' exp_bufferings
        returnM succeeded :: IO PropertyResult
    returnM () :: Test ()

verify_failure_case buffer_0 name case_action = do
    verify_fails name $ liftIOResult $ do
        let b = castPtr buffer_0
            des_buf = BufferRegion b buffer_byte_size
        fb_bd <- fixed_buffer des_buf
        ((), fb_bd') <- des_from_buffer_delegate case_action fb_bd
        returnM succeeded :: IO PropertyResult
    returnM () :: Test ()
