{-# LANGUAGE RebindableSyntax #-}
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
    2558542691 :: Word32 <- des_word32_be
    v_0 :: Word16 <- des_word16_be
    v_1 :: Word8 <- des
    3259315371 :: Word32 <- des_word32_be
    30 :: Word8 <- des
    47557 :: Word16 <- des_word16_be
    32694 :: Word16 <- des_word16_be
    v_2 :: Word8 <- des
    v_3 :: Word16 <- des_word16_be
    9421 :: Word16 <- des_word16_be
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    v_6 :: Word8 <- des
    13643 :: Word16 <- des_word16_be
    3627188095 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    10194 :: Word16 <- des_word16_be
    198 :: Word8 <- des
    v_8 :: Word16 <- des_word16_be
    496346808 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    104 :: Word8 <- des
    955028121 :: Word32 <- des_word32_be
    3019309217 :: Word32 <- des_word32_be
    v_11 :: Word8 <- des
    v_12 :: Word8 <- des
    v_13 :: Word8 <- des
    193 :: Word8 <- des
    28 :: Word8 <- des
    v_14 :: Word32 <- des_word32_be
    25 :: Word8 <- des
    74434769 :: Word32 <- des_word32_be
    4041869858 :: Word32 <- des_word32_be
    63569 :: Word16 <- des_word16_be
    v_15 :: Word8 <- des
    v_16 :: Word16 <- des_word16_be
    v_17 :: Word8 <- des
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word8 <- des
    190 :: Word8 <- des
    2671 :: Word16 <- des_word16_be
    43 :: Word8 <- des
    v_20 :: Word8 <- des
    v_21 :: Word8 <- des
    v_22 :: Word8 <- des
    v_23 :: Word32 <- des_word32_be
    7 :: Word8 <- des
    v_24 :: Word16 <- des_word16_be
    v_25 :: Word32 <- des_word32_be
    v_26 :: Word8 <- des
    v_27 :: Word32 <- des_word32_be
    30 :: Word8 <- des
    v_28 :: Word8 <- des
    48 :: Word8 <- des
    v_29 :: Word16 <- des_word16_be
    8871 :: Word16 <- des_word16_be
    v_30 :: Word32 <- des_word32_be
    2155381268 :: Word32 <- des_word32_be
    45 :: Word8 <- des
    267 :: Word16 <- des_word16_be
    59780 :: Word16 <- des_word16_be
    2466916512 :: Word32 <- des_word32_be
    192 :: Word8 <- des
    v_31 :: Word8 <- des
    v_32 :: Word8 <- des
    v_33 :: Word32 <- des_word32_be
    v_34 :: Word16 <- des_word16_be
    v_35 :: Word32 <- des_word32_be
    851702763 :: Word32 <- des_word32_be
    704714615 :: Word32 <- des_word32_be
    v_36 :: Word8 <- des
    v_37 :: Word16 <- des_word16_be
    v_38 :: Word8 <- des
    48144 :: Word16 <- des_word16_be
    v_39 :: Word16 <- des_word16_be
    1394412590 :: Word32 <- des_word32_be
    431384179 :: Word32 <- des_word32_be
    3748888517 :: Word32 <- des_word32_be
    v_40 :: Word16 <- des_word16_be
    64572 :: Word16 <- des_word16_be
    v_41 :: Word16 <- des_word16_be
    28998 :: Word16 <- des_word16_be
    1988339770 :: Word32 <- des_word32_be
    v_42 :: Word16 <- des_word16_be
    155 :: Word8 <- des
    v_43 :: Word16 <- des_word16_be
    v_44 :: Word32 <- des_word32_be
    219 :: Word8 <- des
    2963938377 :: Word32 <- des_word32_be
    v_45 :: Word8 <- des
    2751312128 :: Word32 <- des_word32_be
    v_46 :: Word16 <- des_word16_be
    v_47 :: Word8 <- des
    61 :: Word8 <- des
    v_48 :: Word16 <- des_word16_be
    7576 :: Word16 <- des_word16_be
    v_49 :: Word32 <- des_word32_be
    v_50 :: Word8 <- des
    2226 :: Word16 <- des_word16_be
    128 :: Word8 <- des
    370197871 :: Word32 <- des_word32_be
    v_51 :: Word32 <- des_word32_be
    34797 :: Word16 <- des_word16_be
    63300 :: Word16 <- des_word16_be
    11749 :: Word16 <- des_word16_be
    v_52 :: Word16 <- des_word16_be
    16660 :: Word16 <- des_word16_be
    25125 :: Word16 <- des_word16_be
    v_53 :: Word16 <- des_word16_be
    17975 :: Word16 <- des_word16_be
    3676528469 :: Word32 <- des_word32_be
    2358582365 :: Word32 <- des_word32_be
    v_54 :: Word32 <- des_word32_be
    113 :: Word8 <- des
    63222 :: Word16 <- des_word16_be
    254 :: Word8 <- des
    v_55 :: Word32 <- des_word32_be
    v_56 :: Word32 <- des_word32_be
    18130 :: Word16 <- des_word16_be
    v_57 :: Word16 <- des_word16_be
    return  [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word32Value v_33 , Word16Value v_34 , Word32Value v_35 , Word8Value v_36 , Word16Value v_37 , Word8Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word16Value v_42 , Word16Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word32Value v_55 , Word32Value v_56 , Word16Value v_57 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word16Value v_3 , Word8Value v_4 , Word8Value v_5 , Word8Value v_6 , Word8Value v_7 , Word16Value v_8 , Word8Value v_9 , Word32Value v_10 , Word8Value v_11 , Word8Value v_12 , Word8Value v_13 , Word32Value v_14 , Word8Value v_15 , Word16Value v_16 , Word8Value v_17 , Word16Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word8Value v_22 , Word32Value v_23 , Word16Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word8Value v_31 , Word8Value v_32 , Word32Value v_33 , Word16Value v_34 , Word32Value v_35 , Word8Value v_36 , Word16Value v_37 , Word8Value v_38 , Word16Value v_39 , Word16Value v_40 , Word16Value v_41 , Word16Value v_42 , Word16Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word8Value v_47 , Word16Value v_48 , Word32Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word32Value v_55 , Word32Value v_56 , Word16Value v_57 ] = vs 
    ser_word32_be 2558542691
    ser_word16_be v_0
    ser v_1
    ser_word32_be 3259315371
    ser (30 :: Word8)
    ser_word16_be 47557
    ser_word16_be 32694
    ser v_2
    ser_word16_be v_3
    ser_word16_be 9421
    ser v_4
    ser v_5
    ser v_6
    ser_word16_be 13643
    ser_word32_be 3627188095
    ser v_7
    ser_word16_be 10194
    ser (198 :: Word8)
    ser_word16_be v_8
    ser_word32_be 496346808
    ser v_9
    ser_word32_be v_10
    ser (104 :: Word8)
    ser_word32_be 955028121
    ser_word32_be 3019309217
    ser v_11
    ser v_12
    ser v_13
    ser (193 :: Word8)
    ser (28 :: Word8)
    ser_word32_be v_14
    ser (25 :: Word8)
    ser_word32_be 74434769
    ser_word32_be 4041869858
    ser_word16_be 63569
    ser v_15
    ser_word16_be v_16
    ser v_17
    ser_word16_be v_18
    ser v_19
    ser (190 :: Word8)
    ser_word16_be 2671
    ser (43 :: Word8)
    ser v_20
    ser v_21
    ser v_22
    ser_word32_be v_23
    ser (7 :: Word8)
    ser_word16_be v_24
    ser_word32_be v_25
    ser v_26
    ser_word32_be v_27
    ser (30 :: Word8)
    ser v_28
    ser (48 :: Word8)
    ser_word16_be v_29
    ser_word16_be 8871
    ser_word32_be v_30
    ser_word32_be 2155381268
    ser (45 :: Word8)
    ser_word16_be 267
    ser_word16_be 59780
    ser_word32_be 2466916512
    ser (192 :: Word8)
    ser v_31
    ser v_32
    ser_word32_be v_33
    ser_word16_be v_34
    ser_word32_be v_35
    ser_word32_be 851702763
    ser_word32_be 704714615
    ser v_36
    ser_word16_be v_37
    ser v_38
    ser_word16_be 48144
    ser_word16_be v_39
    ser_word32_be 1394412590
    ser_word32_be 431384179
    ser_word32_be 3748888517
    ser_word16_be v_40
    ser_word16_be 64572
    ser_word16_be v_41
    ser_word16_be 28998
    ser_word32_be 1988339770
    ser_word16_be v_42
    ser (155 :: Word8)
    ser_word16_be v_43
    ser_word32_be v_44
    ser (219 :: Word8)
    ser_word32_be 2963938377
    ser v_45
    ser_word32_be 2751312128
    ser_word16_be v_46
    ser v_47
    ser (61 :: Word8)
    ser_word16_be v_48
    ser_word16_be 7576
    ser_word32_be v_49
    ser v_50
    ser_word16_be 2226
    ser (128 :: Word8)
    ser_word32_be 370197871
    ser_word32_be v_51
    ser_word16_be 34797
    ser_word16_be 63300
    ser_word16_be 11749
    ser_word16_be v_52
    ser_word16_be 16660
    ser_word16_be 25125
    ser_word16_be v_53
    ser_word16_be 17975
    ser_word32_be 3676528469
    ser_word32_be 2358582365
    ser_word32_be v_54
    ser (113 :: Word8)
    ser_word16_be 63222
    ser (254 :: Word8)
    ser_word32_be v_55
    ser_word32_be v_56
    ser_word16_be 18130
    ser_word16_be v_57
    return ()

static_structure = StaticStructure {properties = [Value (Word32Value 2558542691),Hole {byte_offset = 4, hole_type = Word16Hole},Hole {byte_offset = 6, hole_type = Word8Hole},Value (Word32Value 3259315371),Value (Word8Value 30),Value (Word16Value 47557),Value (Word16Value 32694),Hole {byte_offset = 16, hole_type = Word8Hole},Hole {byte_offset = 17, hole_type = Word16Hole},Value (Word16Value 9421),Hole {byte_offset = 21, hole_type = Word8Hole},Hole {byte_offset = 22, hole_type = Word8Hole},Hole {byte_offset = 23, hole_type = Word8Hole},Value (Word16Value 13643),Value (Word32Value 3627188095),Hole {byte_offset = 30, hole_type = Word8Hole},Value (Word16Value 10194),Value (Word8Value 198),Hole {byte_offset = 34, hole_type = Word16Hole},Value (Word32Value 496346808),Hole {byte_offset = 40, hole_type = Word8Hole},Hole {byte_offset = 41, hole_type = Word32Hole},Value (Word8Value 104),Value (Word32Value 955028121),Value (Word32Value 3019309217),Hole {byte_offset = 54, hole_type = Word8Hole},Hole {byte_offset = 55, hole_type = Word8Hole},Hole {byte_offset = 56, hole_type = Word8Hole},Value (Word8Value 193),Value (Word8Value 28),Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word8Value 25),Value (Word32Value 74434769),Value (Word32Value 4041869858),Value (Word16Value 63569),Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word16Hole},Hole {byte_offset = 77, hole_type = Word8Hole},Hole {byte_offset = 78, hole_type = Word16Hole},Hole {byte_offset = 80, hole_type = Word8Hole},Value (Word8Value 190),Value (Word16Value 2671),Value (Word8Value 43),Hole {byte_offset = 85, hole_type = Word8Hole},Hole {byte_offset = 86, hole_type = Word8Hole},Hole {byte_offset = 87, hole_type = Word8Hole},Hole {byte_offset = 88, hole_type = Word32Hole},Value (Word8Value 7),Hole {byte_offset = 93, hole_type = Word16Hole},Hole {byte_offset = 95, hole_type = Word32Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Hole {byte_offset = 100, hole_type = Word32Hole},Value (Word8Value 30),Hole {byte_offset = 105, hole_type = Word8Hole},Value (Word8Value 48),Hole {byte_offset = 107, hole_type = Word16Hole},Value (Word16Value 8871),Hole {byte_offset = 111, hole_type = Word32Hole},Value (Word32Value 2155381268),Value (Word8Value 45),Value (Word16Value 267),Value (Word16Value 59780),Value (Word32Value 2466916512),Value (Word8Value 192),Hole {byte_offset = 129, hole_type = Word8Hole},Hole {byte_offset = 130, hole_type = Word8Hole},Hole {byte_offset = 131, hole_type = Word32Hole},Hole {byte_offset = 135, hole_type = Word16Hole},Hole {byte_offset = 137, hole_type = Word32Hole},Value (Word32Value 851702763),Value (Word32Value 704714615),Hole {byte_offset = 149, hole_type = Word8Hole},Hole {byte_offset = 150, hole_type = Word16Hole},Hole {byte_offset = 152, hole_type = Word8Hole},Value (Word16Value 48144),Hole {byte_offset = 155, hole_type = Word16Hole},Value (Word32Value 1394412590),Value (Word32Value 431384179),Value (Word32Value 3748888517),Hole {byte_offset = 169, hole_type = Word16Hole},Value (Word16Value 64572),Hole {byte_offset = 173, hole_type = Word16Hole},Value (Word16Value 28998),Value (Word32Value 1988339770),Hole {byte_offset = 181, hole_type = Word16Hole},Value (Word8Value 155),Hole {byte_offset = 184, hole_type = Word16Hole},Hole {byte_offset = 186, hole_type = Word32Hole},Value (Word8Value 219),Value (Word32Value 2963938377),Hole {byte_offset = 195, hole_type = Word8Hole},Value (Word32Value 2751312128),Hole {byte_offset = 200, hole_type = Word16Hole},Hole {byte_offset = 202, hole_type = Word8Hole},Value (Word8Value 61),Hole {byte_offset = 204, hole_type = Word16Hole},Value (Word16Value 7576),Hole {byte_offset = 208, hole_type = Word32Hole},Hole {byte_offset = 212, hole_type = Word8Hole},Value (Word16Value 2226),Value (Word8Value 128),Value (Word32Value 370197871),Hole {byte_offset = 220, hole_type = Word32Hole},Value (Word16Value 34797),Value (Word16Value 63300),Value (Word16Value 11749),Hole {byte_offset = 230, hole_type = Word16Hole},Value (Word16Value 16660),Value (Word16Value 25125),Hole {byte_offset = 236, hole_type = Word16Hole},Value (Word16Value 17975),Value (Word32Value 3676528469),Value (Word32Value 2358582365),Hole {byte_offset = 248, hole_type = Word32Hole},Value (Word8Value 113),Value (Word16Value 63222),Value (Word8Value 254),Hole {byte_offset = 256, hole_type = Word32Hole},Hole {byte_offset = 260, hole_type = Word32Hole},Value (Word16Value 18130),Hole {byte_offset = 266, hole_type = Word16Hole}]}
