import VDA5050.Message.Order
import VDA5050.Message.State

namespace VDA5050.Semantics
open VDA5050.Basics
open VDA5050.Message

structure RobotSystemState where
  acceptedOrder : Option Order
  nodeStates : List String
  edgeStates : List String
  actionStates : List ActionState
  lastNodeId : Option String
  lastNodeSequenceId : Option Nat
  operatingMode : OperatingMode
  deriving Repr, DecidableEq

def RobotSystemState.idle (s : RobotSystemState) : Prop :=
  s.nodeStates = [] ∧ s.edgeStates = [] ∧
  (∀ a ∈ s.actionStates, a.status = ActionStatus.FINISHED ∨ a.status = ActionStatus.FAILED)

end VDA5050.Semantics
