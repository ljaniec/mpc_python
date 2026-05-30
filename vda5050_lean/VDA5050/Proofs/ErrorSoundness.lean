import VDA5050.Obligations.ErrorTriggering

namespace VDA5050.Proofs
open VDA5050.Obligations
open VDA5050.Message
open VDA5050.Validity

theorem errorTriggeringIsSound (order : Order) (profile : CapabilityProfile)
    (h : TriggerValidationFailure order profile) :
    ¬ValidOrder order profile := by
  exact h

end VDA5050.Proofs
