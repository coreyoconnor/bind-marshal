module TestCases.FullStaticCase16 where
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
    4642 :: Word16 <- des_word16_be
    3334965889 :: Word32 <- des_word32_be
    v_1 :: Word32 <- des_word32_be
    v_2 :: Word32 <- des_word32_be
    57613 :: Word16 <- des_word16_be
    107 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    2272434411 :: Word32 <- des_word32_be
    1759657514 :: Word32 <- des_word32_be
    16010 :: Word16 <- des_word16_be
    18012 :: Word16 <- des_word16_be
    38324 :: Word16 <- des_word16_be
    3990412939 :: Word32 <- des_word32_be
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    v_8 :: Word8 <- des
    39781 :: Word16 <- des_word16_be
    v_9 :: Word16 <- des_word16_be
    v_10 :: Word8 <- des
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    62320 :: Word16 <- des_word16_be
    3977268648 :: Word32 <- des_word32_be
    v_13 :: Word16 <- des_word16_be
    109 :: Word8 <- des
    1154537977 :: Word32 <- des_word32_be
    v_14 :: Word8 <- des
    v_15 :: Word16 <- des_word16_be
    25097 :: Word16 <- des_word16_be
    1391953365 :: Word32 <- des_word32_be
    v_16 :: Word16 <- des_word16_be
    v_17 :: Word16 <- des_word16_be
    1487363713 :: Word32 <- des_word32_be
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word8 <- des
    v_20 :: Word8 <- des
    v_21 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    60012 :: Word16 <- des_word16_be
    57103 :: Word16 <- des_word16_be
    v_23 :: Word16 <- des_word16_be
    161 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word16 <- des_word16_be
    v_26 :: Word32 <- des_word32_be
    3286790290 :: Word32 <- des_word32_be
    v_27 :: Word16 <- des_word16_be
    81 :: Word8 <- des
    2277954639 :: Word32 <- des_word32_be
    v_28 :: Word8 <- des
    v_29 :: Word16 <- des_word16_be
    17177 :: Word16 <- des_word16_be
    v_30 :: Word32 <- des_word32_be
    3627077337 :: Word32 <- des_word32_be
    3245802261 :: Word32 <- des_word32_be
    v_31 :: Word16 <- des_word16_be
    42635 :: Word16 <- des_word16_be
    v_32 :: Word8 <- des
    681841591 :: Word32 <- des_word32_be
    v_33 :: Word8 <- des
    v_34 :: Word32 <- des_word32_be
    370655394 :: Word32 <- des_word32_be
    v_35 :: Word32 <- des_word32_be
    53936681 :: Word32 <- des_word32_be
    163 :: Word8 <- des
    v_36 :: Word32 <- des_word32_be
    56823 :: Word16 <- des_word16_be
    v_37 :: Word16 <- des_word16_be
    v_38 :: Word32 <- des_word32_be
    v_39 :: Word16 <- des_word16_be
    3459268370 :: Word32 <- des_word32_be
    3365020098 :: Word32 <- des_word32_be
    2319470860 :: Word32 <- des_word32_be
    v_40 :: Word8 <- des
    v_41 :: Word8 <- des
    v_42 :: Word16 <- des_word16_be
    1605481706 :: Word32 <- des_word32_be
    v_43 :: Word16 <- des_word16_be
    v_44 :: Word16 <- des_word16_be
    100 :: Word8 <- des
    4237809224 :: Word32 <- des_word32_be
    45094 :: Word16 <- des_word16_be
    v_45 :: Word32 <- des_word32_be
    v_46 :: Word8 <- des
    3407485585 :: Word32 <- des_word32_be
    172 :: Word8 <- des
    v_47 :: Word16 <- des_word16_be
    v_48 :: Word32 <- des_word32_be
    v_49 :: Word8 <- des
    844205216 :: Word32 <- des_word32_be
    154 :: Word8 <- des
    117 :: Word8 <- des
    43011 :: Word16 <- des_word16_be
    158406915 :: Word32 <- des_word32_be
    v_50 :: Word8 <- des
    124 :: Word8 <- des
    372896692 :: Word32 <- des_word32_be
    106 :: Word8 <- des
    v_51 :: Word32 <- des_word32_be
    234 :: Word8 <- des
    v_52 :: Word16 <- des_word16_be
    796628429 :: Word32 <- des_word32_be
    v_53 :: Word16 <- des_word16_be
    static_return  [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word16Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word16Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 ] = vs 
    ser v_0
    ser_word16_be 4642
    ser_word32_be 3334965889
    ser_word32_be v_1
    ser_word32_be v_2
    ser_word16_be 57613
    ser (107 :: Word8)
    ser_word32_be v_3
    ser_word32_be 2272434411
    ser_word32_be 1759657514
    ser_word16_be 16010
    ser_word16_be 18012
    ser_word16_be 38324
    ser_word32_be 3990412939
    ser_word32_be v_4
    ser v_5
    ser_word32_be v_6
    ser_word32_be v_7
    ser v_8
    ser_word16_be 39781
    ser_word16_be v_9
    ser v_10
    ser_word32_be v_11
    ser_word16_be v_12
    ser_word16_be 62320
    ser_word32_be 3977268648
    ser_word16_be v_13
    ser (109 :: Word8)
    ser_word32_be 1154537977
    ser v_14
    ser_word16_be v_15
    ser_word16_be 25097
    ser_word32_be 1391953365
    ser_word16_be v_16
    ser_word16_be v_17
    ser_word32_be 1487363713
    ser_word32_be v_18
    ser v_19
    ser v_20
    ser v_21
    ser_word32_be v_22
    ser_word16_be 60012
    ser_word16_be 57103
    ser_word16_be v_23
    ser (161 :: Word8)
    ser_word32_be v_24
    ser_word16_be v_25
    ser_word32_be v_26
    ser_word32_be 3286790290
    ser_word16_be v_27
    ser (81 :: Word8)
    ser_word32_be 2277954639
    ser v_28
    ser_word16_be v_29
    ser_word16_be 17177
    ser_word32_be v_30
    ser_word32_be 3627077337
    ser_word32_be 3245802261
    ser_word16_be v_31
    ser_word16_be 42635
    ser v_32
    ser_word32_be 681841591
    ser v_33
    ser_word32_be v_34
    ser_word32_be 370655394
    ser_word32_be v_35
    ser_word32_be 53936681
    ser (163 :: Word8)
    ser_word32_be v_36
    ser_word16_be 56823
    ser_word16_be v_37
    ser_word32_be v_38
    ser_word16_be v_39
    ser_word32_be 3459268370
    ser_word32_be 3365020098
    ser_word32_be 2319470860
    ser v_40
    ser v_41
    ser_word16_be v_42
    ser_word32_be 1605481706
    ser_word16_be v_43
    ser_word16_be v_44
    ser (100 :: Word8)
    ser_word32_be 4237809224
    ser_word16_be 45094
    ser_word32_be v_45
    ser v_46
    ser_word32_be 3407485585
    ser (172 :: Word8)
    ser_word16_be v_47
    ser_word32_be v_48
    ser v_49
    ser_word32_be 844205216
    ser (154 :: Word8)
    ser (117 :: Word8)
    ser_word16_be 43011
    ser_word32_be 158406915
    ser v_50
    ser (124 :: Word8)
    ser_word32_be 372896692
    ser (106 :: Word8)
    ser_word32_be v_51
    ser (234 :: Word8)
    ser_word16_be v_52
    ser_word32_be 796628429
    ser_word16_be v_53
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Value (Word16Value 4642),Value (Word32Value 3334965889),Hole {byte_offset = 7, hole_type = Word32Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Value (Word16Value 57613),Value (Word8Value 107),Hole {byte_offset = 18, hole_type = Word32Hole},Value (Word32Value 2272434411),Value (Word32Value 1759657514),Value (Word16Value 16010),Value (Word16Value 18012),Value (Word16Value 38324),Value (Word32Value 3990412939),Hole {byte_offset = 40, hole_type = Word32Hole},Hole {byte_offset = 44, hole_type = Word8Hole},Hole {byte_offset = 45, hole_type = Word32Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Hole {byte_offset = 53, hole_type = Word8Hole},Value (Word16Value 39781),Hole {byte_offset = 56, hole_type = Word16Hole},Hole {byte_offset = 58, hole_type = Word8Hole},Hole {byte_offset = 59, hole_type = Word32Hole},Hole {byte_offset = 63, hole_type = Word16Hole},Value (Word16Value 62320),Value (Word32Value 3977268648),Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word8Value 109),Value (Word32Value 1154537977),Hole {byte_offset = 78, hole_type = Word8Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Value (Word16Value 25097),Value (Word32Value 1391953365),Hole {byte_offset = 87, hole_type = Word16Hole},Hole {byte_offset = 89, hole_type = Word16Hole},Value (Word32Value 1487363713),Hole {byte_offset = 95, hole_type = Word32Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Hole {byte_offset = 100, hole_type = Word8Hole},Hole {byte_offset = 101, hole_type = Word8Hole},Hole {byte_offset = 102, hole_type = Word32Hole},Value (Word16Value 60012),Value (Word16Value 57103),Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word8Value 161),Hole {byte_offset = 113, hole_type = Word32Hole},Hole {byte_offset = 117, hole_type = Word16Hole},Hole {byte_offset = 119, hole_type = Word32Hole},Value (Word32Value 3286790290),Hole {byte_offset = 127, hole_type = Word16Hole},Value (Word8Value 81),Value (Word32Value 2277954639),Hole {byte_offset = 134, hole_type = Word8Hole},Hole {byte_offset = 135, hole_type = Word16Hole},Value (Word16Value 17177),Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word32Value 3627077337),Value (Word32Value 3245802261),Hole {byte_offset = 151, hole_type = Word16Hole},Value (Word16Value 42635),Hole {byte_offset = 155, hole_type = Word8Hole},Value (Word32Value 681841591),Hole {byte_offset = 160, hole_type = Word8Hole},Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word32Value 370655394),Hole {byte_offset = 169, hole_type = Word32Hole},Value (Word32Value 53936681),Value (Word8Value 163),Hole {byte_offset = 178, hole_type = Word32Hole},Value (Word16Value 56823),Hole {byte_offset = 184, hole_type = Word16Hole},Hole {byte_offset = 186, hole_type = Word32Hole},Hole {byte_offset = 190, hole_type = Word16Hole},Value (Word32Value 3459268370),Value (Word32Value 3365020098),Value (Word32Value 2319470860),Hole {byte_offset = 204, hole_type = Word8Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Hole {byte_offset = 206, hole_type = Word16Hole},Value (Word32Value 1605481706),Hole {byte_offset = 212, hole_type = Word16Hole},Hole {byte_offset = 214, hole_type = Word16Hole},Value (Word8Value 100),Value (Word32Value 4237809224),Value (Word16Value 45094),Hole {byte_offset = 223, hole_type = Word32Hole},Hole {byte_offset = 227, hole_type = Word8Hole},Value (Word32Value 3407485585),Value (Word8Value 172),Hole {byte_offset = 233, hole_type = Word16Hole},Hole {byte_offset = 235, hole_type = Word32Hole},Hole {byte_offset = 239, hole_type = Word8Hole},Value (Word32Value 844205216),Value (Word8Value 154),Value (Word8Value 117),Value (Word16Value 43011),Value (Word32Value 158406915),Hole {byte_offset = 252, hole_type = Word8Hole},Value (Word8Value 124),Value (Word32Value 372896692),Value (Word8Value 106),Hole {byte_offset = 259, hole_type = Word32Hole},Value (Word8Value 234),Hole {byte_offset = 264, hole_type = Word16Hole},Value (Word32Value 796628429),Hole {byte_offset = 270, hole_type = Word16Hole}]}
