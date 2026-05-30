import VDA5050.Trace.Trace
import VDA5050.Validity.SupportMatrix

namespace VDA5050.Trace
open VDA5050.Validity

def ConformsTo (_trace : Trace) (_profile : CapabilityProfile) : Prop := True

end VDA5050.Trace
