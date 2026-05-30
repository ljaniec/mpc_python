namespace VDA5050.Basics

inductive ActionStatus | WAITING | INITIALIZING | RUNNING | PAUSED | RETRIABLE | FINISHED | FAILED
  deriving Repr, DecidableEq

inductive BlockingType | NONE | SINGLE | SOFT | HARD
  deriving Repr, DecidableEq

inductive OperatingMode | STARTUP | AUTOMATIC | SEMIAUTOMATIC | INTERVENED | MANUAL | SERVICE | TEACH_IN
  deriving Repr, DecidableEq

inductive ErrorLevel | WARNING | URGENT | CRITICAL | FATAL
  deriving Repr, DecidableEq

inductive ZoneType
  | BLOCKED | LINE_GUIDED | RELEASE | COORDINATED_REPLANNING | SPEED_LIMIT
  | ACTION | PRIORITY | PENALTY | DIRECTED | BIDIRECTED
  deriving Repr, DecidableEq

inductive RequestStatus | REQUESTED | GRANTED | REVOKED | EXPIRED | QUEUED
  deriving Repr, DecidableEq

inductive ResponseType | GRANTED | QUEUED | REVOKED | REJECTED
  deriving Repr, DecidableEq

inductive ConnectionState | ONLINE | OFFLINE | HIBERNATING | CONNECTION_BROKEN
  deriving Repr, DecidableEq

end VDA5050.Basics
