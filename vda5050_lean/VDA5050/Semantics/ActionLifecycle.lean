import VDA5050.Basics.Enums
import VDA5050.Message.Node
import VDA5050.Message.Edge

namespace VDA5050.Semantics
open VDA5050.Basics
open VDA5050.Message

def ValidActionStateTransition (from to : ActionStatus) : Prop :=
  from = to ∨
  (from = .WAITING ∧ to = .INITIALIZING) ∨
  (from = .INITIALIZING ∧ to = .RUNNING) ∨
  (from = .RUNNING ∧ (to = .PAUSED ∨ to = .FINISHED ∨ to = .FAILED))

def ActionShouldTrigger (_node : Node) (_action : Action) : Prop := True

def EdgeActionActive (_edge : Edge) (_action : Action) : Prop := True

end VDA5050.Semantics
