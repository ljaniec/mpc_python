import VDA5050.Validity.SupportMatrix

namespace VDA5050.Examples
open VDA5050.Validity

def minimalistAGV : CapabilityProfile :=
  { supportedActions := ["startPause", "stopPause", "cancelOrder"],
    supportedZoneTypes := ["LINE_GUIDED", "SPEED_LIMIT"] }

def advancedAMR : CapabilityProfile :=
  { supportedActions := ["startPause", "stopPause", "cancelOrder", "pick", "drop"],
    supportedCustomActions := ["vendor.customDock"],
    supportedZoneTypes := ["BLOCKED", "RELEASE", "ACTION", "DIRECTED"] }

end VDA5050.Examples
