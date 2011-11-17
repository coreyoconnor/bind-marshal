{-# LANGUAGE RebindableSyntax #-}
module TestCases.FullStaticCase1 where
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
    15 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    v_2 :: Word16 <- des_word16_be
    199874409 :: Word32 <- des_word32_be
    v_3 :: Word16 <- des_word16_be
    3162237090 :: Word32 <- des_word32_be
    v_4 :: Word32 <- des_word32_be
    v_5 :: Word16 <- des_word16_be
    v_6 :: Word16 <- des_word16_be
    v_7 :: Word32 <- des_word32_be
    1358621296 :: Word32 <- des_word32_be
    v_8 :: Word16 <- des_word16_be
    v_9 :: Word16 <- des_word16_be
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    37930 :: Word16 <- des_word16_be
    v_12 :: Word8 <- des
    2118906557 :: Word32 <- des_word32_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word32 <- des_word32_be
    v_15 :: Word8 <- des
    v_16 :: Word8 <- des
    v_17 :: Word16 <- des_word16_be
    v_18 :: Word16 <- des_word16_be
    v_19 :: Word32 <- des_word32_be
    14790 :: Word16 <- des_word16_be
    v_20 :: Word16 <- des_word16_be
    v_21 :: Word32 <- des_word32_be
    v_22 :: Word16 <- des_word16_be
    v_23 :: Word16 <- des_word16_be
    49367 :: Word16 <- des_word16_be
    v_24 :: Word8 <- des
    v_25 :: Word8 <- des
    v_26 :: Word8 <- des
    v_27 :: Word8 <- des
    217 :: Word8 <- des
    v_28 :: Word8 <- des
    122 :: Word8 <- des
    3567697002 :: Word32 <- des_word32_be
    49009 :: Word16 <- des_word16_be
    v_29 :: Word8 <- des
    17782 :: Word16 <- des_word16_be
    64569 :: Word16 <- des_word16_be
    v_30 :: Word32 <- des_word32_be
    1247184809 :: Word32 <- des_word32_be
    3952429815 :: Word32 <- des_word32_be
    170 :: Word8 <- des
    865850514 :: Word32 <- des_word32_be
    v_31 :: Word16 <- des_word16_be
    v_32 :: Word8 <- des
    v_33 :: Word16 <- des_word16_be
    64271 :: Word16 <- des_word16_be
    1113067006 :: Word32 <- des_word32_be
    v_34 :: Word8 <- des
    v_35 :: Word8 <- des
    v_36 :: Word8 <- des
    34566 :: Word16 <- des_word16_be
    1521145441 :: Word32 <- des_word32_be
    v_37 :: Word8 <- des
    52540911 :: Word32 <- des_word32_be
    v_38 :: Word8 <- des
    v_39 :: Word8 <- des
    48 :: Word8 <- des
    31082 :: Word16 <- des_word16_be
    21696 :: Word16 <- des_word16_be
    v_40 :: Word8 <- des
    v_41 :: Word8 <- des
    v_42 :: Word16 <- des_word16_be
    62813 :: Word16 <- des_word16_be
    927326408 :: Word32 <- des_word32_be
    v_43 :: Word32 <- des_word32_be
    static_return  [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word32Value v_7 , Word16Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word8Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word16Value v_3 , Word32Value v_4 , Word16Value v_5 , Word16Value v_6 , Word32Value v_7 , Word16Value v_8 , Word16Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word32Value v_14 , Word8Value v_15 , Word8Value v_16 , Word16Value v_17 , Word16Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word16Value v_22 , Word16Value v_23 , Word8Value v_24 , Word8Value v_25 , Word8Value v_26 , Word8Value v_27 , Word8Value v_28 , Word8Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word16Value v_33 , Word8Value v_34 , Word8Value v_35 , Word8Value v_36 , Word8Value v_37 , Word8Value v_38 , Word8Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word32Value v_43 ] = vs 
    ser (15 :: Word8)
    ser_word32_be v_0
    ser v_1
    ser_word16_be v_2
    ser_word32_be 199874409
    ser_word16_be v_3
    ser_word32_be 3162237090
    ser_word32_be v_4
    ser_word16_be v_5
    ser_word16_be v_6
    ser_word32_be v_7
    ser_word32_be 1358621296
    ser_word16_be v_8
    ser_word16_be v_9
    ser_word32_be v_10
    ser_word32_be v_11
    ser_word16_be 37930
    ser v_12
    ser_word32_be 2118906557
    ser_word32_be v_13
    ser_word32_be v_14
    ser v_15
    ser v_16
    ser_word16_be v_17
    ser_word16_be v_18
    ser_word32_be v_19
    ser_word16_be 14790
    ser_word16_be v_20
    ser_word32_be v_21
    ser_word16_be v_22
    ser_word16_be v_23
    ser_word16_be 49367
    ser v_24
    ser v_25
    ser v_26
    ser v_27
    ser (217 :: Word8)
    ser v_28
    ser (122 :: Word8)
    ser_word32_be 3567697002
    ser_word16_be 49009
    ser v_29
    ser_word16_be 17782
    ser_word16_be 64569
    ser_word32_be v_30
    ser_word32_be 1247184809
    ser_word32_be 3952429815
    ser (170 :: Word8)
    ser_word32_be 865850514
    ser_word16_be v_31
    ser v_32
    ser_word16_be v_33
    ser_word16_be 64271
    ser_word32_be 1113067006
    ser v_34
    ser v_35
    ser v_36
    ser_word16_be 34566
    ser_word32_be 1521145441
    ser v_37
    ser_word32_be 52540911
    ser v_38
    ser v_39
    ser (48 :: Word8)
    ser_word16_be 31082
    ser_word16_be 21696
    ser v_40
    ser v_41
    ser_word16_be v_42
    ser_word16_be 62813
    ser_word32_be 927326408
    ser_word32_be v_43
    static_return ()

static_structure = StaticStructure {properties = [Value (Word8Value 15),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Hole {byte_offset = 6, hole_type = Word16Hole},Value (Word32Value 199874409),Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word32Value 3162237090),Hole {byte_offset = 18, hole_type = Word32Hole},Hole {byte_offset = 22, hole_type = Word16Hole},Hole {byte_offset = 24, hole_type = Word16Hole},Hole {byte_offset = 26, hole_type = Word32Hole},Value (Word32Value 1358621296),Hole {byte_offset = 34, hole_type = Word16Hole},Hole {byte_offset = 36, hole_type = Word16Hole},Hole {byte_offset = 38, hole_type = Word32Hole},Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word16Value 37930),Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 2118906557),Hole {byte_offset = 53, hole_type = Word32Hole},Hole {byte_offset = 57, hole_type = Word32Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Hole {byte_offset = 62, hole_type = Word8Hole},Hole {byte_offset = 63, hole_type = Word16Hole},Hole {byte_offset = 65, hole_type = Word16Hole},Hole {byte_offset = 67, hole_type = Word32Hole},Value (Word16Value 14790),Hole {byte_offset = 73, hole_type = Word16Hole},Hole {byte_offset = 75, hole_type = Word32Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word16Hole},Value (Word16Value 49367),Hole {byte_offset = 85, hole_type = Word8Hole},Hole {byte_offset = 86, hole_type = Word8Hole},Hole {byte_offset = 87, hole_type = Word8Hole},Hole {byte_offset = 88, hole_type = Word8Hole},Value (Word8Value 217),Hole {byte_offset = 90, hole_type = Word8Hole},Value (Word8Value 122),Value (Word32Value 3567697002),Value (Word16Value 49009),Hole {byte_offset = 98, hole_type = Word8Hole},Value (Word16Value 17782),Value (Word16Value 64569),Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word32Value 1247184809),Value (Word32Value 3952429815),Value (Word8Value 170),Value (Word32Value 865850514),Hole {byte_offset = 120, hole_type = Word16Hole},Hole {byte_offset = 122, hole_type = Word8Hole},Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word16Value 64271),Value (Word32Value 1113067006),Hole {byte_offset = 131, hole_type = Word8Hole},Hole {byte_offset = 132, hole_type = Word8Hole},Hole {byte_offset = 133, hole_type = Word8Hole},Value (Word16Value 34566),Value (Word32Value 1521145441),Hole {byte_offset = 140, hole_type = Word8Hole},Value (Word32Value 52540911),Hole {byte_offset = 145, hole_type = Word8Hole},Hole {byte_offset = 146, hole_type = Word8Hole},Value (Word8Value 48),Value (Word16Value 31082),Value (Word16Value 21696),Hole {byte_offset = 152, hole_type = Word8Hole},Hole {byte_offset = 153, hole_type = Word8Hole},Hole {byte_offset = 154, hole_type = Word16Hole},Value (Word16Value 62813),Value (Word32Value 927326408),Hole {byte_offset = 162, hole_type = Word32Hole}]}
