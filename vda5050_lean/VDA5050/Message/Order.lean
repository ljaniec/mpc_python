import VDA5050.Message.Header
import VDA5050.Message.Node
import VDA5050.Message.Edge

namespace VDA5050.Message

structure Order where
  header : Header
  orderId : String
  orderUpdateId : Nat
  nodes : List Node
  edges : List Edge
  deriving Repr, DecidableEq

def FirstNodeReleased (o : Order) : Prop :=
  match o.nodes with
  | [] => False
  | n :: _ => n.released

def BaseMonotonicity (o : Order) : Prop :=
  ∀ i j, i ≤ j →
    match o.nodes.get? i, o.nodes.get? j with
    | some ni, some nj => nj.released → ni.released
    | _, _ => True

def EdgeFollowsNode (o : Order) : Prop :=
  o.edges.length + 1 = o.nodes.length

def BasicWellFormed (o : Order) : Prop :=
  o.nodes.length ≥ 1 ∧ EdgeFollowsNode o ∧ FirstNodeReleased o

end VDA5050.Message
