{-# LANGUAGE RebindableSyntax #-}
-- Copyright   :  (C) 2009 Corey O'Connor
-- License     :  BSD-style (see the file LICENSE)

import Bind.Marshal.Prelude
import Bind.Marshal.Verify

import Bind.Marshal.DataModel.Base
import Bind.Marshal.DataModel.App

-- An action acting upon a data model.
data TestAction model model' a

instance ( model_0 ~ model_4
         , model_1 ~ model_2
         , model_3 ~ model_5
         ) => Bind (TestAction model_0 model_1 )
                   (TestAction model_2 model_3 )
                   (TestAction model_4 model_5 )
    where
        (>>=) = undefined


instance Functor (TestAction model model' ) where
    fmap = undefined

-- examining monads expressing only static buffer actions.
--
-- Introduce a dummy static buffer unit action:
data DummyAction
data DummyActionRep a

sb :: ( tModel' ~ DMApp tModel (BSUnit DummyAction) 
      ) => TestAction tModel tModel' ()
sb = undefined

t_sb_0 :: TestAction DMNil (BSSeq (BSUnit  DummyAction) DMNil) ()
t_sb_0 = sb

t_sb_1 :: TestAction DMNil  
                   (DMApp (BSUnit DummyAction) 
                          (BSUnit DummyAction)
                   )  
                   ()
t_sb_1 = sb >> sb

t_sb_2 :: TestAction DMNil  
                   (DMApp (BSUnit DummyAction) 
                          (DMApp (BSUnit DummyAction)
                                 (BSUnit DummyAction)
                          )
                   )  
                   ()
t_sb_2 = sb >> sb >> sb

t_sb_2' = sb >> sb >> sb

t_sb_3 :: TestAction DMNil  
                   (DMApp (BSUnit DummyAction) 
                          (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                        (BSUnit DummyAction)
                                 )
                          )
                   )  
                   ()
t_sb_3 = sb >> sb >> sb >> sb

t_sb_3' = sb >> sb >> sb >> sb

t_sb_4 :: TestAction DMNil  
                   (DMApp (BSUnit DummyAction) 
                          (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                 (DMApp (BSUnit DummyAction)
                                        (BSUnit DummyAction)
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                                 )
                          )
                   )  
                   ()
t_sb_4 = do
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb
    sb

main = run_test $ do
    returnM () :: Test ()

