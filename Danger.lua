--=============================================================================
-- Danger — o mapa de perigo (specs/perigo, issue #79). Cada morte do jogador fora de
-- instância vira um registro curto (mapa, célula de 5% x 5%, id) que vai pela guilda,
-- pelo grupo e por sussurro a alguns pares da ChehulNet (sem repasse: o volume fica
-- pequeno e todo remetente é autêntico). Quem recebe guarda por algumas horas e, ao
-- entrar numa célula onde várias pessoas morreram, avisa com um toast discreto.
-- Nenhum nome aparece: o remetente só serve para limitar e contar pessoas distintas.
--
-- Fio: LD2|D|mapa|cx|cy|id   (prefixo LSDanger; LD1, com o nível, ainda é lido)
--=============================================================================
local ADDON, ns = ...
local D = {}
ns.Danger = D

D.PREFIX     = "LSDanger"
D.CELLS      = 20          -- 20 x 20 células por mapa (5% x 5%)
D.TTL        = 4 * 3600    -- mortes valem por 4 h
D.MAX        = 600         -- teto de mortes guardadas
D.SENDER_MAX = 5           -- mortes guardadas por remetente real dentro do TTL (um cliente manda 1 por minuto no máximo)
D.HOT        = 3           -- mortes na célula e vizinhas para avisar...
D.ORIGINS    = 2           -- ...de pelo menos tantos remetentes reais diferentes
D.WARN_GAP   = 30 * 60     -- um aviso por célula a cada 30 min
D.TOAST_GAP  = 3 * 60      -- e um aviso de perigo, qualquer célula, a cada 3 min
D.PIN_MIN    = 2           -- mortes numa célula para marcar no mapa
D.PIN_MAX    = 20
D.SEND_GAP   = 60          -- no máximo uma morte enviada por minuto

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
	return table.concat({ "LD2", "D", rec.map, rec.cx, rec.cy, rec.id }, "|")
end

-- LD2|D|mapa|cx|cy|id; o LD1 da primeira versão (com o nível no meio) ainda é lido, sem o nível
function D.Decode(s)
	if type(s) ~= "string" or #s > 80 then return nil end
	local f = {}
	for part in (s .. "|"):gmatch("([^|]*)|") do f[#f + 1] = part end
	local map, cx, cy, id
	if f[1] == "LD2" and f[2] == "D" and #f == 6 then
		map, cx, cy, id = f[3], f[4], f[5], f[6]
	elseif f[1] == "LD1" and f[2] == "D" and #f == 7 and int(f[6], 1, 80) then
		map, cx, cy, id = f[3], f[4], f[5], f[7]
	else
		return nil
	end
	local rec = { map = int(map, 1, 100000), cx = int(cx, 0, D.CELLS - 1), cy = int(cy, 0, D.CELLS - 1),
		id = type(id) == "string" and #id <= 12 and id:match("^%x+$") or nil }
	if not (rec.map and rec.cx and rec.cy and rec.id) then return nil end
	return rec
end

function D.NewMemory() return { list = {}, seen = {} } end

local function prune(mem, now)
	local keep = {}
	for _, d in ipairs(mem.list) do
		if now - d.at <= D.TTL then keep[#keep + 1] = d else mem.seen[d.key] = nil end
	end
	mem.list = keep
end

-- guarda uma morte. `origin` é quem diz ter morrido (deduplica); `sender` é quem a
-- entregou de fato (limita e conta pessoas). false se já conhecida, inválida ou acima do teto.
function D.Add(mem, origin, rec, now, sender)
	sender = sender or origin
	if type(origin) ~= "string" or origin == "" or type(sender) ~= "string" or sender == "" or not rec then
		return false
	end
	local key = origin .. "/" .. rec.id
	if mem.seen[key] then return false end
	prune(mem, now)
	local mine = 0
	for _, d in ipairs(mem.list) do
		if d.s == sender then mine = mine + 1 end
	end
	if mine >= D.SENDER_MAX then return false end   -- um remetente não enche a memória
	if #mem.list >= D.MAX then
		local old = table.remove(mem.list, 1)
		mem.seen[old.key] = nil
	end
	mem.list[#mem.list + 1] = { map = rec.map, cx = rec.cx, cy = rec.cy, s = sender, at = now, key = key }
	mem.seen[key] = true
	return true
end

-- mortes e remetentes reais distintos na célula e nas 8 vizinhas, dentro do TTL
function D.Around(mem, map, cx, cy, now)
	local n, senders, seen = 0, 0, {}
	for _, d in ipairs(mem.list) do
		if d.map == map and now - d.at <= D.TTL and math.abs(d.cx - cx) <= 1 and math.abs(d.cy - cy) <= 1 then
			n = n + 1
			if not seen[d.s] then seen[d.s], senders = true, senders + 1 end
		end
	end
	return n, senders
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

-- o número de mortes a avisar nesta célula agora, ou nil; marca o aviso (por célula e geral)
function D.ShouldWarn(state, mem, map, cx, cy, now)
	local n, senders = D.Around(mem, map, cx, cy, now)
	if n < D.HOT or senders < D.ORIGINS then return nil end
	local key = map .. ":" .. cx .. ":" .. cy
	if state[key] and now - state[key] < D.WARN_GAP then return nil end
	if state.last and now - state.last < D.TOAST_GAP then return nil end
	state[key], state.last = now, now
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
local function lockdown()
	local f = C_ChatInfo and C_ChatInfo.InChatMessagingLockdown
	return f and f() and true or false
end

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

-- (payload, sender, dist[, via]): num repasse da malha o sender é só uma alegação e o `via` é quem
-- entregou de fato; é ele que conta.
local function onRecv(payload, sender, dist, via)
	if ns.IsSecret(payload, sender, via) then return end
	local rec = D.Decode(payload)
	local origin = curto(sender)
	local real = curto(dist == "RELAY" and via or sender)
	local me = curto(ns.PlayerName())
	if not rec or not origin or not real or origin == me or real == me then return end
	D.Add(mem, origin, rec, time(), real)
end

local function onDeath()
	if inInstance() or lockdown() then return end
	if not (ns.db and ns.db.dangerShare == true) then return end   -- opt-in
	local map, cx, cy = here()
	if not map then return end
	local now = time()
	if now - lastSent < D.SEND_GAP then return end
	local M = mesh()
	if not M then return end
	lastSent = now
	seq = (seq + 1) % 4096
	local payload = D.Encode({ map = map, cx = cx, cy = cy, id = ("%x%03x"):format(now % 0x100000, seq) })
	if IsInGuild and IsInGuild() and M.Guild then M:Guild(D.PREFIX, payload) end
	if IsInGroup and IsInGroup() and M.Group then M:Group(D.PREFIX, payload) end
	-- sem repasse: a malha sussurra a alguns pares, e cada um a entrega com o próprio nome
	if M.Realm then M:Realm(D.PREFIX, payload, D.PREFIX) end
end

do
	local M = mesh()
	if M and M.Register then M:Register(D.PREFIX, onRecv) end
end

ns:On("PLAYER_DEAD", function() pcall(onDeath) end)

ns:Every(5, function()
	if not (ns.db and ns.db.dangerWarn ~= false) or inInstance() then return end
	if UnitIsDeadOrGhost and UnitIsDeadOrGhost("player") then return end
	if UnitOnTaxi and UnitOnTaxi("player") then return end
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
