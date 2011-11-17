-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Dev.Prelude

import Dev.Project

main = project $ do
    require_package [ "base"
                    , "unix"
                    , "mtl"
                    , "numeric-prelude"
                    , "monads-tf"
                    , "transformers"
                    , "containers"
                    , "deepseq"
                    , "random"
                    , "QuickCheck-2.4"
                    , "type-level-tf-0.2.1"
                    , "ghc-prim"
                    , "strict"
                    , "stm"
                    , "bytestring"
                    ]
    ghc_option "-XTypeFamilies"
    ghc_option "-XCPP"
    ghc_option "-XForeignFunctionInterface"
    ghc_option "-XScopedTypeVariables"
    ghc_option "-XNoImplicitPrelude"
    ghc_option "-XNamedFieldPuns"
    ghc_option "-XUndecidableInstances"
    ghc_option "-XTypeSynonymInstances"
    ghc_option "-XFlexibleInstances"
    ghc_option "-XFlexibleContexts"
    ghc_option "-XMultiParamTypeClasses"
    ghc_option "-XPackageImports"
    ghc_option "-XRankNTypes"
    ghc_option "-XNoMonomorphismRestriction"
    ghc_option "-XLiberalTypeSynonyms"
    ghc_option "-XEmptyDataDecls"
    ghc_option "-XGADTs"
    ghc_option "-XKindSignatures"
    ghc_option "-XBangPatterns"
    ghc_option "-XRecordWildCards"
    ghc_option "-XTypeOperators"

    ghc_option "-fcontext-stack=1000"
    ghc_option "-fliberate-case-threshold=1000"
    ghc_option "-threaded"
    ghc_option "-O2"
    ghc_option "-with-rtsopts=-K128M"
    ghc_option "-fspec-constr"
    ghc_option "-fliberate-case"
    ghc_option "-fstatic-argument-transformation"
    -- ghc_option "-funfolding-creation-threshold=1000"
    ghc_option "-funfolding-use-threshold=46"
    ghc_option "-fspec-constr-count=200"

    -- XXX should be under verify-bind-marshal
    require_package "binary"
    require_package "directory"
    require_package "filepath"

    library "bind-marshal" [ "Bind.Marshal" ]
    
    require_package "dev-system"

    library "verify-bind-marshal" [ "Bind.Marshal.Verify" ]
    return ()
