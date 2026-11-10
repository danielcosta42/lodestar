-- Testes do parceiro de quest elite (Buddy.lua, specs/parceiro): codec, alvos, ofertas e um cliente simulado.
--
--   luajit tools/buddy-tests.lua
--
-- Sai com 1 no primeiro check que falha.
local ROOT = (arg and arg[0] or ""):gsub("[^/\\]*$", "") .. ".."

local checks = 0
local function check(cond, what)
	checks = checks + 1
	if not cond then
		io.stderr:write("FAIL: " .. what .. "\n")
		os.exit(1)
	end
end

local ns = {}
assert(loadfile(ROOT .. "/Buddy.lua"))("Lodestar", ns)
local B = ns.Buddy

-- ── codec ────────────────────────────────────────────────────────────────────
check(B.Encode(824, 1413) == "LB1|Q|824|1413", "codificado")
local q, m = B.Decode("LB1|Q|824|1413")
check(q == 824 and m == 1413, "ida e volta")
for _, bad in ipairs({ "lixo", "LB1|Q|824", "LB1|Q|824|1413|x", "LB2|Q|824|1413", "LB1|X|824|1413", "LB1|Q|0|1413",
	"LB1|Q|824|0", "LB1|Q|8.5|1413", "LB1|Q|824|1e9", "LB1|Q|824|1413" .. string.rep(" ", 40) }) do
	check(B.Decode(bad) == nil, "descartado: " .. bad:sub(1, 30))
end
check(B.Decode(nil) == nil, "não-texto descartado")

-- ── nomes e caps ─────────────────────────────────────────────────────────────
check(B.WhisperName("Ana Lima-Realm8") == "Ana Lima" and B.WhisperName("Ana Lima") == "Ana Lima"
	and B.WhisperName("Thrall-Draenor") == "Thrall-Draenor", "nome de sussurro: sobrenome sem reino; sem sobrenome, com reino")
local gd, st0 = B.GuideStep("v=2.11,lvl=20,guide=Westfall (10-16),step=12/80")
check(gd == "Westfall (10-16)" and st0 == 12, "guia e passo das caps")
check(B.GuideStep(nil) == nil and select(2, B.GuideStep("v=1")) == nil, "caps sem guia")

-- ── alvos ────────────────────────────────────────────────────────────────────
local now = 10000
local same = function(a, b) return a == b end
local first = function() return 1 end
local mine = { guide = "Westfall (10-16)", step = 12 }
local peers = {
	["Ana Lima"] = { addons = { ls = true }, mapID = 1413, ts = now - 10, caps = "guide=Westfall (10-16),step=14/80" },
	["Bia Rocha"] = { addons = { pl = true }, mapID = 1413, ts = now - 10 },              -- sem Lodestar
	["Caio Nunes"] = { addons = { ls = true, gos = true }, mapID = 1414, ts = now - 10 },  -- outra zona
	["Davi Melo"] = { addons = { ls = true }, mapID = 1413, ts = now - B.PEER_FRESH - 1 },-- velho
	["Eu Mesmo"] = { addons = { ls = true }, mapID = 1413, ts = now },
	["Eva Dias"] = { addons = { ls = true }, mapID = 1413, ts = now - B.PEER_FRESH },      -- mesma zona, outro trecho
	["Fabi Reis"] = { addons = { ls = true }, mapID = 0, ts = now, caps = "guide=Westfall (10-16),step=10/80" }, -- mapa ?, mesmo trecho
	["Gil Paz"] = { addons = { ls = true }, mapID = 0, ts = now, caps = "guide=Westfall (10-16),step=40/80" },   -- mapa ?, longe
	["Hugo Luz"] = { addons = { ls = true }, mapID = 1413, ts = now },                     -- recusou sussurro há pouco
	["Zeca"] = "lixo",
}
local t = B.Targets(peers, 1413, now, "Eu Mesmo", mine, same, function(n) return n ~= "Hugo Luz" end, first)
check(#t == 3 and t[1] == "Ana Lima" and t[2] == "Fabi Reis" and t[3] == "Eva Dias",
	"mesmo trecho primeiro (mapa desconhecido serve só assim), depois a zona; sem quem não serve: " .. table.concat(t, ","))
local many = {}
for i = 1, 20 do many[("P%02d"):format(i)] = { addons = { ls = true }, mapID = 1, ts = now } end
check(#B.Targets(many, 1, now, "X", nil, same, nil, first) == B.TARGETS, "no máximo TARGETS")
local seen, rounds = {}, 0
math.randomseed(3)
for _ = 1, 30 do
	for _, n in ipairs(B.Targets(many, 1, now, "X", nil, same, nil, math.random)) do seen[n] = true end
	rounds = rounds + 1
end
local distinct = 0
for _ in pairs(seen) do distinct = distinct + 1 end
check(distinct == 20, "o sorteio roda: em 30 rodadas todos os 20 recebem algum aviso (" .. distinct .. ")")
check(#B.Targets(nil, 1, now, "X", nil, same, nil, first) == 0, "sem peers: ninguém")
check(#B.Targets(peers, 1413, now, "Eu Mesmo", mine, function() return true end, nil, first) == 5,
	"a comparação de zona vem de fora (subzona -> zona)")

-- ── janela ───────────────────────────────────────────────────────────────────
local st = {}
check(B.Allow(st, "k", 0, 60) and not B.Allow(st, "k", 59, 60) and B.Allow(st, "k", 60, 60), "uma vez por janela")

-- ── no jogo ──────────────────────────────────────────────────────────────────
local clock, handlers, tickers, whispers, toasts, invites, registered = 50000, {}, {}, {}, {}, {}, {}
local world = { map = 1413, instance = false, members = 0, raid = false, onQuest = { [824] = true, [10] = true },
	objective = nil, lockdown = false, grouped = false, leader = false, inGroup = {} }
function time() return clock end
function GetTime() return clock end
function IsInInstance() return world.instance end
function GetNumGroupMembers() return world.members end
function IsInRaid() return world.raid end
function IsInGroup() return world.grouped end
function UnitIsGroupLeader() return world.leader end
function UnitIsGroupAssistant() return false end
function UnitInParty(n) return world.inGroup[n] or false end
function UnitInRaid() return nil end
C_ChatInfo = { InChatMessagingLockdown = function() return world.lockdown end }
C_Map = { GetBestMapForUnit = function() return world.map end,
	GetMapInfo = function(m) if m == 1500 then return { mapType = 5, parentMapID = 1413 } end return { mapType = 3, parentMapID = 12 } end }
C_QuestLog = { IsOnQuest = function(q_) return world.onQuest[q_] == true end,
	GetTitleForQuestID = function(q_) return q_ == 824 and "Desaparecidos" or nil end }
C_PartyInfo = { InviteUnit = function(n) invites[#invites + 1] = n end }
_G.ChehulMesh = {
	TRIED_SECONDS = 30,
	dir = { tried = {}, bad = { ["Bia Rocha"] = clock + 600 } },
	Register = function(_, prefix, fn) registered[prefix] = fn end,
	Whisper = function(_, prefix, p, target) whispers[#whispers + 1] = { prefix, p, target }; return true end,
}
_G.ChehulNet = { peers = {
	["Ana Lima"] = { addons = { ls = true }, mapID = 1413, ts = clock },
	["Bia Rocha"] = { addons = { ls = true }, mapID = 1413, ts = clock },  -- "No player named" há pouco
	["Caio Nunes"] = { addons = { ls = true }, mapID = 1500, ts = clock }, -- caverna dentro da zona
} }
local g = {}
g.On = function(_, ev, fn) handlers[ev] = fn end
g.Every = function(_, s, fn) tickers[#tickers + 1] = fn end
g.IsSecret = function() return false end
g.PlayerName = function() return "Eu Mesmo" end
g.L = { BUDDY_TITLE = "Convidar %s?", BUDDY_TEXT = "Mesma quest: %s", QUEST_FALLBACK = "Quest #%s" }
g.UI = { COL = { tip = {} } }
g.Toast = { Show = function(_, d) toasts[#toasts + 1] = d end }
g.db = {}
g.API = { CurrentObjective = function() return world.objective end }
assert(loadfile(ROOT .. "/Buddy.lua"))("Lodestar", g)
local function tick() for _, fn in ipairs(tickers) do fn() end end
check(registered.LSBuddy, "o prefixo é registrado")

world.objective = { questID = 10, eliteQuestID = 824, needGroup = true }
tick()
check(#whispers == 0, "opcional: desligado por padrão, nada sai")
g.db.eliteBuddy = true
world.objective = nil
tick()
check(#whispers == 0, "sem quest de grupo no passo: nada sai")
world.objective = { questID = 10, eliteQuestID = 824, needGroup = true }
world.lockdown = true
tick()
check(#whispers == 0, "lockdown de chat: nada sai")
world.lockdown = false
tick()
local to = {}
for _, w in ipairs(whispers) do to[w[3]] = w[2] end
check(#whispers == 2 and to["Ana Lima"] == "LB1|Q|824|1413" and to["Caio Nunes"] and not to["Bia Rocha"],
	"avisa a quest ELITE do passo (não a primeira) aos Lodestar da zona, subzona incluída, sem quem não responde ("
	.. #whispers .. ")")
check(_G.ChehulMesh.dir.tried["Ana Lima"] == clock + 30, "o nome sussurrado entra em dir.tried: o 'No player named' some do chat")
tick()
check(#whispers == 2, "não repete antes de ANNOUNCE_GAP")
clock = clock + B.ANNOUNCE_GAP
world.instance = true
tick()
check(#whispers == 2, "nada sai de instância")
world.instance, world.members = false, 5
tick()
check(#whispers == 2, "grupo cheio: nada sai")
world.members, world.raid = 5, true
tick()
check(#whispers == 4, "raide com 5 não está cheia")
world.members, world.raid = 0, false
clock = clock + B.ANNOUNCE_GAP
world.onQuest[824] = false
tick()
check(#whispers == 4, "a quest fora do log: nada sai")
world.onQuest[824] = true

-- recebe
whispers = {}
registered.LSBuddy("LB1|Q|824|1413", "Ana Lima-Realm", "GUILD")
check(#toasts == 0, "só por sussurro")
registered.LSBuddy("LB1|Q|999|1413", "Ana Lima", "WHISPER")
check(#toasts == 0, "outra quest: nada")
registered.LSBuddy("LB1|Q|824|1414", "Ana Lima", "WHISPER")
check(#toasts == 0, "outra zona: nada")
registered.LSBuddy("LB1|Q|824|1413", "Eu Mesmo", "WHISPER")
check(#toasts == 0, "eu mesmo: nada")
world.inGroup["Ana Lima"] = true
registered.LSBuddy("LB1|Q|824|1413", "Ana Lima-Realm", "WHISPER")
check(#toasts == 0 and #whispers == 0, "quem já está no meu grupo: nada")
world.inGroup["Ana Lima"] = nil
g.db.toastsEnabled = false
registered.LSBuddy("LB1|Q|824|1413", "Ana Lima-Realm", "WHISPER")
check(#toasts == 0 and #whispers == 0, "toasts desligados: sem oferta e sem resposta")
g.db.toastsEnabled = nil
registered.LSBuddy("LB1|Q|824|1500", "Ana Lima-Realm", "WHISPER")
check(#toasts == 1 and toasts[1].title == "Convidar Ana Lima?" and toasts[1].text == "Mesma quest: Desaparecidos"
	and type(toasts[1].onClick) == "function", "mesma quest e zona (subzona dela): toast clicável, curto")
check(#whispers == 1 and whispers[1][3] == "Ana Lima", "apresenta-se de volta uma vez, pelo nome de sussurro")
registered.LSBuddy("LB1|Q|824|1413", "Ana Lima", "WHISPER")
check(#toasts == 1 and #whispers == 1, "a mesma pessoa e quest não repetem dentro da janela")
check(#invites == 0, "nenhum convite sem clique")
toasts[1].onClick()
check(#invites == 1 and invites[1] == "Ana Lima", "o clique convida pelo nome de sussurro")
world.grouped = true
registered.LSBuddy("LB1|Q|824|1413", "Caio Nunes", "WHISPER")
check(#toasts == 1 and #whispers == 2, "em grupo sem ser líder: responde (o outro pode convidar), sem toast")
world.leader = true
registered.LSBuddy("LB1|Q|824|1413", "Davi Melo", "WHISPER")
check(#toasts == 2, "líder do grupo: oferta")
world.grouped, world.leader = false, false
world.members = 5
registered.LSBuddy("LB1|Q|824|1413", "Eva Dias", "WHISPER")
check(#toasts == 2, "grupo cheio: sem oferta")
world.members = 0
world.objective = { questID = 10, eliteQuestID = 824, needGroup = false }
registered.LSBuddy("LB1|Q|824|1413", "Fabi Reis", "WHISPER")
check(#toasts == 2, "o objetivo de grupo já concluído: sem oferta")

-- ── a quest do objetivo elite no CurrentObjective (Squad.lua) ────────────────
_G.ChehulMesh = nil
local sq = { char = { currentStep = 1 }, currentGuide = { key = "Leveling/Alliance/Westfall (10-16)", steps = { {} } } }
sq.On, sq.Every = function() end, function() end
sq.GetStep = function() return { goals = {
	{ q = { id = 10 } },                          -- a primeira quest do passo, sem elite
	{ q = { id = 824 }, elite = true, text = "Matar o chefe" },
} } end
sq.IsGoalActive = function() return true end
sq.IsGoalComplete = function() return false end
assert(loadfile(ROOT .. "/Squad.lua"))("Lodestar", sq)
local obj = sq.API.CurrentObjective()
check(obj.questID == 10 and obj.eliteQuestID == 824 and obj.needGroup, "o objetivo diz a quest elite, não só a primeira do passo")

-- ── toast clicável (Toast.lua) ───────────────────────────────────────────────
local function frame()
	local f = { scripts = {}, mouse = nil }
	local noop = function() end
	for _, k in ipairs({ "SetSize", "SetPoint", "SetFrameStrata", "ClearAllPoints", "SetAlpha", "Show", "Hide",
		"SetJustifyH", "SetWordWrap", "SetTextColor", "SetText", "SetTexture", "SetVertexColor", "SetColorTexture" }) do
		f[k] = noop
	end
	function f:SetScript(k, fn) self.scripts[k] = fn end
	function f:EnableMouse(on) self.mouse = on end
	function f:GetHeight() return 48 end
	function f:CreateFontString() return frame() end
	return f
end
function CreateFrame() return frame() end
UIParent = frame()
local tns = { db = { toastsEnabled = true, toast = {} }, L = {} }
tns.On = function() end
tns.UI = { COL = { accent = {}, done = {}, tip = {} }, GLYPH = "", unpackc = function() return 1, 1, 1, 1 end,
	Panel = function() local f = frame(); f.stripe = frame(); return f end, Media = function() return frame() end,
	SetFont = function() end }
assert(loadfile(ROOT .. "/Toast.lua"))("Lodestar", tns)
local clicked = 0
tns.Toast:Show({ title = "a", text = "b", onClick = function() clicked = clicked + 1 end })
-- o toast mostrado é o último da lista `active`, upvalue de Toast:_spawn
local activeList
for i = 1, 50 do
	local name, val = debug.getupvalue(tns.Toast._spawn, i)
	if not name then break end
	if name == "active" then activeList = val end
end
local spawned = activeList and activeList[#activeList]
check(spawned and spawned.mouse == true and spawned._onClick, "toast com ação segura o clique")
spawned.scripts.OnMouseUp(spawned)
check(clicked == 1 and spawned.mouse == false and spawned._state == "out", "o clique chama a ação, solta o mouse e fecha")
spawned.scripts.OnMouseUp(spawned)
check(clicked == 1, "um segundo clique não repete a ação")
tns.Toast:Show({ title = "c", text = "d" })
local plain = activeList[#activeList]
check(plain.mouse == false and plain._onClick == nil, "toast sem ação não segura o mouse")

print(("buddy: %d checks passed"):format(checks))
