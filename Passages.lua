--=============================================================================
-- Passages — gravar passagem (issue #99): o caminho a pé vem de uma grade de 16,7 jd do terreno, e rampa estreita,
-- ponte, porta e escada não aparecem nela (a rampa do litoral da Revantusk Village, em The Hinterlands). O jogador
-- anda o trecho com /ls passagem (de novo para parar); o Lodestar grava os pontos e a busca passa a andar por ali.
-- As gravadas vão no relatório (/ls report), para entrarem no addon (PassagesData.lua) para todo mundo.
--
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local P = {}
ns.Passages = P

P.MIN_STEP = 3          -- jardas entre dois pontos gravados
P.MIN_LEN = 10          -- jardas: menos que isso não é passagem
P.MAX_TICK = 15         -- jardas num tique (0,2 s): mais que isso é voo, teleporte, pedra — não é andar
P.MAX_SPEED = 18        -- jd/s: a montaria mais rápida faz 14; barco e zepelim no mesmo continente passam disso
P.FALL_TICKS = 5        -- tiques caindo seguidos (~1 s) para ser queda: um pulo comum não deixa a rampa de mão única

-- Junta mais um ponto ao trecho: só se andou MIN_STEP desde o último. pts = { x1, y1, ... }.
function P.Add(pts, x, y)
	local n = #pts
	if n >= 2 and (x - pts[n - 1]) ^ 2 + (y - pts[n]) ^ 2 < P.MIN_STEP ^ 2 then return false end
	pts[n + 1], pts[n + 2] = x, y
	return true
end

function P.Length(pts)
	local s = 0
	for i = 3, #pts - 1, 2 do s = s + math.sqrt((pts[i] - pts[i - 2]) ^ 2 + (pts[i + 1] - pts[i - 1]) ^ 2) end
	return s
end

-- Texto curto de uma passagem para o relatório: "c / zona / x,y;x,y;... [/ queda: 2,5]" (um decimal). Sem "|":
-- a caixa do relatório leria "|T", "|H" como textura e link.
function P.Encode(p)
	local parts = {}
	for i = 1, #p.pts - 1, 2 do parts[#parts + 1] = ("%.1f,%.1f"):format(p.pts[i], p.pts[i + 1]) end
	local quedas = {}
	for seg in pairs(p.f or {}) do quedas[#quedas + 1] = seg end
	table.sort(quedas)
	return ("%d / %s / %s%s"):format(p.c, p.z or "?", table.concat(parts, ";"),
		#quedas > 0 and (" / queda: " .. table.concat(quedas, ",")) or "")
end

-- As do addon mais as gravadas aqui, numa lista só (a busca liga as duas).
function P.Merge(base, mine)
	local out = {}
	for _, p in ipairs(base or {}) do out[#out + 1] = p end
	for _, p in ipairs(mine or {}) do out[#out + 1] = p end
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local L = ns.L

local rec                    -- { c, z, pts } enquanto grava

-- a busca do caminho lê ns.terrain.passages; tabela nova a cada mudança (o cache de ligações é por tabela)
function P:Apply()
	if not ns.terrain then return end
	ns.terrain.passages = P.Merge(ns.passagesData, ns.db and ns.db.passages)
	-- os caminhos da rota (e a busca em curso, com as ligações velhas) refazem com a passagem nova
	if ns.Travel and ns.Travel.ResetPaths then ns.Travel:ResetPaths() end
end
ns:On("_READY", function() P:Apply() end)

function P:Recording() return rec ~= nil end

function P:Start()
	local me = ns.Travel and ns.Travel.PlayerWorld()
	if not me then return ns:Print(L.PASS_NOPOS) end
	rec = { c = me.c, z = GetZoneText and GetZoneText() or nil, pts = { me.x, me.y } }
	ns:Print(L.PASS_START)
end

function P:Stop()
	if not rec then return end
	local r = rec
	rec = nil
	local len = P.Length(r.pts)
	if #r.pts < 4 or len < P.MIN_LEN then return ns:Print(L.PASS_SHORT) end
	ns.db.passages = ns.db.passages or {}
	r.t = time()
	table.insert(ns.db.passages, r)
	P:Apply()
	ns:Printf(L.PASS_SAVED, #r.pts / 2, len)
end

function P:Clear()
	ns.db.passages = {}
	P:Apply()
	ns:Print(L.PASS_CLEARED)
end

function P:Command(rest)
	rest = (rest or ""):lower()
	if rest == "limpar" or rest == "clear" then return P:Clear() end
	if rest == "lista" or rest == "list" then
		return ns:Printf(L.PASS_LIST, #(ns.db.passages or {}), #(ns.passagesData or {}))
	end
	if rec then P:Stop() else P:Start() end
end

-- grava andando: um ponto a cada MIN_STEP jd. Voo, morte, teleporte ou pedra de lar no meio (salto grande num
-- tique, ou trocar de continente) não é chão andado: encerra com o que veio antes. Caindo, o trecho é só de descida.
ns:Every(0.2, function()
	if not rec then return end
	local me = ns.Travel and ns.Travel.PlayerWorld()
	if not me then return end
	local n = #rec.pts
	local now = GetTime()
	local d2 = n >= 2 and ((me.x - rec.pts[n - 1]) ^ 2 + (me.y - rec.pts[n]) ^ 2) or 0
	-- rápido demais desde o último tique (barco, zepelim): não é andar
	local veloz = rec.lastPos and rec.lastT and now > rec.lastT
		and math.sqrt((me.x - rec.lastPos.x) ^ 2 + (me.y - rec.lastPos.y) ^ 2) / (now - rec.lastT) > P.MAX_SPEED
	rec.lastPos, rec.lastT = { x = me.x, y = me.y }, now
	if me.c ~= rec.c or d2 > P.MAX_TICK ^ 2 or veloz or (UnitOnTaxi and UnitOnTaxi("player"))
		or (UnitIsDeadOrGhost and UnitIsDeadOrGhost("player")) then
		return P:Stop()
	end
	-- queda: só depois de ~1 s caindo; os trechos dela ficam de mão única
	if IsFalling and IsFalling() then
		rec.fallTicks = (rec.fallTicks or 0) + 1
		if rec.fallTicks == 1 then rec.fallFrom = #rec.pts / 2 end
	else
		rec.fallTicks = 0
	end
	P.Add(rec.pts, me.x, me.y)
	if (rec.fallTicks or 0) >= P.FALL_TICKS then
		rec.f = rec.f or {}
		for seg = rec.fallFrom, #rec.pts / 2 - 1 do rec.f[seg] = true end
	end
end)
