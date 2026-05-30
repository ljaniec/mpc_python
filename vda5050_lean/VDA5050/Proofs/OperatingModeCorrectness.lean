import VDA5050.Semantics.OrderWorkflow

namespace VDA5050.Proofs
open VDA5050.Basics
open VDA5050.Semantics

 theorem modeRestrictsOrders (mode : OperatingMode)
    (h : (modeProperties mode).newOrdersAccepted = false) :
    ∀ state : RobotSystemState,
      state.operatingMode = mode →
      ∀ order : VDA5050.Message.Order,
      ∀ profile : VDA5050.Validity.CapabilityProfile,
      ¬AcceptableNewOrder state order profile := by
  intro state hmode order profile hacc
  rcases hacc with ⟨_, _, _, hm⟩
  have hallowed : mode = .AUTOMATIC ∨ mode = .SEMIAUTOMATIC ∨ mode = .INTERVENED := by
    simpa [hmode] using hm
  cases mode <;> simp [modeProperties] at h hallowed

end VDA5050.Proofs
