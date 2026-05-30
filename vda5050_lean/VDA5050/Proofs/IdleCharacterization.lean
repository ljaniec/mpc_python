import VDA5050.Semantics.RobotState

namespace VDA5050.Proofs
open VDA5050.Semantics

theorem robotIdleIff (state : RobotSystemState) :
    state.idle ↔
      state.nodeStates = [] ∧
      state.edgeStates = [] ∧
      (∀ action ∈ state.actionStates,
        action.status = VDA5050.Basics.ActionStatus.FINISHED ∨
        action.status = VDA5050.Basics.ActionStatus.FAILED) := by
  rfl

end VDA5050.Proofs
