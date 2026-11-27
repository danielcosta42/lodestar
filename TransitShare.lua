--=============================================================================
-- TransitShare — o horário de barco e zepelim dividido com a guilda e o grupo (issue #116).
-- A fase do ciclo só se sabe observando (grito do anunciador, embarque, desembarque; specs/horario-transporte).
-- Cada observação própria vai em mensagem de addon escondida para a guilda e o grupo; quem recebe junta ao horário
-- dele. Ao entrar no jogo e ao formar grupo, pergunta; quem tem horário responde. Só o id do transporte, a parada,
-- chegada/saída e a hora do servidor — nada pessoal. Sem canal de reino (decisão do jogador).
--
--   observação:  "o|<sid>|<parada>|<a|d>|<hora>"      pergunta:  "q"
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

function TS.Encode(sid, k, ev, t)
	return ("o|%d|%d|%s|%d"):format(sid, k, ev == "dep" and "d" or "a", math.floor(t))
end

-- "o|..." -> sid, k, "arr"|"dep", t; "q" -> "q"; o resto -> nil
function TS.Decode(msg)
	if msg == "q" then return "q" end
	if type(msg) ~= "string" then return nil end
	local sid, k, ev, t = msg:match("^o|(%d+)|(%d+)|([ad])|(%d+)$")
	if not sid then return nil end
	return tonumber(sid), tonumber(k), ev == "d" and "dep" or "arr", tonumber(t)
end

-- A observação de fora (`ship`, parada k, ev, hora t) entra no horário `h`? Inválida (parada que o transporte não
-- tem, hora futura ou velha), sem novidade (não é mais nova que a última que o horário já tem) ou contra uma
-- observação própria recente (fase a mais de 30 s da dela) não entra.
function TS.Accept(h, ship, k, ev, t, now)
	if not (ship and ship.stops and k and k >= 1 and k <= #ship.stops and (ev == "arr" or ev == "dep") and t and now) then
		return false
	end
	if t > now + TS.FUTURE or now - t > TS.MAX_AGE then return false end
	if not h then return true end
	if h.last and t <= h.last then return false end
	if h.own and h.t0 and now - h.own <= TS.OWN_FRESH and ns.Schedule then
		local _, _, Tc = ns.Schedule.Offsets(ship, h.ride)
		local T = h.T or Tc
		local t0 = ns.Schedule.CycleStart(ship, k, ev, t, h.ride)
		local d = (t0 - h.t0) % T
		if math.min(d, T - d) > TS.AGREE then return false end
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

-- para onde vai: a guilda e o grupo (o da instância antes; raide; grupo)
local function canais()
	local out = {}
	if IsInGuild and IsInGuild() then out[#out + 1] = "GUILD" end
	local inst = LE_PARTY_CATEGORY_INSTANCE or 2
	if IsInGroup and IsInGroup(inst) then out[#out + 1] = "INSTANCE_CHAT"
	elseif IsInRaid and IsInRaid() then out[#out + 1] = "RAID"
	elseif IsInGroup and IsInGroup() then out[#out + 1] = "PARTY" end
	return out
end

local function manda(msg, so)
	if not (on() and send) then return end
	for _, canal in ipairs(so and { so } or canais()) do pcall(send, TS.PREFIX, msg, canal) end
end

-- observação própria: vai para a guilda e o grupo (Travel:Observe chama)
function TS:Broadcast(sid, k, ev, t)
	manda(TS.Encode(sid, k, ev, t))
end

-- pergunta (ao entrar e ao formar grupo); responde quem tem horário
local ultimaPergunta = 0
function TS:Ask()
	if GetTime() - ultimaPergunta < 30 then return end
	ultimaPergunta = GetTime()
	manda("q")
end

-- Resposta a uma pergunta: espera um pouco (aleatório, para não responderem todos juntos) e manda a observação mais
-- nova de cada transporte, menos as que alguém já respondeu igual ou mais nova nesse meio tempo.
local ouvidas = {}                -- [sid] = hora mais nova ouvida de outro desde a pergunta
local respondendo, ultimaResposta = {}, {}
local function responde(canal)
	if respondendo[canal] or GetTime() - (ultimaResposta[canal] or -999) < 60 then return end
	respondendo[canal] = true
	for k in pairs(ouvidas) do ouvidas[k] = nil end
	local function vai()
		respondendo[canal], ultimaResposta[canal] = nil, GetTime()
		local store = ns.Travel and ns.Travel.Transit and ns.Travel:Transit() or {}
		local now = serverNow()
		for _, ship in ipairs(ns.travel and ns.travel.ships or {}) do
			local k, ev, t = TS.Latest(store[ship.id])
			if t and now - t <= TS.MAX_AGE and not (ouvidas[ship.id] and ouvidas[ship.id] >= t) then
				manda(TS.Encode(ship.id, k, ev, t), canal)
			end
		end
	end
	if C_Timer and C_Timer.After then C_Timer.After(1 + math.random() * 5, vai) else vai() end
end

-- a mensagem é minha (o jogo devolve a própria mensagem na guilda e no grupo)
local function eu(sender)
	if not sender then return true end
	local s = Ambiguate and Ambiguate(sender, "none") or sender
	return s == (UnitName and UnitName("player"))
end

ns:On("CHAT_MSG_ADDON", function(_, prefix, msg, canal, sender)
	if prefix ~= TS.PREFIX or not on() or eu(sender) then return end
	local a, k, ev, t = TS.Decode(msg)
	if a == "q" then return responde(canal) end
	if not a or not (ns.Travel and ns.Travel.ObserveShared) then return end
	if t and (not ouvidas[a] or t > ouvidas[a]) then ouvidas[a] = t end
	ns.Travel:ObserveShared(a, k, ev, t)
end)

-- pergunta 15 s depois de entrar (a guilda e o grupo já estão de pé) e ao entrar num grupo
local pergunta
ns:On("_READY", function() pergunta = 15 end)
ns:On("GROUP_JOINED", function() pergunta = 3 end)
ns:Every(1, function()
	if not pergunta then return end
	pergunta = pergunta - 1
	if pergunta <= 0 then pergunta = nil; TS:Ask() end
end)
