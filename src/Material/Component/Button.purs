module Material.Component.Button where

import Prelude
import Control.Monad.Eff (Eff)

import Material.Types
import Material.Utils
import Material.Component.Ripple


foreign import data Button :: Type

foreign import createButton :: forall e eff. Element e => e -> Eff (material :: MATERIAL | eff) (Material Button)

instance componentButton :: Component Button where
  createComponent = createButton
  destroyComponent = defaultDestroyComponent


instance rippleComponentButton :: RippleComponent Button where
  createComponentWithRipple element = do
    button <- createComponent element
    void $ createRipple element
    pure button

