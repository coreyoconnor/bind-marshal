{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
module TestCases.BinaryCase6 where
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
    v_0 :: Word16 <- getWord16be
    v_1 :: Word8 <- getWord8
    2588737377 :: Word32 <- getWord32be
    v_2 :: Word8 <- getWord8
    v_3 :: Word8 <- getWord8
    59048 :: Word16 <- getWord16be
    v_4 :: Word8 <- getWord8
    v_5 :: Word16 <- getWord16be
    675920477 :: Word32 <- getWord32be
    34868 :: Word16 <- getWord16be
    1228508434 :: Word32 <- getWord32be
    1169012367 :: Word32 <- getWord32be
    10604 :: Word16 <- getWord16be
    947850624 :: Word32 <- getWord32be
    2034582834 :: Word32 <- getWord32be
    2694763103 :: Word32 <- getWord32be
    v_6 :: Word32 <- getWord32be
    34045 :: Word16 <- getWord16be
    15385 :: Word16 <- getWord16be
    v_7 :: Word16 <- getWord16be
    v_8 :: Word16 <- getWord16be
    2917245084 :: Word32 <- getWord32be
    v_9 :: Word32 <- getWord32be
    v_10 :: Word32 <- getWord32be
    v_11 :: Word32 <- getWord32be
    63 :: Word8 <- getWord8
    45496 :: Word16 <- getWord16be
    212 :: Word8 <- getWord8
    v_12 :: Word8 <- getWord8
    v_13 :: Word32 <- getWord32be
    v_14 :: Word16 <- getWord16be
    v_15 :: Word32 <- getWord32be
    6141 :: Word16 <- getWord16be
    180 :: Word8 <- getWord8
    v_16 :: Word16 <- getWord16be
    42 :: Word8 <- getWord8
    v_17 :: Word32 <- getWord32be
    15 :: Word8 <- getWord8
    v_18 :: Word32 <- getWord32be
    v_19 :: Word8 <- getWord8
    v_20 :: Word32 <- getWord32be
    v_21 :: Word32 <- getWord32be
    64941 :: Word16 <- getWord16be
    v_22 :: Word16 <- getWord16be
    v_23 :: Word32 <- getWord32be
    3709 :: Word16 <- getWord16be
    v_24 :: Word16 <- getWord16be
    v_25 :: Word8 <- getWord8
    v_26 :: Word16 <- getWord16be
    89 :: Word8 <- getWord8
    36 :: Word8 <- getWord8
    v_27 :: Word16 <- getWord16be
    v_28 :: Word8 <- getWord8
    v_29 :: Word32 <- getWord32be
    v_30 :: Word32 <- getWord32be
    23 :: Word8 <- getWord8
    v_31 :: Word8 <- getWord8
    v_32 :: Word16 <- getWord16be
    3492544134 :: Word32 <- getWord32be
    191 :: Word8 <- getWord8
    v_33 :: Word32 <- getWord32be
    11081 :: Word16 <- getWord16be
    142 :: Word8 <- getWord8
    v_34 :: Word8 <- getWord8
    29429 :: Word16 <- getWord16be
    v_35 :: Word8 <- getWord8
    v_36 :: Word16 <- getWord16be
    v_37 :: Word8 <- getWord8
    189 :: Word8 <- getWord8
    v_38 :: Word8 <- getWord8
    2322 :: Word16 <- getWord16be
    1118897807 :: Word32 <- getWord32be
    v_39 :: Word32 <- getWord32be
    v_40 :: Word16 <- getWord16be
    v_41 :: Word32 <- getWord32be
    157 :: Word8 <- getWord8
    v_42 :: Word32 <- getWord32be
    146860030 :: Word32 <- getWord32be
    v_43 :: Word32 <- getWord32be
    v_44 :: Word32 <- getWord32be
    v_45 :: Word16 <- getWord16be
    1116540064 :: Word32 <- getWord32be
    v_46 :: Word32 <- getWord32be
    v_47 :: Word8 <- getWord8
    48485 :: Word16 <- getWord16be
    v_48 :: Word32 <- getWord32be
    v_49 :: Word8 <- getWord8
    2880663179 :: Word32 <- getWord32be
    v_50 :: Word8 <- getWord8
    v_51 :: Word8 <- getWord8
    17 :: Word8 <- getWord8
    v_52 :: Word16 <- getWord16be
    v_53 :: Word32 <- getWord32be
    62153 :: Word16 <- getWord16be
    108 :: Word8 <- getWord8
    9 :: Word8 <- getWord8
    2372292676 :: Word32 <- getWord32be
    1793276335 :: Word32 <- getWord32be
    659409606 :: Word32 <- getWord32be
    219 :: Word8 <- getWord8
    v_54 :: Word32 <- getWord32be
    v_55 :: Word16 <- getWord16be
    v_56 :: Word16 <- getWord16be
    v_57 :: Word16 <- getWord16be
    201 :: Word8 <- getWord8
    23189 :: Word16 <- getWord16be
    1576121518 :: Word32 <- getWord32be
    v_58 :: Word8 <- getWord8
    3311786275 :: Word32 <- getWord32be
    v_59 :: Word16 <- getWord16be
    158057033 :: Word32 <- getWord32be
    1052730338 :: Word32 <- getWord32be
    3606803625 :: Word32 <- getWord32be
    v_60 :: Word16 <- getWord16be
    return  [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word16Value v_45 , Word32Value v_46 , Word8Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word8Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word16Value v_55 , Word16Value v_56 , Word16Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ]

ser_static_structure vs = do 
    let [ Word16Value v_0 , Word8Value v_1 , Word8Value v_2 , Word8Value v_3 , Word8Value v_4 , Word16Value v_5 , Word32Value v_6 , Word16Value v_7 , Word16Value v_8 , Word32Value v_9 , Word32Value v_10 , Word32Value v_11 , Word8Value v_12 , Word32Value v_13 , Word16Value v_14 , Word32Value v_15 , Word16Value v_16 , Word32Value v_17 , Word32Value v_18 , Word8Value v_19 , Word32Value v_20 , Word32Value v_21 , Word16Value v_22 , Word32Value v_23 , Word16Value v_24 , Word8Value v_25 , Word16Value v_26 , Word16Value v_27 , Word8Value v_28 , Word32Value v_29 , Word32Value v_30 , Word8Value v_31 , Word16Value v_32 , Word32Value v_33 , Word8Value v_34 , Word8Value v_35 , Word16Value v_36 , Word8Value v_37 , Word8Value v_38 , Word32Value v_39 , Word16Value v_40 , Word32Value v_41 , Word32Value v_42 , Word32Value v_43 , Word32Value v_44 , Word16Value v_45 , Word32Value v_46 , Word8Value v_47 , Word32Value v_48 , Word8Value v_49 , Word8Value v_50 , Word8Value v_51 , Word16Value v_52 , Word32Value v_53 , Word32Value v_54 , Word16Value v_55 , Word16Value v_56 , Word16Value v_57 , Word8Value v_58 , Word16Value v_59 , Word16Value v_60 ] = vs 
    putWord16be v_0
    putWord8 v_1
    putWord32be 2588737377
    putWord8 v_2
    putWord8 v_3
    putWord16be 59048
    putWord8 v_4
    putWord16be v_5
    putWord32be 675920477
    putWord16be 34868
    putWord32be 1228508434
    putWord32be 1169012367
    putWord16be 10604
    putWord32be 947850624
    putWord32be 2034582834
    putWord32be 2694763103
    putWord32be v_6
    putWord16be 34045
    putWord16be 15385
    putWord16be v_7
    putWord16be v_8
    putWord32be 2917245084
    putWord32be v_9
    putWord32be v_10
    putWord32be v_11
    putWord8 (63 :: Word8)
    putWord16be 45496
    putWord8 (212 :: Word8)
    putWord8 v_12
    putWord32be v_13
    putWord16be v_14
    putWord32be v_15
    putWord16be 6141
    putWord8 (180 :: Word8)
    putWord16be v_16
    putWord8 (42 :: Word8)
    putWord32be v_17
    putWord8 (15 :: Word8)
    putWord32be v_18
    putWord8 v_19
    putWord32be v_20
    putWord32be v_21
    putWord16be 64941
    putWord16be v_22
    putWord32be v_23
    putWord16be 3709
    putWord16be v_24
    putWord8 v_25
    putWord16be v_26
    putWord8 (89 :: Word8)
    putWord8 (36 :: Word8)
    putWord16be v_27
    putWord8 v_28
    putWord32be v_29
    putWord32be v_30
    putWord8 (23 :: Word8)
    putWord8 v_31
    putWord16be v_32
    putWord32be 3492544134
    putWord8 (191 :: Word8)
    putWord32be v_33
    putWord16be 11081
    putWord8 (142 :: Word8)
    putWord8 v_34
    putWord16be 29429
    putWord8 v_35
    putWord16be v_36
    putWord8 v_37
    putWord8 (189 :: Word8)
    putWord8 v_38
    putWord16be 2322
    putWord32be 1118897807
    putWord32be v_39
    putWord16be v_40
    putWord32be v_41
    putWord8 (157 :: Word8)
    putWord32be v_42
    putWord32be 146860030
    putWord32be v_43
    putWord32be v_44
    putWord16be v_45
    putWord32be 1116540064
    putWord32be v_46
    putWord8 v_47
    putWord16be 48485
    putWord32be v_48
    putWord8 v_49
    putWord32be 2880663179
    putWord8 v_50
    putWord8 v_51
    putWord8 (17 :: Word8)
    putWord16be v_52
    putWord32be v_53
    putWord16be 62153
    putWord8 (108 :: Word8)
    putWord8 (9 :: Word8)
    putWord32be 2372292676
    putWord32be 1793276335
    putWord32be 659409606
    putWord8 (219 :: Word8)
    putWord32be v_54
    putWord16be v_55
    putWord16be v_56
    putWord16be v_57
    putWord8 (201 :: Word8)
    putWord16be 23189
    putWord32be 1576121518
    putWord8 v_58
    putWord32be 3311786275
    putWord16be v_59
    putWord32be 158057033
    putWord32be 1052730338
    putWord32be 3606803625
    putWord16be v_60
    return ()

static_structure = StaticStructure {properties = [Hole {byte_offset = 0, hole_type = Word16Hole},Hole {byte_offset = 2, hole_type = Word8Hole},Value (Word32Value 2588737377),Hole {byte_offset = 7, hole_type = Word8Hole},Hole {byte_offset = 8, hole_type = Word8Hole},Value (Word16Value 59048),Hole {byte_offset = 11, hole_type = Word8Hole},Hole {byte_offset = 12, hole_type = Word16Hole},Value (Word32Value 675920477),Value (Word16Value 34868),Value (Word32Value 1228508434),Value (Word32Value 1169012367),Value (Word16Value 10604),Value (Word32Value 947850624),Value (Word32Value 2034582834),Value (Word32Value 2694763103),Hole {byte_offset = 42, hole_type = Word32Hole},Value (Word16Value 34045),Value (Word16Value 15385),Hole {byte_offset = 50, hole_type = Word16Hole},Hole {byte_offset = 52, hole_type = Word16Hole},Value (Word32Value 2917245084),Hole {byte_offset = 58, hole_type = Word32Hole},Hole {byte_offset = 62, hole_type = Word32Hole},Hole {byte_offset = 66, hole_type = Word32Hole},Value (Word8Value 63),Value (Word16Value 45496),Value (Word8Value 212),Hole {byte_offset = 74, hole_type = Word8Hole},Hole {byte_offset = 75, hole_type = Word32Hole},Hole {byte_offset = 79, hole_type = Word16Hole},Hole {byte_offset = 81, hole_type = Word32Hole},Value (Word16Value 6141),Value (Word8Value 180),Hole {byte_offset = 88, hole_type = Word16Hole},Value (Word8Value 42),Hole {byte_offset = 91, hole_type = Word32Hole},Value (Word8Value 15),Hole {byte_offset = 96, hole_type = Word32Hole},Hole {byte_offset = 100, hole_type = Word8Hole},Hole {byte_offset = 101, hole_type = Word32Hole},Hole {byte_offset = 105, hole_type = Word32Hole},Value (Word16Value 64941),Hole {byte_offset = 111, hole_type = Word16Hole},Hole {byte_offset = 113, hole_type = Word32Hole},Value (Word16Value 3709),Hole {byte_offset = 119, hole_type = Word16Hole},Hole {byte_offset = 121, hole_type = Word8Hole},Hole {byte_offset = 122, hole_type = Word16Hole},Value (Word8Value 89),Value (Word8Value 36),Hole {byte_offset = 126, hole_type = Word16Hole},Hole {byte_offset = 128, hole_type = Word8Hole},Hole {byte_offset = 129, hole_type = Word32Hole},Hole {byte_offset = 133, hole_type = Word32Hole},Value (Word8Value 23),Hole {byte_offset = 138, hole_type = Word8Hole},Hole {byte_offset = 139, hole_type = Word16Hole},Value (Word32Value 3492544134),Value (Word8Value 191),Hole {byte_offset = 146, hole_type = Word32Hole},Value (Word16Value 11081),Value (Word8Value 142),Hole {byte_offset = 153, hole_type = Word8Hole},Value (Word16Value 29429),Hole {byte_offset = 156, hole_type = Word8Hole},Hole {byte_offset = 157, hole_type = Word16Hole},Hole {byte_offset = 159, hole_type = Word8Hole},Value (Word8Value 189),Hole {byte_offset = 161, hole_type = Word8Hole},Value (Word16Value 2322),Value (Word32Value 1118897807),Hole {byte_offset = 168, hole_type = Word32Hole},Hole {byte_offset = 172, hole_type = Word16Hole},Hole {byte_offset = 174, hole_type = Word32Hole},Value (Word8Value 157),Hole {byte_offset = 179, hole_type = Word32Hole},Value (Word32Value 146860030),Hole {byte_offset = 187, hole_type = Word32Hole},Hole {byte_offset = 191, hole_type = Word32Hole},Hole {byte_offset = 195, hole_type = Word16Hole},Value (Word32Value 1116540064),Hole {byte_offset = 201, hole_type = Word32Hole},Hole {byte_offset = 205, hole_type = Word8Hole},Value (Word16Value 48485),Hole {byte_offset = 208, hole_type = Word32Hole},Hole {byte_offset = 212, hole_type = Word8Hole},Value (Word32Value 2880663179),Hole {byte_offset = 217, hole_type = Word8Hole},Hole {byte_offset = 218, hole_type = Word8Hole},Value (Word8Value 17),Hole {byte_offset = 220, hole_type = Word16Hole},Hole {byte_offset = 222, hole_type = Word32Hole},Value (Word16Value 62153),Value (Word8Value 108),Value (Word8Value 9),Value (Word32Value 2372292676),Value (Word32Value 1793276335),Value (Word32Value 659409606),Value (Word8Value 219),Hole {byte_offset = 243, hole_type = Word32Hole},Hole {byte_offset = 247, hole_type = Word16Hole},Hole {byte_offset = 249, hole_type = Word16Hole},Hole {byte_offset = 251, hole_type = Word16Hole},Value (Word8Value 201),Value (Word16Value 23189),Value (Word32Value 1576121518),Hole {byte_offset = 260, hole_type = Word8Hole},Value (Word32Value 3311786275),Hole {byte_offset = 265, hole_type = Word16Hole},Value (Word32Value 158057033),Value (Word32Value 1052730338),Value (Word32Value 3606803625),Hole {byte_offset = 279, hole_type = Word16Hole}]}
