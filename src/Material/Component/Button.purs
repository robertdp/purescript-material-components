module Material.Component.Button where

import Material.Types
import Material.Utils


foreign import data Button :: Type

foreign import createButton :: forall a. Element a => a -> Eff (material :: MATERIAL) (Material Button)

instance Component Button where
  createComponent = createButton
  destroyComponent = defaultDestroyComponent


instance Ripple Button where
  createComponentWithRipple element = do
    button <- createComponent element
    attachRipple element
    pure button