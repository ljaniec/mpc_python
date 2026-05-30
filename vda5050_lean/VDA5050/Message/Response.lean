import VDA5050.Message.Header
import VDA5050.Basics.Enums
import VDA5050.Basics.Time

namespace VDA5050.Message
open VDA5050.Basics

structure ResponseEntry where
  requestId : String
  grantType : ResponseType
  leaseExpiry : Option Timestamp
  deriving Repr, DecidableEq

structure Response where
  header : Header
  responses : List ResponseEntry
  deriving Repr, DecidableEq

end VDA5050.Message
