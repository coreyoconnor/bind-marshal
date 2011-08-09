{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase16 where
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
    v_0 :: Word8 <- getWord8
    4642 :: Word16 <- getWord16be
    3334965889 :: Word32 <- getWord32be
    v_1 :: Word32 <- getWord32be
    v_2 :: Word32 <- getWord32be
    57613 :: Word16 <- getWord16be
    107 :: Word8 <- getWord8
    v_3 :: Word32 <- getWord32be
    2272434411 :: Word32 <- getWord32be
    1759657514 :: Word32 <- getWord32be
    16010 :: Word16 <- getWord16be
    18012 :: Word16 <- getWord16be
    38324 :: Word16 <- getWord16be
    3990412939 :: Word32 <- getWord32be
    v_4 :: Word32 <- getWord32be
    v_5 :: Word8 <- getWord8
    v_6 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    v_8 :: Word8 <- getWord8
    39781 :: Word16 <- getWord16be
    v_9 :: Word16 <- getWord16be
    v_10 :: Word8 <- getWord8
    v_11 :: Word32 <- getWord32be
    v_12 :: Word16 <- getWord16be
    62320 :: Word16 <- getWord16be
    3977268648 :: Word32 <- getWord32be
    v_13 :: Word16 <- getWord16be
    109 :: Word8 <- getWord8
    1154537977 :: Word32 <- getWord32be
    v_14 :: Word8 <- getWord8
    v_15 :: Word16 <- getWord16be
    25097 :: Word16 <- getWord16be
    1391953365 :: Word32 <- getWord32be
    v_16 :: Word16 <- getWord16be
    v_17 :: Word16 <- getWord16be
    1487363713 :: Word32 <- getWord32be
    v_18 :: Word32 <- getWord32be
    v_19 :: Word8 <- getWord8
    v_20 :: Word8 <- getWord8
    v_21 :: Word8 <- getWord8
    v_22 :: Word32 <- getWord32be
    60012 :: Word16 <- getWord16be
    57103 :: Word16 <- getWord16be
    v_23 :: Word16 <- getWord16be
    161 :: Word8 <- getWord8
    v_24 :: Word32 <- getWord32be
    v_25 :: Word16 <- getWord16be
    v_26 :: Word32 <- getWord32be
    3286790290 :: Word32 <- getWord32be
    v_27 :: Word16 <- getWord16be
    81 :: Word8 <- getWord8
    2277954639 :: Word32 <- getWord32be
    v_28 :: Word8 <- getWord8
    v_29 :: Word16 <- getWord16be
    17177 :: Word16 <- getWord16be
    v_30 :: Word32 <- getWord32be
    3627077337 :: Word32 <- getWord32be
    3245802261 :: Word32 <- getWord32be
    v_31 :: Word16 <- getWord16be
    42635 :: Word16 <- getWord16be
    v_32 :: Word8 <- getWord8
    681841591 :: Word32 <- getWord32be
    v_33 :: Word8 <- getWord8
    v_34 :: Word32 <- getWord32be
    370655394 :: Word32 <- getWord32be
    v_35 :: Word32 <- getWord32be
    53936681 :: Word32 <- getWord32be
    163 :: Word8 <- getWord8
    v_36 :: Word32 <- getWord32be
    56823 :: Word16 <- getWord16be
    v_37 :: Word16 <- getWord16be
    v_38 :: Word32 <- getWord32be
    v_39 :: Word16 <- getWord16be
    3459268370 :: Word32 <- getWord32be
    3365020098 :: Word32 <- getWord32be
    2319470860 :: Word32 <- getWord32be
    v_40 :: Word8 <- getWord8
    v_41 :: Word8 <- getWord8
    v_42 :: Word16 <- getWord16be
    1605481706 :: Word32 <- getWord32be
    v_43 :: Word16 <- getWord16be
    v_44 :: Word16 <- getWord16be
    100 :: Word8 <- getWord8
    4237809224 :: Word32 <- getWord32be
    45094 :: Word16 <- getWord16be
    v_45 :: Word32 <- getWord32be
    v_46 :: Word8 <- getWord8
    3407485585 :: Word32 <- getWord32be
    172 :: Word8 <- getWord8
    v_47 :: Word16 <- getWord16be
    v_48 :: Word32 <- getWord32be
    v_49 :: Word8 <- getWord8
    844205216 :: Word32 <- getWord32be
    154 :: Word8 <- getWord8
    117 :: Word8 <- getWord8
    43011 :: Word16 <- getWord16be
    158406915 :: Word32 <- getWord32be
    v_50 :: Word8 <- getWord8
    124 :: Word8 <- getWord8
    372896692 :: Word32 <- getWord32be
    106 :: Word8 <- getWord8
    v_51 :: Word32 <- getWord32be
    234 :: Word8 <- getWord8
    v_52 :: Word16 <- getWord16be
    796628429 :: Word32 <- getWord32be
    v_53 :: Word16 <- getWord16be
    return  [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word16Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 ]

ser_static_structure vs = do 
    let [ Word8Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word32Value v_4 , Word8Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word16Value v_9 , Word8Value v_10 , Word32Value v_11 , Word16Value v_12 , Word16Value v_13 , Word8Value v_14 , Word16Value v_15 , Word16Value v_16 , Word16Value v_17 , Word32Value v_18 , Word8Value v_19 , Word8Value v_20 , Word8Value v_21 , Word32Value v_22 , Word16Value v_23 , Word32Value v_24 , Word16Value v_25 , Word32Value v_26 , Word16Value v_27 , Word8Value v_28 , Word16Value v_29 , Word32Value v_30 , Word16Value v_31 , Word8Value v_32 , Word8Value v_33 , Word32Value v_34 , Word32Value v_35 , Word32Value v_36 , Word16Value v_37 , Word32Value v_38 , Word16Value v_39 , Word8Value v_40 , Word8Value v_41 , Word16Value v_42 , Word16Value v_43 , Word16Value v_44 , Word32Value v_45 , Word8Value v_46 , Word16Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word32Value v_51 , Word16Value v_52 , Word16Value v_53 ] = vs 
    putWord8 v_0
    putWord16be 4642
    putWord32be 3334965889
    putWord32be v_1
    putWord32be v_2
    putWord16be 57613
    putWord8 (107 :: Word8)
    putWord32be v_3
    putWord32be 2272434411
    putWord32be 1759657514
    putWord16be 16010
    putWord16be 18012
    putWord16be 38324
    putWord32be 3990412939
    putWord32be v_4
    putWord8 v_5
    putWord32be v_6
    putWord32be v_7
    putWord8 v_8
    putWord16be 39781
    putWord16be v_9
    putWord8 v_10
    putWord32be v_11
    putWord16be v_12
    putWord16be 62320
    putWord32be 3977268648
    putWord16be v_13
    putWord8 (109 :: Word8)
    putWord32be 1154537977
    putWord8 v_14
    putWord16be v_15
    putWord16be 25097
    putWord32be 1391953365
    putWord16be v_16
    putWord16be v_17
    putWord32be 1487363713
    putWord32be v_18
    putWord8 v_19
    putWord8 v_20
    putWord8 v_21
    putWord32be v_22
    putWord16be 60012
    putWord16be 57103
    putWord16be v_23
    putWord8 (161 :: Word8)
    putWord32be v_24
    putWord16be v_25
    putWord32be v_26
    putWord32be 3286790290
    putWord16be v_27
    putWord8 (81 :: Word8)
    putWord32be 2277954639
    putWord8 v_28
    putWord16be v_29
    putWord16be 17177
    putWord32be v_30
    putWord32be 3627077337
    putWord32be 3245802261
    putWord16be v_31
    putWord16be 42635
    putWord8 v_32
    putWord32be 681841591
    putWord8 v_33
    putWord32be v_34
    putWord32be 370655394
    putWord32be v_35
    putWord32be 53936681
    putWord8 (163 :: Word8)
    putWord32be v_36
    putWord16be 56823
    putWord16be v_37
    putWord32be v_38
    putWord16be v_39
    putWord32be 3459268370
    putWord32be 3365020098
    putWord32be 2319470860
    putWord8 v_40
    putWord8 v_41
    putWord16be v_42
    putWord32be 1605481706
    putWord16be v_43
    putWord16be v_44
    putWord8 (100 :: Word8)
    putWord32be 4237809224
    putWord16be 45094
    putWord32be v_45
    putWord8 v_46
    putWord32be 3407485585
    putWord8 (172 :: Word8)
    putWord16be v_47
    putWord32be v_48
    putWord8 v_49
    putWord32be 844205216
    putWord8 (154 :: Word8)
    putWord8 (117 :: Word8)
    putWord16be 43011
    putWord32be 158406915
    putWord8 v_50
    putWord8 (124 :: Word8)
    putWord32be 372896692
    putWord8 (106 :: Word8)
    putWord32be v_51
    putWord8 (234 :: Word8)
    putWord16be v_52
    putWord32be 796628429
    putWord16be v_53
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word8Hole},Value (Word16Value 4642),Value (Word32Value 3334965889),Hole {byte_offset = 7, hole_type = Word32Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Value (Word16Value 57613),Value (Word8Value 107),Hole {byte_offset = 18, hole_type = Word32Hole},Value (Word32Value 2272434411),Value (Word32Value 1759657514),Value (Word16Value 16010),Value (Word16Value 18012),Value (Word16Value 38324),Value (Word32Value 3990412939),Hole {byte_offset = 40, hole_type = Word32Hole},Hole {byte_offset = 44, hole_type = Word8Hole},Hole {byte_offset = 45, hole_type = Word32Hole},Hole {byte_offset = 49, hole_type = Word32Hole},Hole {byte_offset = 53, hole_type = Word8Hole},Value (Word16Value 39781),Hole {byte_offset = 56, hole_type = Word16Hole},Hole {byte_offset = 58, hole_type = Word8Hole},Hole {byte_offset = 59, hole_type = Word32Hole},Hole {byte_offset = 63, hole_type = Word16Hole},Value (Word16Value 62320),Value (Word32Value 3977268648),Hole {byte_offset = 71, hole_type = Word16Hole},Value (Word8Value 109),Value (Word32Value 1154537977),Hole {byte_offset = 78, hole_type = Word8Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Value (Word16Value 25097),Value (Word32Value 1391953365),Hole {byte_offset = 87, hole_type = Word16Hole},Hole {byte_offset = 89, hole_type = Word16Hole},Value (Word32Value 1487363713),Hole {byte_offset = 95, hole_type = Word32Hole},Hole {byte_offset = 99, hole_type = Word8Hole},Hole {byte_offset = 100, hole_type = Word8Hole},Hole {byte_offset = 101, hole_type = Word8Hole},Hole {byte_offset = 102, hole_type = Word32Hole},Value (Word16Value 60012),Value (Word16Value 57103),Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word8Value 161),Hole {byte_offset = 113, hole_type = Word32Hole},Hole {byte_offset = 117, hole_type = Word16Hole},Hole {byte_offset = 119, hole_type = Word32Hole},Value (Word32Value 3286790290),Hole {byte_offset = 127, hole_type = Word16Hole},Value (Word8Value 81),Value (Word32Value 2277954639),Hole {byte_offset = 134, hole_type = Word8Hole},Hole {byte_offset = 135, hole_type = Word16Hole},Value (Word16Value 17177),Hole {byte_offset = 139, hole_type = Word32Hole},Value (Word32Value 3627077337),Value (Word32Value 3245802261),Hole {byte_offset = 151, hole_type = Word16Hole},Value (Word16Value 42635),Hole {byte_offset = 155, hole_type = Word8Hole},Value (Word32Value 681841591),Hole {byte_offset = 160, hole_type = Word8Hole},Hole {byte_offset = 161, hole_type = Word32Hole},Value (Word32Value 370655394),Hole {byte_offset = 169, hole_type = Word32Hole},Value (Word32Value 53936681),Value (Word8Value 163),Hole {byte_offset = 178, hole_type = Word32Hole},Value (Word16Value 56823),Hole {byte_offset = 184, hole_type = Word16Hole},Hole {byte_offset = 186, hole_type = Word32Hole},Hole {byte_offset = 190, hole_type = Word16Hole},Value (Word32Value 3459268370),Value (Word32Value 3365020098),Value (Word32Value 2319470860),Hole {byte_offset = 204, hole_type = Word8Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Hole {byte_offset = 206, hole_type = Word16Hole},Value (Word32Value 1605481706),Hole {byte_offset = 212, hole_type = Word16Hole},Hole {byte_offset = 214, hole_type = Word16Hole},Value (Word8Value 100),Value (Word32Value 4237809224),Value (Word16Value 45094),Hole {byte_offset = 223, hole_type = Word32Hole},Hole {byte_offset = 227, hole_type = Word8Hole},Value (Word32Value 3407485585),Value (Word8Value 172),Hole {byte_offset = 233, hole_type = Word16Hole},Hole {byte_offset = 235, hole_type = Word32Hole},Hole {byte_offset = 239, hole_type = Word8Hole},Value (Word32Value 844205216),Value (Word8Value 154),Value (Word8Value 117),Value (Word16Value 43011),Value (Word32Value 158406915),Hole {byte_offset = 252, hole_type = Word8Hole},Value (Word8Value 124),Value (Word32Value 372896692),Value (Word8Value 106),Hole {byte_offset = 259, hole_type = Word32Hole},Value (Word8Value 234),Hole {byte_offset = 264, hole_type = Word16Hole},Value (Word32Value 796628429),Hole {byte_offset = 270, hole_type = Word16Hole}]}
