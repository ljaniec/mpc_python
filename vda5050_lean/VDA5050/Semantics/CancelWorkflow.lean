import VDA5050.Semantics.RobotState
import VDA5050.Semantics.Obligations
import VDA5050.Message.InstantAction

namespace VDA5050.Semantics
open VDA5050.Message

private def isCancelType (a : Action) : Bool :=
  a.actionType = "cancelOrder"

def CanCancelOrder (state : RobotSystemState) (cancelAction : InstantAction) : Prop :=
  ¬state.idle ∧ cancelAction.actions.any isCancelType

def CancelOrderObligations (_state : RobotSystemState) : ObligationSet :=
  [{ kind := .ClearOrder }, { kind := .PublishState }]

end VDA5050.Semantics
