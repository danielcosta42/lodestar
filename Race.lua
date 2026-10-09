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

local NOME = "^[^,;|]+$"

-- O repasse do top de um placar: escopo "G" (guilda) ou "R" (realm), placar "alto" (valor =
-- /played) ou id de marco (valor = tempo do marco). rows = linhas do R.Board.
function R.EncodeDigest(scope, board, rows)
	local t = {}
	for i, row in ipairs(rows) do
		local val = board == "alto" and row.played or row.val
		t[i] = ("%s,%s,%d,%d,%d"):format(row.name, row.class, row.level, math.floor(row.xp or 0), math.floor(val or 0))
	end
	return ("R1|T|%s|%s|%s"):format(scope, board, table.concat(t, ";"))
end

local function decodeDigest(f)
	local scope, board = f[3], f[4]
	if (scope ~= "G" and scope ~= "R") or not board:match("^%w+$") then return nil end
	local m, entries = byId[board], {}
	for _, e in ipairs(campos(f[5], ";")) do
		local c = campos(e, ",")
		if #c ~= 5 then return nil end
		local x = { name = c[1], class = c[2], level = inteiro(c[3], 1, R.MAX_LEVEL), xp = inteiro(c[4], 0, 100),
			val = inteiro(c[5], 0) }
		if not (x.name:match(NOME) and #x.name <= 24 and x.class:match("^%u+$") and x.level and x.xp and x.val) then
			return nil
		end
		if not (m and (x.val < m.min or (m.kind == "level" and m.v > x.level))) then entries[#entries + 1] = x end
	end
	return "T", { scope = scope, board = board, entries = entries }
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
	if f[1] == "R1" and f[2] == "T" and #f == 5 then return decodeDigest(f) end
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

-- O que chegou repassado. O dono vence: registro do próprio dono com notícia nas últimas 6 h
-- não muda; mais velho que isso, o repasse só adianta (nível maior, marco que faltava).
local FRESCO = 6 * 3600
function R.MergeRelay(store, d, now, guild, me)
	for _, e in ipairs(d.entries) do
		local rec = store.recs[e.name]
		if e.name ~= me and not (rec and rec.own and now - (rec.seen or 0) < FRESCO) then
			if not rec then
				rec = { class = e.class, level = e.level, xp = e.xp, ms = {} }
				store.recs[e.name] = rec
			end
			if d.board == "alto" then
				if e.level > rec.level or (e.level == rec.level and e.xp >= (rec.xp or 0)) then
					rec.level, rec.xp, rec.played = e.level, e.xp, e.val
				end
			else
				rec.level = math.max(rec.level, e.level)
				rec.ms[d.board] = rec.ms[d.board] or e.val
			end
			rec.relSeen = math.max(rec.relSeen or 0, now)
			if guild and d.scope == "G" then rec.g = guild end
		end
	end
end

-- os placares que se repassam, e a rotação entre eles
local boards = { "alto" }
for _, m in ipairs(ns.RACE_MILESTONES or {}) do boards[#boards + 1] = m.id end
function R.Boards() return boards end
function R.NextBoard(state)
	state.i = (state.i or 0) % #boards + 1
	return boards[state.i]
end

-- supressão: quem acabou de ouvir (ou mandar) um placar não o repassa de novo tão cedo
function R.Heard(state, scope, board, now) state[scope .. board] = now end
function R.ShouldRelay(state, scope, board, now, gap)
	local t = state[scope .. board]
	return not t or now - t >= gap
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
			local pa, pb = a.played or math.huge, b.played or math.huge
			if pa ~= pb then return pa < pb end
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

--------------------------------------------------------------------------------
-- no jogo: o meu registro, os marcos, a malha (guilda/grupo), chat e toasts
--------------------------------------------------------------------------------
local PREFIX = "LSRace"
local MS = ns.RACE_MILESTONES
local L = ns.L

local function mesh() return _G.ChehulMesh end
local function agora() return time() end
local function meuNome() return ns.PlayerName() end
local function curto(nome) return nome and (Ambiguate and Ambiguate(nome, "short") or nome:match("^[^-]+")) end
local function minhaGuilda()
	return IsInGuild and IsInGuild() and GetGuildInfo and GetGuildInfo("player") or nil
end

local function store()
	local realm = GetRealmName and GetRealmName() or "?"
	ns.db.race[realm] = ns.db.race[realm] or { recs = {} }
	return ns.db.race[realm]
end

local function limites()
	ns.char.raceLim = ns.char.raceLim or {}
	return ns.char.raceLim
end

-- os membros da guilda (nomes curtos); nil enquanto o roster não chegou
local rosterSet
local function roster()
	if rosterSet or not (minhaGuilda() and GetNumGuildMembers and GetGuildRosterInfo) then return rosterSet end
	local n = GetNumGuildMembers() or 0
	if n == 0 then return nil end
	rosterSet = {}
	for i = 1, n do
		local nome = curto(GetGuildRosterInfo(i))
		if nome then rosterSet[nome] = true end
	end
	return rosterSet
end
ns:On("GUILD_ROSTER_UPDATE", function() rosterSet = nil end)

-- o meu registro, ao vivo: marcos de nível pelo /played de cada ding, os outros salvos
function R.MyRecord()
	local _, class = UnitClass("player")
	local max = UnitXPMax and UnitXPMax("player") or 0
	local RT = ns.RunTracker
	local ms = {}
	for id, t in pairs(ns.char.raceMs or {}) do ms[id] = t end
	local lp = RT and RT.Run().levelPlayed or {}
	for _, m in ipairs(MS) do
		if m.kind == "level" and lp[m.v] then ms[m.id] = math.floor(lp[m.v]) end
	end
	return { class = class or "WARRIOR", level = UnitLevel("player") or 1,
		xp = max > 0 and math.min(100, math.floor((UnitXP("player") or 0) / max * 100)) or 0,
		played = math.floor(RT and RT:LivePlayed() or 0), ms = ms }
end

-- linhas do placar para o painel: escopo "guild" | "realm", kind "alto" | id do marco
function R:Rows(scope, kind)
	local guild = scope == "guild" and minhaGuilda() or nil
	if scope == "guild" and not guild then return {} end
	return R.Board(store(), { kind = kind, guild = guild, roster = guild and roster(), now = agora(),
		me = { name = meuNome(), rec = R.MyRecord() } })
end

R.URL = "curseforge.com/wow/addons/lodestar"

local function chat(msg)
	local f = (C_ChatInfo and C_ChatInfo.SendChatMessage) or SendChatMessage
	if f then f(msg, "GUILD") end
end

-- mensagem ao chat da guilda: só com a opção ligada, no máximo uma a cada 10 min
local function avisa(msg)
	if msg and ns.db.raceChat ~= false and minhaGuilda() and R.Allow(limites(), "chat", agora(), 600) then chat(msg) end
end

-- o convite à guilda (botão do painel): manual, no máximo um a cada 10 min
function R:Invite()
	if not minhaGuilda() or not R.Allow(limites(), "invite", agora(), 600) then return false end
	chat(L.RACE_INVITE_MSG:format(R.URL))
	return true
end

-- anúncio do meu registro: na hora quando muda o nível ou um marco, senão a cada 5 min
local ultimaSig, ultimoEnvio, grupoPendente = nil, 0, false
local function anuncia(forca)
	local M = mesh()
	if not (M and ns.RunTracker and ns.RunTracker:HasPlayed()) then return end
	local rec = R.MyRecord()
	local p = R.EncodeRecord(rec)
	local sig = p:gsub("^R1|R|%u+|(%d+)|%d+|%d+|", "%1|")       -- nível e marcos
	if forca or sig ~= ultimaSig or agora() - ultimoEnvio >= 300 then
		ultimaSig, ultimoEnvio = sig, agora()
		if minhaGuilda() and M.Guild then M:Guild(PREFIX, p) end
		grupoPendente = true
	end
	if grupoPendente and IsInGroup and IsInGroup() and M.Group then M:Group(PREFIX, p) end
	grupoPendente = false
end
ns:On("GROUP_ROSTER_UPDATE", function() grupoPendente = true end)

-- depois de qualquer mudança no placar da guilda: ultrapassagens (toast) e liderança (chat)
local ordem
local function reavalia()
	local guild = minhaGuilda()
	if not guild then ordem = nil; return end
	local rows = R:Rows("guild", "alto")
	local nova = {}
	for i, row in ipairs(rows) do nova[i] = row.name end
	local antes = ordem
	ordem = nova
	if not antes then return end                       -- a primeira vez na sessão só registra
	local eu = meuNome()
	local p = R.Passes(antes, nova, eu)
	if #p > 0 and ns.db.raceToasts ~= false and ns.Toast and R.Allow(limites(), "toast", agora(), 300) then
		ns.Toast:Show({ title = L.RACE_TOAST_T,
			text = (p[1].mine and L.RACE_TOAST_PASSED or L.RACE_TOAST_PASSED_ME):format(p[1].name) })
	end
	if antes[1] ~= eu and R.Lead(rows, eu) then avisa(L.RACE_MSG_LEAD:format(rows[1].level)) end
end

-- A posição no realm só entra quando a rede já conhece gente de fora da guilda (5+ no
-- placar): "1º do realm" com só a guilda à vista seria mentira.
local function marco(id)
	anuncia(true)
	local guild = minhaGuilda()
	if not guild then return end
	local rows, realm = R:Rows("guild", id), R:Rows("realm", id)
	local eu = meuNome()
	local pos = R.Position(rows, eu)
	local rpos = #realm >= 5 and #realm > #rows and R.Position(realm, eu) or nil
	avisa(pos and R.MilestoneText(L, R.ById(id), pos, rpos, rows[pos].val))
end

-- marco que não é de nível: o /played do momento (sem /played ainda, o tempo é desconhecido)
local function bateu(id)
	ns.char.raceMs = ns.char.raceMs or {}
	if ns.char.raceMs[id] or not (ns.RunTracker and ns.RunTracker:HasPlayed()) then return end
	ns.char.raceMs[id] = math.floor(ns.RunTracker:LivePlayed())
	marco(id)
end

ns:On("_LEVEL_PLAYED", function(_, level)
	for _, m in ipairs(MS) do
		if m.kind == "level" and m.v == level then marco(m.id) end
	end
	reavalia()
end)

ns:On("QUEST_TURNED_IN", function(_, questID)
	for _, m in ipairs(MS) do
		if m.kind == "quest" then
			for _, q in ipairs(m.v) do if q == questID then bateu(m.id) end end
		end
	end
end)

ns:On("ENCOUNTER_END", function(_, _, _, _, _, success)
	if success ~= 1 or select(2, IsInInstance()) ~= "party" then return end
	for _, m in ipairs(MS) do if m.kind == "dungeon" then bateu(m.id) end end
end)

-- profissão: pontos por perícia abandonável; a primeira vez que se vê uma é só a linha de base
-- (quem já tinha 300 antes não ganha o marco agora)
ns:On("SKILL_LINES_CHANGED", function()
	if not (GetNumSkillLines and GetSkillLineInfo) then return end
	ns.char.raceSkill = ns.char.raceSkill or {}
	local base = ns.char.raceSkill
	for i = 1, GetNumSkillLines() do
		local nome, header, _, rank, _, _, _, abandonavel = GetSkillLineInfo(i)
		if nome and not header and abandonavel and rank then
			local antes = base[nome]
			base[nome] = rank
			for _, m in ipairs(MS) do
				if m.kind == "skill" and antes and antes < m.v and rank >= m.v then bateu(m.id) end
			end
		end
	end
end)

-- repasse (#46): pelo YELL da malha, o meu registro e um placar do realm por vez; pela
-- guilda, um placar por vez de cada escopo, pulando o que alguém repassou há pouco
local ouvido, rotRealm, rotGuilda = {}, {}, {}
local function digest(scope, board)
	local rows = R:Rows(scope == "G" and "guild" or "realm", board)
	if #rows == 0 then return nil end
	local top = {}
	for i = 1, math.min(5, #rows) do top[i] = rows[i] end
	return R.EncodeDigest(scope, board, top)
end
local function repassa()
	local M = mesh()
	if not (M and ns.RunTracker and ns.RunTracker:HasPlayed()) then return end
	if M.Realm then
		M:Realm(PREFIX, R.EncodeRecord(R.MyRecord()), "LSRace:R")
		local d = digest("R", R.NextBoard(rotRealm))
		if d then M:Realm(PREFIX, d, "LSRace:T") end
	end
	if minhaGuilda() and M.Guild then
		local board, now = R.NextBoard(rotGuilda), agora()
		for _, sc in ipairs({ "G", "R" }) do
			local d = R.ShouldRelay(ouvido, sc, board, now, 600) and digest(sc, board)
			if d then
				M:Guild(PREFIX, d)
				R.Heard(ouvido, sc, board, now)
			end
		end
	end
end

local function onRecv(payload, sender, dist)
	local kind, data = R.Decode(payload)
	local nome = curto(sender)
	if not kind or not nome or nome == "" or nome == meuNome() then return end
	local guild = dist == "GUILD" and minhaGuilda() or nil
	if kind == "R" then
		R.MergeOwn(store(), nome, data, agora(), guild)
	else
		R.MergeRelay(store(), data, agora(), guild, meuNome())
		if dist == "GUILD" then R.Heard(ouvido, data.scope, data.board, agora()) end
	end
	reavalia()
	if R.OnChange then R.OnChange() end
end
do local M = mesh(); if M and M.Register then M:Register(PREFIX, onRecv) end end

ns:On("PLAYER_ENTERING_WORLD", function()
	R.Expire(store(), agora())
	if C_GuildInfo and C_GuildInfo.GuildRoster then C_GuildInfo.GuildRoster() elseif GuildRoster then GuildRoster() end
end)
ns:Every(10, function()
	anuncia(false)
	reavalia()
end)
ns:Every(60, repassa)
