{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase11 where
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
    232 :: Word8 <- des
    1276478095 :: Word32 <- des_word32_be
    v_0 :: Word16 <- des_word16_be
    v_1 :: Word32 <- des_word32_be
    v_2 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    15493 :: Word16 <- des_word16_be
    v_4 :: Word16 <- des_word16_be
    3367363317 :: Word32 <- des_word32_be
    82 :: Word8 <- des
    v_5 :: Word32 <- des_word32_be
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    3631 :: Word16 <- des_word16_be
    v_8 :: Word8 <- des
    1600947406 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    v_10 :: Word8 <- des
    3463797063 :: Word32 <- des_word32_be
    1613523012 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word8 <- des
    58532 :: Word16 <- des_word16_be
    v_13 :: Word8 <- des
    v_14 :: Word16 <- des_word16_be
    v_15 :: Word16 <- des_word16_be
    v_16 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    89 :: Word8 <- des
    v_18 :: Word16 <- des_word16_be
    251 :: Word8 <- des
    32097 :: Word16 <- des_word16_be
    4286313474 :: Word32 <- des_word32_be
    v_19 :: Word8 <- des
    15632 :: Word16 <- des_word16_be
    v_20 :: Word16 <- des_word16_be
    2553398544 :: Word32 <- des_word32_be
    v_21 :: Word32 <- des_word32_be
    9181 :: Word16 <- des_word16_be
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word8 <- des
    51685 :: Word16 <- des_word16_be
    45976 :: Word16 <- des_word16_be
    v_24 :: Word8 <- des
    v_25 :: Word8 <- des
    v_26 :: Word16 <- des_word16_be
    73774625 :: Word32 <- des_word32_be
    v_27 :: Word16 <- des_word16_be
    2784932716 :: Word32 <- des_word32_be
    208 :: Word8 <- des
    v_28 :: Word16 <- des_word16_be
    235 :: Word8 <- des
    v_29 :: Word32 <- des_word32_be
    v_30 :: Word32 <- des_word32_be
    932174640 :: Word32 <- des_word32_be
    v_31 :: Word8 <- des
    v_32 :: Word32 <- des_word32_be
    v_33 :: Word16 <- des_word16_be
    95 :: Word8 <- des
    249 :: Word8 <- des
    v_34 :: Word32 <- des_word32_be
    1079740777 :: Word32 <- des_word32_be
    10060 :: Word16 <- des_word16_be
    4173372985 :: Word32 <- des_word32_be
    61412 :: Word16 <- des_word16_be
    v_35 :: Word8 <- des
    1673846352 :: Word32 <- des_word32_be
    54 :: Word8 <- des
    538041842 :: Word32 <- des_word32_be
    105 :: Word8 <- des
    v_36 :: Word32 <- des_word32_be
    99 :: Word8 <- des
    v_37 :: Word8 <- des
    224 :: Word8 <- des
    41 :: Word8 <- des
    v_38 :: Word16 <- des_word16_be
    v_39 :: Word8 <- des
    14546 :: Word16 <- des_word16_be
    2299184039 :: Word32 <- des_word32_be
    2822689298 :: Word32 <- des_word32_be
    50060 :: Word16 <- des_word16_be
    v_40 :: Word8 <- des
    4230764679 :: Word32 <- des_word32_be
    v_41 :: Word16 <- des_word16_be
    34579 :: Word16 <- des_word16_be
    142 :: Word8 <- des
    v_42 :: Word32 <- des_word32_be
    13 :: Word8 <- des
    v_43 :: Word32 <- des_word32_be
    v_44 :: Word32 <- des_word32_be
    3146 :: Word16 <- des_word16_be
    164 :: Word8 <- des
    v_45 :: Word8 <- des
    v_46 :: Word16 <- des_word16_be
    1744530371 :: Word32 <- des_word32_be
    157 :: Word8 <- des
    v_47 :: Word16 <- des_word16_be
    3794034288 :: Word32 <- des_word32_be
    v_48 :: Word16 <- des_word16_be
    v_49 :: Word16 <- des_word16_be
    v_50 :: Word32 <- des_word32_be
    v_51 :: Word8 <- des
    3050585778 :: Word32 <- des_word32_be
    v_52 :: Word8 <- des
    v_53 :: Word16 <- des_word16_be
    v_54 :: Word16 <- des_word16_be
    2710367427 :: Word32 <- des_word32_be
    v_55 :: Word16 <- des_word16_be
    v_56 :: Word16 <- des_word16_be
    v_57 :: Word8 <- des
    v_58 :: Word8 <- des
    v_59 :: Word16 <- des_word16_be
    53 :: Word8 <- des
    47393 :: Word16 <- des_word16_be
    v_60 :: Word16 <- des_word16_be
    return  [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word32Value v_32 , Word16Value v_33 , Word32Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word16Value v_38 , Word8Value v_39 , Word8Value v_40 , Word16Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word32Value v_50 , Word8Value v_51 , Word8Value v_52 , Word16Value v_53 , Word16Value v_54 , Word16Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word32Value v_32 , Word16Value v_33 , Word32Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word16Value v_38 , Word8Value v_39 , Word8Value v_40 , Word16Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word32Value v_50 , Word8Value v_51 , Word8Value v_52 , Word16Value v_53 , Word16Value v_54 , Word16Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ] = vs 
    ser (232 :: Word8)
    ser_word32_be 1276478095
    ser_word16_be v_0
    ser_word32_be v_1
    ser_word32_be v_2
    ser_word32_be v_3
    ser_word16_be 15493
    ser_word16_be v_4
    ser_word32_be 3367363317
    ser (82 :: Word8)
    ser_word32_be v_5
    ser_word32_be v_6
    ser_word32_be v_7
    ser_word16_be 3631
    ser v_8
    ser_word32_be 1600947406
    ser v_9
    ser v_10
    ser_word32_be 3463797063
    ser_word32_be 1613523012
    ser_word32_be v_11
    ser v_12
    ser_word16_be 58532
    ser v_13
    ser_word16_be v_14
    ser_word16_be v_15
    ser v_16
    ser_word32_be v_17
    ser (89 :: Word8)
    ser_word16_be v_18
    ser (251 :: Word8)
    ser_word16_be 32097
    ser_word32_be 4286313474
    ser v_19
    ser_word16_be 15632
    ser_word16_be v_20
    ser_word32_be 2553398544
    ser_word32_be v_21
    ser_word16_be 9181
    ser_word32_be v_22
    ser v_23
    ser_word16_be 51685
    ser_word16_be 45976
    ser v_24
    ser v_25
    ser_word16_be v_26
    ser_word32_be 73774625
    ser_word16_be v_27
    ser_word32_be 2784932716
    ser (208 :: Word8)
    ser_word16_be v_28
    ser (235 :: Word8)
    ser_word32_be v_29
    ser_word32_be v_30
    ser_word32_be 932174640
    ser v_31
    ser_word32_be v_32
    ser_word16_be v_33
    ser (95 :: Word8)
    ser (249 :: Word8)
    ser_word32_be v_34
    ser_word32_be 1079740777
    ser_word16_be 10060
    ser_word32_be 4173372985
    ser_word16_be 61412
    ser v_35
    ser_word32_be 1673846352
    ser (54 :: Word8)
    ser_word32_be 538041842
    ser (105 :: Word8)
    ser_word32_be v_36
    ser (99 :: Word8)
    ser v_37
    ser (224 :: Word8)
    ser (41 :: Word8)
    ser_word16_be v_38
    ser v_39
    ser_word16_be 14546
    ser_word32_be 2299184039
    ser_word32_be 2822689298
    ser_word16_be 50060
    ser v_40
    ser_word32_be 4230764679
    ser_word16_be v_41
    ser_word16_be 34579
    ser (142 :: Word8)
    ser_word32_be v_42
    ser (13 :: Word8)
    ser_word32_be v_43
    ser_word32_be v_44
    ser_word16_be 3146
    ser (164 :: Word8)
    ser v_45
    ser_word16_be v_46
    ser_word32_be 1744530371
    ser (157 :: Word8)
    ser_word16_be v_47
    ser_word32_be 3794034288
    ser_word16_be v_48
    ser_word16_be v_49
    ser_word32_be v_50
    ser v_51
    ser_word32_be 3050585778
    ser v_52
    ser_word16_be v_53
    ser_word16_be v_54
    ser_word32_be 2710367427
    ser_word16_be v_55
    ser_word16_be v_56
    ser v_57
    ser v_58
    ser_word16_be v_59
    ser (53 :: Word8)
    ser_word16_be 47393
    ser_word16_be v_60
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 232),Value (Word32Value 1276478095),Hole {byte_offset = 5, hole_type = Word16Hole},Hole {byte_offset = 7, hole_type = Word32Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Value (Word16Value 15493),Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word32Value 3367363317),Value (Word8Value 82),Hole {byte_offset = 28, hole_type = Word32Hole},Hole {byte_offset = 32, hole_type = Word32Hole},Hole {byte_offset = 36, hole_type = Word32Hole},Value (Word16Value 3631),Hole {byte_offset = 42, hole_type = Word8Hole},Value (Word32Value 1600947406),Hole {byte_offset = 47, hole_type = Word8Hole},Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 3463797063),Value (Word32Value 1613523012),Hole {byte_offset = 57, hole_type = Word32Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Value (Word16Value 58532),Hole {byte_offset = 64, hole_type = Word8Hole},Hole {byte_offset = 65, hole_type = Word16Hole},Hole {byte_offset = 67, hole_type = Word16Hole},Hole {byte_offset = 69, hole_type = Word8Hole},Hole {byte_offset = 70, hole_type = Word32Hole},Value (Word8Value 89),Hole {byte_offset = 75, hole_type = Word16Hole},Value (Word8Value 251),Value (Word16Value 32097),Value (Word32Value 4286313474),Hole {byte_offset = 84, hole_type = Word8Hole},Value (Word16Value 15632),Hole {byte_offset = 87, hole_type = Word16Hole},Value (Word32Value 2553398544),Hole {byte_offset = 93, hole_type = Word32Hole},Value (Word16Value 9181),Hole {byte_offset = 99, hole_type = Word32Hole},Hole {byte_offset = 103, hole_type = Word8Hole},Value (Word16Value 51685),Value (Word16Value 45976),Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word8Hole},Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word32Value 73774625),Hole {byte_offset = 116, hole_type = Word16Hole},Value (Word32Value 2784932716),Value (Word8Value 208),Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word8Value 235),Hole {byte_offset = 126, hole_type = Word32Hole},Hole {byte_offset = 130, hole_type = Word32Hole},Value (Word32Value 932174640),Hole {byte_offset = 138, hole_type = Word8Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Hole {byte_offset = 143, hole_type = Word16Hole},Value (Word8Value 95),Value (Word8Value 249),Hole {byte_offset = 147, hole_type = Word32Hole},Value (Word32Value 1079740777),Value (Word16Value 10060),Value (Word32Value 4173372985),Value (Word16Value 61412),Hole {byte_offset = 163, hole_type = Word8Hole},Value (Word32Value 1673846352),Value (Word8Value 54),Value (Word32Value 538041842),Value (Word8Value 105),Hole {byte_offset = 174, hole_type = Word32Hole},Value (Word8Value 99),Hole {byte_offset = 179, hole_type = Word8Hole},Value (Word8Value 224),Value (Word8Value 41),Hole {byte_offset = 182, hole_type = Word16Hole},Hole {byte_offset = 184, hole_type = Word8Hole},Value (Word16Value 14546),Value (Word32Value 2299184039),Value (Word32Value 2822689298),Value (Word16Value 50060),Hole {byte_offset = 197, hole_type = Word8Hole},Value (Word32Value 4230764679),Hole {byte_offset = 202, hole_type = Word16Hole},Value (Word16Value 34579),Value (Word8Value 142),Hole {byte_offset = 207, hole_type = Word32Hole},Value (Word8Value 13),Hole {byte_offset = 212, hole_type = Word32Hole},Hole {byte_offset = 216, hole_type = Word32Hole},Value (Word16Value 3146),Value (Word8Value 164),Hole {byte_offset = 223, hole_type = Word8Hole},Hole {byte_offset = 224, hole_type = Word16Hole},Value (Word32Value 1744530371),Value (Word8Value 157),Hole {byte_offset = 231, hole_type = Word16Hole},Value (Word32Value 3794034288),Hole {byte_offset = 237, hole_type = Word16Hole},Hole {byte_offset = 239, hole_type = Word16Hole},Hole {byte_offset = 241, hole_type = Word32Hole},Hole {byte_offset = 245, hole_type = Word8Hole},Value (Word32Value 3050585778),Hole {byte_offset = 250, hole_type = Word8Hole},Hole {byte_offset = 251, hole_type = Word16Hole},Hole {byte_offset = 253, hole_type = Word16Hole},Value (Word32Value 2710367427),Hole {byte_offset = 259, hole_type = Word16Hole},Hole {byte_offset = 261, hole_type = Word16Hole},Hole {byte_offset = 263, hole_type = Word8Hole},Hole {byte_offset = 264, hole_type = Word8Hole},Hole {byte_offset = 265, hole_type = Word16Hole},Value (Word8Value 53),Value (Word16Value 47393),Hole {byte_offset = 270, hole_type = Word16Hole}]}
