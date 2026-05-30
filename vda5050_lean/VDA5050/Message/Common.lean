import VDA5050.Basics.Enums

namespace VDA5050.Message
open VDA5050.Basics

structure Position where
  x : Float
  y : Float
  theta : Float
  mapId : String
  deriving Repr, DecidableEq

structure AllowedDeviation where
  a : Float
  b : Float
  theta : Float
  deriving Repr, DecidableEq

structure Velocity where
  vx : Float
  vy : Float
  omega : Float
  deriving Repr, DecidableEq

inductive ActionParameterValue
  | str : String → ActionParameterValue
  | num : Float → ActionParameterValue
  | bool : Bool → ActionParameterValue
  deriving Repr, DecidableEq

structure ActionParameter where
  key : String
  value : ActionParameterValue
  deriving Repr, DecidableEq

structure Action where
  actionId : String
  actionType : String
  blockingType : BlockingType
  parameters : List ActionParameter
  cancelAllowed : Bool := true
  deriving Repr, DecidableEq

end VDA5050.Message
