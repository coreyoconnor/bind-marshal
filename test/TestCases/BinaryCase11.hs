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
    232 :: Word8 <- getWord8
    1276478095 :: Word32 <- getWord32be
    v_0 :: Word16 <- getWord16be
    v_1 :: Word32 <- getWord32be
    v_2 :: Word32 <- getWord32be
    v_3 :: Word32 <- getWord32be
    15493 :: Word16 <- getWord16be
    v_4 :: Word16 <- getWord16be
    3367363317 :: Word32 <- getWord32be
    82 :: Word8 <- getWord8
    v_5 :: Word32 <- getWord32be
    v_6 :: Word32 <- getWord32be
    v_7 :: Word32 <- getWord32be
    3631 :: Word16 <- getWord16be
    v_8 :: Word8 <- getWord8
    1600947406 :: Word32 <- getWord32be
    v_9 :: Word8 <- getWord8
    v_10 :: Word8 <- getWord8
    3463797063 :: Word32 <- getWord32be
    1613523012 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    v_12 :: Word8 <- getWord8
    58532 :: Word16 <- getWord16be
    v_13 :: Word8 <- getWord8
    v_14 :: Word16 <- getWord16be
    v_15 :: Word16 <- getWord16be
    v_16 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    89 :: Word8 <- getWord8
    v_18 :: Word16 <- getWord16be
    251 :: Word8 <- getWord8
    32097 :: Word16 <- getWord16be
    4286313474 :: Word32 <- getWord32be
    v_19 :: Word8 <- getWord8
    15632 :: Word16 <- getWord16be
    v_20 :: Word16 <- getWord16be
    2553398544 :: Word32 <- getWord32be
    v_21 :: Word32 <- getWord32be
    9181 :: Word16 <- getWord16be
    v_22 :: Word32 <- getWord32be
    v_23 :: Word8 <- getWord8
    51685 :: Word16 <- getWord16be
    45976 :: Word16 <- getWord16be
    v_24 :: Word8 <- getWord8
    v_25 :: Word8 <- getWord8
    v_26 :: Word16 <- getWord16be
    73774625 :: Word32 <- getWord32be
    v_27 :: Word16 <- getWord16be
    2784932716 :: Word32 <- getWord32be
    208 :: Word8 <- getWord8
    v_28 :: Word16 <- getWord16be
    235 :: Word8 <- getWord8
    v_29 :: Word32 <- getWord32be
    v_30 :: Word32 <- getWord32be
    932174640 :: Word32 <- getWord32be
    v_31 :: Word8 <- getWord8
    v_32 :: Word32 <- getWord32be
    v_33 :: Word16 <- getWord16be
    95 :: Word8 <- getWord8
    249 :: Word8 <- getWord8
    v_34 :: Word32 <- getWord32be
    1079740777 :: Word32 <- getWord32be
    10060 :: Word16 <- getWord16be
    4173372985 :: Word32 <- getWord32be
    61412 :: Word16 <- getWord16be
    v_35 :: Word8 <- getWord8
    1673846352 :: Word32 <- getWord32be
    54 :: Word8 <- getWord8
    538041842 :: Word32 <- getWord32be
    105 :: Word8 <- getWord8
    v_36 :: Word32 <- getWord32be
    99 :: Word8 <- getWord8
    v_37 :: Word8 <- getWord8
    224 :: Word8 <- getWord8
    41 :: Word8 <- getWord8
    v_38 :: Word16 <- getWord16be
    v_39 :: Word8 <- getWord8
    14546 :: Word16 <- getWord16be
    2299184039 :: Word32 <- getWord32be
    2822689298 :: Word32 <- getWord32be
    50060 :: Word16 <- getWord16be
    v_40 :: Word8 <- getWord8
    4230764679 :: Word32 <- getWord32be
    v_41 :: Word16 <- getWord16be
    34579 :: Word16 <- getWord16be
    142 :: Word8 <- getWord8
    v_42 :: Word32 <- getWord32be
    13 :: Word8 <- getWord8
    v_43 :: Word32 <- getWord32be
    v_44 :: Word32 <- getWord32be
    3146 :: Word16 <- getWord16be
    164 :: Word8 <- getWord8
    v_45 :: Word8 <- getWord8
    v_46 :: Word16 <- getWord16be
    1744530371 :: Word32 <- getWord32be
    157 :: Word8 <- getWord8
    v_47 :: Word16 <- getWord16be
    3794034288 :: Word32 <- getWord32be
    v_48 :: Word16 <- getWord16be
    v_49 :: Word16 <- getWord16be
    v_50 :: Word32 <- getWord32be
    v_51 :: Word8 <- getWord8
    3050585778 :: Word32 <- getWord32be
    v_52 :: Word8 <- getWord8
    v_53 :: Word16 <- getWord16be
    v_54 :: Word16 <- getWord16be
    2710367427 :: Word32 <- getWord32be
    v_55 :: Word16 <- getWord16be
    v_56 :: Word16 <- getWord16be
    v_57 :: Word8 <- getWord8
    v_58 :: Word8 <- getWord8
    v_59 :: Word16 <- getWord16be
    53 :: Word8 <- getWord8
    47393 :: Word16 <- getWord16be
    v_60 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word32Value v_32 , Word16Value v_33 , Word32Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word16Value v_38 , Word8Value v_39 , Word8Value v_40 , Word16Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word32Value v_50 , Word8Value v_51 , Word8Value v_52 , Word16Value v_53 , Word16Value v_54 , Word16Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word32Value v_1 , Word32Value v_2 , Word32Value v_3 , Word16Value v_4 , Word32Value v_5 , Word32Value v_6 , Word32Value v_7 , Word8Value v_8 , Word8Value v_9 , Word8Value v_10 , Word32Value v_11 , Word8Value v_12 , Word8Value v_13 , Word16Value v_14 , Word16Value v_15 , Word8Value v_16 , Word32Value v_17 , Word16Value v_18 , Word8Value v_19 , Word16Value v_20 , Word32Value v_21 , Word32Value v_22 , Word8Value v_23 , Word8Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word16Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word32Value v_32 , Word16Value v_33 , Word32Value v_34 , Word8Value v_35 , Word32Value v_36 , Word8Value v_37 , Word16Value v_38 , Word8Value v_39 , Word8Value v_40 , Word16Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word8Value v_45 , Word16Value v_46 , Word16Value v_47 , Word16Value v_48 , Word16Value v_49 , Word32Value v_50 , Word8Value v_51 , Word8Value v_52 , Word16Value v_53 , Word16Value v_54 , Word16Value v_55 , Word16Value v_56 , Word8Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ] = vs 
    putWord8 (232 :: Word8)
    putWord32be 1276478095
    putWord16be v_0
    putWord32be v_1
    putWord32be v_2
    putWord32be v_3
    putWord16be 15493
    putWord16be v_4
    putWord32be 3367363317
    putWord8 (82 :: Word8)
    putWord32be v_5
    putWord32be v_6
    putWord32be v_7
    putWord16be 3631
    putWord8 v_8
    putWord32be 1600947406
    putWord8 v_9
    putWord8 v_10
    putWord32be 3463797063
    putWord32be 1613523012
    putWord32be v_11
    putWord8 v_12
    putWord16be 58532
    putWord8 v_13
    putWord16be v_14
    putWord16be v_15
    putWord8 v_16
    putWord32be v_17
    putWord8 (89 :: Word8)
    putWord16be v_18
    putWord8 (251 :: Word8)
    putWord16be 32097
    putWord32be 4286313474
    putWord8 v_19
    putWord16be 15632
    putWord16be v_20
    putWord32be 2553398544
    putWord32be v_21
    putWord16be 9181
    putWord32be v_22
    putWord8 v_23
    putWord16be 51685
    putWord16be 45976
    putWord8 v_24
    putWord8 v_25
    putWord16be v_26
    putWord32be 73774625
    putWord16be v_27
    putWord32be 2784932716
    putWord8 (208 :: Word8)
    putWord16be v_28
    putWord8 (235 :: Word8)
    putWord32be v_29
    putWord32be v_30
    putWord32be 932174640
    putWord8 v_31
    putWord32be v_32
    putWord16be v_33
    putWord8 (95 :: Word8)
    putWord8 (249 :: Word8)
    putWord32be v_34
    putWord32be 1079740777
    putWord16be 10060
    putWord32be 4173372985
    putWord16be 61412
    putWord8 v_35
    putWord32be 1673846352
    putWord8 (54 :: Word8)
    putWord32be 538041842
    putWord8 (105 :: Word8)
    putWord32be v_36
    putWord8 (99 :: Word8)
    putWord8 v_37
    putWord8 (224 :: Word8)
    putWord8 (41 :: Word8)
    putWord16be v_38
    putWord8 v_39
    putWord16be 14546
    putWord32be 2299184039
    putWord32be 2822689298
    putWord16be 50060
    putWord8 v_40
    putWord32be 4230764679
    putWord16be v_41
    putWord16be 34579
    putWord8 (142 :: Word8)
    putWord32be v_42
    putWord8 (13 :: Word8)
    putWord32be v_43
    putWord32be v_44
    putWord16be 3146
    putWord8 (164 :: Word8)
    putWord8 v_45
    putWord16be v_46
    putWord32be 1744530371
    putWord8 (157 :: Word8)
    putWord16be v_47
    putWord32be 3794034288
    putWord16be v_48
    putWord16be v_49
    putWord32be v_50
    putWord8 v_51
    putWord32be 3050585778
    putWord8 v_52
    putWord16be v_53
    putWord16be v_54
    putWord32be 2710367427
    putWord16be v_55
    putWord16be v_56
    putWord8 v_57
    putWord8 v_58
    putWord16be v_59
    putWord8 (53 :: Word8)
    putWord16be 47393
    putWord16be v_60
    return ()

static_structure = StaticStructure {properties = [Value (Word8Value 232),Value (Word32Value 1276478095),Hole {byte_offset = 5, hole_type = Word16Hole},Hole {byte_offset = 7, hole_type = Word32Hole},Hole {byte_offset = 11, hole_type = Word32Hole},Hole {byte_offset = 15, hole_type = Word32Hole},Value (Word16Value 15493),Hole {byte_offset = 21, hole_type = Word16Hole},Value (Word32Value 3367363317),Value (Word8Value 82),Hole {byte_offset = 28, hole_type = Word32Hole},Hole {byte_offset = 32, hole_type = Word32Hole},Hole {byte_offset = 36, hole_type = Word32Hole},Value (Word16Value 3631),Hole {byte_offset = 42, hole_type = Word8Hole},Value (Word32Value 1600947406),Hole {byte_offset = 47, hole_type = Word8Hole},Hole {byte_offset = 48, hole_type = Word8Hole},Value (Word32Value 3463797063),Value (Word32Value 1613523012),Hole {byte_offset = 57, hole_type = Word32Hole},Hole {byte_offset = 61, hole_type = Word8Hole},Value (Word16Value 58532),Hole {byte_offset = 64, hole_type = Word8Hole},Hole {byte_offset = 65, hole_type = Word16Hole},Hole {byte_offset = 67, hole_type = Word16Hole},Hole {byte_offset = 69, hole_type = Word8Hole},Hole {byte_offset = 70, hole_type = Word32Hole},Value (Word8Value 89),Hole {byte_offset = 75, hole_type = Word16Hole},Value (Word8Value 251),Value (Word16Value 32097),Value (Word32Value 4286313474),Hole {byte_offset = 84, hole_type = Word8Hole},Value (Word16Value 15632),Hole {byte_offset = 87, hole_type = Word16Hole},Value (Word32Value 2553398544),Hole {byte_offset = 93, hole_type = Word32Hole},Value (Word16Value 9181),Hole {byte_offset = 99, hole_type = Word32Hole},Hole {byte_offset = 103, hole_type = Word8Hole},Value (Word16Value 51685),Value (Word16Value 45976),Hole {byte_offset = 108, hole_type = Word8Hole},Hole {byte_offset = 109, hole_type = Word8Hole},Hole {byte_offset = 110, hole_type = Word16Hole},Value (Word32Value 73774625),Hole {byte_offset = 116, hole_type = Word16Hole},Value (Word32Value 2784932716),Value (Word8Value 208),Hole {byte_offset = 123, hole_type = Word16Hole},Value (Word8Value 235),Hole {byte_offset = 126, hole_type = Word32Hole},Hole {byte_offset = 130, hole_type = Word32Hole},Value (Word32Value 932174640),Hole {byte_offset = 138, hole_type = Word8Hole},Hole {byte_offset = 139, hole_type = Word32Hole},Hole {byte_offset = 143, hole_type = Word16Hole},Value (Word8Value 95),Value (Word8Value 249),Hole {byte_offset = 147, hole_type = Word32Hole},Value (Word32Value 1079740777),Value (Word16Value 10060),Value (Word32Value 4173372985),Value (Word16Value 61412),Hole {byte_offset = 163, hole_type = Word8Hole},Value (Word32Value 1673846352),Value (Word8Value 54),Value (Word32Value 538041842),Value (Word8Value 105),Hole {byte_offset = 174, hole_type = Word32Hole},Value (Word8Value 99),Hole {byte_offset = 179, hole_type = Word8Hole},Value (Word8Value 224),Value (Word8Value 41),Hole {byte_offset = 182, hole_type = Word16Hole},Hole {byte_offset = 184, hole_type = Word8Hole},Value (Word16Value 14546),Value (Word32Value 2299184039),Value (Word32Value 2822689298),Value (Word16Value 50060),Hole {byte_offset = 197, hole_type = Word8Hole},Value (Word32Value 4230764679),Hole {byte_offset = 202, hole_type = Word16Hole},Value (Word16Value 34579),Value (Word8Value 142),Hole {byte_offset = 207, hole_type = Word32Hole},Value (Word8Value 13),Hole {byte_offset = 212, hole_type = Word32Hole},Hole {byte_offset = 216, hole_type = Word32Hole},Value (Word16Value 3146),Value (Word8Value 164),Hole {byte_offset = 223, hole_type = Word8Hole},Hole {byte_offset = 224, hole_type = Word16Hole},Value (Word32Value 1744530371),Value (Word8Value 157),Hole {byte_offset = 231, hole_type = Word16Hole},Value (Word32Value 3794034288),Hole {byte_offset = 237, hole_type = Word16Hole},Hole {byte_offset = 239, hole_type = Word16Hole},Hole {byte_offset = 241, hole_type = Word32Hole},Hole {byte_offset = 245, hole_type = Word8Hole},Value (Word32Value 3050585778),Hole {byte_offset = 250, hole_type = Word8Hole},Hole {byte_offset = 251, hole_type = Word16Hole},Hole {byte_offset = 253, hole_type = Word16Hole},Value (Word32Value 2710367427),Hole {byte_offset = 259, hole_type = Word16Hole},Hole {byte_offset = 261, hole_type = Word16Hole},Hole {byte_offset = 263, hole_type = Word8Hole},Hole {byte_offset = 264, hole_type = Word8Hole},Hole {byte_offset = 265, hole_type = Word16Hole},Value (Word8Value 53),Value (Word16Value 47393),Hole {byte_offset = 270, hole_type = Word16Hole}]}
