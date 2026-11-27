--=============================================================================
-- TransitShare — o horário de barco e zepelim dividido com a guilda e o grupo (issue #116).
-- A fase do ciclo só se sabe observando (grito do anunciador, embarque, desembarque; specs/horario-transporte).
-- Cada observação própria vai em mensagem de addon escondida para a guilda e o grupo; quem recebe junta ao horário
-- dele. Ao entrar no jogo pergunta à guilda e ao grupo; ao entrar num grupo, só ao grupo; quem tem horário responde.
-- Só o id do transporte, a parada, chegada/saída e a hora do servidor — nada pessoal. Sem canal de reino nem
-- sussurro (decisão do jogador): o que chega por outro canal é ignorado.
--
--   observações:  "o|<sid>|<parada>|<a|d>|<hora>[;<sid>|<parada>|<a|d>|<hora>...]"      pergunta:  "q"
--
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local TS = {}
ns.TransitShare = TS

TS.PREFIX = "LSTransit"
TS.MAX_AGE = 12 * 3600          -- s: observação mais velha não vale (como no horário próprio)
TS.FUTURE = 60                  -- s de folga para relógios: mais adiante que isso é inválida
TS.OWN_FRESH = 2 * 3600         -- s: observação própria mais nova que isso manda
TS.AGREE = 30                   -- s: concordar com a fase própria
TS.MAX_LEN = 250                -- bytes por mensagem (o limite do jogo é 255)
TS.CANAIS = { GUILD = true, PARTY = true, RAID = true, INSTANCE_CHAT = true }   -- de onde se aceita

-- obs = { { sid, k, ev, t }, ... } -> mensagens "o|...;..." de até MAX_LEN bytes
function TS.Encode(obs)
	local out, cur = {}, nil
	for _, o in ipairs(obs) do
		local e = ("%d|%d|%s|%d"):format(o[1], o[2], o[3] == "dep" and "d" or "a", math.floor(o[4]))
		if cur and #cur + 1 + #e > TS.MAX_LEN then out[#out + 1] = cur; cur = nil end
		cur = cur and (cur .. ";" .. e) or ("o|" .. e)
	end
	if cur then out[#out + 1] = cur end
	return out
end

-- "o|..." -> { { sid, k, "arr"|"dep", t }, ... } (só as entradas bem formadas); "q" -> "q"; o resto -> nil
function TS.Decode(msg)
	if msg == "q" then return "q" end
	if type(msg) ~= "string" or msg:sub(1, 2) ~= "o|" then return nil end
	local out = {}
	for e in msg:sub(3):gmatch("[^;]+") do
		local sid, k, ev, t = e:match("^(%d+)|(%d+)|([ad])|(%d+)$")
		if sid then out[#out + 1] = { tonumber(sid), tonumber(k), ev == "d" and "dep" or "arr", tonumber(t) } end
	end
	return #out > 0 and out or nil
end

-- A observação de fora (`ship`, parada k, ev, hora t) entra no horário `h`? Inválida (parada que o transporte não
-- tem, hora futura ou velha), sem novidade (não é mais nova que a última que o horário já tem) ou contra a
-- observação PRÓPRIA recente (fase a mais de 30 s da dela) não entra. A comparação só vale dentro da previsão: com o
-- período ainda estimado, até uma volta depois da própria (depois disso o próprio planejador já não confia nela).
function TS.Accept(h, ship, k, ev, t, now)
	if not (ship and ship.stops and k and k >= 1 and k <= #ship.stops and (ev == "arr" or ev == "dep") and t and now) then
		return false
	end
	if t > now + TS.FUTURE or now - t > TS.MAX_AGE then return false end
	if not h then return true end
	if h.last and t <= h.last then return false end
	if h.own and h.ownT0 and now - h.own <= TS.OWN_FRESH and ns.Schedule then
		local _, _, Tc = ns.Schedule.Offsets(ship, h.ride)
		if h.T or math.abs(t - h.own) <= Tc then
			local T = h.T or Tc
			local t0 = ns.Schedule.CycleStart(ship, k, ev, t, h.ride)
			local d = (t0 - h.ownT0) % T
			if math.min(d, T - d) > TS.AGREE then return false end
		end
	end
	return true
end

-- A observação mais nova que o horário guarda (para responder a uma pergunta): k, ev, t
function TS.Latest(h)
	local bk, bev, bt
	for key, t in pairs(h and h.obs or {}) do
		local k, ev = key:match("^(%d+):(%a+)$")
		if k and (not bt or t > bt) then bk, bev, bt = tonumber(k), ev, t end
	end
	return bk, bev, bt
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local send = (C_ChatInfo and C_ChatInfo.SendAddonMessage) or SendAddonMessage
if C_ChatInfo and C_ChatInfo.RegisterAddonMessagePrefix then pcall(C_ChatInfo.RegisterAddonMessagePrefix, TS.PREFIX) end

local function on() return ns.db and ns.db.transitShare ~= false end
local function serverNow() return GetServerTime and GetServerTime() or 0 end

-- o canal do grupo: o da instância antes; raide; grupo
local function canalGrupo()
	local inst = LE_PARTY_CATEGORY_INSTANCE or 2
	if IsInGroup and IsInGroup(inst) then return "INSTANCE_CHAT" end
	if IsInRaid and IsInRaid() then return "RAID" end
	if IsInGroup and IsInGroup() then return "PARTY" end
end
local function canais()
	local out = {}
	if IsInGuild and IsInGuild() then out[#out + 1] = "GUILD" end
	out[#out + 1] = canalGrupo()
	return out
end

local function manda(msgs, lista)
	if not (on() and send) then return end
	for _, canal in ipairs(lista or canais()) do
		for _, m in ipairs(msgs) do pcall(send, TS.PREFIX, m, canal) end
	end
end

-- observação própria: vai para a guilda e o grupo (Travel:Observe chama)
function TS:Broadcast(sid, k, ev, t)
	manda(TS.Encode({ { sid, k, ev, t } }))
end

-- pergunta: ao entrar, à guilda e ao grupo; ao entrar num grupo, só ao grupo (não acorda a guilda inteira)
local ultimaPergunta = {}
function TS:Ask(soGrupo)
	local lista = soGrupo and { canalGrupo() } or canais()
	local vai = {}
	for _, c in ipairs(lista) do
		if GetTime() - (ultimaPergunta[c] or -999) >= 30 then ultimaPergunta[c] = GetTime(); vai[#vai + 1] = c end
	end
	if #vai > 0 then manda({ "q" }, vai) end
end

-- Resposta a uma pergunta: espera um pouco (aleatório, para não responderem todos juntos) e manda, numa mensagem só,
-- a observação mais nova de cada transporte — menos a que alguém já respondeu igual ou mais nova nesse meio tempo
-- naquele canal. Um canal que respondeu fica 60 s sem responder de novo; a pergunta que chega nesse tempo é
-- respondida quando ele acaba.
local ouvidas = {}                -- [canal] = { [sid] = hora mais nova ouvida de outro desde a pergunta }
local respondendo, ultimaResposta = {}, {}
local function depois(s, f) if C_Timer and C_Timer.After then C_Timer.After(s, f) else f() end end
local responde
responde = function(canal)
	if respondendo[canal] then return end
	respondendo[canal] = true
	local falta = 60 - (GetTime() - (ultimaResposta[canal] or -999))
	ouvidas[canal] = {}
	depois(math.max(0, falta) + 1 + math.random() * 5, function()
		respondendo[canal] = nil
		local store = ns.Travel and ns.Travel.Transit and ns.Travel:Transit() or {}
		local now, obs = serverNow(), {}
		for _, ship in ipairs(ns.travel and ns.travel.ships or {}) do
			local k, ev, t = TS.Latest(store[ship.id])
			local ja = ouvidas[canal] and ouvidas[canal][ship.id]
			if t and now - t <= TS.MAX_AGE and not (ja and ja >= t) then obs[#obs + 1] = { ship.id, k, ev, t } end
		end
		if #obs > 0 then
			ultimaResposta[canal] = GetTime()
			manda(TS.Encode(obs), { canal })
		end
	end)
end

-- a mensagem é minha (o jogo devolve a própria mensagem na guilda e no grupo; no Forever o remetente vem
-- "Nome Sobrenome", ns.PlayerName) ou de outro reino (grupo entre reinos: o horário de lá não vale aqui)
local function ignora(sender)
	if not sender or (ns.IsSecret and ns.IsSecret(sender)) then return true end
	local s = Ambiguate and Ambiguate(sender, "none") or sender
	if s == (ns.PlayerName and ns.PlayerName()) or s == (UnitName and UnitName("player")) then return true end
	return s:find("-", 1, true) ~= nil
end

ns:On("CHAT_MSG_ADDON", function(_, prefix, msg, canal, sender)
	if prefix ~= TS.PREFIX or not on() or not TS.CANAIS[canal] or ignora(sender) then return end
	if ns.IsSecret and ns.IsSecret(msg) then return end
	local obs = TS.Decode(msg)
	if obs == "q" then return responde(canal) end
	if not (obs and ns.Travel and ns.Travel.ObserveShared) then return end
	for _, o in ipairs(obs) do
		local sid, t = o[1], o[4]
		if ouvidas[canal] and (not ouvidas[canal][sid] or t > ouvidas[canal][sid]) then ouvidas[canal][sid] = t end
		ns.Travel:ObserveShared(sid, o[2], o[3], t)
	end
end)

-- pergunta 15 s depois de entrar (a guilda e o grupo já estão de pé) e 3 s depois de entrar num grupo
local pergunta, soGrupo
ns:On("_READY", function() pergunta, soGrupo = 15, false end)
ns:On("GROUP_JOINED", function() if not pergunta then pergunta, soGrupo = 3, true end end)
ns:Every(1, function()
	if not pergunta then return end
	pergunta = pergunta - 1
	if pergunta <= 0 then pergunta = nil; TS:Ask(soGrupo) end
end)
