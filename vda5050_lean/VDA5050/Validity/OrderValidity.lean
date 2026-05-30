import VDA5050.Message.Order
import VDA5050.Validity.ActionValidity

namespace VDA5050.Validity
open VDA5050.Message

def ValidOrder (o : Order) (p : CapabilityProfile) : Prop :=
  o.BasicWellFormed ∧
  (∀ n ∈ o.nodes, ∀ a ∈ n.actions, ValidAction a p) ∧
  (∀ e ∈ o.edges, ∀ a ∈ e.actions, ValidAction a p)

end VDA5050.Validity
