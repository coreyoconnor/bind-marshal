{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase11 where
import Control.Applicative
import Control.DeepSeq
import Control.Monad

import Data.Binary.Put
import Data.Binary.Get
import qualified Data.ByteString.Lazy as BS
import qualified Data.ByteString.Lazy.Internal as L
import qualified Data.ByteString.Internal as S
import Data.Monoid

import ArbMarshal
import ArbMarshal.GenCode.Utils

import Data.Word

des_static_structure = do 
    v_0 :: Word32 <- getWord32be
    319404216 :: Word32 <- getWord32be
    v_1 :: Word8 <- getWord8
    14296 :: Word16 <- getWord16be
    3469132559 :: Word32 <- getWord32be
    124 :: Word8 <- getWord8
    95 :: Word8 <- getWord8
    3871444290 :: Word32 <- getWord32be
    v_2 :: Word32 <- getWord32be
    1507532687 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    46391 :: Word16 <- getWord16be
    v_4 :: Word16 <- getWord16be
    v_5 :: Word8 <- getWord8
    v_6 :: Word16 <- getWord16be
    231 :: Word8 <- getWord8
    v_7 :: Word8 <- getWord8
    2666757241 :: Word32 <- getWord32be
    v_8 :: Word16 <- getWord16be
    967538800 :: Word32 <- getWord32be
    3677592664 :: Word32 <- getWord32be
    2426853517 :: Word32 <- getWord32be
    v_9 :: Word32 <- getWord32be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    159 :: Word8 <- getWord8
    1486215469 :: Word32 <- getWord32be
    173391402 :: Word32 <- getWord32be
    v_13 :: Word16 <- getWord16be
    26 :: Word8 <- getWord8
    67 :: Word8 <- getWord8
    231 :: Word8 <- getWord8
    v_14 :: Word16 <- getWord16be
    236 :: Word8 <- getWord8
    v_15 :: Word8 <- getWord8
    v_16 :: Word32 <- getWord32be
    v_17 :: Word8 <- getWord8
    v_18 :: Word16 <- getWord16be
    3428392079 :: Word32 <- getWord32be
    v_19 :: Word32 <- getWord32be
    8955 :: Word16 <- getWord16be
    v_20 :: Word32 <- getWord32be
    v_21 :: Word16 <- getWord16be
    3510 :: Word16 <- getWord16be
    v_22 :: Word16 <- getWord16be
    v_23 :: Word8 <- getWord8
    25 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    v_25 :: Word8 <- getWord8
    v_26 :: Word32 <- getWord32be
    785419452 :: Word32 <- getWord32be
    v_27 :: Word16 <- getWord16be
    v_28 :: Word16 <- getWord16be
    9 :: Word8 <- getWord8
    v_29 :: Word16 <- getWord16be
    3402300261 :: Word32 <- getWord32be
    1555040559 :: Word32 <- getWord32be
    v_30 :: Word8 <- getWord8
    v_31 :: Word8 <- getWord8
    4158100583 :: Word32 <- getWord32be
    53736 :: Word16 <- getWord16be
    40834 :: Word16 <- getWord16be
    2363321760 :: Word32 <- getWord32be
    36402 :: Word16 <- getWord16be
    v_32 :: Word32 <- getWord32be
    11325 :: Word16 <- getWord16be
    v_33 :: Word8 <- getWord8
    v_34 :: Word16 <- getWord16be
    448396143 :: Word32 <- getWord32be
    v_35 :: Word32 <- getWord32be
    v_36 :: Word32 <- getWord32be
    v_37 :: Word8 <- getWord8
    208 :: Word8 <- getWord8
    v_38 :: Word8 <- getWord8
    43 :: Word8 <- getWord8
    v_39 :: Word16 <- getWord16be
    132 :: Word8 <- getWord8
    v_40 :: Word32 <- getWord32be
    11 :: Word8 <- getWord8
    428675172 :: Word32 <- getWord32be
    v_41 :: Word16 <- getWord16be
    v_42 :: Word8 <- getWord8
    v_43 :: Word8 <- getWord8
    v_44 :: Word16 <- getWord16be
    33318 :: Word16 <- getWord16be
    31262 :: Word16 <- getWord16be
    25 :: Word8 <- getWord8
    6422 :: Word16 <- getWord16be
    v_45 :: Word32 <- getWord32be
    357009856 :: Word32 <- getWord32be
    v_46 :: Word16 <- getWord16be
    54 :: Word8 <- getWord8
    v_47 :: Word16 <- getWord16be
    v_48 :: Word16 <- getWord16be
    235148427 :: Word32 <- getWord32be
    2961843004 :: Word32 <- getWord32be
    v_49 :: Word16 <- getWord16be
    v_50 :: Word16 <- getWord16be
    v_51 :: Word16 <- getWord16be
    39661 :: Word16 <- getWord16be
    2066710727 :: Word32 <- getWord32be
    157 :: Word8 <- getWord8
    v_52 :: Word16 <- getWord16be
    58206 :: Word16 <- getWord16be
    170 :: Word8 <- getWord8
    21680 :: Word16 <- getWord16be
    v_53 :: Word16 <- getWord16be
    v_54 :: Word32 <- getWord32be
    57360 :: Word16 <- getWord16be
    7658 :: Word16 <- getWord16be
    v_55 :: Word16 <- getWord16be
    20580 :: Word16 <- getWord16be
    v_56 :: Word32 <- getWord32be
    97 :: Word8 <- getWord8
    60888 :: Word16 <- getWord16be
    38267 :: Word16 <- getWord16be
    return  [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word8Value v_37 , Word8Value v_38 , Word16Value v_39 , Word32Value v_40 , Word16Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word16Value v_50 , Word16Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word16Value v_55 , Word32Value v_56 ]

ser_static_structure vs = do 
    let [ Word32Value v_0 , Word8Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word8Value v_5 , Word16Value v_6 , Word8Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word16Value v_14 , Word8Value v_15 , Word32Value v_16 , Word8Value v_17 , Word16Value v_18 , Word32Value v_19 , Word32Value v_20 , Word16Value v_21 , Word16Value v_22 , Word8Value v_23 , Word32Value v_24 , Word8Value v_25 , Word32Value v_26 , Word16Value v_27 , Word16Value v_28 , Word16Value v_29 , Word8Value v_30 , Word8Value v_31 , Word32Value v_32 , Word8Value v_33 , Word16Value v_34 , Word32Value v_35 , Word32Value v_36 , Word8Value v_37 , Word8Value v_38 , Word16Value v_39 , Word32Value v_40 , Word16Value v_41 , Word8Value v_42 , Word8Value v_43 , Word16Value v_44 , Word32Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word16Value v_50 , Word16Value v_51 , Word16Value v_52 , Word16Value v_53 , Word32Value v_54 , Word16Value v_55 , Word32Value v_56 ] = vs 
    putWord32be v_0
    putWord32be 319404216
    putWord8 v_1
    putWord16be 14296
    putWord32be 3469132559
    putWord8 (124 :: Word8)
    putWord8 (95 :: Word8)
    putWord32be 3871444290
    putWord32be v_2
    putWord32be 1507532687
    putWord32be v_3
    putWord16be 46391
    putWord16be v_4
    putWord8 v_5
    putWord16be v_6
    putWord8 (231 :: Word8)
    putWord8 v_7
    putWord32be 2666757241
    putWord16be v_8
    putWord32be 967538800
    putWord32be 3677592664
    putWord32be 2426853517
    putWord32be v_9
    putWord32be v_10
    putWord32be v_11
    putWord16be v_12
    putWord8 (159 :: Word8)
    putWord32be 1486215469
    putWord32be 173391402
    putWord16be v_13
    putWord8 (26 :: Word8)
    putWord8 (67 :: Word8)
    putWord8 (231 :: Word8)
    putWord16be v_14
    putWord8 (236 :: Word8)
    putWord8 v_15
    putWord32be v_16
    putWord8 v_17
    putWord16be v_18
    putWord32be 3428392079
    putWord32be v_19
    putWord16be 8955
    putWord32be v_20
    putWord16be v_21
    putWord16be 3510
    putWord16be v_22
    putWord8 v_23
    putWord8 (25 :: Word8)
    putWord32be v_24
    putWord8 v_25
    putWord32be v_26
    putWord32be 785419452
    putWord16be v_27
    putWord16be v_28
    putWord8 (9 :: Word8)
    putWord16be v_29
    putWord32be 3402300261
    putWord32be 1555040559
    putWord8 v_30
    putWord8 v_31
    putWord32be 4158100583
    putWord16be 53736
    putWord16be 40834
    putWord32be 2363321760
    putWord16be 36402
    putWord32be v_32
    putWord16be 11325
    putWord8 v_33
    putWord16be v_34
    putWord32be 448396143
    putWord32be v_35
    putWord32be v_36
    putWord8 v_37
    putWord8 (208 :: Word8)
    putWord8 v_38
    putWord8 (43 :: Word8)
    putWord16be v_39
    putWord8 (132 :: Word8)
    putWord32be v_40
    putWord8 (11 :: Word8)
    putWord32be 428675172
    putWord16be v_41
    putWord8 v_42
    putWord8 v_43
    putWord16be v_44
    putWord16be 33318
    putWord16be 31262
    putWord8 (25 :: Word8)
    putWord16be 6422
    putWord32be v_45
    putWord32be 357009856
    putWord16be v_46
    putWord8 (54 :: Word8)
    putWord16be v_47
    putWord16be v_48
    putWord32be 235148427
    putWord32be 2961843004
    putWord16be v_49
    putWord16be v_50
    putWord16be v_51
    putWord16be 39661
    putWord32be 2066710727
    putWord8 (157 :: Word8)
    putWord16be v_52
    putWord16be 58206
    putWord8 (170 :: Word8)
    putWord16be 21680
    putWord16be v_53
    putWord32be v_54
    putWord16be 57360
    putWord16be 7658
    putWord16be v_55
    putWord16be 20580
    putWord32be v_56
    putWord8 (97 :: Word8)
    putWord16be 60888
    putWord16be 38267
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word32Hole},Value (Word32Value 319404216),Hole {byte_offset = 8, hole_type = Word8Hole},Value (Word16Value 14296),Value (Word32Value 3469132559),Value (Word8Value 124),Value (Word8Value 95),Value (Word32Value 3871444290),Hole {byte_offset = 21, hole_type = Word32Hole},Value (Word32Value 1507532687),Hole {byte_offset = 29, hole_type = Word32Hole},Value (Word16Value 46391),Hole {byte_offset = 35, hole_type = Word16Hole},Hole {byte_offset = 37, hole_type = Word8Hole},Hole {byte_offset = 38, hole_type = Word16Hole},Value (Word8Value 231),Hole {byte_offset = 41, hole_type = Word8Hole},Value (Word32Value 2666757241),Hole {byte_offset = 46, hole_type = Word16Hole},Value (Word32Value 967538800),Value (Word32Value 3677592664),Value (Word32Value 2426853517),Hole {byte_offset = 60, hole_type = Word32Hole},Hole {byte_offset = 64, hole_type = Word32Hole},Hole {byte_offset = 68, hole_type = Word32Hole},Hole {byte_offset = 72, hole_type = Word16Hole},Value (Word8Value 159),Value (Word32Value 1486215469),Value (Word32Value 173391402),Hole {byte_offset = 83, hole_type = Word16Hole},Value (Word8Value 26),Value (Word8Value 67),Value (Word8Value 231),Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 236),Hole {byte_offset = 91, hole_type = Word8Hole},Hole {byte_offset = 92, hole_type = Word32Hole},Hole {byte_offset = 96, hole_type = Word8Hole},Hole {byte_offset = 97, hole_type = Word16Hole},Value (Word32Value 3428392079),Hole {byte_offset = 103, hole_type = Word32Hole},Value (Word16Value 8955),Hole {byte_offset = 109, hole_type = Word32Hole},Hole {byte_offset = 113, hole_type = Word16Hole},Value (Word16Value 3510),Hole {byte_offset = 117, hole_type = Word16Hole},Hole {byte_offset = 119, hole_type = Word8Hole},Value (Word8Value 25),Hole {byte_offset = 121, hole_type = Word32Hole},Hole {byte_offset = 125, hole_type = Word8Hole},Hole {byte_offset = 126, hole_type = Word32Hole},Value (Word32Value 785419452),Hole {byte_offset = 134, hole_type = Word16Hole},Hole {byte_offset = 136, hole_type = Word16Hole},Value (Word8Value 9),Hole {byte_offset = 139, hole_type = Word16Hole},Value (Word32Value 3402300261),Value (Word32Value 1555040559),Hole {byte_offset = 149, hole_type = Word8Hole},Hole {byte_offset = 150, hole_type = Word8Hole},Value (Word32Value 4158100583),Value (Word16Value 53736),Value (Word16Value 40834),Value (Word32Value 2363321760),Value (Word16Value 36402),Hole {byte_offset = 165, hole_type = Word32Hole},Value (Word16Value 11325),Hole {byte_offset = 171, hole_type = Word8Hole},Hole {byte_offset = 172, hole_type = Word16Hole},Value (Word32Value 448396143),Hole {byte_offset = 178, hole_type = Word32Hole},Hole {byte_offset = 182, hole_type = Word32Hole},Hole {byte_offset = 186, hole_type = Word8Hole},Value (Word8Value 208),Hole {byte_offset = 188, hole_type = Word8Hole},Value (Word8Value 43),Hole {byte_offset = 190, hole_type = Word16Hole},Value (Word8Value 132),Hole {byte_offset = 193, hole_type = Word32Hole},Value (Word8Value 11),Value (Word32Value 428675172),Hole {byte_offset = 202, hole_type = Word16Hole},Hole {byte_offset = 204, hole_type = Word8Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Hole {byte_offset = 206, hole_type = Word16Hole},Value (Word16Value 33318),Value (Word16Value 31262),Value (Word8Value 25),Value (Word16Value 6422),Hole {byte_offset = 215, hole_type = Word32Hole},Value (Word32Value 357009856),Hole {byte_offset = 223, hole_type = Word16Hole},Value (Word8Value 54),Hole {byte_offset = 226, hole_type = Word16Hole},Hole {byte_offset = 228, hole_type = Word16Hole},Value (Word32Value 235148427),Value (Word32Value 2961843004),Hole {byte_offset = 238, hole_type = Word16Hole},Hole {byte_offset = 240, hole_type = Word16Hole},Hole {byte_offset = 242, hole_type = Word16Hole},Value (Word16Value 39661),Value (Word32Value 2066710727),Value (Word8Value 157),Hole {byte_offset = 251, hole_type = Word16Hole},Value (Word16Value 58206),Value (Word8Value 170),Value (Word16Value 21680),Hole {byte_offset = 258, hole_type = Word16Hole},Hole {byte_offset = 260, hole_type = Word32Hole},Value (Word16Value 57360),Value (Word16Value 7658),Hole {byte_offset = 268, hole_type = Word16Hole},Value (Word16Value 20580),Hole {byte_offset = 272, hole_type = Word32Hole},Value (Word8Value 97),Value (Word16Value 60888),Value (Word16Value 38267)]}
