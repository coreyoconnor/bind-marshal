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
    5 :: Word8 <- des
    v_0 :: Word32 <- des_word32_be
    v_1 :: Word8 <- des
    3911904041 :: Word32 <- des_word32_be
    63527 :: Word16 <- des_word16_be
    2174204953 :: Word32 <- des_word32_be
    v_2 :: Word16 <- des_word16_be
    v_3 :: Word8 <- des
    v_4 :: Word8 <- des
    v_5 :: Word16 <- des_word16_be
    199 :: Word8 <- des
    54103 :: Word16 <- des_word16_be
    v_6 :: Word8 <- des
    1348120990 :: Word32 <- des_word32_be
    2065971697 :: Word32 <- des_word32_be
    v_7 :: Word32 <- des_word32_be
    80 :: Word8 <- des
    v_8 :: Word32 <- des_word32_be
    v_9 :: Word8 <- des
    v_10 :: Word32 <- des_word32_be
    v_11 :: Word32 <- des_word32_be
    v_12 :: Word16 <- des_word16_be
    51438 :: Word16 <- des_word16_be
    v_13 :: Word32 <- des_word32_be
    v_14 :: Word16 <- des_word16_be
    v_15 :: Word16 <- des_word16_be
    19866 :: Word16 <- des_word16_be
    752218326 :: Word32 <- des_word32_be
    v_16 :: Word16 <- des_word16_be
    v_17 :: Word16 <- des_word16_be
    43455 :: Word16 <- des_word16_be
    v_18 :: Word32 <- des_word32_be
    3313436076 :: Word32 <- des_word32_be
    v_19 :: Word32 <- des_word32_be
    v_20 :: Word16 <- des_word16_be
    36943 :: Word16 <- des_word16_be
    1172806933 :: Word32 <- des_word32_be
    48 :: Word8 <- des
    22526 :: Word16 <- des_word16_be
    197463741 :: Word32 <- des_word32_be
    56146 :: Word16 <- des_word16_be
    v_21 :: Word32 <- des_word32_be
    24 :: Word8 <- des
    v_22 :: Word32 <- des_word32_be
    v_23 :: Word32 <- des_word32_be
    62 :: Word8 <- des
    v_24 :: Word32 <- des_word32_be
    v_25 :: Word32 <- des_word32_be
    3437835160 :: Word32 <- des_word32_be
    v_26 :: Word16 <- des_word16_be
    v_27 :: Word16 <- des_word16_be
    11956 :: Word16 <- des_word16_be
    v_28 :: Word32 <- des_word32_be
    v_29 :: Word16 <- des_word16_be
    v_30 :: Word8 <- des
    11 :: Word8 <- des
    v_31 :: Word32 <- des_word32_be
    v_32 :: Word16 <- des_word16_be
    v_33 :: Word32 <- des_word32_be
    27876 :: Word16 <- des_word16_be
    v_34 :: Word16 <- des_word16_be
    v_35 :: Word16 <- des_word16_be
    v_36 :: Word16 <- des_word16_be
    1419402325 :: Word32 <- des_word32_be
    v_37 :: Word8 <- des
    v_38 :: Word32 <- des_word32_be
    v_39 :: Word8 <- des
    return  [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word32Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word16Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word8Value v_6 , Word32Value v_7 , Word32Value v_8 , Word8Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word32Value v_13 , Word16Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word32Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word32Value v_23 , Word32Value v_24 , Word32Value v_25 , Word16Value v_26 , Word16Value v_27 , Word32Value v_28 , Word16Value v_29 , Word8Value v_30 , Word32Value v_31 , Word16Value v_32 , Word32Value v_33 , Word16Value v_34 , Word16Value v_35 , Word16Value v_36 , Word8Value v_37 , Word32Value v_38 , Word8Value v_39 ] = vs 
    ser (5 :: Word8)
    ser_word32_be v_0
    ser v_1
    ser_word32_be 3911904041
    ser_word16_be 63527
    ser_word32_be 2174204953
    ser_word16_be v_2
    ser v_3
    ser v_4
    ser_word16_be v_5
    ser (199 :: Word8)
    ser_word16_be 54103
    ser v_6
    ser_word32_be 1348120990
    ser_word32_be 2065971697
    ser_word32_be v_7
    ser (80 :: Word8)
    ser_word32_be v_8
    ser v_9
    ser_word32_be v_10
    ser_word32_be v_11
    ser_word16_be v_12
    ser_word16_be 51438
    ser_word32_be v_13
    ser_word16_be v_14
    ser_word16_be v_15
    ser_word16_be 19866
    ser_word32_be 752218326
    ser_word16_be v_16
    ser_word16_be v_17
    ser_word16_be 43455
    ser_word32_be v_18
    ser_word32_be 3313436076
    ser_word32_be v_19
    ser_word16_be v_20
    ser_word16_be 36943
    ser_word32_be 1172806933
    ser (48 :: Word8)
    ser_word16_be 22526
    ser_word32_be 197463741
    ser_word16_be 56146
    ser_word32_be v_21
    ser (24 :: Word8)
    ser_word32_be v_22
    ser_word32_be v_23
    ser (62 :: Word8)
    ser_word32_be v_24
    ser_word32_be v_25
    ser_word32_be 3437835160
    ser_word16_be v_26
    ser_word16_be v_27
    ser_word16_be 11956
    ser_word32_be v_28
    ser_word16_be v_29
    ser v_30
    ser (11 :: Word8)
    ser_word32_be v_31
    ser_word16_be v_32
    ser_word32_be v_33
    ser_word16_be 27876
    ser_word16_be v_34
    ser_word16_be v_35
    ser_word16_be v_36
    ser_word32_be 1419402325
    ser v_37
    ser_word32_be v_38
    ser v_39
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 5),Hole {byte_offset = 1, hole_type = Word32Hole},Hole {byte_offset = 5, hole_type = Word8Hole},Value (Word32Value 3911904041),Value (Word16Value 63527),Value (Word32Value 2174204953),Hole {byte_offset = 16, hole_type = Word16Hole},Hole {byte_offset = 18, hole_type = Word8Hole},Hole {byte_offset = 19, hole_type = Word8Hole},Hole {byte_offset = 20, hole_type = Word16Hole},Value (Word8Value 199),Value (Word16Value 54103),Hole {byte_offset = 25, hole_type = Word8Hole},Value (Word32Value 1348120990),Value (Word32Value 2065971697),Hole {byte_offset = 34, hole_type = Word32Hole},Value (Word8Value 80),Hole {byte_offset = 39, hole_type = Word32Hole},Hole {byte_offset = 43, hole_type = Word8Hole},Hole {byte_offset = 44, hole_type = Word32Hole},Hole {byte_offset = 48, hole_type = Word32Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word16Value 51438),Hole {byte_offset = 56, hole_type = Word32Hole},Hole {byte_offset = 60, hole_type = Word16Hole},Hole {byte_offset = 62, hole_type = Word16Hole},Value (Word16Value 19866),Value (Word32Value 752218326),Hole {byte_offset = 70, hole_type = Word16Hole},Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word16Value 43455),Hole {byte_offset = 76, hole_type = Word32Hole},Value (Word32Value 3313436076),Hole {byte_offset = 84, hole_type = Word32Hole},Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word16Value 36943),Value (Word32Value 1172806933),Value (Word8Value 48),Value (Word16Value 22526),Value (Word32Value 197463741),Value (Word16Value 56146),Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word8Value 24),Hole {byte_offset = 110, hole_type = Word32Hole},Hole {byte_offset = 114, hole_type = Word32Hole},Value (Word8Value 62),Hole {byte_offset = 119, hole_type = Word32Hole},Hole {byte_offset = 123, hole_type = Word32Hole},Value (Word32Value 3437835160),Hole {byte_offset = 131, hole_type = Word16Hole},Hole {byte_offset = 133, hole_type = Word16Hole},Value (Word16Value 11956),Hole {byte_offset = 137, hole_type = Word32Hole},Hole {byte_offset = 141, hole_type = Word16Hole},Hole {byte_offset = 143, hole_type = Word8Hole},Value (Word8Value 11),Hole {byte_offset = 145, hole_type = Word32Hole},Hole {byte_offset = 149, hole_type = Word16Hole},Hole {byte_offset = 151, hole_type = Word32Hole},Value (Word16Value 27876),Hole {byte_offset = 157, hole_type = Word16Hole},Hole {byte_offset = 159, hole_type = Word16Hole},Hole {byte_offset = 161, hole_type = Word16Hole},Value (Word32Value 1419402325),Hole {byte_offset = 167, hole_type = Word8Hole},Hole {byte_offset = 168, hole_type = Word32Hole},Hole {byte_offset = 172, hole_type = Word8Hole}]}
