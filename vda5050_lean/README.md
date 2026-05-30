# VDA5050 Lean4 MVP Scaffold

This folder contains a standalone Lean4 package that provides a **foundational formalization skeleton** for VDA5050 protocol semantics.

## Structure

- `VDA5050/Basics`: identifiers, time, enums, topic, version
- `VDA5050/Message`: core message schemas (`Order`, `State`, `InstantAction`, `Response`, `ZoneSet`, `Connection`, `Factsheet`)
- `VDA5050/Validity`: profile-driven validity predicates and update checks
- `VDA5050/Semantics`: state machines, workflows, obligations, and operational step interface
- `VDA5050/Obligations`: error catalog and triggering/reporting predicates
- `VDA5050/Trace`: trace representation and conformance/oracle skeleton
- `VDA5050/Execution`: executable interface stubs (JSON bridge, simulator, oracle API)
- `VDA5050/Proofs`: key theorem placeholders with machine-checked proofs over MVP predicates
- `VDA5050/Examples`: sample orders, traces, and capability profiles

## Build

```bash
cd vda5050_lean
lake build
```

## Commercial direction (short)

The package is structured to support monetizable offerings:

1. **Robot digital twin conformance oracle** (AGV/AMR vendor side)
2. **Fleet manager digital twin conformance oracle** (master control side)

Both can be delivered as deterministic trace-checking services and interoperability certification tooling.
