import VDA5050.Semantics.OrderWorkflow

namespace VDA5050.Proofs
open VDA5050.Message
open VDA5050.Semantics

 theorem rejectedOutdatedUpdate (prev new : Order) (state : RobotSystemState)
    (profile : VDA5050.Validity.CapabilityProfile)
    (h : new.orderUpdateId < prev.orderUpdateId) :
    ¬AcceptableOrderUpdate prev new state profile := by
  intro hacc
  have hstep : new.orderUpdateId = prev.orderUpdateId + 1 := hacc.1.2.1
  have hforward : prev.orderUpdateId < new.orderUpdateId := by
    simpa [hstep] using Nat.lt_succ_self prev.orderUpdateId
  exact Nat.lt_asymm h hforward

end VDA5050.Proofs
