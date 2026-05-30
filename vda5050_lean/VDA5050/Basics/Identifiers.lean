namespace VDA5050.Basics

structure Identifier where
  value : String
  deriving Repr, DecidableEq

def allowedIdentifierChar (c : Char) : Bool :=
  c.isAlphanum || c == '_' || c == '.' || c == ':' || c == '-'

def Identifier.WellFormed (i : Identifier) (maxLen : Nat := 128) : Prop :=
  i.value.length ≤ maxLen ∧ i.value.data.all allowedIdentifierChar = true

end VDA5050.Basics
