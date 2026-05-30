import VDA5050.Validity.UpdateValidity

namespace VDA5050.Proofs
open VDA5050.Message
open VDA5050.Validity

theorem baseMonotonicity (prev new : Order)
    (h : ValidOrderUpdate prev new) :
    BaseMonotonicity new := by
  exact h.2.2

end VDA5050.Proofs
