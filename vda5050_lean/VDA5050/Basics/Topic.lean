import VDA5050.Basics.Identifiers

namespace VDA5050.Basics

structure Topic where
  interfaceName : String
  majorVersion : Nat
  manufacturer : Identifier
  serialNumber : Identifier
  topicName : String
  deriving Repr, DecidableEq

def Topic.render (t : Topic) : String :=
  s!"{t.interfaceName}/{t.majorVersion}/{t.manufacturer.value}/{t.serialNumber.value}/{t.topicName}"

def Topic.Valid (t : Topic) : Prop :=
  t.interfaceName.length > 0 ∧ t.topicName.length > 0 ∧
  t.manufacturer.WellFormed ∧ t.serialNumber.WellFormed

end VDA5050.Basics
