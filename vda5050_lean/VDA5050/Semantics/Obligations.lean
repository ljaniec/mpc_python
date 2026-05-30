import VDA5050.Basics.Time

namespace VDA5050.Semantics
open VDA5050.Basics

inductive ObligationKind
  | PublishState
  | RejectOrder
  | ReportError
  | ClearOrder
  deriving Repr, DecidableEq

structure Obligation where
  kind : ObligationKind
  deadline : Option Timestamp := none
  payload : Option String := none
  deriving Repr, DecidableEq

abbrev ObligationSet := List Obligation

end VDA5050.Semantics
