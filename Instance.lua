--=============================================================================
-- Instance — some da frente dentro de masmorra, raide, campo de batalha e arena (specs/revamp-polestar, R7): a janela
-- do guia, a seta do guia e a automação saem ao entrar e voltam ao sair. Guia de masmorra ou de sintonia ativo fica.
-- Pedir a janela lá dentro (/ls, atalho, minimapa) a traz de volta até sair.
--
-- O estado mora em ns.instanceHidden, lido por ns:UIShown() (Core.lua): a mesma fonte de todos os HUDs.
--=============================================================================
local ADDON, ns = ...
local I = {}
ns.Instance = I

local KINDS = { party = true, raid = true, pvp = true, arena = true, scenario = true }

-- guia que é para usar lá dentro
local function insideGuide()
	local k = ns.currentGuide and ns.currentGuide.key or ""
	return k:find("^Dungeons/") or k:find("^Attunements/") or k:find("^Raids/")
end

local shownInside            -- o jogador pediu a janela nesta instância

local function inside()
	if not IsInInstance then return false end
	local inInst, kind = IsInInstance()
	return inInst and KINDS[kind] or false
end

function I:Check()
	if not ns.db then return end
	if inside() then
		if ns.db.hideInInstance == false or ns.instanceHidden or shownInside or insideGuide() then return end
		ns.instanceHidden = true
		local f = ns.Viewer and ns.Viewer:GetFrame()
		if f then f:Hide() end
		ns:RefreshHUDs()
		if not ns.db.instanceHintSeen and ns.currentGuide and ns.Toast then
			ns.db.instanceHintSeen = true
			ns.Toast:Show({ title = ns.L.INST_HIDDEN_T, text = ns.L.INST_HIDDEN_S, color = ns.UI.COL.tip, hold = 8 })
		end
	else
		shownInside = nil
		if ns.instanceHidden then
			ns.instanceHidden = nil
			if ns.currentGuide and not ns.db.viewer.hidden and ns.Viewer then ns.Viewer:Show() end
			ns:RefreshHUDs()
		end
	end
end

-- Viewer:Show() chama: dentro, a janela fica até sair
function I:ShownByPlayer()
	if ns.instanceHidden then
		ns.instanceHidden = nil
		shownInside = true
	end
end

-- Configurações: desligar devolve a janela na hora
function I:Apply()
	if ns.db.hideInInstance == false and ns.instanceHidden then
		ns.instanceHidden = nil
		if ns.currentGuide and not ns.db.viewer.hidden and ns.Viewer then ns.Viewer:Show() end
		ns:RefreshHUDs()
	else
		I:Check()
	end
end

ns:On("PLAYER_ENTERING_WORLD", function() C_Timer.After(0.5, function() I:Check() end) end)
ns:On("ZONE_CHANGED_NEW_AREA", function() I:Check() end)
