import VDA5050.Message.Header
import VDA5050.Basics.Enums
import VDA5050.Message.Common

namespace VDA5050.Message
open VDA5050.Basics

structure Zone where
  zoneId : String
  zoneType : ZoneType
  vertices : List Position
  parameters : List ActionParameter
  deriving Repr, DecidableEq

structure ZoneSet where
  header : Header
  zoneSetId : String
  mapId : String
  zones : List Zone
  deriving Repr, DecidableEq

end VDA5050.Message
