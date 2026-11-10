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

-- ── alvos ────────────────────────────────────────────────────────────────────
local now = 10000
local peers = {
	["Ana Lima"] = { addons = { ls = true }, mapID = 1413, ts = now - 10 },
	["Bia Rocha"] = { addons = { pl = true }, mapID = 1413, ts = now - 10 },              -- sem Lodestar
	["Caio Nunes"] = { addons = { ls = true, gos = true }, mapID = 1414, ts = now - 10 },  -- outra zona
	["Davi Melo"] = { addons = { ls = true }, mapID = 1413, ts = now - B.PEER_FRESH - 1 },-- velho
	["Eu Mesmo"] = { addons = { ls = true }, mapID = 1413, ts = now },
	["Eva Dias"] = { addons = { ls = true }, mapID = 1413, ts = now - B.PEER_FRESH },
	["Zeca"] = "lixo",
}
local t = B.Targets(peers, 1413, now, "Eu Mesmo")
check(#t == 2 and t[1] == "Ana Lima" and t[2] == "Eva Dias", "só Lodestar, mesma zona, recente, sem eu: " .. table.concat(t, ","))
local many = {}
for i = 1, 20 do many[("P%02d"):format(i)] = { addons = { ls = true }, mapID = 1, ts = now } end
check(#B.Targets(many, 1, now, "X") == B.TARGETS, "no máximo TARGETS")
check(#B.Targets(nil, 1, now, "X") == 0, "sem peers: ninguém")

-- ── janela ───────────────────────────────────────────────────────────────────
local st = {}
check(B.Allow(st, "k", 0, 60) and not B.Allow(st, "k", 59, 60) and B.Allow(st, "k", 60, 60), "uma vez por janela")

-- ── no jogo ──────────────────────────────────────────────────────────────────
local clock, handlers, tickers, whispers, toasts, invites, registered = 50000, {}, {}, {}, {}, {}, {}
local world = { map = 1413, instance = false, members = 0, raid = false, onQuest = { [824] = true }, objective = nil }
function time() return clock end
function IsInInstance() return world.instance end
function GetNumGroupMembers() return world.members end
function IsInRaid() return world.raid end
function Ambiguate(n) return (n:gsub("%-.*$", "")) end
C_Map = { GetBestMapForUnit = function() return world.map end }
C_QuestLog = { IsOnQuest = function(q_) return world.onQuest[q_] == true end,
	GetTitleForQuestID = function(q_) return q_ == 824 and "Desaparecidos" or nil end }
C_PartyInfo = { InviteUnit = function(n) invites[#invites + 1] = n end }
_G.ChehulMesh = {
	Register = function(_, prefix, fn) registered[prefix] = fn end,
	Whisper = function(_, prefix, p, target) whispers[#whispers + 1] = { prefix, p, target }; return true end,
}
_G.ChehulNet = { peers = {
	["Ana Lima"] = { addons = { ls = true }, mapID = 1413, ts = clock },
	["Bia Rocha"] = { addons = { ls = true }, mapID = 1413, ts = clock },
} }
local g = {}
g.On = function(_, ev, fn) handlers[ev] = fn end
g.Every = function(_, s, fn) tickers[#tickers + 1] = fn end
g.IsSecret = function() return false end
g.PlayerName = function() return "Eu Mesmo" end
g.L = { BUDDY_TITLE = "Parceiro", BUDDY_TEXT = "%s em %s", QUEST_FALLBACK = "Quest #%s" }
g.UI = { COL = { tip = {} } }
g.Toast = { Show = function(_, d) toasts[#toasts + 1] = d end }
g.db = {}
g.API = { CurrentObjective = function() return world.objective end }
assert(loadfile(ROOT .. "/Buddy.lua"))("Lodestar", g)
local function tick() for _, fn in ipairs(tickers) do fn() end end
check(registered.LSBuddy, "o prefixo é registrado")

tick()
check(#whispers == 0, "sem quest de grupo no passo: nada sai")
world.objective = { questID = 824, needGroup = true }
tick()
check(#whispers == 2 and whispers[1][3] == "Ana Lima" and whispers[2][3] == "Bia Rocha" and whispers[1][2] == "LB1|Q|824|1413",
	"no passo elite: avisa os Lodestar da zona (" .. #whispers .. ")")
tick()
check(#whispers == 2, "não repete antes de ANNOUNCE_GAP")
clock = clock + B.ANNOUNCE_GAP
world.instance = true
tick()
check(#whispers == 2, "nada sai de instância")
world.instance, world.members = false, 5
tick()
check(#whispers == 2, "grupo cheio: nada sai")
world.members = 0
world.onQuest[824] = false
tick()
check(#whispers == 2, "a quest fora do log: nada sai")
world.onQuest[824] = true
g.db.eliteBuddy = false
tick()
check(#whispers == 2, "opção desligada: nada sai")
g.db.eliteBuddy = nil
tick()
check(#whispers == 4, "e volta a avisar depois da janela")

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
registered.LSBuddy("LB1|Q|824|1413", "Ana Lima-Realm", "WHISPER")
check(#toasts == 1 and toasts[1].text == "Ana Lima em Desaparecidos" and type(toasts[1].onClick) == "function",
	"mesma quest e zona: toast clicável")
check(#whispers == 1 and whispers[1][3] == "Ana Lima-Realm", "apresenta-se de volta uma vez")
registered.LSBuddy("LB1|Q|824|1413", "Ana Lima", "WHISPER")
check(#toasts == 1 and #whispers == 1, "a mesma pessoa e quest não repetem dentro da janela")
check(#invites == 0, "nenhum convite sem clique")
toasts[1].onClick()
check(#invites == 1 and invites[1] == "Ana Lima-Realm", "o clique convida")
world.members = 5
registered.LSBuddy("LB1|Q|824|1413", "Bia Rocha", "WHISPER")
check(#toasts == 1, "grupo cheio: sem oferta")
world.members = 0
world.objective = { questID = 824, needGroup = false }
registered.LSBuddy("LB1|Q|824|1413", "Bia Rocha", "WHISPER")
check(#toasts == 1, "o objetivo de grupo já concluído: sem oferta")

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
