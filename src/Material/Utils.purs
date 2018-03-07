module Material.Utils where

import Material.Types


foreign import _defaultDestroyComponent :: forall a. Unit -> Material a -> Eff (material :: MATERIAL) Unit

defaultDestroyComponent :: forall a. Material a -> Eff (material :: MATERIAL) Unit
defaultDestroyComponent = _defaultDestroyComponent unit

foreign import _createRipple :: forall e. Element e => Unit -> e -> Eff (material :: MATERIAL) Unit

createRipple :: forall e. Element e => e -> Eff (material :: MATERIAL) Unit
createRipple = _createRipple unit