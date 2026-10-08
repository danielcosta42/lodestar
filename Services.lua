--=============================================================================
-- Services — o serviço mais próximo em TEMPO de viagem (não em linha reta): treinador
-- da classe ou de profissão, reparo, vendedor, estalagem, banco, leilão, voo, estábulo.
--
--   ns.Services:GoTo(kind, sub)   -- traça a rota (destino manual) até o melhor
--   kind: "classtrainer" | "proftrainer" (sub = profissão) | os de ns.travel.services
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Services = S

S.KINDS = { "classtrainer", "proftrainer", "repair", "vendor", "inn", "bank", "auction", "flight", "stable" }
local SAMPLE = 5          -- candidatos mais perto em reta que vão ao planejador

local function dist(a, b)
	if a.c ~= b.c then return math.huge end
	local dx, dy = a.x - b.x, a.y - b.y
	return math.sqrt(dx * dx + dy * dy)
end

-- Os `n` mais perto em linha reta, da facção (entrada sem `f` vale para todos). Cada
-- entrada traz `w` = coordenada de mundo.
function S.Candidates(list, fac, from, n)
	local out = {}
	for _, e in ipairs(list or {}) do
		if e.w and (not e.f or e.f:find(fac, 1, true)) then
			out[#out + 1] = { e = e, d = dist(from, e.w) }
		end
	end
	table.sort(out, function(a, b) return a.d < b.d end)
	local res = {}
	for i = 1, math.min(n, #out) do res[i] = out[i].e end
	return res
end

-- O de menor tempo segundo `planFn(cand) -> segundos | nil`.
function S.Pick(cands, planFn)
	local best, bestS
	for _, c in ipairs(cands) do
		local s = planFn(c)
		if s and (not bestS or s < bestS) then best, bestS = c, s end
	end
	return best, bestS
end

-- /ls near <texto>: palavra (pt ou en) -> tipo; a exata vence, senão o começo (3+ letras)
local ALIAS = {
	classtrainer = { "treinador", "trainer", "train", "classe", "class" },
	proftrainer = { "profissão", "profissao", "prof", "profession" },
	repair = { "reparo", "reparar", "conserto", "repair" },
	vendor = { "vendedor", "comerciante", "loja", "vendor" },
	inn = { "estalagem", "estalajadeiro", "taverna", "inn", "innkeeper" },
	bank = { "banco", "banqueiro", "bank" },
	auction = { "leilão", "leilao", "auction", "ah" },
	flight = { "voo", "vôo", "grifo", "flight", "fly", "taxi" },
	stable = { "estábulo", "estabulo", "stable" },
}
function S.KindFromText(text)
	text = (text or ""):lower():match("^%s*(.-)%s*$")
	if text == "" then return nil end
	for _, kind in ipairs(S.KINDS) do
		if text == kind then return kind end
		for _, a in ipairs(ALIAS[kind]) do if text == a then return kind end end
	end
	if #text < 3 then return nil end
	for _, kind in ipairs(S.KINDS) do
		for _, a in ipairs(ALIAS[kind]) do
			if a:sub(1, #text) == text then return kind end
		end
	end
end

-- Treinador de classe visto em jogo — o banco do Forever não tem alguns (ex.: o paladino
-- da Horda): guardado por classe e facção, pelo id do NPC; o último lugar vale.
function S.Remember(store, class, fac, e)
	store[class] = store[class] or {}
	store[class][fac] = store[class][fac] or {}
	store[class][fac][e.id] = e
end

-- Os do banco mais os vistos que o banco não tem. Os vistos vão em cópia: o que a busca
-- calcula neles (a coordenada de mundo) não vai parar no SavedVariables.
function S.WithSeen(static, seen)
	local out, have = {}, {}
	for _, e in ipairs(static or {}) do out[#out + 1] = e; have[e.id] = true end
	for id, e in pairs(seen or {}) do
		if not have[id] then
			local c = {}
			for k, v in pairs(e) do c[k] = v end
			out[#out + 1] = c
		end
	end
	return out
end

--------------------------------------------------------------------------------
-- o jogo
--------------------------------------------------------------------------------
local function list(kind, sub)
	local facName = UnitFactionGroup("player")
	if kind == "classtrainer" then
		local class = select(2, UnitClass("player"))
		local seen = ns.db and ns.db.trainersSeen and ns.db.trainersSeen[class]
		return S.WithSeen(ns.classTrainers and ns.classTrainers[class] and ns.classTrainers[class][facName],
			seen and seen[facName])
	elseif kind == "proftrainer" then
		return sub and ns.profTrainers and ns.profTrainers[sub] and ns.profTrainers[sub][facName]
	end
	return ns.travel and ns.travel.services and ns.travel.services[kind]
end

function S:Nearest(kind, sub)
	local T = ns.Travel
	local from = T and T.PlayerWorld()
	if not from then return nil end
	local entries = list(kind, sub) or {}
	for _, e in ipairs(entries) do
		if e.w == nil then e.w = T.World(e.zone, e.x, e.y, e.map) or false end
	end
	local valid = {}
	for _, e in ipairs(entries) do if e.w then valid[#valid + 1] = e end end
	local fac = UnitFactionGroup("player") == "Horde" and "H" or "A"
	local ctx = T:Context()
	local routes = {}
	local best = S.Pick(S.Candidates(valid, fac, from, SAMPLE), function(e)
		local r = ns.Journey.Plan(from, e.w, ctx)
		routes[e] = r
		return r and r.s
	end)
	return best, best and routes[best]
end

function S:GoTo(kind, sub)
	local best = self:Nearest(kind, sub)
	if not best then
		if kind == "classtrainer" and #(list(kind) or {}) == 0 then   -- nenhum conhecido: diga por quê
			return ns:Printf(ns.L.SERVICE_NO_TRAINER, (UnitClass("player")), select(2, UnitFactionGroup("player")))
		end
		return ns:Print(ns.L.SERVICE_NONE)
	end
	local title = sub or ns.L["SERVICE_" .. kind:upper()] or kind
	local where = best.zone or (best.map and C_Map.GetMapInfo(best.map) or {}).name or "?"
	ns.Destinations:Set("manual", { zone = best.zone, map = best.map, x = best.x, y = best.y,
		label = ("%s — %s"):format(title, best.n), service = kind })
	if ns.Waypoint then ns.Waypoint:Update() end
	if ns.Toast then
		ns.Toast:Show({ title = title,
			text = ("%s — %s"):format(best.n, where), color = ns.UI.COL.tip, hold = 5 })
	end
end

-- janela de treinador de classe aberta: lembra onde ele fica (por conta; vale para os alts)
-- ponytail: o treinador de pet do caçador abre a mesma janela e entra como de classe; filtrar
-- pelo tipo do serviço se incomodar
if not ns.On then return end
ns:On("TRAINER_SHOW", function()
	if IsTradeskillTrainer and IsTradeskillTrainer() then return end          -- profissão
	local guid = UnitGUID("npc")
	local id = guid and tonumber((select(6, strsplit("-", guid))))
	local map = C_Map.GetBestMapForUnit("player")
	local pos = map and C_Map.GetPlayerMapPosition(map, "player")
	if not (id and pos and ns.db) then return end
	ns.db.trainersSeen = ns.db.trainersSeen or {}
	S.Remember(ns.db.trainersSeen, select(2, UnitClass("player")), UnitFactionGroup("player"),
		{ id = id, n = UnitName("npc"), map = map, x = pos.x * 100, y = pos.y * 100 })
end)
