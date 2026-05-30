import VDA5050.Obligations.Errors
import VDA5050.Validity.OrderValidity

namespace VDA5050.Obligations
open VDA5050.Message
open VDA5050.Validity

def TriggerValidationFailure (order : Order) (profile : CapabilityProfile) : Prop :=
  ¬ValidOrder order profile

end VDA5050.Obligations
