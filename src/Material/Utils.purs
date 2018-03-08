module Material.Utils where

import Prelude
import Material.Types
import Control.Monad.Eff (Eff)


foreign import _defaultDestroyComponent :: forall a eff. Unit -> Material a -> Eff (material :: MATERIAL | eff) Unit

defaultDestroyComponent :: forall a eff. Material a -> Eff (material :: MATERIAL | eff) Unit
defaultDestroyComponent = _defaultDestroyComponent unit

