import VDA5050.Semantics.Step
import VDA5050.Trace.Trace

namespace VDA5050.Trace
open VDA5050.Semantics

def replay (init : RobotSystemState) (t : Trace) : RobotSystemState :=
  (t.foldl (fun s ev => (Step s ev).1) init)

end VDA5050.Trace
