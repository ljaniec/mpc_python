import VDA5050.Message.Factsheet

namespace VDA5050.Validity

structure CapabilityProfile where
  supportedActions : List String
  supportedCustomActions : List String := []
  supportedZoneTypes : List String
  supportedOptionalParams : List String := []
  deriving Repr, DecidableEq

def CanExecuteAction (p : CapabilityProfile) (actionType : String) : Prop :=
  actionType ∈ p.supportedActions ∨ actionType ∈ p.supportedCustomActions

def CanUseZoneType (p : CapabilityProfile) (zoneType : String) : Prop :=
  zoneType ∈ p.supportedZoneTypes

def IsValidOptionalParameter (p : CapabilityProfile) (paramRef : String) : Prop :=
  paramRef ∈ p.supportedOptionalParams

end VDA5050.Validity
