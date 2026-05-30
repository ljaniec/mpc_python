import VDA5050.Basics.Time
import VDA5050.Basics.Version

namespace VDA5050.Message
open VDA5050.Basics

structure Header where
  headerId : Nat
  timestamp : Timestamp
  version : SemVer
  manufacturer : String
  serialNumber : String
  deriving Repr, DecidableEq

def Header.Valid (h : Header) : Prop :=
  h.manufacturer.length > 0 ∧ h.serialNumber.length > 0 ∧ h.timestamp.IsIso8601Utc

end VDA5050.Message
