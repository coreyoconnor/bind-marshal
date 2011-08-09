module TestCases.FullStaticCase17 where
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
    v_0 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    1202589112 :: Word32 <- des_word32_be
    1810371418 :: Word32 <- des_word32_be
    2647 :: Word16 <- des_word16_be
    v_2 :: Word16 <- des_word16_be
    v_3 :: Word32 <- des_word32_be
    1601 :: Word16 <- des_word16_be
    v_4 :: Word16 <- des_word16_be
    58644 :: Word16 <- des_word16_be
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word8 <- des
    4243473788 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    1149154291 :: Word32 <- des_word32_be
    70 :: Word8 <- des
    v_9 :: Word32 <- des_word32_be
    v_10 :: Word16 <- des_word16_be
    16 :: Word8 <- des
    v_11 :: Word16 <- des_word16_be
    116 :: Word8 <- des
    v_12 :: Word8 <- des
    2210403126 :: Word32 <- des_word32_be
    v_13 :: Word8 <- des
    1610444058 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    49651 :: Word16 <- des_word16_be
    951016925 :: Word32 <- des_word32_be
    v_16 :: Word16 <- des_word16_be
    v_17 :: Word16 <- des_word16_be
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word16 <- des_word16_be
    2098628348 :: Word32 <- des_word32_be
    28 :: Word8 <- des
    33851 :: Word16 <- des_word16_be
    v_20 :: Word16 <- des_word16_be
    2767108726 :: Word32 <- des_word32_be
    243 :: Word8 <- des
    61027 :: Word16 <- des_word16_be
    v_21 :: Word8 <- des
    3046019994 :: Word32 <- des_word32_be
    4196051485 :: Word32 <- des_word32_be
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word8 <- des
    v_24 :: Word8 <- des
    16093 :: Word16 <- des_word16_be
    31748 :: Word16 <- des_word16_be
    233 :: Word8 <- des
    v_25 :: Word16 <- des_word16_be
    3476894092 :: Word32 <- des_word32_be
    v_26 :: Word32 <- des_word32_be
    34218 :: Word16 <- des_word16_be
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word8 <- des
    v_29 :: Word16 <- des_word16_be
    158 :: Word8 <- des
    v_30 :: Word32 <- des_word32_be
    v_31 :: Word8 <- des
    21976 :: Word16 <- des_word16_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word32 <- des_word32_be
    48640 :: Word16 <- des_word16_be
    static_return  [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word16Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word8Value v_6 , Word8Value v_7 , Word32Value v_8 , Word32Value v_9 , Word16Value v_10 , Word16Value v_11 , Word8Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word16Value v_16 , Word16Value v_17 , Word16Value v_18 , Word16Value v_19 , Word16Value v_20 , Word8Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word16Value v_25 , Word32Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 ] = vs 
    ser v_0
    ser_word32_be v_1
    ser_word32_be 1202589112
    ser_word32_be 1810371418
    ser_word16_be 2647
    ser_word16_be v_2
    ser_word32_be v_3
    ser_word16_be 1601
    ser_word16_be v_4
    ser_word16_be 58644
    ser_word32_be v_5
    ser v_6
    ser_word32_be 4243473788
    ser v_7
    ser_word32_be v_8
    ser_word32_be 1149154291
    ser (70 :: Word8)
    ser_word32_be v_9
    ser_word16_be v_10
    ser (16 :: Word8)
    ser_word16_be v_11
    ser (116 :: Word8)
    ser v_12
    ser_word32_be 2210403126
    ser v_13
    ser_word32_be 1610444058
    ser v_14
    ser_word32_be v_15
    ser_word16_be 49651
    ser_word32_be 951016925
    ser_word16_be v_16
    ser_word16_be v_17
    ser_word16_be v_18
    ser_word16_be v_19
    ser_word32_be 2098628348
    ser (28 :: Word8)
    ser_word16_be 33851
    ser_word16_be v_20
    ser_word32_be 2767108726
    ser (243 :: Word8)
    ser_word16_be 61027
    ser v_21
    ser_word32_be 3046019994
    ser_word32_be 4196051485
    ser_word32_be v_22
    ser v_23
    ser v_24
    ser_word16_be 16093
    ser_word16_be 31748
    ser (233 :: Word8)
    ser_word16_be v_25
    ser_word32_be 3476894092
    ser_word32_be v_26
    ser_word16_be 34218
    ser_word32_be v_27
    ser v_28
    ser_word16_be v_29
    ser (158 :: Word8)
    ser_word32_be v_30
    ser v_31
    ser_word16_be 21976
    ser_word16_be v_32
    ser_word32_be v_33
    ser_word16_be 48640
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Hole {byte_offset = 1, hole_type = Word32Hole},Value (Word32Value 1202589112),Value (Word32Value 1810371418),Value (Word16Value 2647),Hole {byte_offset = 15, hole_type = Word16Hole},Hole {byte_offset = 17, hole_type = Word32Hole},Value (Word16Value 1601),Hole {byte_offset = 23, hole_type = Word16Hole},Value (Word16Value 58644),Hole {byte_offset = 27, hole_type = Word32Hole},Hole {byte_offset = 31, hole_type = Word8Hole},Value (Word32Value 4243473788),Hole {byte_offset = 36, hole_type = Word8Hole},Hole {byte_offset = 37, hole_type = Word32Hole},Value (Word32Value 1149154291),Value (Word8Value 70),Hole {byte_offset = 46, hole_type = Word32Hole},Hole {byte_offset = 50, hole_type = Word16Hole},Value (Word8Value 16),Hole {byte_offset = 53, hole_type = Word16Hole},Value (Word8Value 116),Hole {byte_offset = 56, hole_type = Word8Hole},Value (Word32Value 2210403126),Hole {byte_offset = 61, hole_type = Word8Hole},Value (Word32Value 1610444058),Hole {byte_offset = 66, hole_type = Word8Hole},Hole {byte_offset = 67, hole_type = Word32Hole},Value (Word16Value 49651),Value (Word32Value 951016925),Hole {byte_offset = 77, hole_type = Word16Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word16Hole},Hole {byte_offset = 83, hole_type = Word16Hole},Value (Word32Value 2098628348),Value (Word8Value 28),Value (Word16Value 33851),Hole {byte_offset = 92, hole_type = Word16Hole},Value (Word32Value 2767108726),Value (Word8Value 243),Value (Word16Value 61027),Hole {byte_offset = 101, hole_type = Word8Hole},Value (Word32Value 3046019994),Value (Word32Value 4196051485),Hole {byte_offset = 110, hole_type = Word32Hole},Hole {byte_offset = 114, hole_type = Word8Hole},Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 16093),Value (Word16Value 31748),Value (Word8Value 233),Hole {byte_offset = 121, hole_type = Word16Hole},Value (Word32Value 3476894092),Hole {byte_offset = 127, hole_type = Word32Hole},Value (Word16Value 34218),Hole {byte_offset = 133, hole_type = Word32Hole},Hole {byte_offset = 137, hole_type = Word8Hole},Hole {byte_offset = 138, hole_type = Word16Hole},Value (Word8Value 158),Hole {byte_offset = 141, hole_type = Word32Hole},Hole {byte_offset = 145, hole_type = Word8Hole},Value (Word16Value 21976),Hole {byte_offset = 148, hole_type = Word16Hole},Hole {byte_offset = 150, hole_type = Word32Hole},Value (Word16Value 48640)]}
