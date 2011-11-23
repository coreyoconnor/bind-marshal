{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase6 where
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
    v_1 :: Word8 <- des
    2588737377 :: Word32 <- des_word32_be
    v_2 :: Word8 <- des
    v_3 :: Word8 <- des
    59048 :: Word16 <- des_word16_be
    v_4 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    675920477 :: Word32 <- des_word32_be
    34868 :: Word16 <- des_word16_be
    1228508434 :: Word32 <- des_word32_be
    1169012367 :: Word32 <- des_word32_be
    10604 :: Word16 <- des_word16_be
    947850624 :: Word32 <- des_word32_be
    2034582834 :: Word32 <- des_word32_be
    2694763103 :: Word32 <- des_word32_be
    v_6 :: Word32 <- des_word32_be
    34045 :: Word16 <- des_word16_be
    15385 :: Word16 <- des_word16_be
    v_7 :: Word16 <- des_word16_be
    v_8 :: Word16 <- des_word16_be
    2917245084 :: Word32 <- des_word32_be
    v_9 :: Word32 <- des_word32_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    63 :: Word8 <- des
    45496 :: Word16 <- des_word16_be
    212 :: Word8 <- des
    v_12 :: Word8 <- des
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word16 <- des_word16_be
    v_15 :: Word32 <- des_word32_be
    6141 :: Word16 <- des_word16_be
    180 :: Word8 <- des
    v_16 :: Word16 <- des_word16_be
    42 :: Word8 <- des
    v_17 :: Word32 <- des_word32_be
    15 :: Word8 <- des
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word8 <- des
    v_20 :: Word32 <- des_word32_be
    v_21 :: Word32 <- des_word32_be
    64941 :: Word16 <- des_word16_be
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word32 <- des_word32_be
    3709 :: Word16 <- des_word16_be
    v_24 :: Word16 <- des_word16_be
    v_25 :: Word8 <- des
    v_26 :: Word16 <- des_word16_be
    89 :: Word8 <- des
    36 :: Word8 <- des
    v_27 :: Word16 <- des_word16_be
    v_28 :: Word8 <- des
    v_29 :: Word32 <- des_word32_be
    v_30 :: Word32 <- des_word32_be
    23 :: Word8 <- des
    v_31 :: Word8 <- des
    v_32 :: Word16 <- des_word16_be
    3492544134 :: Word32 <- des_word32_be
    191 :: Word8 <- des
    v_33 :: Word32 <- des_word32_be
    11081 :: Word16 <- des_word16_be
    142 :: Word8 <- des
    v_34 :: Word8 <- des
    29429 :: Word16 <- des_word16_be
    v_35 :: Word8 <- des
    v_36 :: Word16 <- des_word16_be
    v_37 :: Word8 <- des
    189 :: Word8 <- des
    v_38 :: Word8 <- des
    2322 :: Word16 <- des_word16_be
    1118897807 :: Word32 <- des_word32_be
    v_39 :: Word32 <- des_word32_be
    v_40 :: Word16 <- des_word16_be
    v_41 :: Word32 <- des_word32_be
    157 :: Word8 <- des
    v_42 :: Word32 <- des_word32_be
    146860030 :: Word32 <- des_word32_be
    v_43 :: Word32 <- des_word32_be
    v_44 :: Word32 <- des_word32_be
    v_45 :: Word16 <- des_word16_be
    1116540064 :: Word32 <- des_word32_be
    v_46 :: Word32 <- des_word32_be
    v_47 :: Word8 <- des
    48485 :: Word16 <- des_word16_be
    v_48 :: Word32 <- des_word32_be
    v_49 :: Word8 <- des
    2880663179 :: Word32 <- des_word32_be
    v_50 :: Word8 <- des
    v_51 :: Word8 <- des
    17 :: Word8 <- des
    v_52 :: Word16 <- des_word16_be
    v_53 :: Word32 <- des_word32_be
    62153 :: Word16 <- des_word16_be
    108 :: Word8 <- des
    9 :: Word8 <- des
    2372292676 :: Word32 <- des_word32_be
    1793276335 :: Word32 <- des_word32_be
    659409606 :: Word32 <- des_word32_be
    219 :: Word8 <- des
    v_54 :: Word32 <- des_word32_be
    v_55 :: Word16 <- des_word16_be
    v_56 :: Word16 <- des_word16_be
    v_57 :: Word16 <- des_word16_be
    201 :: Word8 <- des
    23189 :: Word16 <- des_word16_be
    1576121518 :: Word32 <- des_word32_be
    v_58 :: Word8 <- des
    3311786275 :: Word32 <- des_word32_be
    v_59 :: Word16 <- des_word16_be
    158057033 :: Word32 <- des_word32_be
    1052730338 :: Word32 <- des_word32_be
    3606803625 :: Word32 <- des_word32_be
    v_60 :: Word16 <- des_word16_be
    return  [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word16Value v_45 , Word32Value v_46 , Word8Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word8Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word16Value v_55 , Word16Value v_56 , Word16Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word16Value v_45 , Word32Value v_46 , Word8Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word8Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word16Value v_55 , Word16Value v_56 , Word16Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ] = vs 
    ser_word16_be v_0
    ser v_1
    ser_word32_be 2588737377
    ser v_2
    ser v_3
    ser_word16_be 59048
    ser v_4
    ser_word16_be v_5
    ser_word32_be 675920477
    ser_word16_be 34868
    ser_word32_be 1228508434
    ser_word32_be 1169012367
    ser_word16_be 10604
    ser_word32_be 947850624
    ser_word32_be 2034582834
    ser_word32_be 2694763103
    ser_word32_be v_6
    ser_word16_be 34045
    ser_word16_be 15385
    ser_word16_be v_7
    ser_word16_be v_8
    ser_word32_be 2917245084
    ser_word32_be v_9
    ser_word32_be v_10
    ser_word32_be v_11
    ser (63 :: Word8)
    ser_word16_be 45496
    ser (212 :: Word8)
    ser v_12
    ser_word32_be v_13
    ser_word16_be v_14
    ser_word32_be v_15
    ser_word16_be 6141
    ser (180 :: Word8)
    ser_word16_be v_16
    ser (42 :: Word8)
    ser_word32_be v_17
    ser (15 :: Word8)
    ser_word32_be v_18
    ser v_19
    ser_word32_be v_20
    ser_word32_be v_21
    ser_word16_be 64941
    ser_word16_be v_22
    ser_word32_be v_23
    ser_word16_be 3709
    ser_word16_be v_24
    ser v_25
    ser_word16_be v_26
    ser (89 :: Word8)
    ser (36 :: Word8)
    ser_word16_be v_27
    ser v_28
    ser_word32_be v_29
    ser_word32_be v_30
    ser (23 :: Word8)
    ser v_31
    ser_word16_be v_32
    ser_word32_be 3492544134
    ser (191 :: Word8)
    ser_word32_be v_33
    ser_word16_be 11081
    ser (142 :: Word8)
    ser v_34
    ser_word16_be 29429
    ser v_35
    ser_word16_be v_36
    ser v_37
    ser (189 :: Word8)
    ser v_38
    ser_word16_be 2322
    ser_word32_be 1118897807
    ser_word32_be v_39
    ser_word16_be v_40
    ser_word32_be v_41
    ser (157 :: Word8)
    ser_word32_be v_42
    ser_word32_be 146860030
    ser_word32_be v_43
    ser_word32_be v_44
    ser_word16_be v_45
    ser_word32_be 1116540064
    ser_word32_be v_46
    ser v_47
    ser_word16_be 48485
    ser_word32_be v_48
    ser v_49
    ser_word32_be 2880663179
    ser v_50
    ser v_51
    ser (17 :: Word8)
    ser_word16_be v_52
    ser_word32_be v_53
    ser_word16_be 62153
    ser (108 :: Word8)
    ser (9 :: Word8)
    ser_word32_be 2372292676
    ser_word32_be 1793276335
    ser_word32_be 659409606
    ser (219 :: Word8)
    ser_word32_be v_54
    ser_word16_be v_55
    ser_word16_be v_56
    ser_word16_be v_57
    ser (201 :: Word8)
    ser_word16_be 23189
    ser_word32_be 1576121518
    ser v_58
    ser_word32_be 3311786275
    ser_word16_be v_59
    ser_word32_be 158057033
    ser_word32_be 1052730338
    ser_word32_be 3606803625
    ser_word16_be v_60
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word8Hole},Value (Word32Value 2588737377),Hole {byte_offset = 7, hole_type = Word8Hole},Hole {byte_offset = 8, hole_type = Word8Hole},Value (Word16Value 59048),Hole {byte_offset = 11, hole_type = Word8Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word32Value 675920477),Value (Word16Value 34868),Value (Word32Value 1228508434),Value (Word32Value 1169012367),Value (Word16Value 10604),Value (Word32Value 947850624),Value (Word32Value 2034582834),Value (Word32Value 2694763103),Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word16Value 34045),Value (Word16Value 15385),Hole {byte_offset = 50, hole_type = Word16Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word32Value 2917245084),Hole {byte_offset = 58, hole_type = Word32Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Hole {byte_offset = 66, hole_type = Word32Hole},Value (Word8Value 63),Value (Word16Value 45496),Value (Word8Value 212),Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word32Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word32Hole},Value (Word16Value 6141),Value (Word8Value 180),Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 42),Hole {byte_offset = 91, hole_type = Word32Hole},Value (Word8Value 15),Hole {byte_offset = 96, hole_type = Word32Hole},Hole {byte_offset = 100, hole_type = Word8Hole},Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word16Value 64941),Hole {byte_offset = 111, hole_type = Word16Hole},Hole {byte_offset = 113, hole_type = Word32Hole},Value (Word16Value 3709),Hole {byte_offset = 119, hole_type = Word16Hole},Hole {byte_offset = 121, hole_type = Word8Hole},Hole {byte_offset = 122, hole_type = Word16Hole},Value (Word8Value 89),Value (Word8Value 36),Hole {byte_offset = 126, hole_type = Word16Hole},Hole {byte_offset = 128, hole_type = Word8Hole},Hole {byte_offset = 129, hole_type = Word32Hole},Hole {byte_offset = 133, hole_type = Word32Hole},Value (Word8Value 23),Hole {byte_offset = 138, hole_type = Word8Hole},Hole {byte_offset = 139, hole_type = Word16Hole},Value (Word32Value 3492544134),Value (Word8Value 191),Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word16Value 11081),Value (Word8Value 142),Hole {byte_offset = 153, hole_type = Word8Hole},Value (Word16Value 29429),Hole {byte_offset = 156, hole_type = Word8Hole},Hole {byte_offset = 157, hole_type = Word16Hole},Hole {byte_offset = 159, hole_type = Word8Hole},Value (Word8Value 189),Hole {byte_offset = 161, hole_type = Word8Hole},Value (Word16Value 2322),Value (Word32Value 1118897807),Hole {byte_offset = 168, hole_type = Word32Hole},Hole {byte_offset = 172, hole_type = Word16Hole},Hole {byte_offset = 174, hole_type = Word32Hole},Value (Word8Value 157),Hole {byte_offset = 179, hole_type = Word32Hole},Value (Word32Value 146860030),Hole {byte_offset = 187, hole_type = Word32Hole},Hole {byte_offset = 191, hole_type = Word32Hole},Hole {byte_offset = 195, hole_type = Word16Hole},Value (Word32Value 1116540064),Hole {byte_offset = 201, hole_type = Word32Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Value (Word16Value 48485),Hole {byte_offset = 208, hole_type = Word32Hole},Hole {byte_offset = 212, hole_type = Word8Hole},Value (Word32Value 2880663179),Hole {byte_offset = 217, hole_type = Word8Hole},Hole {byte_offset = 218, hole_type = Word8Hole},Value (Word8Value 17),Hole {byte_offset = 220, hole_type = Word16Hole},Hole {byte_offset = 222, hole_type = Word32Hole},Value (Word16Value 62153),Value (Word8Value 108),Value (Word8Value 9),Value (Word32Value 2372292676),Value (Word32Value 1793276335),Value (Word32Value 659409606),Value (Word8Value 219),Hole {byte_offset = 243, hole_type = Word32Hole},Hole {byte_offset = 247, hole_type = Word16Hole},Hole {byte_offset = 249, hole_type = Word16Hole},Hole {byte_offset = 251, hole_type = Word16Hole},Value (Word8Value 201),Value (Word16Value 23189),Value (Word32Value 1576121518),Hole {byte_offset = 260, hole_type = Word8Hole},Value (Word32Value 3311786275),Hole {byte_offset = 265, hole_type = Word16Hole},Value (Word32Value 158057033),Value (Word32Value 1052730338),Value (Word32Value 3606803625),Hole {byte_offset = 279, hole_type = Word16Hole}]}
