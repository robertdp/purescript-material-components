module Material.Types where


foreign import kind MATERIAL :: Effect

newtype Material a = Material a

class Element e

class Component a where
  createComponent :: forall e eff. Element e => e -> Eff (material :: MATERIAL | eff) (Material a)
  destroyComponent :: forall eff. Material a -> Eff (material :: MATERIAL | eff) Unit

class Ripple a <= Component a where
  createComponentWithRipple :: forall e eff. Element e => e -> Eff (material :: MATERIAL | eff) (Material a)

instance monadComponent :: Monad Component