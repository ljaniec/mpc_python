import VDA5050.Message.Order

namespace VDA5050.Examples
open VDA5050.Message
open VDA5050.Basics

private def h : Header :=
  { headerId := 1,
    timestamp := { raw := "2026-01-01T00:00:00.000Z" },
    version := { major := 3, minor := 0, patch := 0 },
    manufacturer := "acme",
    serialNumber := "r1" }

private def p : Position := { x := 0, y := 0, theta := 0, mapId := "map" }

private def n0 : Node := { nodeId := "n0", sequenceId := 0, released := true, position := p, actions := [] }
private def n1 : Node := { nodeId := "n1", sequenceId := 2, released := false, position := p, actions := [] }
private def e0 : Edge := { edgeId := "e0", sequenceId := 1, released := true, trajectory := [], corridor := none, actions := [] }

def validOrder : Order := { header := h, orderId := "o1", orderUpdateId := 0, nodes := [n0, n1], edges := [e0] }
def invalidOrder : Order := { header := h, orderId := "o2", orderUpdateId := 0, nodes := [], edges := [] }

#eval validOrder.nodes.length

end VDA5050.Examples
