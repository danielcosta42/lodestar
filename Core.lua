--=============================================================================
-- Lodestar — motor de guias livre e enxuto. Core: namespace, eventos, config.
--=============================================================================
local ADDON, ns = ...
_G.Lodestar = ns              -- alias global (único ponto de "branding" a renomear)
ns.name = ADDON

local GetAddOnMetadata = (C_AddOns and C_AddOns.GetAddOnMetadata) or GetAddOnMetadata
ns.version = GetAddOnMetadata and GetAddOnMetadata(ADDON, "Version") or "dev"
-- Em dev o token @project-version@ ainda não foi substituído pelo packager.
if type(ns.version) ~= "string" or ns.version:find("@") then ns.version = "dev" end

--------------------------------------------------------------------------------
-- Log
--------------------------------------------------------------------------------
local PREFIX = "|cff66ccff Lodestar|r "
function ns:Print(...)
	print(PREFIX .. table.concat({ tostringall(...) }, " "))
end
function ns:Printf(fmt, ...)
	print(PREFIX .. fmt:format(...))
end
function ns:Debug(...)
	if self.db and self.db.debug then
		print("|cff888888[Lodestar dbg]|r", ...)
	end
end

--------------------------------------------------------------------------------
-- Sistema de eventos: módulos chamam ns:On("EVENT", fn)
--------------------------------------------------------------------------------
local eventFrame = CreateFrame("Frame")
ns.eventFrame = eventFrame
local handlers = {}           -- [event] = { fn1, fn2, ... }

function ns:On(event, fn)
	if not handlers[event] then
		handlers[event] = {}
		-- ADDON_LOADED/PLAYER_LOGIN são disparados manualmente; resto registra na API
		if event ~= "_INIT" then
			pcall(eventFrame.RegisterEvent, eventFrame, event)
		end
	end
	table.insert(handlers[event], fn)
end

local function fire(event, ...)
	local list = handlers[event]
	if not list then return end
	for i = 1, #list do
		local ok, err = pcall(list[i], event, ...)
		if not ok then ns:Print("|cffff5555erro em", event, ":|r", err) end
	end
end
ns.fire = fire

eventFrame:SetScript("OnEvent", function(_, event, ...) fire(event, ...) end)

--------------------------------------------------------------------------------
-- Ticker leve (para atualizar a seta/waypoint sem custo)
--------------------------------------------------------------------------------
local tickers = {}            -- { {fn=, interval=, acc=}, ... }
function ns:Every(interval, fn)
	tickers[#tickers + 1] = { fn = fn, interval = interval, acc = 0 }
end
eventFrame:SetScript("OnUpdate", function(_, elapsed)
	for i = 1, #tickers do
		local t = tickers[i]
		t.acc = t.acc + elapsed
		if t.acc >= t.interval then
			t.acc = 0
			local ok, err = pcall(t.fn, t.interval)
			if not ok then ns:Debug("ticker erro:", err) end
		end
	end
end)

--------------------------------------------------------------------------------
-- Visibilidade global da UI: um guia carregado E o Viewer não-fechado. Fonte
-- única para TODOS os elementos (seta, XP, talentos, item, trilha, marcadores).
-- Fechar o guia (X) -> UI limpa; reabrir (minimapa/ /ls) restaura tudo.
--------------------------------------------------------------------------------
function ns:UIShown()
	return ns.currentGuide ~= nil and not (ns.db and ns.db.viewer and ns.db.viewer.hidden)
end

-- Re-aplica a visibilidade de todos os HUDs de imediato (ao fechar/abrir).
function ns:RefreshHUDs()
	if ns.Waypoint then ns.Waypoint:Update() end
	if ns.XPHud then ns.XPHud:Update() end
	if ns.Talents then ns.Talents:Update() end
	if ns.QuestItem then ns.QuestItem.Update() end
	if ns.TargetMarker then ns.TargetMarker:Rebuild() end
	-- trilha e pin do mapa se atualizam por ticker (somem em <0.3s)
end

--------------------------------------------------------------------------------
-- Saved variables + defaults
--------------------------------------------------------------------------------
local DB_DEFAULTS = {
	debug = false,
	arrow = { enabled = true, scale = 1, point = "CENTER", x = 0, y = 150, offset = 0 },
	viewer = { point = "RIGHT", x = -24, y = 0, width = 340, collapsed = false, hidden = false, scale = 1, alpha = 1 },
	toast = { point = "TOP", x = 0, y = -160 },
	toastsEnabled = true,
	minimap = { angle = 208, hide = false, rangeMult = 1 },
	autoAccept = true,
	autoTurnin = true,
	autoReward = false,   -- OPT-IN: auto-pega recompensa em quest de múltipla escolha
	                      -- (risco de item errado; guias curados com |reward já acertam)
	autoGossip = true,    -- seleciona a opção/quest certa no diálogo (gossip)
	autoSkip = true,      -- pula passo cujo NPC não oferece a quest (nunca trava)
	autoRepair = true,    -- repara tudo ao abrir o vendedor
	autoSell = true,      -- vende itens cinza (lixo) ao abrir o vendedor
	gearAdvisor = true,   -- avisa quando acha um upgrade de equipamento na bolsa
	xpHud = true,         -- painel de ritmo (XP/h, ETA, adiantado/atrasado)
	xpHudPos = {},        -- posição destacada do HUD (se arrastado)
	talents = true,       -- sugestão de talento por nível + botão aprender
	reportCard = true,    -- boletim de leveling (nota + card compartilhável)
	ghost = {},           -- run de referência por classe (Ghost Racing)
	coords = true,        -- coordenadas do player no minimapa/mapa
	guideMap = true,      -- marca os pontos dos próximos passos no mapa-múndi
	mobWarning = true,    -- avisa ao mirar mob muito acima do nível
	autoShareQuest = false,-- OPT-IN: compartilha a quest no grupo ao aceitar (evita spam)
	customGuides = {},    -- guias importados (key -> {body, faction})
	seenIntro = false,    -- já viu a tela de boas-vindas?
	markTargets = true,   -- destacar NPCs/mobs-alvo (tooltip + nameplate)
	trail = true,         -- caminho de formiga (minimapa + mapa-múndi)
	questItem = true,     -- botão pra usar o item da missão do passo
}
local CHAR_DEFAULTS = {
	currentGuide = nil,        -- chave do guia ativo (aba em foco)
	currentStep = 1,           -- índice do step atual (espelho do guia ativo)
	openGuides = {},           -- guias abertos como abas (lista ordenada de chaves)
	steps = {},                -- [guideKey] = índice do step (progresso por guia)
	completedGoals = {},       -- ["guide\0step\0goal"] = true (progresso manual)
	deaths = 0,                -- mortes deste personagem
	dungeonRuns = {},          -- [nomeDaDungeon] = nº de clears (contador de spam)
}

local function applyDefaults(target, defaults)
	for k, v in pairs(defaults) do
		if type(v) == "table" then
			if type(target[k]) ~= "table" then target[k] = {} end
			applyDefaults(target[k], v)
		elseif target[k] == nil then
			target[k] = v
		end
	end
	return target
end

ns:On("ADDON_LOADED", function(_, name)
	if name ~= ADDON then return end
	_G.LodestarDB = applyDefaults(_G.LodestarDB or {}, DB_DEFAULTS)
	_G.LodestarCharDB = applyDefaults(_G.LodestarCharDB or {}, CHAR_DEFAULTS)
	ns.db = _G.LodestarDB
	ns.char = _G.LodestarCharDB
	fire("_INIT")               -- módulos que dependem da config inicializam aqui
end)

ns:On("PLAYER_LOGIN", function()
	ns:Printf(ns.L.LOADED, ns.version)
	fire("_READY")              -- tudo pronto: guias registrados, player no mundo
end)

--------------------------------------------------------------------------------
-- Slash command
--------------------------------------------------------------------------------
SLASH_LODESTAR1 = "/lodestar"
SLASH_LODESTAR2 = "/ls"
SlashCmdList.LODESTAR = function(msg)
	msg = (msg or ""):gsub("^%s+", ""):gsub("%s+$", "")
	local cmd, rest = msg:match("^(%S+)%s*(.*)$")
	cmd = cmd and cmd:lower() or ""

	if cmd == "debug" then
		ns.db.debug = not ns.db.debug
		ns:Print("debug:", ns.db.debug and "ON" or "OFF")
	elseif cmd == "list" then
		ns:Print("guias registrados:")
		for key in pairs(ns.guides or {}) do print("  " .. key) end
	elseif cmd == "load" and rest ~= "" then
		local key = ns:ResolveGuideKey(rest)
		if key then ns:LoadGuide(key) else ns:Printf(ns.L.NO_MATCH, rest) end
	elseif cmd == "next" then
		ns:AdvanceStep()
	elseif cmd == "prev" then
		ns:AdvanceStep(-1)
	elseif cmd == "check" then
		if ns.currentGuide then
			ns:CheckProgress()
			ns:Printf("re-varredura: passo %d/%d", ns.char.currentStep, #ns.currentGuide.steps)
		end
	elseif cmd == "reset" then
		ns.char.currentStep = 1
		if ns.currentGuide then ns.char.steps[ns.currentGuide.key] = 1 end
		wipe(ns.char.completedGoals)
		ns:Print(ns.L.PROGRESS_RESET)
		if ns.Viewer then ns.Viewer:Refresh() end
	elseif cmd == "menu" or cmd == "guides" then
		if ns.GuideMenu then ns.GuideMenu:Toggle() end
	elseif cmd == "config" or cmd == "options" or cmd == "settings" then
		if ns.Settings then ns.Settings:Toggle() end
	elseif cmd == "raids" or cmd == "raid" or cmd == "attune" then
		if ns.Attunements then ns.Attunements:Toggle() end
	elseif cmd == "mark" then
		ns.db.markTargets = not ns.db.markTargets
		ns:Print(ns.L.MARK_TARGETS, ns.db.markTargets and ns.L.ON or ns.L.OFF)
		if not ns.db.markTargets and ns.TargetMarker then ns.TargetMarker:RefreshPlates() end
	elseif cmd == "trail" then
		ns.db.trail = not ns.db.trail
		ns:Print(ns.L.ANT_TRAIL, ns.db.trail and ns.L.ON or ns.L.OFF)
	elseif cmd == "item" then
		ns.db.questItem = not ns.db.questItem
		ns:Print(ns.L.QUEST_ITEM, ns.db.questItem and ns.L.ON or ns.L.OFF)
		if ns.QuestItem then ns.QuestItem.Update() end
	elseif cmd == "xp" then
		ns.db.xpHud = not ns.db.xpHud
		ns:Print(ns.L.XP_HUD, ns.db.xpHud and ns.L.ON or ns.L.OFF)
		if ns.XPHud then ns.XPHud:Update() end
	elseif cmd == "talents" then
		ns.db.talents = not ns.db.talents
		ns:Print(ns.L.TALENTS, ns.db.talents and ns.L.ON or ns.L.OFF)
		if ns.Talents then ns.Talents:Update() end
	elseif cmd == "coords" then
		ns.db.coords = not ns.db.coords
		ns:Print(ns.L.COORDS, ns.db.coords and ns.L.ON or ns.L.OFF)
		if ns.Coords then ns.Coords.Update() end
	elseif cmd == "card" then
		if ns.ReportCard then ns.ReportCard:Show(UnitLevel("player") or 1) end
	elseif cmd == "way" then
		local x, y, zone = rest:match("^([%d%.]+)[%s,]+([%d%.]+)%s*(.*)$")
		x, y = tonumber(x), tonumber(y)
		if x and y and ns.Waypoint then
			zone = (zone ~= "" and zone) or (GetZoneText and GetZoneText()) or nil
			ns.Waypoint:SetCustom(zone, x, y, ns.L.WAYPOINT)
			ns:Printf("%s: %s %.1f, %.1f", ns.L.WAYPOINT, zone or "?", x, y)
		else
			ns:Print("/ls way <x> <y> [zona]")
		end
	elseif cmd == "export" then
		if ns.Share then ns.Share:ShowExport(rest ~= "" and rest or nil) end
	elseif cmd == "import" then
		if ns.Share then ns.Share:ShowImport() end
	elseif cmd == "record" then
		if ns.Recorder then ns.Recorder:Toggle() end
	elseif cmd == "intro" then
		if ns.Intro then ns.Intro:Show() end
	elseif cmd == "tdebug" then
		if ns.Trail and ns.Trail.Debug then ns.Trail.Debug() end
	elseif cmd == "train" then
		if rest == "off" then
			if ns.Waypoint then ns.Waypoint:ClearCustom() end
			ns:Print(ns.L.TRAIN_CANCEL)
		elseif ns.Milestones then
			ns.Milestones:GotoTrainer()
		end
	elseif cmd == "prof" then
		if ns.Milestones then ns.Milestones:GotoProfTrainer(rest) end
	elseif cmd == "calibrate" and rest ~= "" then
		local v = tonumber(rest)
		if v then ns.db.minimap.rangeMult = v; ns:Print("alcance do minimapa x", v) end
	else
		-- sem guia carregado abre o navegador; com guia, alterna a janela
		if not ns.currentGuide and ns.GuideMenu then
			ns.GuideMenu:Toggle()
		elseif ns.Viewer then
			ns.Viewer:Toggle()
		end
	end
end

-- Registra os eventos base logo de cara.
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:RegisterEvent("PLAYER_LOGIN")
