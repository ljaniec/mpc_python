import VDA5050.Message.Order

namespace VDA5050.Validity
open VDA5050.Message

def ValidOrderUpdate (prev new : Order) : Prop :=
  new.orderId = prev.orderId ∧
  new.orderUpdateId = prev.orderUpdateId + 1 ∧
  new.BasicWellFormed ∧
  BaseMonotonicity new

end VDA5050.Validity
