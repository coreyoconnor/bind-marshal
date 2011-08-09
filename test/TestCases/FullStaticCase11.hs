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
    v_0 :: Word8 <- des
    70 :: Word8 <- des
    20140 :: Word16 <- des_word16_be
    4 :: Word8 <- des
    v_1 :: Word32 <- des_word32_be
    v_2 :: Word8 <- des
    v_3 :: Word32 <- des_word32_be
    v_4 :: Word8 <- des
    v_5 :: Word8 <- des
    v_6 :: Word32 <- des_word32_be
    v_7 :: Word8 <- des
    v_8 :: Word16 <- des_word16_be
    9 :: Word8 <- des
    v_9 :: Word32 <- des_word32_be
    44272 :: Word16 <- des_word16_be
    11775 :: Word16 <- des_word16_be
    33551 :: Word16 <- des_word16_be
    v_10 :: Word16 <- des_word16_be
    v_11 :: Word8 <- des
    v_12 :: Word16 <- des_word16_be
    v_13 :: Word8 <- des
    200 :: Word8 <- des
    v_14 :: Word8 <- des
    v_15 :: Word32 <- des_word32_be
    v_16 :: Word8 <- des
    2247970354 :: Word32 <- des_word32_be
    v_17 :: Word16 <- des_word16_be
    63013 :: Word16 <- des_word16_be
    v_18 :: Word32 <- des_word32_be
    v_19 :: Word32 <- des_word32_be
    3542619027 :: Word32 <- des_word32_be
    v_20 :: Word32 <- des_word32_be
    v_21 :: Word16 <- des_word16_be
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word8 <- des
    101 :: Word8 <- des
    117 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    45565 :: Word16 <- des_word16_be
    v_25 :: Word32 <- des_word32_be
    36576 :: Word16 <- des_word16_be
    1087476255 :: Word32 <- des_word32_be
    45826 :: Word16 <- des_word16_be
    3691786044 :: Word32 <- des_word32_be
    11034 :: Word16 <- des_word16_be
    v_26 :: Word8 <- des
    v_27 :: Word32 <- des_word32_be
    v_28 :: Word32 <- des_word32_be
    1631965023 :: Word32 <- des_word32_be
    v_29 :: Word8 <- des
    v_30 :: Word8 <- des
    3460574868 :: Word32 <- des_word32_be
    26731 :: Word16 <- des_word16_be
    55130 :: Word16 <- des_word16_be
    v_31 :: Word16 <- des_word16_be
    22 :: Word8 <- des
    137 :: Word8 <- des
    36665 :: Word16 <- des_word16_be
    61614 :: Word16 <- des_word16_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word8 <- des
    v_34 :: Word8 <- des
    4535 :: Word16 <- des_word16_be
    v_35 :: Word8 <- des
    4674 :: Word16 <- des_word16_be
    v_36 :: Word32 <- des_word32_be
    4185831643 :: Word32 <- des_word32_be
    v_37 :: Word16 <- des_word16_be
    4193677881 :: Word32 <- des_word32_be
    v_38 :: Word32 <- des_word32_be
    v_39 :: Word8 <- des
    v_40 :: Word8 <- des
    13061 :: Word16 <- des_word16_be
    194 :: Word8 <- des
    v_41 :: Word32 <- des_word32_be
    235 :: Word8 <- des
    3183868286 :: Word32 <- des_word32_be
    58861 :: Word16 <- des_word16_be
    2798 :: Word16 <- des_word16_be
    v_42 :: Word16 <- des_word16_be
    v_43 :: Word32 <- des_word32_be
    3303353037 :: Word32 <- des_word32_be
    34 :: Word8 <- des
    226 :: Word8 <- des
    v_44 :: Word16 <- des_word16_be
    v_45 :: Word8 <- des
    v_46 :: Word32 <- des_word32_be
    1141278250 :: Word32 <- des_word32_be
    v_47 :: Word16 <- des_word16_be
    v_48 :: Word8 <- des
    107 :: Word8 <- des
    338863384 :: Word32 <- des_word32_be
    170 :: Word8 <- des
    static_return  [ Word8Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word8Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word32Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word8Value v_2 , Word32Value v_3 , Word8Value v_4 , Word8Value v_5 , Word32Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word16Value v_10 , Word8Value v_11 , Word16Value v_12 , Word8Value v_13 , Word8Value v_14 , Word32Value v_15 , Word8Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word32Value v_22 , Word8Value v_23 , Word32Value v_24 , Word32Value v_25 , Word8Value v_26 , Word32Value v_27 , Word32Value v_28 , Word8Value v_29 , Word8Value v_30 , Word16Value v_31 , Word16Value v_32 , Word8Value v_33 , Word8Value v_34 , Word8Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word8Value v_39 , Word8Value v_40 , Word32Value v_41 , Word16Value v_42 , Word32Value v_43 , Word16Value v_44 , Word8Value v_45 , Word32Value v_46 , Word16Value v_47 , Word8Value v_48 ] = vs 
    ser v_0
    ser (70 :: Word8)
    ser_word16_be 20140
    ser (4 :: Word8)
    ser_word32_be v_1
    ser v_2
    ser_word32_be v_3
    ser v_4
    ser v_5
    ser_word32_be v_6
    ser v_7
    ser_word16_be v_8
    ser (9 :: Word8)
    ser_word32_be v_9
    ser_word16_be 44272
    ser_word16_be 11775
    ser_word16_be 33551
    ser_word16_be v_10
    ser v_11
    ser_word16_be v_12
    ser v_13
    ser (200 :: Word8)
    ser v_14
    ser_word32_be v_15
    ser v_16
    ser_word32_be 2247970354
    ser_word16_be v_17
    ser_word16_be 63013
    ser_word32_be v_18
    ser_word32_be v_19
    ser_word32_be 3542619027
    ser_word32_be v_20
    ser_word16_be v_21
    ser_word32_be v_22
    ser v_23
    ser (101 :: Word8)
    ser (117 :: Word8)
    ser_word32_be v_24
    ser_word16_be 45565
    ser_word32_be v_25
    ser_word16_be 36576
    ser_word32_be 1087476255
    ser_word16_be 45826
    ser_word32_be 3691786044
    ser_word16_be 11034
    ser v_26
    ser_word32_be v_27
    ser_word32_be v_28
    ser_word32_be 1631965023
    ser v_29
    ser v_30
    ser_word32_be 3460574868
    ser_word16_be 26731
    ser_word16_be 55130
    ser_word16_be v_31
    ser (22 :: Word8)
    ser (137 :: Word8)
    ser_word16_be 36665
    ser_word16_be 61614
    ser_word16_be v_32
    ser v_33
    ser v_34
    ser_word16_be 4535
    ser v_35
    ser_word16_be 4674
    ser_word32_be v_36
    ser_word32_be 4185831643
    ser_word16_be v_37
    ser_word32_be 4193677881
    ser_word32_be v_38
    ser v_39
    ser v_40
    ser_word16_be 13061
    ser (194 :: Word8)
    ser_word32_be v_41
    ser (235 :: Word8)
    ser_word32_be 3183868286
    ser_word16_be 58861
    ser_word16_be 2798
    ser_word16_be v_42
    ser_word32_be v_43
    ser_word32_be 3303353037
    ser (34 :: Word8)
    ser (226 :: Word8)
    ser_word16_be v_44
    ser v_45
    ser_word32_be v_46
    ser_word32_be 1141278250
    ser_word16_be v_47
    ser v_48
    ser (107 :: Word8)
    ser_word32_be 338863384
    ser (170 :: Word8)
    static_return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Value (Word8Value 70),Value (Word16Value 20140),Value (Word8Value 4),Hole {byte_offset = 5, hole_type = Word32Hole},Hole {byte_offset = 9, hole_type = Word8Hole},Hole {byte_offset = 10, hole_type = Word32Hole},Hole {byte_offset = 14, hole_type = Word8Hole},Hole {byte_offset = 15, hole_type = Word8Hole},Hole {byte_offset = 16, hole_type = Word32Hole},Hole {byte_offset = 20, hole_type = Word8Hole},Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word8Value 9),Hole {byte_offset = 24, hole_type = Word32Hole},Value (Word16Value 44272),Value (Word16Value 11775),Value (Word16Value 33551),Hole {byte_offset = 34, hole_type = Word16Hole},Hole {byte_offset = 36, hole_type = Word8Hole},Hole {byte_offset = 37, hole_type = Word16Hole},Hole {byte_offset = 39, hole_type = Word8Hole},Value (Word8Value 200),Hole {byte_offset = 41, hole_type = Word8Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Hole {byte_offset = 46, hole_type = Word8Hole},Value (Word32Value 2247970354),Hole {byte_offset = 51, hole_type = Word16Hole},Value (Word16Value 63013),Hole {byte_offset = 55, hole_type = Word32Hole},Hole {byte_offset = 59, hole_type = Word32Hole},Value (Word32Value 3542619027),Hole {byte_offset = 67, hole_type = Word32Hole},Hole {byte_offset = 71, hole_type = Word16Hole},Hole {byte_offset = 73, hole_type = Word32Hole},Hole {byte_offset = 77, hole_type = Word8Hole},Value (Word8Value 101),Value (Word8Value 117),Hole {byte_offset = 80, hole_type = Word32Hole},Value (Word16Value 45565),Hole {byte_offset = 86, hole_type = Word32Hole},Value (Word16Value 36576),Value (Word32Value 1087476255),Value (Word16Value 45826),Value (Word32Value 3691786044),Value (Word16Value 11034),Hole {byte_offset = 104, hole_type = Word8Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Hole {byte_offset = 109, hole_type = Word32Hole},Value (Word32Value 1631965023),Hole {byte_offset = 117, hole_type = Word8Hole},Hole {byte_offset = 118, hole_type = Word8Hole},Value (Word32Value 3460574868),Value (Word16Value 26731),Value (Word16Value 55130),Hole {byte_offset = 127, hole_type = Word16Hole},Value (Word8Value 22),Value (Word8Value 137),Value (Word16Value 36665),Value (Word16Value 61614),Hole {byte_offset = 135, hole_type = Word16Hole},Hole {byte_offset = 137, hole_type = Word8Hole},Hole {byte_offset = 138, hole_type = Word8Hole},Value (Word16Value 4535),Hole {byte_offset = 141, hole_type = Word8Hole},Value (Word16Value 4674),Hole {byte_offset = 144, hole_type = Word32Hole},Value (Word32Value 4185831643),Hole {byte_offset = 152, hole_type = Word16Hole},Value (Word32Value 4193677881),Hole {byte_offset = 158, hole_type = Word32Hole},Hole {byte_offset = 162, hole_type = Word8Hole},Hole {byte_offset = 163, hole_type = Word8Hole},Value (Word16Value 13061),Value (Word8Value 194),Hole {byte_offset = 167, hole_type = Word32Hole},Value (Word8Value 235),Value (Word32Value 3183868286),Value (Word16Value 58861),Value (Word16Value 2798),Hole {byte_offset = 180, hole_type = Word16Hole},Hole {byte_offset = 182, hole_type = Word32Hole},Value (Word32Value 3303353037),Value (Word8Value 34),Value (Word8Value 226),Hole {byte_offset = 192, hole_type = Word16Hole},Hole {byte_offset = 194, hole_type = Word8Hole},Hole {byte_offset = 195, hole_type = Word32Hole},Value (Word32Value 1141278250),Hole {byte_offset = 203, hole_type = Word16Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Value (Word8Value 107),Value (Word32Value 338863384),Value (Word8Value 170)]}
