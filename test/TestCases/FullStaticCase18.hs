{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase18 where
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
    3199546891 :: Word32 <- des_word32_be
    v_0 :: Word8 <- des
    70 :: Word8 <- des
    122 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    61207 :: Word16 <- des_word16_be
    v_2 :: Word16 <- des_word16_be
    58176 :: Word16 <- des_word16_be
    v_3 :: Word16 <- des_word16_be
    v_4 :: Word32 <- des_word32_be
    56797 :: Word16 <- des_word16_be
    1205547796 :: Word32 <- des_word32_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    29534 :: Word16 <- des_word16_be
    191453058 :: Word32 <- des_word32_be
    1813216337 :: Word32 <- des_word32_be
    1 :: Word8 <- des
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word32 <- des_word32_be
    38641 :: Word16 <- des_word16_be
    51152 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word8 <- des
    v_12 :: Word32 <- des_word32_be
    57298 :: Word16 <- des_word16_be
    v_13 :: Word8 <- des
    v_14 :: Word16 <- des_word16_be
    4162138034 :: Word32 <- des_word32_be
    v_15 :: Word16 <- des_word16_be
    v_16 :: Word8 <- des
    v_17 :: Word8 <- des
    37037 :: Word16 <- des_word16_be
    665163427 :: Word32 <- des_word32_be
    144 :: Word8 <- des
    3604857952 :: Word32 <- des_word32_be
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word16 <- des_word16_be
    4552 :: Word16 <- des_word16_be
    38638 :: Word16 <- des_word16_be
    2904628998 :: Word32 <- des_word32_be
    v_20 :: Word32 <- des_word32_be
    v_21 :: Word8 <- des
    v_22 :: Word8 <- des
    29548 :: Word16 <- des_word16_be
    v_23 :: Word16 <- des_word16_be
    125 :: Word8 <- des
    v_24 :: Word8 <- des
    17406 :: Word16 <- des_word16_be
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word32 <- des_word32_be
    v_27 :: Word16 <- des_word16_be
    65416 :: Word16 <- des_word16_be
    4012331883 :: Word32 <- des_word32_be
    v_28 :: Word16 <- des_word16_be
    v_29 :: Word16 <- des_word16_be
    17 :: Word8 <- des
    2128270985 :: Word32 <- des_word32_be
    v_30 :: Word8 <- des
    v_31 :: Word8 <- des
    v_32 :: Word16 <- des_word16_be
    7877 :: Word16 <- des_word16_be
    v_33 :: Word8 <- des
    88 :: Word8 <- des
    return  [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word16Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word16Value v_32 , Word8Value v_33 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word32Value v_9 , Word32Value v_10 , Word8Value v_11 , Word32Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word8Value v_17 , Word16Value v_18 , Word16Value v_19 , Word32Value v_20 , Word8Value v_21 , Word8Value v_22 , Word16Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word16Value v_32 , Word8Value v_33 ] = vs 
    ser_word32_be 3199546891
    ser v_0
    ser (70 :: Word8)
    ser (122 :: Word8)
    ser_word32_be v_1
    ser_word16_be 61207
    ser_word16_be v_2
    ser_word16_be 58176
    ser_word16_be v_3
    ser_word32_be v_4
    ser_word16_be 56797
    ser_word32_be 1205547796
    ser_word16_be v_5
    ser v_6
    ser_word16_be 29534
    ser_word32_be 191453058
    ser_word32_be 1813216337
    ser (1 :: Word8)
    ser_word32_be v_7
    ser_word32_be v_8
    ser_word32_be v_9
    ser_word16_be 38641
    ser_word16_be 51152
    ser_word32_be v_10
    ser v_11
    ser_word32_be v_12
    ser_word16_be 57298
    ser v_13
    ser_word16_be v_14
    ser_word32_be 4162138034
    ser_word16_be v_15
    ser v_16
    ser v_17
    ser_word16_be 37037
    ser_word32_be 665163427
    ser (144 :: Word8)
    ser_word32_be 3604857952
    ser_word16_be v_18
    ser_word16_be v_19
    ser_word16_be 4552
    ser_word16_be 38638
    ser_word32_be 2904628998
    ser_word32_be v_20
    ser v_21
    ser v_22
    ser_word16_be 29548
    ser_word16_be v_23
    ser (125 :: Word8)
    ser v_24
    ser_word16_be 17406
    ser_word16_be v_25
    ser_word32_be v_26
    ser_word16_be v_27
    ser_word16_be 65416
    ser_word32_be 4012331883
    ser_word16_be v_28
    ser_word16_be v_29
    ser (17 :: Word8)
    ser_word32_be 2128270985
    ser v_30
    ser v_31
    ser_word16_be v_32
    ser_word16_be 7877
    ser v_33
    ser (88 :: Word8)
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 3199546891),Hole {byte_offset = 4, hole_type = Word8Hole},Value (Word8Value 70),Value (Word8Value 122),Hole {byte_offset = 7, hole_type = Word32Hole},Value (Word16Value 61207),Hole {byte_offset = 13, hole_type = Word16Hole},Value (Word16Value 58176),Hole {byte_offset = 17, hole_type = Word16Hole},Hole {byte_offset = 19, hole_type = Word32Hole},Value (Word16Value 56797),Value (Word32Value 1205547796),Hole {byte_offset = 29, hole_type = Word16Hole},Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word16Value 29534),Value (Word32Value 191453058),Value (Word32Value 1813216337),Value (Word8Value 1),Hole {byte_offset = 43, hole_type = Word32Hole},Hole {byte_offset = 47, hole_type = Word32Hole},Hole {byte_offset = 51, hole_type = Word32Hole},Value (Word16Value 38641),Value (Word16Value 51152),Hole {byte_offset = 59, hole_type = Word32Hole},Hole {byte_offset = 63, hole_type = Word8Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Value (Word16Value 57298),Hole {byte_offset = 70, hole_type = Word8Hole},Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word32Value 4162138034),Hole {byte_offset = 77, hole_type = Word16Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Hole {byte_offset = 80, hole_type = Word8Hole},Value (Word16Value 37037),Value (Word32Value 665163427),Value (Word8Value 144),Value (Word32Value 3604857952),Hole {byte_offset = 92, hole_type = Word16Hole},Hole {byte_offset = 94, hole_type = Word16Hole},Value (Word16Value 4552),Value (Word16Value 38638),Value (Word32Value 2904628998),Hole {byte_offset = 104, hole_type = Word32Hole},Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word8Hole},Value (Word16Value 29548),Hole {byte_offset = 112, hole_type = Word16Hole},Value (Word8Value 125),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 17406),Hole {byte_offset = 118, hole_type = Word16Hole},Hole {byte_offset = 120, hole_type = Word32Hole},Hole {byte_offset = 124, hole_type = Word16Hole},Value (Word16Value 65416),Value (Word32Value 4012331883),Hole {byte_offset = 132, hole_type = Word16Hole},Hole {byte_offset = 134, hole_type = Word16Hole},Value (Word8Value 17),Value (Word32Value 2128270985),Hole {byte_offset = 141, hole_type = Word8Hole},Hole {byte_offset = 142, hole_type = Word8Hole},Hole {byte_offset = 143, hole_type = Word16Hole},Value (Word16Value 7877),Hole {byte_offset = 147, hole_type = Word8Hole},Value (Word8Value 88)]}
