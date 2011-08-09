module TestCases.FullStaticCase8 where
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
    3 :: Word8 <- des
    v_1 :: Word16 <- des_word16_be
    v_2 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    v_4 :: Word16 <- des_word16_be
    v_5 :: Word8 <- des
    152 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    v_8 :: Word8 <- des
    v_9 :: Word8 <- des
    v_10 :: Word16 <- des_word16_be
    36605 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    v_12 :: Word8 <- des
    v_13 :: Word32 <- des_word32_be
    36104 :: Word16 <- des_word16_be
    v_14 :: Word32 <- des_word32_be
    v_15 :: Word32 <- des_word32_be
    101 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    65534 :: Word16 <- des_word16_be
    58 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    v_18 :: Word16 <- des_word16_be
    3308707477 :: Word32 <- des_word32_be
    v_19 :: Word8 <- des
    v_20 :: Word8 <- des
    911352897 :: Word32 <- des_word32_be
    v_21 :: Word32 <- des_word32_be
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word16 <- des_word16_be
    201 :: Word8 <- des
    39205 :: Word16 <- des_word16_be
    v_24 :: Word16 <- des_word16_be
    v_25 :: Word8 <- des
    v_26 :: Word8 <- des
    4096476145 :: Word32 <- des_word32_be
    680 :: Word16 <- des_word16_be
    v_27 :: Word32 <- des_word32_be
    3675646859 :: Word32 <- des_word32_be
    v_28 :: Word32 <- des_word32_be
    v_29 :: Word8 <- des
    154 :: Word8 <- des
    3056132606 :: Word32 <- des_word32_be
    2318342782 :: Word32 <- des_word32_be
    2958181074 :: Word32 <- des_word32_be
    255 :: Word8 <- des
    214 :: Word8 <- des
    239 :: Word8 <- des
    v_30 :: Word8 <- des
    40113 :: Word16 <- des_word16_be
    v_31 :: Word16 <- des_word16_be
    203 :: Word8 <- des
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word16 <- des_word16_be
    379464366 :: Word32 <- des_word32_be
    v_34 :: Word8 <- des
    v_35 :: Word32 <- des_word32_be
    3580725469 :: Word32 <- des_word32_be
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word16 <- des_word16_be
    v_38 :: Word32 <- des_word32_be
    172 :: Word8 <- des
    156 :: Word8 <- des
    v_39 :: Word8 <- des
    v_40 :: Word16 <- des_word16_be
    v_41 :: Word8 <- des
    3689160082 :: Word32 <- des_word32_be
    149 :: Word8 <- des
    v_42 :: Word16 <- des_word16_be
    2560319062 :: Word32 <- des_word32_be
    5 :: Word8 <- des
    v_43 :: Word32 <- des_word32_be
    v_44 :: Word32 <- des_word32_be
    v_45 :: Word8 <- des
    3734998490 :: Word32 <- des_word32_be
    v_46 :: Word16 <- des_word16_be
    v_47 :: Word16 <- des_word16_be
    v_48 :: Word32 <- des_word32_be
    1808959143 :: Word32 <- des_word32_be
    v_49 :: Word32 <- des_word32_be
    81 :: Word8 <- des
    v_50 :: Word32 <- des_word32_be
    v_51 :: Word8 <- des
    13694 :: Word16 <- des_word16_be
    38593 :: Word16 <- des_word16_be
    v_52 :: Word32 <- des_word32_be
    static_return  [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word8Value v_51 , Word32Value v_52 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word16Value v_1 , Word16Value v_2 , Word8Value v_3 , Word16Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word8Value v_8 , Word8Value v_9 , Word16Value v_10 , Word8Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word32Value v_15 , Word32Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word16Value v_24 , Word8Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word16Value v_33 , Word8Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word16Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word32Value v_48 , Word32Value v_49 , Word32Value v_50 , Word8Value v_51 , Word32Value v_52 ] = vs 
    ser_word32_be v_0
    ser (3 :: Word8)
    ser_word16_be v_1
    ser_word16_be v_2
    ser v_3
    ser_word16_be v_4
    ser v_5
    ser (152 :: Word8)
    ser_word32_be v_6
    ser v_7
    ser v_8
    ser v_9
    ser_word16_be v_10
    ser_word16_be 36605
    ser v_11
    ser v_12
    ser_word32_be v_13
    ser_word16_be 36104
    ser_word32_be v_14
    ser_word32_be v_15
    ser (101 :: Word8)
    ser_word32_be v_16
    ser_word16_be 65534
    ser (58 :: Word8)
    ser_word32_be v_17
    ser_word16_be v_18
    ser_word32_be 3308707477
    ser v_19
    ser v_20
    ser_word32_be 911352897
    ser_word32_be v_21
    ser_word16_be v_22
    ser_word16_be v_23
    ser (201 :: Word8)
    ser_word16_be 39205
    ser_word16_be v_24
    ser v_25
    ser v_26
    ser_word32_be 4096476145
    ser_word16_be 680
    ser_word32_be v_27
    ser_word32_be 3675646859
    ser_word32_be v_28
    ser v_29
    ser (154 :: Word8)
    ser_word32_be 3056132606
    ser_word32_be 2318342782
    ser_word32_be 2958181074
    ser (255 :: Word8)
    ser (214 :: Word8)
    ser (239 :: Word8)
    ser v_30
    ser_word16_be 40113
    ser_word16_be v_31
    ser (203 :: Word8)
    ser_word16_be v_32
    ser_word16_be v_33
    ser_word32_be 379464366
    ser v_34
    ser_word32_be v_35
    ser_word32_be 3580725469
    ser_word32_be v_36
    ser_word16_be v_37
    ser_word32_be v_38
    ser (172 :: Word8)
    ser (156 :: Word8)
    ser v_39
    ser_word16_be v_40
    ser v_41
    ser_word32_be 3689160082
    ser (149 :: Word8)
    ser_word16_be v_42
    ser_word32_be 2560319062
    ser (5 :: Word8)
    ser_word32_be v_43
    ser_word32_be v_44
    ser v_45
    ser_word32_be 3734998490
    ser_word16_be v_46
    ser_word16_be v_47
    ser_word32_be v_48
    ser_word32_be 1808959143
    ser_word32_be v_49
    ser (81 :: Word8)
    ser_word32_be v_50
    ser v_51
    ser_word16_be 13694
    ser_word16_be 38593
    ser_word32_be v_52
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word8Value 3),Hole {byte_offset = 5, hole_type = Word16Hole},Hole {byte_offset = 7, hole_type = Word16Hole},Hole {byte_offset = 9, hole_type = Word8Hole},Hole {byte_offset = 10, hole_type = Word16Hole},Hole {byte_offset = 12, hole_type = Word8Hole},Value (Word8Value 152),Hole {byte_offset = 14, hole_type = Word32Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word16Value 36605),Hole {byte_offset = 25, hole_type = Word8Hole},Hole {byte_offset = 26, hole_type = Word8Hole},Hole {byte_offset = 27, hole_type = Word32Hole},Value (Word16Value 36104),Hole {byte_offset = 33, hole_type = Word32Hole},Hole {byte_offset = 37, hole_type = Word32Hole},Value (Word8Value 101),Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word16Value 65534),Value (Word8Value 58),Hole {byte_offset = 49, hole_type = Word32Hole},Hole {byte_offset = 53, hole_type = Word16Hole},Value (Word32Value 3308707477),Hole {byte_offset = 59, hole_type = Word8Hole},Hole {byte_offset = 60, hole_type = Word8Hole},Value (Word32Value 911352897),Hole {byte_offset = 65, hole_type = Word32Hole},Hole {byte_offset = 69, hole_type = Word16Hole},Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word8Value 201),Value (Word16Value 39205),Hole {byte_offset = 76, hole_type = Word16Hole},Hole {byte_offset = 78, hole_type = Word8Hole},Hole {byte_offset = 79, hole_type = Word8Hole},Value (Word32Value 4096476145),Value (Word16Value 680),Hole {byte_offset = 86, hole_type = Word32Hole},Value (Word32Value 3675646859),Hole {byte_offset = 94, hole_type = Word32Hole},Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word8Value 154),Value (Word32Value 3056132606),Value (Word32Value 2318342782),Value (Word32Value 2958181074),Value (Word8Value 255),Value (Word8Value 214),Value (Word8Value 239),Hole {byte_offset = 115, hole_type = Word8Hole},Value (Word16Value 40113),Hole {byte_offset = 118, hole_type = Word16Hole},Value (Word8Value 203),Hole {byte_offset = 121, hole_type = Word16Hole},Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word32Value 379464366),Hole {byte_offset = 129, hole_type = Word8Hole},Hole {byte_offset = 130, hole_type = Word32Hole},Value (Word32Value 3580725469),Hole {byte_offset = 138, hole_type = Word32Hole},Hole {byte_offset = 142, hole_type = Word16Hole},Hole {byte_offset = 144, hole_type = Word32Hole},Value (Word8Value 172),Value (Word8Value 156),Hole {byte_offset = 150, hole_type = Word8Hole},Hole {byte_offset = 151, hole_type = Word16Hole},Hole {byte_offset = 153, hole_type = Word8Hole},Value (Word32Value 3689160082),Value (Word8Value 149),Hole {byte_offset = 159, hole_type = Word16Hole},Value (Word32Value 2560319062),Value (Word8Value 5),Hole {byte_offset = 166, hole_type = Word32Hole},Hole {byte_offset = 170, hole_type = Word32Hole},Hole {byte_offset = 174, hole_type = Word8Hole},Value (Word32Value 3734998490),Hole {byte_offset = 179, hole_type = Word16Hole},Hole {byte_offset = 181, hole_type = Word16Hole},Hole {byte_offset = 183, hole_type = Word32Hole},Value (Word32Value 1808959143),Hole {byte_offset = 191, hole_type = Word32Hole},Value (Word8Value 81),Hole {byte_offset = 196, hole_type = Word32Hole},Hole {byte_offset = 200, hole_type = Word8Hole},Value (Word16Value 13694),Value (Word16Value 38593),Hole {byte_offset = 205, hole_type = Word32Hole}]}
