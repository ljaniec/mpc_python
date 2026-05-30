import VDA5050.Message.ZoneSet

namespace VDA5050.Validity
open VDA5050.Message

def ValidZone (z : Zone) : Prop :=
  z.vertices.length ≥ 3 ∧ z.zoneId.length > 0

end VDA5050.Validity
