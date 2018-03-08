module Material.Types where

import Prelude
import Control.Monad.Eff (kind Effect, Eff)


foreign import data MATERIAL :: Effect

foreign import data Material :: Type -> Type

class Element e

class Component a where
  createComponent :: forall e eff. Element e => e -> Eff (material :: MATERIAL | eff) (Material a)
  destroyComponent :: forall eff. Material a -> Eff (material :: MATERIAL | eff) Unit

