namespace VDA5050.Basics

structure SemVer where
  major : Nat
  minor : Nat
  patch : Nat
  deriving Repr, DecidableEq

def SemVer.le (a b : SemVer) : Prop :=
  (a.major, a.minor, a.patch) ≤ (b.major, b.minor, b.patch)

end VDA5050.Basics
