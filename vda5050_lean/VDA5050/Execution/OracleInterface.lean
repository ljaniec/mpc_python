import VDA5050.Trace.Oracle

namespace VDA5050.Execution
open VDA5050.Trace
open VDA5050.Validity

structure CheckOptions where
  strict : Bool := true
  deriving Repr, DecidableEq

structure CheckResult where
  verdict : Verdict
  deriving Repr, DecidableEq

def checkConformance (_trace : String) (_profile : String) (_options : CheckOptions) : CheckResult :=
  { verdict := .ViolatedClauses ["JSON parsing bridge not connected in MVP scaffold"] }

end VDA5050.Execution
