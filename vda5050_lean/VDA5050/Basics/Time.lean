namespace VDA5050.Basics

structure Timestamp where
  raw : String
  deriving Repr, DecidableEq

def Timestamp.IsIso8601Utc (t : Timestamp) : Prop :=
  t.raw.contains 'T' ∧ t.raw.endsWith "Z"

structure Duration where
  milliseconds : Nat
  deriving Repr, DecidableEq

end VDA5050.Basics
