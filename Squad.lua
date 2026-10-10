--=============================================================================
-- Squad — "quem está na rota" (Onda 2a). Publica o progresso de leveling na
-- malha ChehulNet (prefixo LSGuide): nível + guia + passo de guild/party que roda
-- o Lodestar (a Corrida mostra o guia no tooltip). Consome PartyLens (layer).
-- Standalone-safe: sem a malha, é um no-op silencioso.
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Squad = S

local PREFIX   = "LSGuide"   -- protocolo aberto: LS1|P|class|level|guideShort|step/total|mapID
local PEER_TTL = 300         -- s até esquecer um peer silencioso
local peers = {}             -- [shortName] = { class, level, guide, step, ts }
local lastSent, lastAt = nil, 0

local function mesh() return _G.ChehulMesh end
local function now() return (GetTime and GetTime()) or 0 end
local function me() return ns.PlayerName() end

-- payload do player (nil se não há guia ativo — aí não anunciamos progresso)
local function myPayload()
	local g = ns.currentGuide
	if not g or not g.key then return nil end
	local _, class = UnitClass("player")
	local short = (g.key:match("[^/]+$") or g.key):gsub("|", " ")
	local total = (g.steps and #g.steps) or 0
	local cur   = (ns.char and ns.char.currentStep) or 0
	local mz = ""
	if C_Map and C_Map.GetBestMapForUnit then
		local m = C_Map.GetBestMapForUnit("player"); if m then mz = tostring(m) end
	end
	return table.concat({ "LS1", "P", class or "", UnitLevel("player") or 0, short, cur .. "/" .. total, mz }, "|")
end

-- change-driven + heartbeat 90s. Guild só se em guild; Group só se em grupo.
local function broadcast(force)
	local M = mesh(); if not M then return end
	local p = myPayload(); if not p then return end
	if not force and p == lastSent and (now() - lastAt) < 90 then return end
	lastSent, lastAt = p, now()
	if IsInGuild and IsInGuild() and M.Guild then M:Guild(PREFIX, p) end
	if IsInGroup and IsInGroup() and M.Group then M:Group(PREFIX, p) end
end

local function onRecv(payload, sender)
	if type(payload) ~= "string" then return end
	local proto, kind, class, lvl, guide, step = strsplit("|", payload)
	if proto ~= "LS1" or kind ~= "P" then return end
	local short = (Ambiguate and Ambiguate(sender or "", "short")) or sender
	if not short or short == "" or short == me() then return end
	peers[short] = { class = class, level = tonumber(lvl) or 0, guide = guide or "?", step = step or "", ts = now() }
end

-- peers ativos (aplica TTL), mais alto nível primeiro
function S:List()
	local t, out = now(), {}
	for name, p in pairs(peers) do
		if t - (p.ts or 0) <= PEER_TTL then
			out[#out + 1] = { name = name, class = p.class, level = p.level, guide = p.guide, step = p.step }
		else
			peers[name] = nil
		end
	end
	table.sort(out, function(a, b) return (a.level or 0) > (b.level or 0) end)
	return out
end

-- o que se sabe de um peer (guia, passo) pelo nome curto; nil se não anunciou há pouco
function S:Peer(name)
	local p = peers[name]
	if p and now() - (p.ts or 0) <= PEER_TTL then return p end
end

-- o painel "Na rota" virou a Corrida (RacePanel): as entradas antigas abrem ela
function S:Show() if ns.RacePanel then ns.RacePanel:Show() end end
function S:Toggle() if ns.RacePanel then ns.RacePanel:Toggle() end end

--------------------------------------------------------------------------------
-- Contexto de "grupo para esta quest": varre o step atual pelo goal elite/chefe
-- ativo+incompleto (mesma lógica do banner no Viewer) e monta o que o PartyLens
-- precisa pra pré-preencher o recrutamento. Só campos simples, sem efeito colateral.
local function questGroupCtx(isRaid)
	local ctx = { needRaid = isRaid and true or false, size = isRaid and 10 or 5 }
	local step = ns:GetStep()
	if step and step.goals then
		for _, goal in ipairs(step.goals) do
			if goal.q and goal.q.id and not ctx.questID then ctx.questID = goal.q.id end
			if (goal.elite or goal.raid) and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
				ctx.stepText = ctx.stepText or goal.text
				if goal.goto_ then ctx.zone = ctx.zone or goal.goto_.zone end
				if goal.raid then ctx.needRaid = true; ctx.size = 10 end
			end
		end
	end
	ctx.questName = ctx.stepText
	return ctx
end

--------------------------------------------------------------------------------
-- Gancho pro localizador de party (PartyLens, addon irmão da rede ChehulNet):
-- passos de inimigo elite/chefe oferecem "Procurar grupo". PREFERIDO: entrega o
-- contexto da quest ao PartyLens (que pré-preenche o recrutamento pro grupo);
-- standalone-safe — PartyLens antigo só abre o buscador; sem ele, buscador nativo.
function ns:FindGroup(isRaid)
	local PL = _G.PartyLens
	if PL and PL.API and PL.API.StartQuestGroup then
		local ok, res = pcall(PL.API.StartQuestGroup, questGroupCtx(isRaid))
		if ok and res then return true end
	end
	if PL and PL.Toggle then
		pcall(function() PL:Toggle() end)
		return true
	end
	-- fallback: buscador de grupo nativo (o nome da função varia por client)
	for _, fn in ipairs({ "PVEFrame_ToggleFrame", "PVEFrame_ShowFrame", "ToggleLFGParentFrame" }) do
		local f = _G[fn]
		if type(f) == "function" then pcall(f); return true end
	end
	ns:Print(ns.L.GROUP_NO_FINDER)
	return false
end

--------------------------------------------------------------------------------
-- API pública do Lodestar (superfície estável pra addons irmãos). Hoje: o que o
-- PartyLens quer ler — meu objetivo atual (quest/step/zona + se pede grupo/raide).
-- Standalone-safe, sem efeito colateral. Acesso: _G.Lodestar.API.CurrentObjective().
ns.API = ns.API or {}

function ns.API.CurrentObjective()
	local g = ns.currentGuide
	if not g or not g.key then return nil end
	local idx = (ns.char and ns.char.currentStep) or 1
	local o = {
		guide = g.key,
		step = idx,
		total = (g.steps and #g.steps) or 0,
		needGroup = false,
		needRaid = false,
	}
	local step = ns:GetStep(idx)
	if step and step.goals then
		for _, goal in ipairs(step.goals) do
			if goal.q and goal.q.id and not o.questID then o.questID = goal.q.id end
			if (goal.elite or goal.raid) and ns:IsGoalActive(goal) and not ns:IsGoalComplete(goal) then
				o.label = o.label or goal.text
				if goal.goto_ then o.zone = o.zone or goal.goto_.zone end
				if goal.raid then o.needRaid = true else o.needGroup = true end
			end
		end
	end
	return o
end

--------------------------------------------------------------------------------
-- registra o receive na hora (a malha já carregou antes deste arquivo)
do local M = mesh(); if M and M.Register then M:Register(PREFIX, onRecv) end end
-- anuncia: change-driven a cada 12s + na hora ao trocar de guia
ns:Every(12, function() broadcast(false) end)
ns:On("_GUIDE_LOADED", function() broadcast(true) end)
