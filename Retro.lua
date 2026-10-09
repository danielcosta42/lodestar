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

--------------------------------------------------------------------------------
-- o pôster: área do print em cima, barra de ações embaixo (fora do print), como o boletim
--------------------------------------------------------------------------------
local UI = ns.UI
local W, H, BAR_H = 460, 600, 60
local CHART_Y, CHART_H = -168, 132
local poster

local function texto(parent, size, color, opts)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	opts = opts or {}; opts.color = color
	UI.SetFont(fs, size, opts)
	return fs
end

local function maxNivel() return ns.Client and ns.Client.maxLevel or 60 end

-- x da barra do nível L no gráfico (níveis 2..max)
local function xDe(L)
	local slot = (W - 36) / (maxNivel() - 1)
	return 18 + (L - 2) * slot, slot
end

local function send(msg)
	local f = (C_ChatInfo and C_ChatInfo.SendChatMessage) or SendChatMessage
	if f then f(msg, "GUILD") end
end

local function build()
	if poster then return poster end
	local C, L = UI.COL, ns.L
	poster = UI.Panel(UIParent, { name = "LodestarRetro", color = C.bg })
	poster:SetSize(W, H); poster:SetPoint("CENTER")
	poster:SetFrameStrata("DIALOG"); poster:SetToplevel(true)
	poster:EnableMouse(true); poster:SetMovable(true); poster:RegisterForDrag("LeftButton")
	poster:SetScript("OnDragStart", poster.StartMoving); poster:SetScript("OnDragStop", poster.StopMovingOrSizing)
	local fio = UI.Rect(poster, "ARTWORK", C.accent); fio:SetPoint("TOPLEFT"); fio:SetPoint("TOPRIGHT"); fio:SetHeight(2)

	-- quem
	poster.iconBox = UI.Rect(poster, "ARTWORK", { 1, 1, 1, 0.1 }); poster.iconBox:SetSize(40, 40)
	poster.iconBox:SetPoint("TOPLEFT", 18, -16)
	poster.icon = poster:CreateTexture(nil, "OVERLAY"); poster.icon:SetSize(32, 32)
	poster.icon:SetPoint("CENTER", poster.iconBox, "CENTER")
	poster.name = texto(poster, 19, C.active, { title = true }); poster.name:SetPoint("TOPLEFT", 70, -17)
	poster.who = texto(poster, 12.5, C.muted); poster.who:SetPoint("TOPLEFT", poster.name, "BOTTOMLEFT", 0, -3)
	poster.kind = texto(poster, 10, C.accent, { num = true }); poster.kind:SetPoint("TOPRIGHT", -18, -22)

	-- o nível, o tempo de jogo e a nota
	local rot = texto(poster, 10, C.muted, { num = true }); rot:SetPoint("TOPLEFT", 20, -74); rot:SetText(L.RETRO_LEVEL)
	poster.level = texto(poster, 52, C.accent, { title = true }); poster.level:SetPoint("TOPLEFT", 16, -86)
	local rot2 = texto(poster, 10, C.muted, { num = true })
	rot2:SetPoint("TOPLEFT", 120, -74); rot2:SetText(L.RETRO_PLAYED)
	poster.played = texto(poster, 26, C.active, { title = true }); poster.played:SetPoint("TOPLEFT", 120, -92)
	poster.grade = CreateFrame("Frame", nil, poster)
	poster.grade:SetSize(88, 26); poster.grade:SetPoint("TOPRIGHT", -18, -94)
	poster.gradeBg = UI.Rect(poster.grade, "BACKGROUND", { 1, 1, 1, 0.08 }); poster.gradeBg:SetAllPoints()
	poster.gradeTxt = texto(poster.grade, 12, C.active, { num = true }); poster.gradeTxt:SetPoint("CENTER")

	-- o gráfico: uma barra por nível
	local cap = texto(poster, 10, C.muted, { num = true })
	cap:SetPoint("TOPLEFT", 18, CHART_Y + 18); cap:SetText(L.RETRO_CHART)
	poster.since = texto(poster, 10, C.dim, { num = true }); poster.since:SetPoint("TOPRIGHT", -18, CHART_Y + 18)
	local base = UI.Rect(poster, "ARTWORK", { 1, 1, 1, 0.12 })
	base:SetPoint("TOPLEFT", 18, CHART_Y - CHART_H); base:SetPoint("TOPRIGHT", -18, CHART_Y - CHART_H); base:SetHeight(1)
	poster.bars = {}
	for L2 = 2, maxNivel() do
		local x, slot = xDe(L2)
		local b = UI.Rect(poster, "ARTWORK", C.accent)
		b:SetPoint("BOTTOMLEFT", poster, "TOPLEFT", x, CHART_Y - CHART_H)
		b._w = math.max(2, slot - 2)
		poster.bars[L2] = b
	end
	for m = 10, maxNivel(), 10 do
		local x, slot = xDe(m)
		local t = texto(poster, 9, C.muted, { num = true })
		t:SetPoint("TOP", poster, "TOPLEFT", x + slot / 2, CHART_Y - CHART_H - 4); t:SetText(m)
	end

	-- os números: grade 3x2 como no boletim
	local gw = W - 36
	local cw, ch = (gw - 2) / 3, 52
	local fundo = UI.Rect(poster, "BACKGROUND", { 1, 1, 1, 0.07 })
	fundo:SetPoint("TOPLEFT", 18, -336); fundo:SetSize(gw + 2, 2 * ch + 3)
	poster.tiles = {}
	for i = 1, 6 do
		local col, row = (i - 1) % 3, math.floor((i - 1) / 3)
		local t = CreateFrame("Frame", nil, poster)
		t:SetSize(cw, ch); t:SetPoint("TOPLEFT", 19 + col * (cw + 1), -337 - row * (ch + 1))
		local bg = UI.Rect(t, "BORDER", C.bg); bg:SetAllPoints()
		t.value = texto(t, 17, C.active, { num = true }); t.value:SetPoint("TOPLEFT", 10, -9)
		t.label = texto(t, 10, C.muted, { num = true }); t.label:SetPoint("BOTTOMLEFT", 10, 9)
		poster.tiles[i] = t
	end

	-- a corrida e os marcos
	poster.race = texto(poster, 12.5, C.accent); poster.race:SetPoint("TOPLEFT", 20, -456)
	poster.ms = texto(poster, 11, C.muted); poster.ms:SetPoint("TOPLEFT", 20, -476); poster.ms:SetWidth(W - 40)
	poster.ms:SetJustifyH("LEFT")

	-- marca: vai em todo print
	local footer = texto(poster, 10.5, C.muted); footer:SetPoint("BOTTOM", 9, BAR_H + 14)
	footer:SetText(L.CARD_FOOTER:format(ns.ReportCard.URL))
	local logo = poster:CreateTexture(nil, "OVERLAY")
	logo:SetTexture(UI.ICON .. "logo-estrela-64"); logo:SetSize(15, 15)
	logo:SetPoint("RIGHT", footer, "LEFT", -5, 0)

	-- barra de ações (fora do print)
	poster.bar = UI.Panel(poster, { color = { 0.051, 0.047, 0.035, 1 }, border = false })
	poster.bar:SetPoint("BOTTOMLEFT", 1, 1); poster.bar:SetPoint("BOTTOMRIGHT", -1, 1); poster.bar:SetHeight(BAR_H)
	poster.close = UI.Button(poster.bar, "", 34, 34); poster.close:SetPoint("RIGHT", -12, 0)
	local x = UI.Glyph(poster.close, "fechar", "OVERLAY", 64); x:SetSize(14, 14); x:SetPoint("CENTER")
	x:SetVertexColor(UI.unpackc(C.muted))
	poster.close:SetScript("OnClick", function() poster:Hide() end)
	poster.more = UI.Button(poster.bar, "···", 34, 34); poster.more:SetPoint("RIGHT", poster.close, "LEFT", -6, 0)
	poster.guild = UI.Button(poster.bar, L.CARD_GUILD, 10, 34)
	local gbg = UI.Rect(poster.guild, "ARTWORK", C.accent); gbg:SetAllPoints()
	if poster.guild.text then UI.SetFont(poster.guild.text, 13, { num = true, color = { 0.07, 0.067, 0.051, 1 } }) end
	poster.guild:SetScript("OnEnter", nil); poster.guild:SetScript("OnLeave", nil)
	poster.copy = UI.Button(poster.bar, L.CARD_COPYTXT, 10, 34)
	for _, b in ipairs({ poster.guild, poster.copy }) do
		b:SetPoint("LEFT", 14, 0); b:SetPoint("RIGHT", poster.more, "LEFT", -6, 0)
	end
	poster.tirarPrint = function()
		poster.bar:Hide()
		if Screenshot then Screenshot() end
		if C_Timer then C_Timer.After(0.4, function() poster.bar:Show() end) end
	end
	poster:Hide()
	return poster
end

-- a corrida no pôster: posições (com gente para comparar) e os marcos batidos
local function corrida()
	local R = ns.Race
	if not (R and R.Rows) then return nil, nil end
	local L, eu = ns.L, ns.PlayerName()
	local g, r = R:Rows("guild", "alto"), R:Rows("realm", "alto")
	local gpos = #g >= 3 and R.Position(g, eu) or nil
	local rpos = #r >= 5 and #r > #g and R.Position(r, eu) or nil
	local pos = gpos and rpos and L.RACE_POS_BOTH:format(gpos, rpos) or gpos and L.RACE_POS_GUILD:format(gpos)
		or rpos and L.RACE_POS_REALM:format(rpos)
	local nomes = {}
	local ms = R.MyRecord().ms
	for _, m in ipairs(ns.RACE_MILESTONES or {}) do
		if m.kind ~= "level" and ms[m.id] then nomes[#nomes + 1] = R.Label(L, m) end
	end
	return pos and L.RETRO_RACE:format(pos), #nomes > 0 and L.RETRO_MS:format(table.concat(nomes, " · ")) or nil
end

function RE:Show()
	build()
	local C, L, RC = UI.COL, ns.L, ns.ReportCard
	local RT = ns.RunTracker
	local nivel = UnitLevel("player") or 1
	local s = RE.Summary(RT.Run(), nivel, RT:LivePlayed())
	s.deaths = math.max(s.deaths, ns.char.deaths or 0)
	local letter, gcol = RC.Grade(nivel, s.played, s.deaths)

	local className, class = UnitClass("player")
	local cc = RAID_CLASS_COLORS and RAID_CLASS_COLORS[class or ""]
	local ccor = cc and { cc.r, cc.g, cc.b } or C.accent
	poster.iconBox:SetColorTexture(ccor[1], ccor[2], ccor[3], 0.12)
	local coords = CLASS_ICON_TCOORDS and CLASS_ICON_TCOORDS[class or ""]
	if coords then
		poster.icon:SetTexture("Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES")
		poster.icon:SetTexCoord(unpack(coords)); poster.icon:Show()
	else
		poster.icon:Hide()
	end
	poster.name:SetText(ns.PlayerName())
	poster.who:SetText(("%s %s"):format(UnitRace("player") or "", className or ""))
	poster.who:SetTextColor(ccor[1], ccor[2], ccor[3], 1)
	poster.kind:SetText(s.done and L.RETRO_KIND_DONE or L.RETRO_KIND_SOFAR)
	poster.level:SetText(tostring(nivel))
	poster.played:SetText(RC.FmtDur(s.played))
	poster.gradeTxt:SetText(L.RETRO_GRADE:format(letter or "-"))
	if gcol then poster.gradeTxt:SetTextColor(UI.unpackc(gcol)) end

	-- barras: altura pelo tempo do nível; melhor e pior ritmo destacados; sem dado, um traço
	poster.since:SetText(s.first and s.first > 2 and L.RETRO_SINCE:format(s.first) or "")
	for L2, b in pairs(poster.bars) do
		local t = s.bars[L2]
		local h = t and math.max(2, t / math.max(1, s.max) * CHART_H) or 2
		b:SetSize(b._w, h)
		b.best = s.best and s.best.level == L2 or nil
		local cor = b.best and C.done or (s.worst and s.worst.level == L2 and C.amber)
		if cor then b:SetColorTexture(cor[1], cor[2], cor[3], 1)
		elseif t then b:SetColorTexture(C.accent[1], C.accent[2], C.accent[3], 0.6)
		else b:SetColorTexture(1, 1, 1, L2 <= nivel and 0.12 or 0.05) end
		b:Show()
	end

	local valores = {
		{ L.CARD_QUESTS, tostring(s.quests) },
		{ L.CARD_DEATHS, tostring(s.deaths) },
		{ L.CARD_ZONES, s.zones and tostring(s.zones) or "—" },
		{ L.CARD_GOLD, RC.FmtGold(s.gold) },
		{ L.RETRO_STEPS, tostring(s.steps) },
		{ L.RETRO_BEST, s.best and L.RETRO_LV:format(s.best.level) or "—" },
	}
	for i, v in ipairs(valores) do
		poster.tiles[i].label:SetText(v[1]:upper()); poster.tiles[i].value:SetText(v[2])
	end
	local raceTxt, msTxt = corrida()
	poster.race:SetText(raceTxt or ""); poster.ms:SetText(msTxt or "")

	-- compartilhar: só no clique
	local function copiar()
		poster:Hide()
		local texto2 = L.RETRO_TEXT:format(ns.PlayerName(), ("%s %s"):format(UnitRace("player") or "", className or ""),
			nivel, RC.FmtDur(s.played), letter or "-", s.quests, s.deaths, s.zones and tostring(s.zones) or "—",
			RC.FmtGold(s.gold), msTxt or "", RC.URL)
		if ns.Share then ns.Share:ShowText(L.CARD_COPYTXT, L.CARD_COPYTXT_H, texto2, false) end
	end
	local guilda = IsInGuild and IsInGuild() and true or false
	poster.guild:SetShown(guilda); poster.copy:SetShown(not guilda)
	poster.guild:SetScript("OnClick", function()
		send(RE.ChatLine(L, s, letter, RC.URL, RC.FmtDur))
		poster.guild:Hide(); poster.copy:Show()
	end)
	poster.copy:SetScript("OnClick", copiar)
	poster.more:SetScript("OnClick", function(btn)
		UI.Menu(btn, { { L.CARD_COPYTXT, copiar }, { L.CARD_SHOT, poster.tirarPrint } })
	end)
	poster.bar:Show()
	poster:Show()
end

-- No nível máximo, a jornada abre sozinha: depois do boletim do nível (se aberto) e fora de
-- combate.
local pendente, ganchoCard = false, false
local function tentar()
	if not pendente then return end
	if InCombatLockdown and InCombatLockdown() then return end
	local card = _G.LodestarCard
	if card and card:IsShown() then
		if not ganchoCard then
			ganchoCard = true
			card:HookScript("OnHide", function() if pendente then pendente = false; RE:Show() end end)
		end
		return
	end
	pendente = false
	RE:Show()
end
ns:On("_LEVEL_PLAYED", function(_, L)
	if L >= maxNivel() then pendente = true; tentar() end
end)
ns:On("PLAYER_REGEN_ENABLED", function() if pendente and C_Timer then C_Timer.After(1, tentar) end end)
