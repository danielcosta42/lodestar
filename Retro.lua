--=============================================================================
-- Retro — a retrospectiva da jornada (issue #49): um pôster do 1–60 feito para print e para
-- postar. No topo, o núcleo puro (testado fora do jogo, tools/retro-tests.lua): os agregados
-- da run e a linha do chat. Abaixo, o pôster.
--
-- Os números vêm do RunTracker: run.levels[L] (tempo, XP, quests, mortes, ouro, passos de cada
-- nível), run.levelPlayed (o /played em cada ding), run.zonesSeen (zonas distintas).
--=============================================================================
local ADDON, ns = ...
local RE = {}
ns.Retro = RE

-- Agregados até o nível `level`; `live` = /played agora (jornada em andamento).
-- Destaques pelo ritmo (XP/h): em tempo bruto o nível baixo sempre ganharia.
function RE.Summary(run, level, live)
	local levels, lp = run.levels or {}, run.levelPlayed or {}
	local s = { bars = {}, quests = 0, deaths = 0, gold = 0, steps = 0, max = 0, level = level }
	local medidos = 0
	for L = 2, level do
		local rec = levels[L]
		if rec and rec.time and rec.time > 0 then
			s.bars[L] = rec.time
			s.first = s.first or L
			s.max = math.max(s.max, rec.time)
			if rec.xp and rec.xp > 0 then
				medidos = medidos + 1
				local xph = rec.xp / rec.time * 3600
				if not s.best or xph > s.best.xph then s.best = { level = L, xph = xph, t = rec.time } end
				if not s.worst or xph < s.worst.xph then s.worst = { level = L, xph = xph, t = rec.time } end
			end
		end
		if rec then
			s.quests = s.quests + (rec.quests or 0)
			s.deaths = s.deaths + (rec.deaths or 0)
			s.gold = s.gold + (rec.gold or 0)
			s.steps = s.steps + (rec.steps or 0)
		end
	end
	if medidos < 3 then s.best, s.worst = nil, nil end
	s.done = level >= 60
	s.played = lp[level] or live
	if run.zonesSeen then
		s.zones = 0
		for _ in pairs(run.zonesSeen) do s.zones = s.zones + 1 end
	end
	return s
end

-- uma linha para o chat da guilda (só no clique): cita o Lodestar e o link
function RE.ChatLine(L, s, letter, url, dur)
	return L.RETRO_CHAT:format(s.level, dur(s.played), s.quests, s.deaths, letter or "-", url):sub(1, 255)
end

if not ns.On then return end
