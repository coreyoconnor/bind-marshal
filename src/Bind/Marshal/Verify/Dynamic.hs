-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE MagicHash #-}
module Bind.Marshal.Verify.Dynamic where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Dynamic
import Bind.Marshal.Action.Monad

import Control.Applicative

import Data.IORef

import GHC.Exts
import GHC.Prim

import System.IO

import Verify

data NopDelegate = NopDelegate

instance BufferDelegate NopDelegate where
    gen_region 0 NopDelegate
        = returnM $! BDIter 0 0 NopDelegate nullAddr# nullAddr#
    gen_region _size NopDelegate
        = fail "NopDelegate can only generate 0 sized buffers"
    finalize_region bd_iter
        | bytes_final bd_iter == 0 = returnM (buffer_delegate bd_iter)
        | otherwise = fail "NopDelegate can only finalize 0 sized buffers"

data LoggingDelegate sub_delegate where
    LoggingDelegate :: BufferDelegate sub_delegate 
                       => [ProducerLogEntry]
                       -> sub_delegate
                       -> LoggingDelegate sub_delegate

data ProducerLogEntry 
    = GenBuffer Size Size -- Requested miminum size. Max bytes avail of generated buffer.
    | FinalizeBuffer Size -- Actual finalize size. 
    deriving ( Show, Eq )

logging_buffer_delegate :: BufferDelegate bd => bd -> IO (LoggingDelegate bd)
logging_buffer_delegate sub_delegate = returnM $! LoggingDelegate [] sub_delegate

dump_request_log :: LoggingDelegate sub_delegate -> IO ()
dump_request_log (LoggingDelegate log _sub) = do
    mapM_ (\s -> log_out $ show s) log :: IO ()

instance BufferDelegate sub_delegate => BufferDelegate (LoggingDelegate sub_delegate) where
    gen_region size (LoggingDelegate log sub_p) = do
        bd_iter <- gen_region size sub_p
        let sub_p' = buffer_delegate bd_iter
        let log' = log ++ [GenBuffer size (max_bytes_avail bd_iter) ]
        returnM $! bd_iter { buffer_delegate = LoggingDelegate log' sub_p' } 
            :: IO (BDIter (LoggingDelegate sub_delegate))
    finalize_region bd_iter@(BDIter _ _ bd s p) = do
        let !(LoggingDelegate log sub_p) = bd
            log' = log ++ [FinalizeBuffer (I# (minusAddr# p s))]
        sub_p' <- finalize_region (bd_iter {buffer_delegate = sub_p})
        returnM $! LoggingDelegate log' sub_p' :: IO (LoggingDelegate sub_delegate)

verify_logged_requests :: LoggingDelegate sub_delegate -> [ProducerLogEntry] -> IO ()
verify_logged_requests p@(LoggingDelegate actual _sub_p) expected = do
    if actual == expected
        then returnM ()
        else do
            fail $ "expected is:\n" ++ show expected :: IO ()

