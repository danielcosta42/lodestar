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

-- Texto curto de uma passagem para o relatório: "c|zona|x,y;x,y;..." (um decimal).
function P.Encode(p)
	local parts = {}
	for i = 1, #p.pts - 1, 2 do parts[#parts + 1] = ("%.1f,%.1f"):format(p.pts[i], p.pts[i + 1]) end
	return ("%d|%s|%s"):format(p.c, p.z or "?", table.concat(parts, ";"))
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
	-- os caminhos já calculados da rota refazem com a passagem nova
	local route = ns.Travel and ns.Travel:Route()
	for _, leg in ipairs(route and route.legs or {}) do
		if leg.k == "walk" then leg.path, leg.pathFail, leg.pathAt = nil, nil, nil end
	end
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

-- grava andando: um ponto a cada MIN_STEP jd; trocar de continente (portal, barco) encerra
ns:Every(0.2, function()
	if not rec then return end
	local me = ns.Travel and ns.Travel.PlayerWorld()
	if not me then return end
	if me.c ~= rec.c then return P:Stop() end
	P.Add(rec.pts, me.x, me.y)
end)
