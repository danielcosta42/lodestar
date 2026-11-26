--=============================================================================
-- Bindings — os atalhos de teclado (Bindings.xml, seção Lodestar em Teclas de atalho > AddOns; specs/revamp-polestar,
-- R8). Os nomes vêm dos textos localizados; a ação é o mesmo comando do /ls.
--=============================================================================
local ADDON, ns = ...
local L = ns.L

BINDING_HEADER_LODESTAR = "Lodestar"
BINDING_NAME_LODESTAR_TOGGLE = L.BIND_TOGGLE
BINDING_NAME_LODESTAR_NEXT = L.BIND_NEXT
BINDING_NAME_LODESTAR_PREV = L.BIND_PREV
BINDING_NAME_LODESTAR_TRAVEL = L.BIND_TRAVEL
BINDING_NAME_LODESTAR_TIDY = L.BIND_TIDY
BINDING_NAME_LODESTAR_REPORT = L.BIND_REPORT
_G["BINDING_NAME_CLICK LodestarQuestItem:LeftButton"] = L.BIND_QITEM

-- toggle: com guia, a janela; sem, a biblioteca (o mesmo que /ls sem nada)
function Lodestar_Binding(action)
	if action == "toggle" then
		SlashCmdList.LODESTAR("")
	else
		SlashCmdList.LODESTAR(action)
	end
end
