{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

#define FLVHEADER_DES_IDEAL_CASE 1
module FLVHeader.Des
where

import Bind.Marshal.Prelude

import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.DesAction.Static
import Bind.Marshal.StdLib.Des
import Bind.Marshal.StdLib.Utils.Des

import FLVHeader.Data

import Data.Bits ( testBit )

-- This inline pragma is not required. However if it is not included then the core takes on the
-- following form:
--  nice optimized code  >>= final_continuation result
-- where the final_continuation is a dynamically generated thunk. 
--
-- The final_continuation is often very simple: A returnM. Thus the cost of the dynamic thunk is
-- really high compared to just inlining the returnM
--
-- For larger data marshalling procedures the cost of not inlining the final continuation will be
-- negligable.
{-# INLINABLE des_flv_header #-}
des_flv_header = do
    -- Sometimes, when I fiddle with the type equations, the following fails to typecheck:
#if FLVHEADER_DES_IDEAL_CASE
    'F' <- des_char_8
    'L' <- des_char_8
    'V' <- des_char_8
#else
    -- In that case using expect will work around the issue. 
    expect 'F' des_char_8 "Malformed FLV magic"
    expect 'L' des_char_8 "Malformed FLV magic"
    expect 'V' des_char_8 "Malformed FLV magic"
#endif
    version :: Word8 <- des
    flags :: Word8 <- des
    header_size :: Word32 <- des
#if 0 
    -- testBit is not sufficiently strict. An unecessary Word allocation is performed.
    -- using an explicit case matching on the possible value of flags proves much faster.
    let !has_audio = flags `testBit` 4
    let !has_video = flags `testBit` 1
#else
    let ( has_audio, has_video ) = case flags of
                                        1 -> ( True, False )
                                        4 -> ( False, True )
                                        5 -> ( True, True )
#endif
    return $! FLVHeader version has_audio has_video header_size

