module TestCases.FullStaticCase3 where
import Bind.Marshal.Prelude
import Bind.Marshal.Action.Base
import Bind.Marshal.Action.Monad.Static
import Bind.Marshal.Action.Static
import Bind.Marshal.DesAction.Static
import Bind.Marshal.SerAction.Static
import Bind.Marshal.StaticProperties
import Bind.Marshal.StdLib.Des
import Bind.Marshal.StdLib.Utils.Des
import Bind.Marshal.StdLib.Ser
import Bind.Marshal.StdLib.Utils.Ser

import ArbMarshal
import ArbMarshal.GenCode.Utils

import Data.Word

des_static_structure = do 
    v_0 :: Word16 <- des_word16_be
    539640187 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    2557344785 :: Word32 <- des_word32_be
    1160699381 :: Word32 <- des_word32_be
    v_2 :: Word16 <- des_word16_be
    19299 :: Word16 <- des_word16_be
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word16 <- des_word16_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word32 <- des_word32_be
    10076 :: Word16 <- des_word16_be
    3939751332 :: Word32 <- des_word32_be
    29050 :: Word16 <- des_word16_be
    886042300 :: Word32 <- des_word32_be
    61369 :: Word16 <- des_word16_be
    65529 :: Word16 <- des_word16_be
    1586677741 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    12531 :: Word16 <- des_word16_be
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word32 <- des_word32_be
    v_10 :: Word32 <- des_word32_be
    17055 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    2016181834 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word8 <- des
    v_14 :: Word32 <- des_word32_be
    169 :: Word8 <- des
    static_return  [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word16Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word32Value v_14 ] = vs 
    ser_word16_be v_0
    ser_word32_be 539640187
    ser v_1
    ser_word32_be 2557344785
    ser_word32_be 1160699381
    ser_word16_be v_2
    ser_word16_be 19299
    ser_word32_be v_3
    ser_word16_be v_4
    ser_word16_be v_5
    ser_word32_be v_6
    ser_word16_be 10076
    ser_word32_be 3939751332
    ser_word16_be 29050
    ser_word32_be 886042300
    ser_word16_be 61369
    ser_word16_be 65529
    ser_word32_be 1586677741
    ser v_7
    ser_word16_be 12531
    ser_word16_be v_8
    ser_word32_be v_9
    ser_word32_be v_10
    ser_word16_be 17055
    ser v_11
    ser_word32_be 2016181834
    ser_word16_be v_12
    ser v_13
    ser_word32_be v_14
    ser (169 :: Word8)
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Value (Word32Value 539640187),Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word32Value 2557344785),Value (Word32Value 1160699381),Hole {byte_offset = 15, hole_type = Word16Hole},Value (Word16Value 19299),Hole {byte_offset = 19, hole_type = Word32Hole},Hole {byte_offset = 23, hole_type = Word16Hole},Hole {byte_offset = 25, hole_type = Word16Hole},Hole {byte_offset = 27, hole_type = Word32Hole},Value (Word16Value 10076),Value (Word32Value 3939751332),Value (Word16Value 29050),Value (Word32Value 886042300),Value (Word16Value 61369),Value (Word16Value 65529),Value (Word32Value 1586677741),Hole {byte_offset = 51, hole_type = Word8Hole},Value (Word16Value 12531),Hole {byte_offset = 54, hole_type = Word16Hole},Hole {byte_offset = 56, hole_type = Word32Hole},Hole {byte_offset = 60, hole_type = Word32Hole},Value (Word16Value 17055),Hole {byte_offset = 66, hole_type = Word8Hole},Value (Word32Value 2016181834),Hole {byte_offset = 71, hole_type = Word16Hole},Hole {byte_offset = 73, hole_type = Word8Hole},Hole {byte_offset = 74, hole_type = Word32Hole},Value (Word8Value 169)]}
