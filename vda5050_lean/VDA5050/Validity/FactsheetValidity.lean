import VDA5050.Message.Factsheet

namespace VDA5050.Validity
open VDA5050.Message

def ValidFactsheet (fs : Factsheet) : Prop :=
  fs.maximumSpeed > 0

end VDA5050.Validity
