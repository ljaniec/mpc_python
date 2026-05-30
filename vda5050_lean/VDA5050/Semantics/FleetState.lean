import VDA5050.Semantics.RobotState

namespace VDA5050.Semantics

structure FleetSystemState where
  robots : List (String × RobotSystemState)
  deriving Repr, DecidableEq

end VDA5050.Semantics
