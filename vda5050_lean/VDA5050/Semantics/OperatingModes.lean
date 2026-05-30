import VDA5050.Basics.Enums

namespace VDA5050.Semantics
open VDA5050.Basics

structure ModeProperties where
  fleetControlInControl : Bool
  newOrdersAccepted : Bool
  clearOrderOnEntry : Bool
  instantActionsAllowed : Bool
  clearZoneRequestsOnEntry : Bool
  deriving Repr, DecidableEq

def modeProperties : OperatingMode → ModeProperties
  | .STARTUP => ⟨false, false, true, false, true⟩
  | .AUTOMATIC => ⟨true, true, false, true, false⟩
  | .SEMIAUTOMATIC => ⟨true, true, false, true, false⟩
  | .INTERVENED => ⟨true, true, false, true, false⟩
  | .MANUAL => ⟨false, false, true, true, true⟩
  | .SERVICE => ⟨false, false, true, true, true⟩
  | .TEACH_IN => ⟨false, false, true, true, true⟩

end VDA5050.Semantics
