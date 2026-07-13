--=============================================================================
-- RunTracker — coleta os dados da sua run de leveling: tempo /played em cada
-- ding, mortes (ns.char.deaths) e quests. Mantém o "ghost" (run de referência
-- por classe) e um oponente congelado no início da run p/ o Ghost Racing.
-- Sem servidor — tudo em SavedVariables. Base do Boletim e do Ghost Racing.
--=============================================================================
local ADDON, ns = ...
local RT = {}
ns.RunTracker = RT

RT.MILESTONES = { [10] = true, [20] = true, [30] = true, [40] = true,
                  [50] = true, [58] = true, [70] = true }

local pendingLevel                       -- nível aguardando o /played chegar
local lastPlayed, lastAt                 -- último /played sincronizado (p/ estimar ao vivo)

local function run()
	ns.char.run = ns.char.run or { levelPlayed = {}, quests = 0 }
	return ns.char.run
end
RT.Run = run

-- /played AO VIVO estimado a partir do último ding (sem spammar RequestTimePlayed)
function RT:LivePlayed()
	if lastPlayed then return lastPlayed + (GetTime() - lastAt) end
	return run().levelPlayed[UnitLevel("player")] or 0
end

-- oponente do Ghost Racing = snapshot do ghost da classe no INÍCIO da run
local function opponent()
	local r = run()
	if r.opponent == nil then
		local class = select(2, UnitClass("player"))
		local g = ns.db.ghost and ns.db.ghost[class]
		r.opponent = (g and g.name ~= UnitName("player")) and CopyTable(g) or false
	end
	return r.opponent or nil
end
RT.Opponent = opponent

ns:On("PLAYER_LEVEL_UP", function(_, level)
	pendingLevel = tonumber(level) or UnitLevel("player")
	if RequestTimePlayed then RequestTimePlayed() end
end)

ns:On("TIME_PLAYED_MSG", function(_, total)
	if not total then return end
	lastPlayed, lastAt = total, GetTime()
	if pendingLevel then
		local L = pendingLevel; pendingLevel = nil
		run().levelPlayed[L] = total
		opponent()                                    -- congela o oponente na 1ª vez
		if ns.ReportCard then ns.ReportCard:OnLevel(L, total) end
		RT:UpdateGhost(L)
	end
end)

ns:On("QUEST_TURNED_IN", function() run().quests = (run().quests or 0) + 1 end)

-- sincroniza o /played uma vez ao entrar (p/ o "ao vivo" ficar preciso na sessão)
ns:On("PLAYER_ENTERING_WORLD", function()
	if not lastPlayed and RequestTimePlayed then RequestTimePlayed() end
end)

-- atualiza o ghost da classe se esta run foi mais longe / mais rápida no topo
function RT:UpdateGhost(level)
	local class = select(2, UnitClass("player"))
	ns.db.ghost = ns.db.ghost or {}
	local g = ns.db.ghost[class]
	local r = run()
	if not g or level > (g.top or 0)
		or (level == g.top and (r.levelPlayed[level] or 1e18) < (g.levelPlayed[level] or 1e18)) then
		ns.db.ghost[class] = { levelPlayed = CopyTable(r.levelPlayed),
			name = UnitName("player"), top = level }
	end
end
