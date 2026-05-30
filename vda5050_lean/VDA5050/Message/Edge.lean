import VDA5050.Message.Common

namespace VDA5050.Message

structure CorridorDefinition where
  leftWidth : Float
  rightWidth : Float
  referencePoint : Position
  released : Bool
  deriving Repr, DecidableEq

structure Edge where
  edgeId : String
  sequenceId : Nat
  released : Bool
  trajectory : List Position
  corridor : Option CorridorDefinition
  actions : List Action
  deriving Repr, DecidableEq

def Edge.Valid (e : Edge) : Prop :=
  e.edgeId.length > 0

end VDA5050.Message
