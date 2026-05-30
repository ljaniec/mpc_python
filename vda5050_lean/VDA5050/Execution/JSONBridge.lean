namespace VDA5050.Execution

structure DecodeResult (α : Type) where
  value : Option α
  error : Option String := none

end VDA5050.Execution
