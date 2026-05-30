import VDA5050.Message.Header
import VDA5050.Basics.Enums

namespace VDA5050.Message
open VDA5050.Basics

structure ConnectionMessage where
  header : Header
  connectionState : ConnectionState
  deriving Repr, DecidableEq

end VDA5050.Message
