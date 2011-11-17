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
    v_0 :: Word32 <- des_word32_be
    319404216 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    14296 :: Word16 <- des_word16_be
    3469132559 :: Word32 <- des_word32_be
    124 :: Word8 <- des
    95 :: Word8 <- des
    3871444290 :: Word32 <- des_word32_be
    v_2 :: Word32 <- des_word32_be
    1507532687 :: Word32 <- des_word32_be
    v_3 :: Word32 <- des_word32_be
    46391 :: Word16 <- des_word16_be
    v_4 :: Word16 <- des_word16_be
    v_5 :: Word8 <- des
    v_6 :: Word16 <- des_word16_be
    231 :: Word8 <- des
    v_7 :: Word8 <- des
    2666757241 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    967538800 :: Word32 <- des_word32_be
    3677592664 :: Word32 <- des_word32_be
    2426853517 :: Word32 <- des_word32_be
    v_9 :: Word32 <- des_word32_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    159 :: Word8 <- des
    1486215469 :: Word32 <- des_word32_be
    173391402 :: Word32 <- des_word32_be
    v_13 :: Word16 <- des_word16_be
    26 :: Word8 <- des
    67 :: Word8 <- des
    231 :: Word8 <- des
    v_14 :: Word16 <- des_word16_be
    236 :: Word8 <- des
    v_15 :: Word8 <- des
    v_16 :: Word32 <- des_word32_be
    v_17 :: Word8 <- des
    v_18 :: Word16 <- des_word16_be
    3428392079 :: Word32 <- des_word32_be
    v_19 :: Word32 <- des_word32_be
    8955 :: Word16 <- des_word16_be
    v_20 :: Word32 <- des_word32_be
    v_21 :: Word16 <- des_word16_be
    3510 :: Word16 <- des_word16_be
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word8 <- des
    25 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word8 <- des
    v_26 :: Word32 <- des_word32_be
    785419452 :: Word32 <- des_word32_be
    v_27 :: Word16 <- des_word16_be
    v_28 :: Word16 <- des_word16_be
    9 :: Word8 <- des
    v_29 :: Word16 <- des_word16_be
    3402300261 :: Word32 <- des_word32_be
    1555040559 :: Word32 <- des_word32_be
    v_30 :: Word8 <- des
    v_31 :: Word8 <- des
    4158100583 :: Word32 <- des_word32_be
    53736 :: Word16 <- des_word16_be
    40834 :: Word16 <- des_word16_be
    2363321760 :: Word32 <- des_word32_be
    36402 :: Word16 <- des_word16_be
    v_32 :: Word32 <- des_word32_be
    11325 :: Word16 <- des_word16_be
    v_33 :: Word8 <- des
    v_34 :: Word16 <- des_word16_be
    448396143 :: Word32 <- des_word32_be
    v_35 :: Word32 <- des_word32_be
    v_36 :: Word32 <- des_word32_be
    v_37 :: Word8 <- des
    208 :: Word8 <- des
    v_38 :: Word8 <- des
    43 :: Word8 <- des
    v_39 :: Word16 <- des_word16_be
    132 :: Word8 <- des
    v_40 :: Word32 <- des_word32_be
    11 :: Word8 <- des
    428675172 :: Word32 <- des_word32_be
    v_41 :: Word16 <- des_word16_be
    v_42 :: Word8 <- des
    v_43 :: Word8 <- des
    v_44 :: Word16 <- des_word16_be
    33318 :: Word16 <- des_word16_be
    31262 :: Word16 <- des_word16_be
    25 :: Word8 <- des
    6422 :: Word16 <- des_word16_be
    v_45 :: Word32 <- des_word32_be
    357009856 :: Word32 <- des_word32_be
    v_46 :: Word16 <- des_word16_be
    54 :: Word8 <- des
    v_47 :: Word16 <- des_word16_be
    v_48 :: Word16 <- des_word16_be
    235148427 :: Word32 <- des_word32_be
    2961843004 :: Word32 <- des_word32_be
    v_49 :: Word16 <- des_word16_be
    v_50 :: Word16 <- des_word16_be
    v_51 :: Word16 <- des_word16_be
    39661 :: Word16 <- des_word16_be
    2066710727 :: Word32 <- des_word32_be
    157 :: Word8 <- des
    v_52 :: Word16 <- des_word16_be
    58206 :: Word16 <- des_word16_be
    170 :: Word8 <- des
    21680 :: Word16 <- des_word16_be
    v_53 :: Word16 <- des_word16_be
    v_54 :: Word32 <- des_word32_be
    57360 :: Word16 <- des_word16_be
    7658 :: Word16 <- des_word16_be
    v_55 :: Word16 <- des_word16_be
    20580 :: Word16 <- des_word16_be
    v_56 :: Word32 <- des_word32_be
    97 :: Word8 <- des
    60888 :: Word16 <- des_word16_be
    38267 :: Word16 <- des_word16_be
    static_return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word8Value v_37 , Word8Value v_38 , Word16Value v_39 , Word32Value v_40 , Word16Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word16Value v_50 , Word16Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word16Value v_55 , Word32Value v_56 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word8Value v_37 , Word8Value v_38 , Word16Value v_39 , Word32Value v_40 , Word16Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word16Value v_50 , Word16Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word16Value v_55 , Word32Value v_56 ] = vs 
    ser_word32_be v_0
    ser_word32_be 319404216
    ser v_1
    ser_word16_be 14296
    ser_word32_be 3469132559
    ser (124 :: Word8)
    ser (95 :: Word8)
    ser_word32_be 3871444290
    ser_word32_be v_2
    ser_word32_be 1507532687
    ser_word32_be v_3
    ser_word16_be 46391
    ser_word16_be v_4
    ser v_5
    ser_word16_be v_6
    ser (231 :: Word8)
    ser v_7
    ser_word32_be 2666757241
    ser_word16_be v_8
    ser_word32_be 967538800
    ser_word32_be 3677592664
    ser_word32_be 2426853517
    ser_word32_be v_9
    ser_word32_be v_10
    ser_word32_be v_11
    ser_word16_be v_12
    ser (159 :: Word8)
    ser_word32_be 1486215469
    ser_word32_be 173391402
    ser_word16_be v_13
    ser (26 :: Word8)
    ser (67 :: Word8)
    ser (231 :: Word8)
    ser_word16_be v_14
    ser (236 :: Word8)
    ser v_15
    ser_word32_be v_16
    ser v_17
    ser_word16_be v_18
    ser_word32_be 3428392079
    ser_word32_be v_19
    ser_word16_be 8955
    ser_word32_be v_20
    ser_word16_be v_21
    ser_word16_be 3510
    ser_word16_be v_22
    ser v_23
    ser (25 :: Word8)
    ser_word32_be v_24
    ser v_25
    ser_word32_be v_26
    ser_word32_be 785419452
    ser_word16_be v_27
    ser_word16_be v_28
    ser (9 :: Word8)
    ser_word16_be v_29
    ser_word32_be 3402300261
    ser_word32_be 1555040559
    ser v_30
    ser v_31
    ser_word32_be 4158100583
    ser_word16_be 53736
    ser_word16_be 40834
    ser_word32_be 2363321760
    ser_word16_be 36402
    ser_word32_be v_32
    ser_word16_be 11325
    ser v_33
    ser_word16_be v_34
    ser_word32_be 448396143
    ser_word32_be v_35
    ser_word32_be v_36
    ser v_37
    ser (208 :: Word8)
    ser v_38
    ser (43 :: Word8)
    ser_word16_be v_39
    ser (132 :: Word8)
    ser_word32_be v_40
    ser (11 :: Word8)
    ser_word32_be 428675172
    ser_word16_be v_41
    ser v_42
    ser v_43
    ser_word16_be v_44
    ser_word16_be 33318
    ser_word16_be 31262
    ser (25 :: Word8)
    ser_word16_be 6422
    ser_word32_be v_45
    ser_word32_be 357009856
    ser_word16_be v_46
    ser (54 :: Word8)
    ser_word16_be v_47
    ser_word16_be v_48
    ser_word32_be 235148427
    ser_word32_be 2961843004
    ser_word16_be v_49
    ser_word16_be v_50
    ser_word16_be v_51
    ser_word16_be 39661
    ser_word32_be 2066710727
    ser (157 :: Word8)
    ser_word16_be v_52
    ser_word16_be 58206
    ser (170 :: Word8)
    ser_word16_be 21680
    ser_word16_be v_53
    ser_word32_be v_54
    ser_word16_be 57360
    ser_word16_be 7658
    ser_word16_be v_55
    ser_word16_be 20580
    ser_word32_be v_56
    ser (97 :: Word8)
    ser_word16_be 60888
    ser_word16_be 38267
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word32Value 319404216),Hole {byte_offset = 8, hole_type = Word8Hole},Value (Word16Value 14296),Value (Word32Value 3469132559),Value (Word8Value 124),Value (Word8Value 95),Value (Word32Value 3871444290),Hole {byte_offset = 21, hole_type = Word32Hole},Value (Word32Value 1507532687),Hole {byte_offset = 29, hole_type = Word32Hole},Value (Word16Value 46391),Hole {byte_offset = 35, hole_type = Word16Hole},Hole {byte_offset = 37, hole_type = Word8Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Value (Word8Value 231),Hole {byte_offset = 41, hole_type = Word8Hole},Value (Word32Value 2666757241),Hole {byte_offset = 46, hole_type = Word16Hole},Value (Word32Value 967538800),Value (Word32Value 3677592664),Value (Word32Value 2426853517),Hole {byte_offset = 60, hole_type = Word32Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Hole {byte_offset = 68, hole_type = Word32Hole},Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word8Value 159),Value (Word32Value 1486215469),Value (Word32Value 173391402),Hole {byte_offset = 83, hole_type = Word16Hole},Value (Word8Value 26),Value (Word8Value 67),Value (Word8Value 231),Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 236),Hole {byte_offset = 91, hole_type = Word8Hole},Hole {byte_offset = 92, hole_type = Word32Hole},Hole {byte_offset = 96, hole_type = Word8Hole},Hole {byte_offset = 97, hole_type = Word16Hole},Value (Word32Value 3428392079),Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word16Value 8955),Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word16Hole},Value (Word16Value 3510),Hole {byte_offset = 117, hole_type = Word16Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Value (Word8Value 25),Hole {byte_offset = 121, hole_type = Word32Hole},Hole {byte_offset = 125, hole_type = Word8Hole},Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word32Value 785419452),Hole {byte_offset = 134, hole_type = Word16Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Value (Word8Value 9),Hole {byte_offset = 139, hole_type = Word16Hole},Value (Word32Value 3402300261),Value (Word32Value 1555040559),Hole {byte_offset = 149, hole_type = Word8Hole},Hole {byte_offset = 150, hole_type = Word8Hole},Value (Word32Value 4158100583),Value (Word16Value 53736),Value (Word16Value 40834),Value (Word32Value 2363321760),Value (Word16Value 36402),Hole {byte_offset = 165, hole_type = Word32Hole},Value (Word16Value 11325),Hole {byte_offset = 171, hole_type = Word8Hole},Hole {byte_offset = 172, hole_type = Word16Hole},Value (Word32Value 448396143),Hole {byte_offset = 178, hole_type = Word32Hole},Hole {byte_offset = 182, hole_type = Word32Hole},Hole {byte_offset = 186, hole_type = Word8Hole},Value (Word8Value 208),Hole {byte_offset = 188, hole_type = Word8Hole},Value (Word8Value 43),Hole {byte_offset = 190, hole_type = Word16Hole},Value (Word8Value 132),Hole {byte_offset = 193, hole_type = Word32Hole},Value (Word8Value 11),Value (Word32Value 428675172),Hole {byte_offset = 202, hole_type = Word16Hole},Hole {byte_offset = 204, hole_type = Word8Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Hole {byte_offset = 206, hole_type = Word16Hole},Value (Word16Value 33318),Value (Word16Value 31262),Value (Word8Value 25),Value (Word16Value 6422),Hole {byte_offset = 215, hole_type = Word32Hole},Value (Word32Value 357009856),Hole {byte_offset = 223, hole_type = Word16Hole},Value (Word8Value 54),Hole {byte_offset = 226, hole_type = Word16Hole},Hole {byte_offset = 228, hole_type = Word16Hole},Value (Word32Value 235148427),Value (Word32Value 2961843004),Hole {byte_offset = 238, hole_type = Word16Hole},Hole {byte_offset = 240, hole_type = Word16Hole},Hole {byte_offset = 242, hole_type = Word16Hole},Value (Word16Value 39661),Value (Word32Value 2066710727),Value (Word8Value 157),Hole {byte_offset = 251, hole_type = Word16Hole},Value (Word16Value 58206),Value (Word8Value 170),Value (Word16Value 21680),Hole {byte_offset = 258, hole_type = Word16Hole},Hole {byte_offset = 260, hole_type = Word32Hole},Value (Word16Value 57360),Value (Word16Value 7658),Hole {byte_offset = 268, hole_type = Word16Hole},Value (Word16Value 20580),Hole {byte_offset = 272, hole_type = Word32Hole},Value (Word8Value 97),Value (Word16Value 60888),Value (Word16Value 38267)]}
