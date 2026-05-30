import VDA5050.Message.Order
import VDA5050.Message.InstantAction
import VDA5050.Message.Response
import VDA5050.Message.ZoneSet

namespace VDA5050.Semantics
open VDA5050.Basics
open VDA5050.Message

inductive InputEvent
  | ReceiveOrder (o : Order)
  | ReceiveInstantAction (ia : InstantAction)
  | ReceiveResponse (r : Response)
  | ReceiveZoneSet (z : ZoneSet)
  | NodeTraversed (nodeId : String) (sequenceId : Nat)
  | EdgeExited (edgeId : String) (sequenceId : Nat)
  | ActionCompleted (actionId : String)
  | OperatingModeChanged (mode : OperatingMode)
  deriving Repr, DecidableEq

end VDA5050.Semantics
