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
local TETO, MAX_IDS = 1e8, 32            -- /played máximo aceito (~3 anos); marcos por mensagem

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
		played = inteiro(f[6], 0, TETO), ms = {} }
	if not (rec.class:match("^%u+$") and rec.level and rec.xp and rec.played) then return nil end
	if f[7] ~= "" then
		local pares = campos(f[7], ";")
		if #pares > MAX_IDS then return nil end
		for _, par in ipairs(pares) do
			local id, t = par:match("^(%w+)=(%d+)$")
			t = id and #id <= 12 and inteiro(t, 0, TETO)
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
	-- no roster do Forever o nome pode vir sem o sobrenome: casa também pelo primeiro nome
	local function noRoster(name) return q.roster[name] or q.roster[name:match("^%S+")] end
	for name, rec in pairs(store.recs) do
		if name ~= meName and (not q.guild or (rec.g == q.guild and (not q.roster or noRoster(name)))) then
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

-- A mensagem do marco no chat da guilda. Sem posição (pouca gente no placar para dizer "1º"),
-- só o marco e o tempo.
function R.MilestoneText(L, m, gpos, rpos, played)
	if m.kind == "level" and m.v == R.MAX_LEVEL and gpos == 1 then return L.RACE_MSG_FIRST60:format(R.Dur(played)) end
	local pos = gpos and rpos and L.RACE_POS_BOTH:format(gpos, rpos) or gpos and L.RACE_POS_GUILD:format(gpos)
		or rpos and L.RACE_POS_REALM:format(rpos)
	if not pos then return L.RACE_MSG_SOLO:format(R.Label(L, m), R.Dur(played)) end
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

-- Os membros da guilda (nome curto e primeiro nome). nil: o roster ainda não chegou; false:
-- chegou, mas sem os offline (opção da janela da guilda) — aí não filtra, senão quem desloga
-- some do placar.
local rosterSet
local function roster()
	if rosterSet ~= nil or not (minhaGuilda() and GetNumGuildMembers and GetGuildRosterInfo) then return rosterSet end
	local n = GetNumGuildMembers() or 0
	if n == 0 then return nil end
	if GetGuildRosterShowOffline and not GetGuildRosterShowOffline() then
		rosterSet = false
		return false
	end
	rosterSet = {}
	for i = 1, n do
		local nome = curto(GetGuildRosterInfo(i))
		if nome then
			rosterSet[nome] = true
			rosterSet[nome:match("^%S+")] = true
		end
	end
	return rosterSet
end
ns:On("GUILD_ROSTER_UPDATE", function() rosterSet = nil end)

-- Os marcos (não de nível) do personagem. Na primeira vez, quem já passou da idade de
-- masmorra começa sem o "primeira masmorra" (false): o próximo chefe não é o primeiro.
local function marcosDoChar()
	if not ns.char.raceMs then
		ns.char.raceMs = {}
		if (UnitLevel("player") or 1) >= 15 then
			for _, m in ipairs(MS) do if m.kind == "dungeon" then ns.char.raceMs[m.id] = false end end
		end
	end
	return ns.char.raceMs
end

-- o meu registro, ao vivo: marcos de nível pelo /played de cada ding, os outros salvos
function R.MyRecord()
	local _, class = UnitClass("player")
	local max = UnitXPMax and UnitXPMax("player") or 0
	local RT = ns.RunTracker
	local ms = {}
	for id, t in pairs(marcosDoChar()) do if type(t) == "number" then ms[id] = t end end
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
	return R.Board(store(), { kind = kind, guild = guild, roster = guild and roster() or nil, now = agora(),
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
	if not guild or roster() == nil then ordem = nil; return end      -- sem roster ainda, não decide
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
	-- liderança: passei quem era o 1º (e ele segue no placar), à frente dele por nível — não
	-- pelo XP, que vai e volta entre quem upa junto —, uma vez por nível
	local lider = antes[1]
	local passei = false
	for _, x in ipairs(p) do if x.mine and x.name == lider then passei = true end end
	if passei and R.Lead(rows, eu) and rows[1].level > rows[2].level and ns.char.raceLead ~= rows[1].level then
		ns.char.raceLead = rows[1].level
		avisa(L.RACE_MSG_LEAD:format(rows[1].level))
	end
end

local function marco(id)
	anuncia(true)
	local guild = minhaGuilda()
	if not guild then return end
	local rows = R:Rows("guild", id)
	local eu = meuNome()
	local pos = R.Position(rows, eu)
	if not pos then return end
	-- "1º da guilda" só com gente para comparar (3+ no placar); senão, o marco sem posição
	avisa(R.MilestoneText(L, R.ById(id), #rows >= 3 and pos or nil, nil, rows[pos].val))
end

-- Marco que não é de nível: o /played do momento. Antes de o /played chegar (logo depois de
-- entrar), fica na fila e entra quando ele chega.
local pendentes = {}
local function bateu(id)
	local ms = marcosDoChar()
	if ms[id] ~= nil then return end
	if not (ns.RunTracker and ns.RunTracker:HasPlayed()) then pendentes[id] = true; return end
	pendentes[id] = nil
	ms[id] = math.floor(ns.RunTracker:LivePlayed())
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

local function onRecv(payload, sender, dist)
	local kind, rec = R.Decode(payload)
	local nome = curto(sender)
	if kind ~= "R" or not nome or nome == "" or nome == meuNome() then return end
	R.MergeOwn(store(), nome, rec, agora(), dist == "GUILD" and minhaGuilda() or nil)
	reavalia()
	if R.OnChange then R.OnChange() end
end
do local M = mesh(); if M and M.Register then M:Register(PREFIX, onRecv) end end

ns:On("PLAYER_ENTERING_WORLD", function()
	marcosDoChar()
	R.Expire(store(), agora())
	if C_GuildInfo and C_GuildInfo.GuildRoster then C_GuildInfo.GuildRoster() elseif GuildRoster then GuildRoster() end
end)
ns:Every(10, function()
	for id in pairs(pendentes) do bateu(id) end
	anuncia(false)
	reavalia()
	if R.OnChange then R.OnChange() end
end)
