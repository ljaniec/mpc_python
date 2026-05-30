import VDA5050.Basics.Enums
import VDA5050.Message.Response
import VDA5050.Basics.Time

namespace VDA5050.Semantics
open VDA5050.Basics
open VDA5050.Message

def RequestStateTransition (from to : RequestStatus) : Prop :=
  from = to ∨
  (from = .REQUESTED ∧ (to = .GRANTED ∨ to = .QUEUED)) ∨
  (from = .GRANTED ∧ (to = .REVOKED ∨ to = .EXPIRED))

def MustRespectLeaseExpiry (_requestId : String) (response : ResponseEntry) (_currentTime : Timestamp) : Prop :=
  match response.grantType with
  | .GRANTED => response.leaseExpiry.isSome
  | _ => True

end VDA5050.Semantics
