-- Testes do mapa de perigo (Danger.lua, specs/perigo): codec, validação, memória, contagem, aviso e um
-- cliente simulado. Rodados contra o arquivo de verdade, fora do jogo.
--
--   luajit tools/danger-tests.lua
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
assert(loadfile(ROOT .. "/Danger.lua"))("Lodestar", ns)
local D = ns.Danger

-- ── células ──────────────────────────────────────────────────────────────────
local cx, cy = D.Cell(0, 99.9)
check(cx == 0 and cy == 19, "bordas: 0 -> 0 e 99,9 -> 19")
cx, cy = D.Cell(52.4, 7.6)
check(cx == 10 and cy == 1, "52,4 / 7,6 -> célula 10,1")
cx, cy = D.Cell(-5, 140)
check(cx == 0 and cy == 19, "coordenada fora do mapa cai na borda")

-- ── codec e validação ────────────────────────────────────────────────────────
local rec = { map = 1436, cx = 10, cy = 1, id = "a1b2c3", level = 23 }
local s = D.Encode(rec)
check(s == "LD2|D|1436|10|1|a1b2c3", "codificado, sem o nível: " .. s)
local back = D.Decode(s)
check(back and back.map == 1436 and back.cx == 10 and back.cy == 1 and back.id == "a1b2c3" and back.level == nil,
	"ida e volta")
back = D.Decode("LD1|D|1436|10|1|23|a1b2c3")
check(back and back.map == 1436 and back.id == "a1b2c3" and back.level == nil, "o LD1 (com nível) ainda é lido, sem o nível")
for _, bad in ipairs({ "lixo", "LD2|D|1436|10|1", "LD2|D|1436|10|1|a1|x", "LD9|D|1436|10|1|a1",
	"LD2|X|1436|10|1|a1", "LD2|D|0|10|1|a1", "LD2|D|1436|20|1|a1", "LD2|D|1436|10|-1|a1",
	"LD2|D|1436|1.5|1|a1", "LD2|D|1436|10|1|zz", "LD2|D|1436|10|1|", "LD2|D|1436|10|1|" .. string.rep("a", 13),
	"LD2|D|1e9|10|1|a1", "LD2|D|1436|10|1|a1" .. string.rep(" ", 80), "LD1|D|1436|10|1|81|a1", "LD1|D|1436|10|1|a1" }) do
	check(D.Decode(bad) == nil, "descartado: " .. bad:sub(1, 40))
end
check(D.Decode(nil) == nil and D.Decode(42) == nil, "não-texto descartado")

-- ── memória ──────────────────────────────────────────────────────────────────
local mem = D.NewMemory()
local function r(cx_, cy_, id, map) return { map = map or 1436, cx = cx_, cy = cy_, id = id } end
check(D.Add(mem, "Ana", r(10, 1, "1"), 1000), "uma morte nova entra")
check(not D.Add(mem, "Ana", r(10, 1, "1"), 1001), "a mesma (origem e id) não entra de novo")
check(D.Add(mem, "Bia", r(10, 1, "1"), 1001), "o mesmo id de outra origem é outra morte")
check(not D.Add(mem, "", r(10, 1, "2"), 1001) and not D.Add(mem, nil, r(10, 1, "2"), 1001)
	and not D.Add(mem, "Caio", nil, 1001) and not D.Add(mem, "Caio", r(1, 1, "9"), 1001, ""),
	"sem origem, sem remetente ou sem registro: nada")

-- ── contagem: célula e vizinhas, por remetente real ──────────────────────────
D.Add(mem, "Caio", r(11, 2, "1"), 1002)       -- vizinha (diagonal)
D.Add(mem, "Davi", r(12, 1, "1"), 1002)       -- duas colunas ao lado: fora
D.Add(mem, "Eva", r(10, 1, "1", 1437), 1002)  -- outro mapa: fora
local n, o = D.Around(mem, 1436, 10, 1, 1010)
check(n == 3 and o == 3, "célula e vizinhas: 3 mortes de 3 remetentes (" .. n .. "/" .. o .. ")")
check(D.Around(mem, 1436, 10, 1, 1000 + D.TTL + 10) == 0, "passado o TTL, nada conta")

-- ── origens forjadas: o que conta é quem entregou ────────────────────────────
local mf = D.NewMemory()
for i = 1, 4 do D.Add(mf, "Falso" .. i, r(5, 5, "1"), 10, "Forjador") end
local fn, fs = D.Around(mf, 1436, 5, 5, 20)
check(fn == 4 and fs == 1, "4 'pessoas' entregues por um só remetente contam como 1 (" .. fn .. "/" .. fs .. ")")
check(D.ShouldWarn({}, mf, 1436, 5, 5, 20) == nil, "e não acendem o aviso")
for i = 5, 20 do D.Add(mf, "Falso" .. i, r(5, 5, "1"), 10, "Forjador") end
check(#mf.list == D.SENDER_MAX, "um remetente guarda no máximo SENDER_MAX mortes (" .. #mf.list .. ")")

-- ── um remetente não esvazia a memória ───────────────────────────────────────
local mflood = D.NewMemory()
for i = 1, D.MAX - 2 do D.Add(mflood, "P" .. i, r(1, 1, "1"), 0) end
D.Add(mflood, "Legit", r(3, 3, "1"), 1)
for i = 1, 500 do D.Add(mflood, "Inundador", r(2, 2, ("%x"):format(i)), 2) end
local legit = false
for _, d in ipairs(mflood.list) do if d.s == "Legit" then legit = true end end
check(legit, "um remetente inundando não tira da memória a morte de outro")

-- ── aviso: HOT mortes de ORIGINS remetentes, uma vez por célula e um por vez ─
local m2, state = D.NewMemory(), {}
D.Add(m2, "Ana", r(5, 5, "1"), 0)
D.Add(m2, "Ana", r(5, 5, "2"), 0)
D.Add(m2, "Ana", r(5, 6, "3"), 0)
check(D.ShouldWarn(state, m2, 1436, 5, 5, 10) == nil, "3 mortes de uma pessoa só: sem aviso")
D.Add(m2, "Bia", r(4, 5, "1"), 5)
check(D.ShouldWarn(state, m2, 1436, 5, 5, 10) == 4, "4 mortes de 2 pessoas: avisa com o número")
check(D.ShouldWarn(state, m2, 1436, 5, 5, 20) == nil, "a mesma célula não avisa de novo dentro de WARN_GAP")
check(D.ShouldWarn(state, m2, 1436, 5, 6, 20) == nil, "outra célula também espera TOAST_GAP")
check(D.ShouldWarn(state, m2, 1436, 5, 6, 10 + D.TOAST_GAP) == 4, "passado TOAST_GAP, a vizinha avisa")
check(D.ShouldWarn(state, m2, 1436, 5, 5, 10 + D.WARN_GAP) == 4, "passada a janela, a primeira avisa de novo")
local m3 = D.NewMemory()
D.Add(m3, "Ana", r(5, 5, "1"), 0); D.Add(m3, "Bia", r(5, 5, "1"), 0)
check(D.ShouldWarn({}, m3, 1436, 5, 5, 1) == nil, "2 mortes (abaixo de HOT): sem aviso")

-- ── marcas no mapa ───────────────────────────────────────────────────────────
local hot = D.Hot(m2, 1436, 10)
check(#hot == 1 and hot[1].cx == 5 and hot[1].cy == 5 and hot[1].n == 2,
	"só a célula com PIN_MIN+ mortes vira marca (" .. #hot .. ")")
check(#D.Hot(m2, 1437, 10) == 0 and #D.Hot(m2, 1436, 10 + D.TTL) == 0, "outro mapa ou passado o TTL: sem marca")
local m4 = D.NewMemory()
for i = 0, 29 do
	for k = 1, 2 do D.Add(m4, "P" .. i .. "_" .. k, r(i % 20, math.floor(i / 20), "c"), 0) end
end
check(#D.Hot(m4, 1436, 1) == D.PIN_MAX, "no máximo PIN_MAX marcas")

-- ── teto da memória ──────────────────────────────────────────────────────────
local m5 = D.NewMemory()
for i = 1, D.MAX + 50 do D.Add(m5, "Q" .. i, r(1, 1, "1"), i) end
check(#m5.list == D.MAX, "a memória para no teto")
check(m5.list[1].s == "Q51" and not m5.seen["Q1/1"], "ao passar do teto sai a mais velha, e sua chave também")
check(D.Add(m5, "Q1", r(1, 1, "1"), D.MAX + 60), "a que saiu pode entrar de novo")
local m6 = D.NewMemory()
D.Add(m6, "A", r(1, 1, "1"), 0)
D.Add(m6, "B", r(1, 1, "1"), D.TTL + 100)
check(#m6.list == 1 and m6.list[1].s == "B" and not m6.seen["A/1"], "uma morte vencida sai ao chegar outra")

-- ── no jogo: morte, envio, recebimento, aviso e marcas (cliente simulado) ──────
local now, handlers, tickers, sent, toasts, registered, relayable = 5000, {}, {}, {}, {}, {}, {}
local world = { map = 1436, x = 0.524, y = 0.076, instance = false, guild = true, group = true, dead = false,
	taxi = false, lockdown = false }
function time() return now end
function IsInInstance() return world.instance end
function IsInGuild() return world.guild end
function IsInGroup() return world.group end
function UnitIsDeadOrGhost() return world.dead end
function UnitOnTaxi() return world.taxi end
function Ambiguate(n_) return (n_:gsub("%-.*$", "")) end
C_ChatInfo = { InChatMessagingLockdown = function() return world.lockdown end }
C_Map = {
	GetBestMapForUnit = function() return world.map end,
	GetPlayerMapPosition = function() return { GetXY = function() return world.x, world.y end } end,
}
_G.ChehulMesh = {
	Register = function(_, prefix, fn) registered[prefix] = fn end,
	Relayable = function(_, prefix) relayable[prefix] = true end,
	Guild = function(_, prefix, p) sent[#sent + 1] = { "GUILD", prefix, p } end,
	Group = function(_, prefix, p) sent[#sent + 1] = { "GROUP", prefix, p } end,
	Realm = function(_, prefix, p, key, relay) sent[#sent + 1] = { "REALM", prefix, p, key, relay } end,
}
local g = {}
g.On = function(_, ev, fn) handlers[ev] = fn end
g.Every = function(_, s_, fn) tickers[#tickers + 1] = { s = s_, fn = fn } end
g.IsSecret = function() return false end
g.PlayerName = function() return "Eu Mesmo" end
g.L = { DANGER_TITLE = "Cuidado", DANGER_TEXT = "%d mortes" }
g.UI = { COL = { amber = {} } }
g.Toast = { Show = function(_, d) toasts[#toasts + 1] = d end }
g.db = {}
assert(loadfile(ROOT .. "/Danger.lua"))("Lodestar", g)
local function tick(sec) for _, t in ipairs(tickers) do if t.s == sec then t.fn() end end end
check(registered.LSDanger and not relayable.LSDanger, "o prefixo é registrado e não é repassado")

handlers.PLAYER_DEAD()
check(#sent == 0, "compartilhar é opcional: desligado por padrão, nada sai")
g.db.dangerShare = true
world.lockdown = true
handlers.PLAYER_DEAD()
check(#sent == 0, "em lockdown de chat nada sai")
world.lockdown = false
handlers.PLAYER_DEAD()
check(#sent == 3 and sent[1][1] == "GUILD" and sent[2][1] == "GROUP" and sent[3][1] == "REALM" and not sent[3][5],
	"a morte vai pela guilda, pelo grupo e por sussurro a pares, sem repasse (" .. #sent .. ")")
local myRec = g.Danger.Decode(sent[1][3])
check(myRec and myRec.map == 1436 and myRec.cx == 10 and myRec.cy == 1 and not sent[1][3]:find("|23|", 1, true),
	"com mapa e célula, sem nível")
now = now + 30
handlers.PLAYER_DEAD()
check(#sent == 3, "uma segunda morte dentro de SEND_GAP não sai")
world.instance = true
now = now + 120
handlers.PLAYER_DEAD()
check(#sent == 3, "nada sai de instância")
world.instance = false

-- recebimento: o remetente real conta; as minhas mortes não entram
local function death(id, cx_, cy_) return g.Danger.Encode({ map = 1436, cx = cx_, cy = cy_, id = id }) end
registered.LSDanger(death("e1", 10, 1), "Eu Mesmo", "GUILD")                 -- o eco da minha
registered.LSDanger(death("f1", 10, 1), "Falso Um", "RELAY", "Forjador")
registered.LSDanger(death("f2", 10, 1), "Falso Dois", "RELAY", "Forjador")
registered.LSDanger(death("f3", 10, 1), "Falso Tres", "RELAY", "Forjador")
tick(5)
check(#toasts == 0, "3 mortes forjadas por um só remetente não avisam; as minhas não contam")
registered.LSDanger(death("a1", 10, 1), "Ana Lima", "GUILD")
registered.LSDanger(death("a1", 10, 1), "Ana Lima", "WHISPER")              -- a mesma, por outro caminho
registered.LSDanger("lixo", "Caio", "GUILD")
registered.LSDanger(death("x1", 10, 1), "Ana Lima", "RELAY", "Eu Mesmo")    -- algo que eu mesmo repassei
tick(5)
check(#toasts == 1 and toasts[1].text == "4 mortes", "4 mortes de 2 remetentes reais: aviso ("
	.. (toasts[1] and toasts[1].text or "nenhum") .. ")")
tick(5)
check(#toasts == 1, "não repete na mesma célula")

-- taxi, morte, opção desligada
local m = g.Danger
world.x = 0.20
registered.LSDanger(death("b1", 4, 1), "Bia Rocha", "GUILD")
registered.LSDanger(death("c1", 4, 1), "Caio Nunes", "GUILD")
registered.LSDanger(death("d1", 4, 1), "Davi Melo", "GUILD")
now = now + m.TOAST_GAP
world.taxi = true
tick(5)
check(#toasts == 1, "de taxi: sem aviso")
world.taxi, world.dead = false, true
tick(5)
check(#toasts == 1, "morto ou fantasma: sem aviso")
world.dead = false
g.db.dangerWarn = false
tick(5)
check(#toasts == 1, "com 'avisar' desligado: sem aviso")
g.db.dangerWarn = nil
tick(5)
check(#toasts == 2, "religado: avisa a outra célula")

-- marcas no mapa-múndi
local frames = {}
function CreateFrame()
	local f = { shown = false, pts = {} }
	function f:SetSize() end
	function f:SetFrameStrata() end
	function f:SetAlpha() end
	function f:SetParent() end
	function f:ClearAllPoints() self.pts = {} end
	function f:SetPoint(...) self.pts[#self.pts + 1] = { ... } end
	function f:Show() self.shown = true end
	function f:Hide() self.shown = false end
	function f:IsShown() return self.shown end
	frames[#frames + 1] = f
	return f
end
g.UI.Glyph = function() return { SetAllPoints = function() end, SetVertexColor = function() end } end
g.UI.unpackc = function() return 1, 1, 1, 1 end
local mapShown = true
WorldMapFrame = {
	IsShown = function() return mapShown end,
	GetMapID = function() return 1436 end,
	GetCanvas = function() return { GetSize = function() return 1000, 600 end } end,
}
tick(0.5)
local function shownPins()
	local c = 0
	for _, f in ipairs(frames) do if f.shown then c = c + 1 end end
	return c
end
check(shownPins() == 2, "uma marca por célula com 2+ mortes do mapa aberto (" .. shownPins() .. ")")
local pt = frames[1].pts[1]
check(pt and math.abs(pt[4] - 525) < 0.01 and math.abs(pt[5] + 45) < 0.01,
	"a marca mais cheia fica no centro da célula 10,1 (x 52,5%, y 7,5%)")
g.db.dangerWarn = false
tick(0.5)
check(shownPins() == 0, "com 'avisar' desligado as marcas somem")
g.db.dangerWarn = nil
tick(0.5)
check(shownPins() == 2, "religado, voltam")
mapShown = false
tick(0.5)
check(shownPins() == 0, "mapa fechado: marcas escondidas")

print(("danger: %d checks passed"):format(checks))
