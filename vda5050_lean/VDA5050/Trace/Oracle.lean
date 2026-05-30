import VDA5050.Trace.Conformance

namespace VDA5050.Trace
open VDA5050.Validity

inductive Verdict where
  | Conform
  | ViolatedClauses (violations : List String)
  | Counterexample (trace : Trace)
  deriving Repr, DecidableEq

def CheckTrace (trace : Trace) (profile : CapabilityProfile) : Verdict :=
  if ConformsTo trace profile then .Conform else .ViolatedClauses ["MVP-placeholder"]

def ExtractMinimalCounterexample (trace : Trace) (profile : CapabilityProfile) : Option Trace :=
  match CheckTrace trace profile with
  | .Conform => none
  | _ => some trace

end VDA5050.Trace
