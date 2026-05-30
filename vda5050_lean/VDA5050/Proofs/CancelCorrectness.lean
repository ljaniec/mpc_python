import VDA5050.Semantics.CancelWorkflow

namespace VDA5050.Proofs
open VDA5050.Semantics

theorem cancelOrderProducesValidObligations (state : RobotSystemState)
    (h : ¬state.idle) :
    ∃ obs : ObligationSet,
      CancelOrderObligations state = obs ∧
      { kind := ObligationKind.PublishState, deadline := none, payload := none } ∈ obs := by
  refine ⟨CancelOrderObligations state, rfl, ?_⟩
  simp [CancelOrderObligations]

end VDA5050.Proofs
