import VDA5050.Message.Common

namespace VDA5050.Message

structure Node where
  nodeId : String
  sequenceId : Nat
  released : Bool
  position : Position
  actions : List Action
  descriptor : Option String := none
  deriving Repr, DecidableEq

def Node.Valid (n : Node) : Prop :=
  n.nodeId.length > 0

end VDA5050.Message
