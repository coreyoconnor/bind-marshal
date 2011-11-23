-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE CPP #-}
{-# LANGUAGE PackageImports #-}
{-# LANGUAGE ImplicitPrelude #-}
module ArbMarshal.GenCode
where

import ArbMarshal

import "monads-tf" Control.Monad.Writer
import "monads-tf" Control.Monad.State

full_static_module (StaticStructure props) name = (flip evalState) 0 $ execWriterT $ do
    bind_marshal_module_header name
    tell $ "des_static_structure = do \n"
    mapM_ (\p -> tell "    " >> des_prop p >> tell "\n") props
    tell "    return "
    output_return_map props
    tell $ "ser_static_structure vs = do \n"
    output_variables_map props
    output_prop_ser props
    tell "    return ()\n\n"
    tell $ "static_structure = "
    tell $ show (StaticStructure props)
    tell "\n"

bind_marshal_module_header name = tell $ "\
{-# LANGUAGE RebindableSyntax #-}\n\
module TestCases." ++ name ++ " where\n\
import Bind.Marshal.Prelude\n\
import Bind.Marshal.Action.Base\n\
import Bind.Marshal.Action.Monad.Static\n\
import Bind.Marshal.Action.Static\n\
import Bind.Marshal.DesAction.Static\n\
import Bind.Marshal.SerAction.Static\n\
import Bind.Marshal.StaticProperties\n\
import Bind.Marshal.StdLib.Des\n\
import Bind.Marshal.StdLib.Utils.Des\n\
import Bind.Marshal.StdLib.Ser\n\
import Bind.Marshal.StdLib.Utils.Ser\n\
\n\
import ArbMarshal\n\
import ArbMarshal.GenCode.Utils\n\
\n\
import Data.Word\n\
\n"

des_prop (Value v) = des_value v
des_prop (Hole _ h) = des_hole h

des_value (Word8Value v) = do
    tell (show v)
    tell " :: Word8 <- des"
des_value (Word16Value v) = do
    tell (show v)
    tell " :: Word16 <- des_word16_be"
des_value (Word32Value v) = do
    tell (show v)
    tell " :: Word32 <- des_word32_be"

des_hole Word8Hole = do
    i <- get
    tell $ "v_" ++ show i ++ " :: Word8 <- des"
    put (i+1)
des_hole Word16Hole = do
    i <- get
    tell $ "v_" ++ show i ++ " :: Word16 <- des_word16_be"
    put (i+1)
des_hole Word32Hole = do
    i <- get
    tell $ "v_" ++ show i ++ " :: Word32 <- des_word32_be"
    put (i+1)

output_return_map props = do
    tell " [ "
    w 0 [ h | Hole _ h <- props ]
    where
        w i [] = do
            tell " ]\n\n"
            return i
        w i (Word8Hole : props') = do
            when (i /= 0 ) $ tell " , "
            tell $ "Word8Value v_" ++ show i
            w (i+1) props'
        w i (Word16Hole : props') = do
            when (i /= 0 ) $ tell " , "
            tell $ "Word16Value v_" ++ show i
            w (i+1) props'
        w i (Word32Hole : props') = do
            when (i /= 0 ) $ tell " , "
            tell $ "Word32Value v_" ++ show i
            w (i+1) props'


output_variables_map props = do
    tell "    let [ "
    w 0 [ h | Hole _ h <- props ]
    where
        w i [] = do
            tell " ] = vs \n"
            return i
        w i (Word8Hole : props') = do
            when (i /= 0 ) $ tell " , " -- tell "\n        , "
            tell $ "Word8Value v_" ++ show i
            w (i+1) props'
        w i (Word16Hole : props') = do
            when (i /= 0 ) $ tell " , " -- tell "\n        , "
            tell $ "Word16Value v_" ++ show i
            w (i+1) props'
        w i (Word32Hole : props') = do
            when (i /= 0 ) $ tell " , " -- tell "\n        , "
            tell $ "Word32Value v_" ++ show i
            w (i+1) props'
            
output_prop_ser props = do
    w 0 props
    where
        w i [] = return ()
        w i (Hole _ h : props') = do
            tell "    "
            wh h
            w (i+1) props'
            where
                wh Word8Hole = tell $ "ser v_" ++ show i ++ "\n"
                wh Word16Hole = tell $ "ser_word16_be v_" ++ show i ++ "\n"
                wh Word32Hole = tell $ "ser_word32_be v_" ++ show i ++ "\n"
        w i (Value v : props') = do
            tell "    "
            wv v
            w i props'
            where
                wv (Word8Value c) = tell $ "ser (" ++ show c ++ " :: Word8)\n"
                wv (Word16Value c) = tell $ "ser_word16_be " ++ show c ++ "\n"
                wv (Word32Value c) = tell $ "ser_word32_be " ++ show c ++ "\n"

binary_module (StaticStructure props) name = (flip evalState) 0 $ execWriterT $ do
    binary_module_header name
    tell $ "des_static_structure = do \n"
    mapM_ (\p -> tell "    " >> binary_get_prop p >> tell "\n") props
    tell "    return "
    output_return_map props
    tell $ "ser_static_structure vs = do \n"
    output_variables_map props
    output_props_put props
    tell "    return ()\n\n"
    tell $ "static_structure = "
    tell $ show (StaticStructure props)
    tell "\n"

binary_module_header name = tell $ "\
{-# LANGUAGE NoRebindableSyntax #-}\n\
{-# LANGUAGE ImplicitPrelude #-}\n\
module TestCases." ++ name ++ " where\n\
import Control.Applicative\n\
import Control.DeepSeq\n\
import Control.Monad\n\
\n\
import Data.Binary.Put\n\
import Data.Binary.Get\n\
import qualified Data.ByteString.Lazy as BS\n\
import qualified Data.ByteString.Lazy.Internal as L\n\
import qualified Data.ByteString.Internal as S\n\
import Data.Monoid\n\
\n\
import ArbMarshal\n\
import ArbMarshal.GenCode.Utils\n\
\n\
import Data.Word\n\
\n"

binary_get_prop (Value v) = binary_get_value v
binary_get_prop (Hole _ h) = binary_get_hole h

binary_get_value (Word8Value v) = do
    tell (show v)
    tell " :: Word8 <- getWord8"
binary_get_value (Word16Value v) = do
    tell (show v)
    tell " :: Word16 <- getWord16be"
binary_get_value (Word32Value v) = do
    tell (show v)
    tell " :: Word32 <- getWord32be"

binary_get_hole Word8Hole = do
    i <- get
    tell $ "v_" ++ show i ++ " :: Word8 <- getWord8"
    put (i+1)
binary_get_hole Word16Hole = do
    i <- get
    tell $ "v_" ++ show i ++ " :: Word16 <- getWord16be"
    put (i+1)
binary_get_hole Word32Hole = do
    i <- get
    tell $ "v_" ++ show i ++ " :: Word32 <- getWord32be"
    put (i+1)

output_props_put props = do
    w 0 props
    where
        w i [] = return ()
        w i (Hole _ h : props') = do
            tell "    "
            wh h
            w (i+1) props'
            where
                wh Word8Hole = tell $ "putWord8 v_" ++ show i ++ "\n"
                wh Word16Hole = tell $ "putWord16be v_" ++ show i ++ "\n"
                wh Word32Hole = tell $ "putWord32be v_" ++ show i ++ "\n"
        w i (Value v : props') = do
            tell "    "
            wv v
            w i props'
            where
                wv (Word8Value c) = tell $ "putWord8 (" ++ show c ++ " :: Word8)\n"
                wv (Word16Value c) = tell $ "putWord16be " ++ show c ++ "\n"
                wv (Word32Value c) = tell $ "putWord32be " ++ show c ++ "\n"

