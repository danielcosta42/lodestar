--=============================================================================
-- ChehulNetWire — pluga o Lodestar na malha ChehulNet (presença compartilhada da
-- família de addons Chehul; ver Libs/ChehulNet.lua e Libs/LibChehulMesh.lua).
--
-- O Lodestar funciona 100% SOZINHO. Isto só adiciona reconhecimento entre addons:
-- o char vira um nó "ls" visível no painel ChehulNet, responde a ping/alert de
-- graça, e publica o progresso de leveling pegando carona no HELLO (campo `caps`),
-- sem prefixo novo. Tudo guarded: sem a malha, este arquivo é um no-op silencioso.
--=============================================================================
local ADDON, ns = ...
local CN = _G.ChehulNet
if not ns or not CN then return end

-- Alertas do operador da rede aparecem com a identidade do Lodestar (azul). Ids
-- dispensados "pra sempre" persistem em LodestarDB.alertDismissed (resolvido na hora).
if CN.EnableAlerts then
	CN:EnableAlerts({
		accent   = { 0.40, 0.80, 1.0 },   -- azul Lodestar
		title    = "Lodestar",
		priority = 0,                      -- abaixo de PL(3)/gos(2)/ph(1); nunca rouba o popup
		store    = function()
			_G.LodestarDB = _G.LodestarDB or {}
			_G.LodestarDB.alertDismissed = _G.LodestarDB.alertDismissed or {}
			return _G.LodestarDB.alertDismissed
		end,
	})
end

-- Tag "ls" + caps de progresso. Registrar já basta: liga o guard de announce, agenda
-- o 1º HELLO e faz o "ls" aparecer no `addons` de todo peer e no painel. caps NUNCA
-- pode conter '|' (separador de campo do HELLO); usamos só ',', '=', '/', ':'.
CN:Register("ls", function()
	local parts = { "v=" .. (ns.version or "0"), "lvl=" .. (UnitLevel("player") or 0) }
	local g = ns.currentGuide
	if g and g.key then
		local short = (g.key:match("[^/]+$") or g.key):gsub("[|,]", " ")  -- só a zona/último segmento
		local total = g.steps and #g.steps or 0
		local cur   = (ns.char and ns.char.currentStep) or 0
		parts[#parts + 1] = "guide=" .. short
		if total > 0 then parts[#parts + 1] = "step=" .. cur .. "/" .. total end
	end
	return table.concat(parts, ",")
end, nil)
