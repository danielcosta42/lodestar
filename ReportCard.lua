--=============================================================================
-- ReportCard — o "boletim de leveling": dá uma NOTA (S/A/B/C/D) à sua run com
-- base em ritmo (/played vs par) e mortes, e mostra um card vertical, feito para
-- print, com os números do nível que acabou. Compartilha na guilda/grupo (só no
-- clique) e copia um resumo com o link — cada print leva a marca do Lodestar.
--=============================================================================
local ADDON, ns = ...
local UI = ns.UI
local RC = {}
ns.ReportCard = RC

local URL = "curseforge.com/wow/addons/lodestar"

-- par de /played (horas) p/ cada marco — médias aproximadas; ajustável.
local PAR = { [10] = 3, [20] = 8, [30] = 16, [40] = 26, [50] = 40, [60] = 62 }
local PTS = { 10, 20, 30, 40, 50, 60 }

local function parHours(L)
	if L <= 10 then return PAR[10] * L / 10 end
	for i = 1, #PTS - 1 do
		local a, b = PTS[i], PTS[i + 1]
		if L <= b then return PAR[a] + (PAR[b] - PAR[a]) * (L - a) / (b - a) end
	end
	return PAR[60]
end

-- nota: mistura ritmo-vs-par e mortes -> letra + cor
local function grade(L, played, deaths)
	local pace = (parHours(L) * 3600) / math.max(1, played)     -- >1 = mais rápido que o par
	local dp10 = (deaths or 0) / math.max(1, L / 10)
	local s = pace * 100 - dp10 * 6
	if s >= 135 then return "S", { 1.0, 0.84, 0.25 }, s end
	if s >= 112 then return "A", { 0.45, 0.85, 0.45 }, s end
	if s >= 92 then return "B", { 0.45, 0.70, 1.0 }, s end
	if s >= 72 then return "C", { 0.92, 0.66, 0.36 }, s end
	return "D", { 0.86, 0.42, 0.42 }, s
end

local function fmtDur(sec)
	if not sec then return "--" end
	sec = math.max(0, math.floor(sec))
	local d = math.floor(sec / 86400)
	local h = math.floor((sec % 86400) / 3600)
	local m = math.floor((sec % 3600) / 60)
	if d > 0 then return string.format("%dd %dh %dm", d, h, m) end   -- ex.: 27d 1h 47m
	if h > 0 then return string.format("%dh %02dm", h, m) end
	return string.format("%dm", m)
end

-- ouro em texto puro (vai para o chat e para o resumo copiado: sem textura)
local function fmtGold(copper)
	if not copper then return "--" end
	local sinal = copper < 0 and "-" or "+"
	copper = math.abs(math.floor(copper))
	local g, s, c = math.floor(copper / 10000), math.floor((copper % 10000) / 100), copper % 100
	if g > 0 then return ("%s%dg %ds"):format(sinal, g, s) end
	if s > 0 then return c > 0 and ("%s%ds %dc"):format(sinal, s, c) or ("%s%ds"):format(sinal, s) end
	return ("%s%dc"):format(sinal, c)
end

local function fmtNum(n)
	local sep = (GetLocale and GetLocale() == "ptBR") and "." or ","
	local s = tostring(math.floor(n or 0)):reverse():gsub("(%d%d%d)", "%1" .. sep):reverse()
	return (s:gsub("^%" .. sep, ""))
end

--------------------------------------------------------------------------------
-- números do card
--------------------------------------------------------------------------------
-- O nível L que acabou de chegar: o registro do RunTracker (tempo, quests, ouro,
-- mortes, zonas, passos, XP) mais a nota da run e um destaque.
function RC:Stats(L)
	local RT = ns.RunTracker
	local r = RT:Run()
	local s = (r.levels and r.levels[L]) or RT:Current() or {}
	local played = r.levelPlayed[L] or RT:LivePlayed()
	local letter, col = grade(L, played, ns.char.deaths)
	local out = {
		level = L, played = played, letter = letter, col = col,
		time = s.time, quests = s.quests or 0, deaths = s.deaths or 0, zones = s.zones or 0,
		steps = s.steps or 0, gold = s.gold,
		xph = (s.time and s.time > 0 and s.xp) and s.xp / s.time * 3600 or nil,
	}
	-- destaque: o melhor ritmo (XP/h) até agora, com 3+ níveis medidos — em segundos,
	-- nível alto sempre demora mais — ou o fantasma
	if out.xph and r.levels then
		local n, melhor = 0, true
		for lv, o in pairs(r.levels) do
			if o.time and o.time > 0 and o.xp and lv ~= L then
				n = n + 1
				if o.xp / o.time * 3600 >= out.xph then melhor = false end
			end
		end
		if n >= 2 and melhor then out.highlight, out.hcol = ns.L.CARD_FASTEST, UI.COL.done end
	end
	local opp = not out.highlight and RT:Opponent()
	if opp and opp.levelPlayed and opp.levelPlayed[L] then
		local d = opp.levelPlayed[L] - played              -- >0 = você mais rápido
		out.highlight = ("%s %s: %s%s"):format(d >= 0 and ns.L.CARD_AHEAD or ns.L.CARD_BEHIND,
			opp.name or "?", d >= 0 and "-" or "+", fmtDur(math.abs(d)))
		out.hcol = d >= 0 and UI.COL.done or UI.COL.amber
	end
	return out
end

-- uma linha para o chat (guilda/grupo): até 255 caracteres, cita o Lodestar
function RC:ChatLine(L)
	local st = self:Stats(L)
	local msg = st.time and ns.L.CARD_CHAT:format(L, fmtDur(st.time), st.quests, st.letter, URL)
		or ns.L.CARD_CHAT_NT:format(L, st.quests, st.letter, URL)
	return msg:sub(1, 255)
end

-- resumo de várias linhas para colar fora do jogo (Discord, rede social)
function RC:ShareText(L)
	local st = self:Stats(L)
	local race, class = UnitRace("player") or "", UnitClass("player") or ""
	return ns.L.CARD_TEXT:format(UnitName("player") or "?", L, race .. " " .. class,
		st.letter, fmtDur(st.time), st.xph and fmtNum(st.xph) or "--",
		st.quests, st.deaths, fmtGold(st.gold), st.zones, st.steps,
		fmtDur(st.played), "https://www." .. URL)
end

local function send(msg, canal)
	local f = (C_ChatInfo and C_ChatInfo.SendChatMessage) or SendChatMessage
	if f then f(msg, canal) end
end

--------------------------------------------------------------------------------
-- painel do card (vertical, para print)
--------------------------------------------------------------------------------
local W, H = 360, 560
local card

local function tile(parent, x, y)
	local t = CreateFrame("Frame", nil, parent)
	t:SetSize(152, 54); t:SetPoint("TOPLEFT", x, y)
	local bg = UI.Rect(t, "BACKGROUND", { 0, 0, 0, 0.28 }); bg:SetAllPoints()
	t.label = t:CreateFontString(nil, "OVERLAY")
	UI.SetFont(t.label, 10, { color = UI.COL.muted }); t.label:SetPoint("TOPLEFT", 10, -9)
	t.value = t:CreateFontString(nil, "OVERLAY")
	UI.SetFont(t.value, 18, { num = true, color = UI.COL.active }); t.value:SetPoint("BOTTOMLEFT", 10, 8)
	return t
end

local function build()
	if card then return card end
	local C = UI.COL
	card = UI.Panel(UIParent, { name = "LodestarCard", color = C.panel })
	card:SetSize(W, H); card:SetPoint("CENTER")
	card:SetFrameStrata("FULLSCREEN_DIALOG"); card:SetToplevel(true)
	card:EnableMouse(true); card:SetMovable(true); card:RegisterForDrag("LeftButton")
	card:SetScript("OnDragStart", card.StartMoving); card:SetScript("OnDragStop", card.StopMovingOrSizing)

	-- faixa da classe: ícone, nome, raça e classe
	card.band = UI.Rect(card, "ARTWORK", C.accent)
	card.band:SetPoint("TOPLEFT"); card.band:SetPoint("TOPRIGHT"); card.band:SetHeight(70)
	card.icon = card:CreateTexture(nil, "OVERLAY")
	card.icon:SetSize(44, 44); card.icon:SetPoint("TOPLEFT", 14, -13)
	card.name = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.name, 17, { outline = "OUTLINE", color = { 1, 1, 1, 1 } })
	card.name:SetPoint("TOPLEFT", card.icon, "TOPRIGHT", 10, -4)
	card.who = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.who, 11, { outline = "OUTLINE", color = { 1, 1, 1, 0.9 } })
	card.who:SetPoint("TOPLEFT", card.name, "BOTTOMLEFT", 0, -4)
	card.close = UI.CloseButton(card, function() card:Hide() end)
	card.close:SetPoint("TOPRIGHT", -6, -6)

	-- nível em destaque e a nota num selo
	card.lvlLabel = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.lvlLabel, 11, { color = C.muted }); card.lvlLabel:SetPoint("TOP", 0, -84)
	card.lvlLabel:SetText(ns.L.CARD_LEVEL)
	card.level = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.level, 76, { num = true, outline = "THICKOUTLINE", color = C.accent })
	card.level:SetPoint("TOP", card.lvlLabel, "BOTTOM", 0, -2)
	card.seal = card:CreateTexture(nil, "ARTWORK")
	card.seal:SetTexture(UI.MEDIA .. "ring"); card.seal:SetSize(62, 62)
	card.seal:SetPoint("TOPRIGHT", -22, -92)
	card.grade = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.grade, 32, { outline = "THICKOUTLINE" }); card.grade:SetPoint("CENTER", card.seal, "CENTER", 0, 0)
	card.sub = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.sub, 9, { outline = "OUTLINE", color = { 1, 1, 1, 0.8 } })
	card.sub:SetPoint("BOTTOMRIGHT", card.band, "BOTTOMRIGHT", -12, 8)
	card.sub:SetText(ns.L.CARD_SUB)

	card.highlight = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.highlight, 13, { num = true, color = C.accent })
	card.highlight:SetPoint("TOP", 0, -192)

	-- seis blocos do nível que acabou
	card.tiles = {}
	for i = 1, 6 do
		local col, row = (i - 1) % 2, math.floor((i - 1) / 2)
		card.tiles[i] = tile(card, 20 + col * 168, -218 - row * 64)
	end

	card.played = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.played, 11, { num = true, color = C.muted }); card.played:SetPoint("TOP", 0, -410)

	-- pergunta da guilda
	card.ask = CreateFrame("Frame", nil, card)
	card.ask:SetSize(W - 32, 46); card.ask:SetPoint("TOP", 0, -428)
	card.askText = card.ask:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.askText, 12, { color = C.active }); card.askText:SetPoint("TOP", 0, 0)
	card.askText:SetText(ns.L.CARD_ASK_GUILD)
	card.askNever = UI.Button(card.ask, ns.L.CARD_NEVER, 96, 22); card.askNever:SetPoint("BOTTOMRIGHT", 0, 0)
	card.askLater = UI.Button(card.ask, ns.L.CARD_LATER, 96, 22)
	card.askLater:SetPoint("BOTTOM", 0, 0)
	card.askYes = UI.Button(card.ask, ns.L.CARD_YES, 96, 22)
	card.askYes:SetPoint("BOTTOMLEFT", 0, 0)
	card.askLater:SetScript("OnClick", function() card.ask:Hide() end)
	card.askNever:SetScript("OnClick", function() ns.db.cardAskGuild = false; card.ask:Hide() end)

	card.copy = UI.Button(card, ns.L.CARD_COPYTXT, 104, 24); card.copy:SetPoint("BOTTOMLEFT", 16, 46)
	card.shot = UI.Button(card, ns.L.CARD_SHOT, 104, 24); card.shot:SetPoint("BOTTOM", 0, 46)
	card.party = UI.Button(card, ns.L.CARD_PARTY, 104, 24); card.party:SetPoint("BOTTOMRIGHT", -16, 46)

	-- rodapé: a marca vai em todo print
	card.footer = card:CreateFontString(nil, "OVERLAY")
	UI.SetFont(card.footer, 10, { color = C.muted }); card.footer:SetPoint("BOTTOM", 9, 18)
	card.footer:SetText(ns.L.CARD_FOOTER:format(URL))
	local logo = card:CreateTexture(nil, "OVERLAY")
	logo:SetTexture(UI.ICON .. "logo-estrela-64"); logo:SetSize(16, 16)
	logo:SetPoint("RIGHT", card.footer, "LEFT", -5, 0)

	card.shot:SetScript("OnClick", function()
		local ask = card.ask:IsShown()
		local botoes = { card.copy, card.shot, card.party, card.close, card.ask }
		for _, b in ipairs(botoes) do b:Hide() end
		if Screenshot then Screenshot() end
		if C_Timer then C_Timer.After(0.4, function()
			card.copy:Show(); card.shot:Show(); card.close:Show()
			if card._grupo then card.party:Show() end
			if ask then card.ask:Show() end
		end) end
	end)
	card:Hide()
	return card
end

local function classIcon(tex, class)
	local coords = CLASS_ICON_TCOORDS and CLASS_ICON_TCOORDS[class or ""]
	if coords then
		tex:SetTexture("Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES")
		tex:SetTexCoord(unpack(coords)); tex:Show()
	else
		tex:Hide()
	end
end

function RC:Show(L)
	build()
	local st = self:Stats(L)
	local C = UI.COL
	local className, class = UnitClass("player")
	local cc = RAID_CLASS_COLORS and RAID_CLASS_COLORS[class or ""]
	-- um tom abaixo da cor da classe: o texto branco lê em sacerdote e ladino
	card.band:SetColorTexture((cc and cc.r or C.accent[1]) * 0.7, (cc and cc.g or C.accent[2]) * 0.7,
		(cc and cc.b or C.accent[3]) * 0.7, 0.95)
	classIcon(card.icon, class)
	card.name:SetText(UnitName("player") or "")
	card.who:SetText(("%s %s"):format(UnitRace("player") or "", className or ""))
	card.level:SetText(tostring(L))
	card.grade:SetText(st.letter); card.grade:SetTextColor(UI.unpackc(st.col))
	card.seal:SetVertexColor(UI.unpackc(st.col))
	card.highlight:SetText(st.highlight or "")
	if st.hcol then card.highlight:SetTextColor(UI.unpackc(st.hcol)) end

	local valores = {
		{ ns.L.CARD_TIME, fmtDur(st.time) },
		{ ns.L.CARD_XPH, st.xph and fmtNum(st.xph) or "--" },
		{ ns.L.CARD_QUESTS, tostring(st.quests) },
		{ ns.L.CARD_GOLD, fmtGold(st.gold) },
		{ ns.L.CARD_DEATHS, tostring(st.deaths) },
		{ ns.L.CARD_ZONES, tostring(st.zones) },
	}
	for i, v in ipairs(valores) do
		card.tiles[i].label:SetText(v[1]); card.tiles[i].value:SetText(v[2])
	end
	card.played:SetText(("/played %s  ·  %s"):format(fmtDur(st.played), date and date(ns.L.CARD_DATE) or ""))

	-- compartilhar: só no clique; a pergunta da guilda só para quem está em guilda
	local msg = self:ChatLine(L)
	local guilda = IsInGuild and IsInGuild() and ns.db.cardAskGuild ~= false
	card.ask:SetShown(guilda and true or false)
	card.askYes:SetScript("OnClick", function() send(msg, "GUILD"); card.ask:Hide() end)
	card._grupo = IsInGroup and IsInGroup() and true or false
	card.party:SetShown(card._grupo)
	card.party:SetScript("OnClick", function()           -- uma vez por card: sem spam
		send(msg, (IsInRaid and IsInRaid()) and "RAID" or "PARTY")
		card._grupo = false; card.party:Hide()
	end)
	card.copy:SetScript("OnClick", function()             -- a janela de copiar fica atrás do card
		card:Hide()
		if ns.Share then ns.Share:ShowText(ns.L.CARD_COPYTXT, ns.L.CARD_COPYTXT_H, RC:ShareText(L), false) end
	end)
	card:Show()
end

-- chamado pelo RunTracker a cada ding (com o /played sincronizado): nos marcos, ou
-- a cada nível se o jogador pediu. Em combate, o cartão espera: no meio da tela,
-- tapava a luta.
local pendingL
function RC:OnLevel(L, total)
	if not (ns.db and ns.db.reportCard ~= false) then return end
	if not (ns.RunTracker.MILESTONES[L] or ns.db.cardEvery) then return end
	if InCombatLockdown() then pendingL = L else self:Show(L) end
end
ns:On("PLAYER_REGEN_ENABLED", function()
	if pendingL then local L = pendingL; pendingL = nil; RC:Show(L) end
end)
