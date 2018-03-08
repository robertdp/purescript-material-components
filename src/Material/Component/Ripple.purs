module Material.Component.Ripple where

import Prelude
import Control.Monad.Eff (Eff)

import Material.Types
import Material.Utils


foreign import data Ripple :: Type


foreign import createRipple :: forall e eff. Element e => e -> Eff (material :: MATERIAL | eff) (Material Ripple)

instance componentRipple :: Component Ripple where
  createComponent = createRipple
  destroyComponent = defaultDestroyComponent


class Component a <= RippleComponent a where
  createComponentWithRipple :: forall e eff. Element e => e -> Eff (material :: MATERIAL | eff) (Material a)
