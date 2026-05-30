import VDA5050.Obligations.Errors

namespace VDA5050.Obligations
open VDA5050.Basics

structure ErrorObligation where
  err : ErrorType
  level : ErrorLevel
  description : String
  deriving Repr, DecidableEq

end VDA5050.Obligations
