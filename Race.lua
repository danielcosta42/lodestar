--=============================================================================
-- Race — a corrida de leveling entre quem usa o Lodestar (specs/corrida). No topo, o núcleo
-- puro (testado fora do jogo, tools/race-tests.lua): codec do registro, plausibilidade,
-- armazenamento, placares, eventos. Abaixo, o que roda no jogo.
--
-- Registro: { class, level, xp (0–100), played (s), ms = { [id do marco] = /played (s) } }.
-- Armazenamento por realm: { recs = { [nome] = registro + own, seen, g (guilda) } }.
--=============================================================================
local ADDON, ns = ...
local R = {}
ns.Race = R

R.MAX_LEVEL = 60
R.ONLINE = 300                         -- s desde o último anúncio para contar como online
R.EXPIRE = 30 * 86400                  -- s sem notícia até o registro sair

local byId = {}
for _, m in ipairs(ns.RACE_MILESTONES or {}) do byId[m.id] = m end
function R.ById(id) return byId[id] end

local function campos(s, sep)
	local t = {}
	for f in (s .. sep):gmatch("([^" .. sep .. "]*)" .. sep) do t[#t + 1] = f end
	return t
end

local function inteiro(s, lo, hi)
	local n = tonumber(s)
	if not n or n ~= math.floor(n) or n < lo or (hi and n > hi) then return nil end
	return n
end

-- o registro que chega pela rede: marco implausível cai sozinho (abaixo do piso, nível acima
-- do registro, depois do /played total, nível maior batido antes do menor)
local function limpa(rec)
	local nivel = {}
	for id, t in pairs(rec.ms) do
		local m = byId[id]
		if t > rec.played or (m and (t < m.min or (m.kind == "level" and m.v > rec.level))) then
			rec.ms[id] = nil
		elseif m and m.kind == "level" then
			nivel[#nivel + 1] = m
		end
	end
	table.sort(nivel, function(a, b) return a.v < b.v end)
	local ultimo = -1
	for _, m in ipairs(nivel) do
		if rec.ms[m.id] < ultimo then rec.ms[m.id] = nil else ultimo = rec.ms[m.id] end
	end
	return rec
end

function R.EncodeRecord(rec)
	local ids = {}
	for id in pairs(rec.ms or {}) do ids[#ids + 1] = id end
	table.sort(ids)
	for i, id in ipairs(ids) do ids[i] = ("%s=%d"):format(id, math.floor(rec.ms[id])) end
	return ("R1|R|%s|%d|%d|%d|%s"):format(rec.class, rec.level, math.floor(rec.xp or 0),
		math.floor(rec.played or 0), table.concat(ids, ";"))
end

-- mensagem da rede -> "R", registro; nil se não é nossa ou tem campo inválido
function R.Decode(s)
	if type(s) ~= "string" then return nil end
	local f = campos(s, "|")
	if f[1] ~= "R1" or f[2] ~= "R" or #f ~= 7 then return nil end
	local rec = { class = f[3], level = inteiro(f[4], 1, R.MAX_LEVEL), xp = inteiro(f[5], 0, 100),
		played = inteiro(f[6], 0), ms = {} }
	if not (rec.class:match("^%u+$") and rec.level and rec.xp and rec.played) then return nil end
	if f[7] ~= "" then
		for _, par in ipairs(campos(f[7], ";")) do
			local id, t = par:match("^(%w+)=(%d+)$")
			t = id and inteiro(t, 0)
			if not t then return nil end
			rec.ms[id] = t
		end
	end
	return "R", limpa(rec)
end

-- o registro que veio do próprio dono; `guild`: chegou pela guilda (nome dela)
function R.MergeOwn(store, name, rec, now, guild)
	local cur = store.recs[name] or {}
	cur.class, cur.level, cur.xp, cur.played, cur.ms = rec.class, rec.level, rec.xp, rec.played, rec.ms
	cur.own, cur.seen = true, now
	if guild then cur.g = guild end
	store.recs[name] = cur
end

function R.Expire(store, now)
	for name, rec in pairs(store.recs) do
		if now - math.max(rec.seen or 0, rec.relSeen or 0) > R.EXPIRE then store.recs[name] = nil end
	end
end

-- Placar. q = { kind = "alto" | id do marco, guild = nome (nil: realm), roster = { [nome] =
-- true } (nil: sem filtro), me = { name, rec } (sempre entra, ao vivo), now }
function R.Board(store, q)
	local rows = {}
	local function add(name, rec, eu)
		local val = q.kind ~= "alto" and rec.ms and rec.ms[q.kind] or nil
		if q.kind ~= "alto" and not val then return end
		rows[#rows + 1] = { name = name, class = rec.class, level = rec.level, xp = rec.xp or 0,
			played = rec.played, val = val, own = rec.own, seen = rec.seen, me = eu,
			online = rec.own and rec.seen and q.now - rec.seen <= R.ONLINE or false }
	end
	local meName = q.me and q.me.name
	for name, rec in pairs(store.recs) do
		if name ~= meName and (not q.guild or (rec.g == q.guild and (not q.roster or q.roster[name]))) then
			add(name, rec, false)
		end
	end
	if q.me then add(meName, q.me.rec, true) end
	if q.kind == "alto" then
		table.sort(rows, function(a, b)
			if a.level ~= b.level then return a.level > b.level end
			if a.xp ~= b.xp then return a.xp > b.xp end
			if (a.played or math.huge) ~= (b.played or math.huge) then return (a.played or math.huge) < (b.played or math.huge) end
			return a.name < b.name
		end)
	else
		table.sort(rows, function(a, b)
			if a.val ~= b.val then return a.val < b.val end
			return a.name < b.name
		end)
	end
	return rows
end

function R.Position(rows, name)
	for i, row in ipairs(rows) do if row.name == name then return i end end
end

function R.Dur(s)
	s = math.floor(s or 0)
	local d, h, m = math.floor(s / 86400), math.floor(s % 86400 / 3600), math.floor(s % 3600 / 60)
	if d > 0 then return ("%dd %dh"):format(d, h) end
	if h > 0 then return ("%dh %dm"):format(h, m) end
	return ("%dm"):format(m)
end

function R.Label(L, m)
	if m.kind == "level" then return L.RACE_LEVEL:format(m.v) end
	return L["RACE_MS_" .. m.id] or m.id
end

-- A mensagem do marco no chat da guilda; nil sem posição nenhuma.
function R.MilestoneText(L, m, gpos, rpos, played)
	if m.kind == "level" and m.v == R.MAX_LEVEL and gpos == 1 then return L.RACE_MSG_FIRST60:format(R.Dur(played)) end
	local pos = gpos and rpos and L.RACE_POS_BOTH:format(gpos, rpos) or gpos and L.RACE_POS_GUILD:format(gpos)
		or rpos and L.RACE_POS_REALM:format(rpos)
	if not pos then return nil end
	return L.RACE_MSG_MS:format(R.Label(L, m), pos, R.Dur(played))
end

-- 1º lugar com pelo menos 3 no placar
function R.Lead(rows, name)
	return #rows >= 3 and rows[1].name == name
end

-- Ultrapassagens entre duas ordens (listas de nomes): quem me passou (mine = false) e quem eu
-- passei (mine = true). Quem entrou ou saiu do placar não conta.
function R.Passes(before, after, me)
	local bi, ai = {}, {}
	for i, n in ipairs(before) do bi[n] = i end
	for i, n in ipairs(after) do ai[n] = i end
	local b, a, out = bi[me], ai[me], {}
	if not (b and a) then return out end
	for _, n in ipairs(after) do
		if n ~= me and bi[n] then
			if bi[n] > b and ai[n] < a then out[#out + 1] = { name = n, mine = false }
			elseif bi[n] < b and ai[n] > a then out[#out + 1] = { name = n, mine = true } end
		end
	end
	return out
end

-- no máximo uma vez a cada `gap` s por chave
function R.Allow(state, key, now, gap)
	if state[key] and now - state[key] < gap then return false end
	state[key] = now
	return true
end

if not ns.On then return end
