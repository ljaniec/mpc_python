import VDA5050.Message.Header

namespace VDA5050.Message

structure Factsheet where
  header : Header
  supportedActions : List String
  supportedMaps : List String
  supportedZoneTypes : List String
  maximumSpeed : Float
  deriving Repr, DecidableEq

end VDA5050.Message
