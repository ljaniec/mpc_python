import VDA5050.Message.Header
import VDA5050.Message.Common

namespace VDA5050.Message

structure InstantAction where
  header : Header
  actions : List Action
  deriving Repr, DecidableEq

def InstantAction.Valid (i : InstantAction) : Prop :=
  i.actions.length ≥ 1

end VDA5050.Message
