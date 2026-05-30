import VDA5050.Examples.ExampleOrders
import VDA5050.Message.InstantAction
import VDA5050.Trace.Trace

namespace VDA5050.Examples
open VDA5050.Message
open VDA5050.Semantics
open VDA5050.Basics

private def cancelIA : InstantAction :=
  { header := validOrder.header,
    actions := [{ actionId := "a1", actionType := "cancelOrder", blockingType := .NONE, parameters := [] }] }

def orderThenCancel : VDA5050.Trace.Trace :=
  [InputEvent.ReceiveOrder validOrder, InputEvent.ReceiveInstantAction cancelIA]

end VDA5050.Examples
