-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

{-# LANGUAGE NoRebindableSyntax #-}
{-# LANGUAGE ImplicitPrelude #-}
import Verify

import ArbMarshal
import ArbMarshal.GenCode

import Control.Monad

import System.Directory
import System.FilePath
import System.IO

num_cases = 20
max_full_static_case_size = 128
base_dir = "TestCases"

main = do
    createDirectoryIfMissing True base_dir
    full_static_cases <- gen_a_bunch ((resize max_full_static_case_size arbitrary) :: Gen StaticStructure) 
                                     num_cases
    forM_ [0 .. num_cases - 1] $ \i -> do
        let out_file = base_dir </> mod_name ++ ".hs"
            mod_name = "FullStaticCase" ++ show i
            case_text = full_static_module (full_static_cases !! i) mod_name
        writeFile out_file case_text

    forM_ [0 .. num_cases - 1] $ \i -> do
        let out_file = base_dir </> mod_name ++ ".hs"
            mod_name = "BinaryCase" ++ show i
            case_text = binary_module (full_static_cases !! i) mod_name
        writeFile out_file case_text
    return ()

