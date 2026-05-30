import VDA5050.Message.Header
import VDA5050.Message.Common
import VDA5050.Basics.Enums

namespace VDA5050.Message
open VDA5050.Basics

structure ActionState where
  actionId : String
  status : ActionStatus
  deriving Repr, DecidableEq

structure RobotState where
  header : Header
  orderId : Option String
  orderUpdateId : Option Nat
  lastNodeId : Option String
  lastNodeSequenceId : Option Nat
  mobileRobotPosition : Option Position
  velocity : Option Velocity
  driving : Bool
  paused : Bool
  newBaseRequest : Bool
  operatingMode : OperatingMode
  actionStates : List ActionState
  deriving Repr, DecidableEq

end VDA5050.Message
