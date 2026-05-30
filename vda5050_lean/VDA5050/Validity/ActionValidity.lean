import VDA5050.Message.Common
import VDA5050.Validity.SupportMatrix

namespace VDA5050.Validity
open VDA5050.Message

def ValidAction (a : Action) (p : CapabilityProfile) : Prop :=
  a.actionType.length > 0 ∧ CanExecuteAction p a.actionType

end VDA5050.Validity
