import VDA5050.Semantics.RobotState
import VDA5050.Semantics.Events
import VDA5050.Semantics.Obligations

namespace VDA5050.Semantics

def Step (state : RobotSystemState) (_event : InputEvent) : RobotSystemState × ObligationSet :=
  (state, [])

end VDA5050.Semantics
