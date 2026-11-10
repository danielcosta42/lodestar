--=============================================================================
-- Danger — o mapa de perigo (specs/perigo, issue #79). Cada morte do jogador fora de
-- instância vira um registro curto (mapa, célula de 5% x 5%, nível, id) que vai pela
-- guilda, pelo grupo e pelo repasse da ChehulNet. Quem recebe guarda por algumas horas
-- e, ao entrar numa célula onde várias pessoas morreram, avisa com um toast discreto.
-- Nenhum nome aparece: a origem só serve para não contar a mesma morte duas vezes.
--
-- Fio: LD1|D|mapa|cx|cy|nível|id   (prefixo LSDanger)
--=============================================================================
local ADDON, ns = ...
local D = {}
ns.Danger = D

D.PREFIX    = "LSDanger"
D.CELLS     = 20          -- 20 x 20 células por mapa (5% x 5%)
D.TTL       = 4 * 3600    -- mortes valem por 4 h
D.MAX       = 600         -- teto de mortes guardadas; passa disso, sai a mais velha
D.HOT       = 3           -- mortes na célula e vizinhas para avisar...
D.ORIGINS   = 2           -- ...de pelo menos tantas pessoas diferentes
D.WARN_GAP  = 30 * 60     -- um aviso por célula a cada 30 min
D.PIN_MIN   = 2           -- mortes numa célula para marcar no mapa
D.PIN_MAX   = 20
D.SEND_GAP  = 60          -- no máximo uma morte enviada por minuto

--------------------------------------------------------------------------------
-- núcleo puro (testado em tools/danger-tests.lua)
--------------------------------------------------------------------------------
local function int(s, lo, hi)
	local n = tonumber(s)
	if n and n == math.floor(n) and n >= lo and n <= hi then return n end
end

-- coordenada 0-100 -> célula 0..CELLS-1
function D.Cell(x, y)
	local function c(v)
		v = math.floor((tonumber(v) or 0) / (100 / D.CELLS))
		return math.max(0, math.min(D.CELLS - 1, v))
	end
	return c(x), c(y)
end

function D.Encode(rec)
	return table.concat({ "LD1", "D", rec.map, rec.cx, rec.cy, rec.level, rec.id }, "|")
end

function D.Decode(s)
	if type(s) ~= "string" or #s > 80 then return nil end
	local f = {}
	for part in (s .. "|"):gmatch("([^|]*)|") do f[#f + 1] = part end
	if #f ~= 7 then return nil end
	local proto, kind, map, cx, cy, level, id = f[1], f[2], f[3], f[4], f[5], f[6], f[7]
	if proto ~= "LD1" or kind ~= "D" then return nil end
	local rec = { map = int(map, 1, 100000), cx = int(cx, 0, D.CELLS - 1), cy = int(cy, 0, D.CELLS - 1),
		level = int(level, 1, 80), id = type(id) == "string" and #id <= 12 and id:match("^%x+$") or nil }
	if not (rec.map and rec.cx and rec.cy and rec.level and rec.id) then return nil end
	return rec
end

function D.NewMemory() return { list = {}, seen = {} } end

local function prune(mem, now)
	local list, keep = mem.list, 1
	while keep <= #list and now - list[keep].at > D.TTL do
		mem.seen[list[keep].key] = nil
		keep = keep + 1
	end
	if keep > 1 then
		local rest = {}
		for i = keep, #list do rest[#rest + 1] = list[i] end
		mem.list = rest
	end
end

-- guarda uma morte; false se já conhecida (mesma origem e id) ou inválida
function D.Add(mem, origin, rec, now)
	if type(origin) ~= "string" or origin == "" or not rec then return false end
	local key = origin .. "/" .. rec.id
	if mem.seen[key] then return false end
	prune(mem, now)
	if #mem.list >= D.MAX then
		local old = table.remove(mem.list, 1)
		mem.seen[old.key] = nil
	end
	mem.list[#mem.list + 1] = { map = rec.map, cx = rec.cx, cy = rec.cy, o = origin, at = now, key = key }
	mem.seen[key] = true
	return true
end

-- mortes e origens distintas na célula e nas 8 vizinhas, dentro do TTL
function D.Around(mem, map, cx, cy, now)
	local n, origins, seen = 0, 0, {}
	for _, d in ipairs(mem.list) do
		if d.map == map and now - d.at <= D.TTL and math.abs(d.cx - cx) <= 1 and math.abs(d.cy - cy) <= 1 then
			n = n + 1
			if not seen[d.o] then seen[d.o], origins = true, origins + 1 end
		end
	end
	return n, origins
end

-- células do mapa com PIN_MIN+ mortes no TTL, mais mortas primeiro (até PIN_MAX)
function D.Hot(mem, map, now)
	local by = {}
	for _, d in ipairs(mem.list) do
		if d.map == map and now - d.at <= D.TTL then
			local k = d.cx * D.CELLS + d.cy
			by[k] = by[k] or { cx = d.cx, cy = d.cy, n = 0 }
			by[k].n = by[k].n + 1
		end
	end
	local out = {}
	for _, c in pairs(by) do if c.n >= D.PIN_MIN then out[#out + 1] = c end end
	table.sort(out, function(a, b)
		if a.n ~= b.n then return a.n > b.n end
		return a.cx * D.CELLS + a.cy < b.cx * D.CELLS + b.cy
	end)
	for i = #out, D.PIN_MAX + 1, -1 do out[i] = nil end
	return out
end

-- o número de mortes a avisar nesta célula agora, ou nil; marca o aviso
function D.ShouldWarn(state, mem, map, cx, cy, now)
	local n, origins = D.Around(mem, map, cx, cy, now)
	if n < D.HOT or origins < D.ORIGINS then return nil end
	local key = map .. ":" .. cx .. ":" .. cy
	if state[key] and now - state[key] < D.WARN_GAP then return nil end
	state[key] = now
	return n
end

if not ns.On then return end

--------------------------------------------------------------------------------
-- no jogo
--------------------------------------------------------------------------------
local mem, warned = D.NewMemory(), {}
local seq, lastSent = 0, -math.huge

local function mesh() return _G.ChehulMesh end
local function curto(nome) return nome and (Ambiguate and Ambiguate(nome, "short") or nome:match("^[^-]+")) end
local function inInstance() return IsInInstance and IsInInstance() and true or false end

-- onde estou: uiMapID e célula
local function here()
	local map = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	if not map or ns.IsSecret(map) then return nil end
	local p = C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(map, "player")
	if not p then return nil end
	local x, y
	if p.GetXY then x, y = p:GetXY() else x, y = p.x, p.y end
	if not (x and y) or ns.IsSecret(x, y) or (x == 0 and y == 0) then return nil end
	local cx, cy = D.Cell(x * 100, y * 100)
	return map, cx, cy
end

local function onRecv(payload, sender)
	if ns.IsSecret(payload, sender) then return end
	local rec = D.Decode(payload)
	local origin = curto(sender)
	if not rec or not origin or origin == curto(ns.PlayerName()) then return end
	D.Add(mem, origin, rec, time())
end

local function onDeath()
	if inInstance() then return end
	local map, cx, cy = here()
	if not map then return end
	local now = time()
	seq = (seq + 1) % 4096
	local rec = { map = map, cx = cx, cy = cy, level = UnitLevel("player") or 1, id = ("%x%03x"):format(now % 0x100000, seq) }
	D.Add(mem, curto(ns.PlayerName()) or "?", rec, now)   -- a minha conta no meu mapa
	if not (ns.db and ns.db.dangerShare ~= false) or now - lastSent < D.SEND_GAP then return end
	local M = mesh()
	if not M then return end
	lastSent = now
	local payload = D.Encode(rec)
	if IsInGuild and IsInGuild() and M.Guild then M:Guild(D.PREFIX, payload) end
	if IsInGroup and IsInGroup() and M.Group then M:Group(D.PREFIX, payload) end
	if M.Realm then M:Realm(D.PREFIX, payload, D.PREFIX, true) end
end

do
	local M = mesh()
	if M and M.Register then
		M:Register(D.PREFIX, onRecv)
		if M.Relayable then M:Relayable(D.PREFIX) end
	end
end

ns:On("PLAYER_DEAD", function() pcall(onDeath) end)

ns:Every(5, function()
	if not (ns.db and ns.db.dangerWarn ~= false) or inInstance() then return end
	if UnitIsDeadOrGhost and UnitIsDeadOrGhost("player") then return end
	local map, cx, cy = here()
	if not map then return end
	local n = D.ShouldWarn(warned, mem, map, cx, cy, time())
	if n and ns.Toast then
		ns.Toast:Show({ title = ns.L.DANGER_TITLE, text = ns.L.DANGER_TEXT:format(n),
			color = ns.UI.COL.amber, hold = 7, glyph = "losango" })
	end
end)

--------------------------------------------------------------------------------
-- marcas no mapa-múndi: uma por célula quente do mapa aberto
--------------------------------------------------------------------------------
local pins = {}
local function pin(i, canvas)
	local p = pins[i]
	if not p then
		p = CreateFrame("Frame", nil, canvas)
		p:SetSize(14, 14)
		p:SetFrameStrata("HIGH")
		local g = ns.UI.Glyph(p, "losango", "OVERLAY", 64)
		g:SetAllPoints()
		g:SetVertexColor(ns.UI.unpackc(ns.UI.COL.amber))
		p:SetAlpha(0.85)
		pins[i] = p
	end
	p:SetParent(canvas)
	return p
end

local function hidePins(from)
	for i = from, #pins do pins[i]:Hide() end
end

local function drawPins()
	local WMF = WorldMapFrame
	if not (ns.db and ns.db.dangerWarn ~= false and WMF and WMF.GetCanvas and WMF:IsShown()) then return hidePins(1) end
	local shown = WMF.GetMapID and WMF:GetMapID()
	local ok, canvas = pcall(WMF.GetCanvas, WMF)
	if not (shown and ok and canvas) then return hidePins(1) end
	local w, h = canvas:GetSize()
	if not w or w == 0 then return hidePins(1) end
	local hot = D.Hot(mem, shown, time())
	local step = 100 / D.CELLS
	for i, c in ipairs(hot) do
		local p = pin(i, canvas)
		p:ClearAllPoints()
		p:SetPoint("CENTER", canvas, "TOPLEFT", (c.cx + 0.5) * step / 100 * w, -(c.cy + 0.5) * step / 100 * h)
		p:Show()
	end
	hidePins(#hot + 1)
end

ns:Every(0.5, function()
	if WorldMapFrame and WorldMapFrame:IsShown() then
		if not pcall(drawPins) then hidePins(1) end
	elseif pins[1] and pins[1]:IsShown() then
		hidePins(1)
	end
end)
