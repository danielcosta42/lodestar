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
                  [50] = true, [60] = true }

local pendingLevel                       -- nível aguardando o /played chegar
local lastPlayed, lastAt                 -- último /played sincronizado (p/ estimar ao vivo)

local function run()
	ns.char.run = ns.char.run or { levelPlayed = {}, quests = 0 }
	return ns.char.run
end
RT.Run = run

-- Registro do nível em andamento: o que mudou desde o ding (ou desde que o addon o viu).
-- No ding vira run.levels[L] — os números do boletim daquele nível.
local function cur()
	local r = run()
	if not r.cur then
		local z = GetZoneText and GetZoneText() or ""
		r.cur = { level = UnitLevel and UnitLevel("player") or nil, quests = 0, deaths = 0, steps = 0,
			zones = z ~= "" and { [z] = true } or {},       -- a zona onde o nível começou conta
			money0 = GetMoney and GetMoney() or 0, xp = UnitXPMax and UnitXPMax("player") or nil }
	end
	return r.cur
end

local function contaZonas(z)
	local n = 0
	for _ in pairs(z or {}) do n = n + 1 end
	return n
end

-- fecha o nível que acabou (L = o nível alcançado) e começa o seguinte do zero. Registro
-- de outro nível (addon desligado num ding, reload antes da resposta) não vira os
-- números deste: fica só a marca de que o nível existiu.
local function fechar(r, L, total)
	local c = cur()
	r.levels = r.levels or {}
	if c.level and c.level ~= L - 1 then
		r.levels[L] = {}
	else
		r.levels[L] = { time = (r.levelStart and total) and (total - r.levelStart) or nil, quests = c.quests,
			deaths = c.deaths, steps = c.steps, zones = contaZonas(c.zones), xp = c.xp,
			gold = (GetMoney and GetMoney() or 0) - (c.money0 or 0) }
	end
	r.cur, r.levelStart = nil, total
end

-- o nível em andamento, no formato de run.levels (o boletim aberto à mão usa)
function RT:Current()
	local r, c = run(), cur()
	return { time = r.levelStart and (RT:LivePlayed() - r.levelStart) or nil, quests = c.quests,
		deaths = c.deaths, steps = c.steps, zones = contaZonas(c.zones), xp = c.xp,
		gold = (GetMoney and GetMoney() or 0) - (c.money0 or 0) }
end

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

-- o /played que o addon pede não vai para o chat: as janelas de chat deixam de ouvir
-- a resposta até ela chegar (10 s no máximo)
local muted, gen = nil, 0
local function unmute(g)
	if not muted or (g and g ~= gen) then return end   -- prazo de um pedido mais velho
	for _, f in ipairs(muted) do f:RegisterEvent("TIME_PLAYED_MSG") end
	muted = nil
end
local function requestPlayed()
	if not RequestTimePlayed then return end
	if not muted then
		muted = {}
		for i = 1, NUM_CHAT_WINDOWS or 10 do
			local f = _G["ChatFrame" .. i]
			if f and f:IsEventRegistered("TIME_PLAYED_MSG") then
				f:UnregisterEvent("TIME_PLAYED_MSG"); muted[#muted + 1] = f
			end
		end
	end
	gen = gen + 1
	local g = gen
	C_Timer.After(10, function() unmute(g) end)
	RequestTimePlayed()
end

ns:On("PLAYER_LEVEL_UP", function(_, level)
	if pendingLevel then           -- segundo ding antes da resposta: fecha o anterior pela estimativa
		local t = lastPlayed and RT:LivePlayed() or nil
		run().levelPlayed[pendingLevel] = t
		fechar(run(), pendingLevel, t)
	end
	pendingLevel = tonumber(level) or UnitLevel("player")
	requestPlayed()
end)

ns:On("TIME_PLAYED_MSG", function(_, total, levelTime)
	C_Timer.After(0, unmute)                          -- depois que esta resposta passou
	if not total then return end
	lastPlayed, lastAt = total, GetTime()
	local r = run()
	if pendingLevel then
		local L = pendingLevel; pendingLevel = nil
		r.levelPlayed[L] = total
		fechar(r, L, total)
		cur()
		opponent()                                    -- congela o oponente na 1ª vez
		if ns.ReportCard then ns.ReportCard:OnLevel(L, total) end
		RT:UpdateGhost(L)
	elseif levelTime then
		r.levelStart = total - levelTime              -- login: quanto do nível atual já foi
		-- registro de outro nível (reload entre o ding e a resposta): recomeça
		if r.cur and r.cur.level and r.cur.level ~= UnitLevel("player") then r.cur = nil end
	end
end)

ns:On("QUEST_TURNED_IN", function()
	run().quests = (run().quests or 0) + 1
	cur().quests = cur().quests + 1
end)
ns:On("PLAYER_DEAD", function() cur().deaths = cur().deaths + 1 end)
ns:On("_STEP_DONE", function() cur().steps = cur().steps + 1 end)
ns:On("ZONE_CHANGED_NEW_AREA", function()
	local z = GetZoneText and GetZoneText() or ""
	if z ~= "" then cur().zones[z] = true end
end)

-- sincroniza o /played uma vez ao entrar (p/ o "ao vivo" ficar preciso na sessão)
ns:On("PLAYER_ENTERING_WORLD", function()
	if not lastPlayed then requestPlayed() end
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
