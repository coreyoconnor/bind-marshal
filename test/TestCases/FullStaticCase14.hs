module TestCases.FullStaticCase14 where
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
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word16 <- des_word16_be
    45589 :: Word16 <- des_word16_be
    v_2 :: Word16 <- des_word16_be
    60107 :: Word16 <- des_word16_be
    1160052559 :: Word32 <- des_word32_be
    v_3 :: Word8 <- des
    42851 :: Word16 <- des_word16_be
    v_4 :: Word16 <- des_word16_be
    v_5 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word8 <- des
    40526 :: Word16 <- des_word16_be
    806 :: Word16 <- des_word16_be
    42332 :: Word16 <- des_word16_be
    43364 :: Word16 <- des_word16_be
    635582598 :: Word32 <- des_word32_be
    54204 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word16 <- des_word16_be
    v_12 :: Word32 <- des_word32_be
    23374 :: Word16 <- des_word16_be
    v_13 :: Word16 <- des_word16_be
    v_14 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word8 <- des
    45585 :: Word16 <- des_word16_be
    v_17 :: Word8 <- des
    1748252474 :: Word32 <- des_word32_be
    v_18 :: Word16 <- des_word16_be
    229 :: Word8 <- des
    v_19 :: Word8 <- des
    v_20 :: Word16 <- des_word16_be
    224 :: Word8 <- des
    35602 :: Word16 <- des_word16_be
    v_21 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    14403 :: Word16 <- des_word16_be
    4080055959 :: Word32 <- des_word32_be
    49541 :: Word16 <- des_word16_be
    v_25 :: Word8 <- des
    565928376 :: Word32 <- des_word32_be
    22 :: Word8 <- des
    v_26 :: Word16 <- des_word16_be
    90 :: Word8 <- des
    v_27 :: Word16 <- des_word16_be
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word16 <- des_word16_be
    132 :: Word8 <- des
    v_30 :: Word32 <- des_word32_be
    v_31 :: Word8 <- des
    v_32 :: Word8 <- des
    209 :: Word8 <- des
    v_33 :: Word16 <- des_word16_be
    65261 :: Word16 <- des_word16_be
    v_34 :: Word32 <- des_word32_be
    2127379805 :: Word32 <- des_word32_be
    686121823 :: Word32 <- des_word32_be
    v_35 :: Word32 <- des_word32_be
    45176 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word16Value v_11 , Word32Value v_12 , Word16Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word16Value v_33 , Word32Value v_34 , Word32Value v_35 ] = vs 
    ser_word32_be v_0
    ser_word16_be v_1
    ser_word16_be 45589
    ser_word16_be v_2
    ser_word16_be 60107
    ser_word32_be 1160052559
    ser v_3
    ser_word16_be 42851
    ser_word16_be v_4
    ser v_5
    ser_word32_be v_6
    ser_word32_be v_7
    ser_word16_be v_8
    ser v_9
    ser_word16_be 40526
    ser_word16_be 806
    ser_word16_be 42332
    ser_word16_be 43364
    ser_word32_be 635582598
    ser_word16_be 54204
    ser_word32_be v_10
    ser_word16_be v_11
    ser_word32_be v_12
    ser_word16_be 23374
    ser_word16_be v_13
    ser v_14
    ser_word32_be v_15
    ser v_16
    ser_word16_be 45585
    ser v_17
    ser_word32_be 1748252474
    ser_word16_be v_18
    ser (229 :: Word8)
    ser v_19
    ser_word16_be v_20
    ser (224 :: Word8)
    ser_word16_be 35602
    ser v_21
    ser_word32_be v_22
    ser v_23
    ser_word32_be v_24
    ser_word16_be 14403
    ser_word32_be 4080055959
    ser_word16_be 49541
    ser v_25
    ser_word32_be 565928376
    ser (22 :: Word8)
    ser_word16_be v_26
    ser (90 :: Word8)
    ser_word16_be v_27
    ser_word16_be v_28
    ser_word16_be v_29
    ser (132 :: Word8)
    ser_word32_be v_30
    ser v_31
    ser v_32
    ser (209 :: Word8)
    ser_word16_be v_33
    ser_word16_be 65261
    ser_word32_be v_34
    ser_word32_be 2127379805
    ser_word32_be 686121823
    ser_word32_be v_35
    ser_word16_be 45176
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Hole {byte_offset = 4, hole_type = Word16Hole},Value (Word16Value 45589),Hole {byte_offset = 8, hole_type = Word16Hole},Value (Word16Value 60107),Value (Word32Value 1160052559),Hole {byte_offset = 16, hole_type = Word8Hole},Value (Word16Value 42851),Hole {byte_offset = 19, hole_type = Word16Hole},Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word32Hole},Hole {byte_offset = 26, hole_type = Word32Hole},Hole {byte_offset = 30, hole_type = Word16Hole},Hole {byte_offset = 32, hole_type = Word8Hole},Value (Word16Value 40526),Value (Word16Value 806),Value (Word16Value 42332),Value (Word16Value 43364),Value (Word32Value 635582598),Value (Word16Value 54204),Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word16Hole},Hole {byte_offset = 53, hole_type = Word32Hole},Value (Word16Value 23374),Hole {byte_offset = 59, hole_type = Word16Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Hole {byte_offset = 66, hole_type = Word8Hole},Value (Word16Value 45585),Hole {byte_offset = 69, hole_type = Word8Hole},Value (Word32Value 1748252474),Hole {byte_offset = 74, hole_type = Word16Hole},Value (Word8Value 229),Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word16Hole},Value (Word8Value 224),Value (Word16Value 35602),Hole {byte_offset = 83, hole_type = Word8Hole},Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Hole {byte_offset = 89, hole_type = Word32Hole},Value (Word16Value 14403),Value (Word32Value 4080055959),Value (Word16Value 49541),Hole {byte_offset = 101, hole_type = Word8Hole},Value (Word32Value 565928376),Value (Word8Value 22),Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word8Value 90),Hole {byte_offset = 110, hole_type = Word16Hole},Hole {byte_offset = 112, hole_type = Word16Hole},Hole {byte_offset = 114, hole_type = Word16Hole},Value (Word8Value 132),Hole {byte_offset = 117, hole_type = Word32Hole},Hole {byte_offset = 121, hole_type = Word8Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Value (Word8Value 209),Hole {byte_offset = 124, hole_type = Word16Hole},Value (Word16Value 65261),Hole {byte_offset = 128, hole_type = Word32Hole},Value (Word32Value 2127379805),Value (Word32Value 686121823),Hole {byte_offset = 140, hole_type = Word32Hole},Value (Word16Value 45176)]}
