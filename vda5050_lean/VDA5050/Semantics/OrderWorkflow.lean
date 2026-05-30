import VDA5050.Semantics.RobotState
import VDA5050.Semantics.OperatingModes
import VDA5050.Validity.OrderValidity
import VDA5050.Validity.UpdateValidity

namespace VDA5050.Semantics
open VDA5050.Basics
open VDA5050.Message
open VDA5050.Validity

def AcceptableNewOrder (state : RobotSystemState) (order : Order) (profile : CapabilityProfile) : Prop :=
  order.orderUpdateId = 0 ∧
  state.idle ∧
  ValidOrder order profile ∧
  (state.operatingMode = .AUTOMATIC ∨ state.operatingMode = .SEMIAUTOMATIC ∨ state.operatingMode = .INTERVENED)

def AcceptableOrderUpdate (prev new : Order) (state : RobotSystemState) (profile : CapabilityProfile) : Prop :=
  ValidOrderUpdate prev new ∧
  ValidOrder new profile ∧
  state.acceptedOrder = some prev

def MustRejectValidationFailure (order : Order) (profile : CapabilityProfile) : Prop :=
  ¬ValidOrder order profile

def MustRejectOtherOrderActive (state : RobotSystemState) : Prop :=
  ¬state.idle

end VDA5050.Semantics
