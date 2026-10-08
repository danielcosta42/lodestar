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
	local rec = r.levels and r.levels[L]
	local s = rec or RT:Current() or {}           -- sem registro: o nível em andamento, até agora
	local played = r.levelPlayed[L] or RT:LivePlayed()
	local letter, col = grade(L, played, ns.char.deaths)
	local out = {
		level = L, played = played, letter = letter, col = col, sofar = not rec,
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
-- painel do card: área do print em cima, barra de ações embaixo (fora do print)
--------------------------------------------------------------------------------
local W, H, BAR_H = 360, 480, 60
local NOTA_BOA = { S = true, A = true, B = true }    -- nota baixa não vai para o print
local card

local function texto(parent, size, color, opts)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	opts = opts or {}; opts.color = color
	UI.SetFont(fs, size, opts)
	return fs
end

-- grade 3x2 de fios finos: o fundo da grade aparece só no espaço de 1px entre as células
local function grade3x2(parent, y)
	local gw = W - 36
	local cw, ch = (gw - 2) / 3, 52
	local fundo = UI.Rect(parent, "BACKGROUND", { 1, 1, 1, 0.07 })
	fundo:SetPoint("TOPLEFT", 18, y); fundo:SetSize(gw + 2, 2 * ch + 3)
	local tiles = {}
	for i = 1, 6 do
		local col, row = (i - 1) % 3, math.floor((i - 1) / 3)
		local t = CreateFrame("Frame", nil, parent)
		t:SetSize(cw, ch); t:SetPoint("TOPLEFT", 19 + col * (cw + 1), y - 1 - row * (ch + 1))
		local bg = UI.Rect(t, "BORDER", UI.COL.bg); bg:SetAllPoints()
		t.value = texto(t, 17, UI.COL.active, { num = true }); t.value:SetPoint("TOPLEFT", 10, -9)
		t.label = texto(t, 10, UI.COL.muted, { num = true }); t.label:SetPoint("BOTTOMLEFT", 10, 9)
		tiles[i] = t
	end
	return tiles
end

local function iconButton(parent, glyph, tip)
	local b = UI.Button(parent, "", 34, 34)
	local ic = UI.Glyph(b, glyph, "OVERLAY", 64); ic:SetSize(16, 16); ic:SetPoint("CENTER")
	ic:SetVertexColor(UI.unpackc(UI.COL.muted))
	b:HookScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP"); GameTooltip:AddLine(tip, 1, 1, 1); GameTooltip:Show()
	end)
	b:HookScript("OnLeave", function() GameTooltip:Hide() end)
	return b
end

local function build()
	if card then return card end
	local C, L = UI.COL, ns.L
	card = UI.Panel(UIParent, { name = "LodestarCard", color = C.bg })
	card:SetSize(W, H); card:SetPoint("CENTER")
	card:SetFrameStrata("DIALOG"); card:SetToplevel(true)     -- o menu ⋯ (FULLSCREEN_DIALOG) fica por cima
	card:EnableMouse(true); card:SetMovable(true); card:RegisterForDrag("LeftButton")
	card:SetScript("OnDragStart", card.StartMoving); card:SetScript("OnDragStop", card.StopMovingOrSizing)
	local fio = UI.Rect(card, "ARTWORK", C.accent); fio:SetPoint("TOPLEFT"); fio:SetPoint("TOPRIGHT"); fio:SetHeight(2)

	-- quem: ícone da classe na caixa com o tom dela, nome, raça e classe
	card.iconBox = UI.Rect(card, "ARTWORK", { 1, 1, 1, 0.1 }); card.iconBox:SetSize(40, 40)
	card.iconBox:SetPoint("TOPLEFT", 18, -16)
	card.icon = card:CreateTexture(nil, "OVERLAY"); card.icon:SetSize(32, 32)
	card.icon:SetPoint("CENTER", card.iconBox, "CENTER")
	card.name = texto(card, 19, C.active, { title = true }); card.name:SetPoint("TOPLEFT", 70, -17)
	card.who = texto(card, 12.5, C.muted); card.who:SetPoint("TOPLEFT", card.name, "BOTTOMLEFT", 0, -3)
	card.kind = texto(card, 10, C.accent, { num = true }); card.kind:SetPoint("TOPRIGHT", -18, -22)

	-- medalhão com o nível
	card.ring = UI.Media(card, "ring", "ARTWORK"); card.ring:SetSize(132, 132); card.ring:SetPoint("TOP", 0, -72)
	card.ring:SetVertexColor(UI.unpackc(C.accent))
	local miolo = UI.Media(card, "dot", "BORDER"); miolo:SetSize(116, 116); miolo:SetPoint("CENTER", card.ring, "CENTER")
	miolo:SetVertexColor(C.accent[1], C.accent[2], C.accent[3], 0.07)
	local anel = UI.Media(card, "ring", "ARTWORK"); anel:SetSize(116, 116); anel:SetPoint("CENTER", card.ring, "CENTER")
	anel:SetVertexColor(C.accent[1], C.accent[2], C.accent[3], 0.4)
	local rot = texto(card, 10, C.muted, { num = true }); rot:SetPoint("CENTER", card.ring, "CENTER", 0, 26)
	rot:SetText(L.CARD_LEVEL)
	card.level = texto(card, 56, C.accent, { title = true }); card.level:SetPoint("CENTER", card.ring, "CENTER", 0, -6)

	-- selo de ritmo (só nota boa) + destaque, centrados juntos
	card.badges = CreateFrame("Frame", nil, card); card.badges:SetSize(W - 36, 22); card.badges:SetPoint("TOP", 0, -214)
	card.pace = CreateFrame("Frame", nil, card.badges); card.pace:SetHeight(22)
	card.paceBg = UI.Rect(card.pace, "BACKGROUND", { 0.56, 0.76, 1, 0.1 }); card.paceBg:SetAllPoints()
	UI.AddBorder(card.pace, { 0.56, 0.76, 1, 0.45 })
	card.paceTxt = texto(card.pace, 10.5, { 0.56, 0.76, 1, 1 }, { num = true }); card.paceTxt:SetPoint("CENTER")
	card.highlight = texto(card.badges, 12.5, C.done)

	card.tiles = grade3x2(card, -250)

	-- marca: vai em todo print
	card.footer = texto(card, 10.5, C.muted); card.footer:SetPoint("BOTTOM", 9, BAR_H + 14)
	card.footer:SetText(L.CARD_FOOTER:format(URL))
	local logo = card:CreateTexture(nil, "OVERLAY")
	logo:SetTexture(UI.ICON .. "logo-estrela-64"); logo:SetSize(15, 15)
	logo:SetPoint("RIGHT", card.footer, "LEFT", -5, 0)

	-- barra de ações (fora do print)
	card.bar = UI.Panel(card, { color = { 0.051, 0.047, 0.035, 1 }, border = false })
	card.bar:SetPoint("BOTTOMLEFT", 1, 1); card.bar:SetPoint("BOTTOMRIGHT", -1, 1); card.bar:SetHeight(BAR_H)
	local sep = UI.Rect(card.bar, "ARTWORK", { 1, 1, 1, 0.06 }); sep:SetPoint("TOPLEFT"); sep:SetPoint("TOPRIGHT"); sep:SetHeight(1)
	card.close = iconButton(card.bar, "fechar", CLOSE or "Close"); card.close:SetPoint("RIGHT", -12, 0)
	card.close:SetScript("OnClick", function() card:Hide() end)
	card.more = UI.Button(card.bar, "···", 34, 34); card.more:SetPoint("RIGHT", card.close, "LEFT", -6, 0)
	card.party = UI.Button(card.bar, L.CARD_PARTY, 64, 34)
	-- botão principal: mandar na guilda; sem guilda, copiar o texto ocupa o lugar
	card.guild = UI.Button(card.bar, L.CARD_GUILD, 10, 34)
	local gbg = UI.Rect(card.guild, "ARTWORK", C.accent); gbg:SetAllPoints()
	if card.guild.text then UI.SetFont(card.guild.text, 13, { num = true, color = { 0.07, 0.067, 0.051, 1 } }) end
	card.guild:SetScript("OnEnter", nil); card.guild:SetScript("OnLeave", nil)
	card.copy = UI.Button(card.bar, L.CARD_COPYTXT, 10, 34)

	card.tirarPrint = function()
		card.bar:Hide()
		if Screenshot then Screenshot() end
		if C_Timer then C_Timer.After(0.4, function() card.bar:Show() end) end
	end
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
	local ccor = cc and { cc.r, cc.g, cc.b } or C.accent
	card.iconBox:SetColorTexture(ccor[1], ccor[2], ccor[3], 0.12)
	classIcon(card.icon, class)
	card.name:SetText(UnitName("player") or "")
	card.who:SetText(("%s %s"):format(UnitRace("player") or "", className or ""))
	card.who:SetTextColor(ccor[1], ccor[2], ccor[3], 1)
	card.kind:SetText(st.sofar and ns.L.CARD_SOFAR or ns.L.CARD_LEVELUP)
	card.level:SetText(tostring(L))

	-- selo de ritmo e destaque, centrados como um par
	local boa = NOTA_BOA[st.letter]
	card.paceTxt:SetText(ns.L.CARD_PACE:format(st.letter or ""))
	card.pace:SetWidth((card.paceTxt:GetStringWidth() or 60) + 18)
	card.pace:SetShown(boa and true or false)
	card.highlight:SetText(st.highlight or "")
	if st.hcol then card.highlight:SetTextColor(UI.unpackc(st.hcol)) end
	local wp = boa and card.pace:GetWidth() or 0
	local wh = st.highlight and (card.highlight:GetStringWidth() or 0) or 0
	local total = wp + wh + ((boa and st.highlight) and 8 or 0)
	card.pace:ClearAllPoints(); card.pace:SetPoint("LEFT", card.badges, "CENTER", -total / 2, 0)
	card.highlight:ClearAllPoints()
	card.highlight:SetPoint("LEFT", card.badges, "CENTER", -total / 2 + wp + ((boa and st.highlight) and 8 or 0), 0)

	local function oupraco(v, f) return (v and v ~= 0) and f(v) or "—" end
	local valores = {
		{ st.sofar and ns.L.CARD_TIME_NOW or ns.L.CARD_TIME, fmtDur(st.time) },
		{ ns.L.CARD_XPH, st.xph and fmtNum(st.xph) or "—" },
		{ ns.L.CARD_QUESTS, oupraco(st.quests, tostring) },
		{ ns.L.CARD_GOLD, oupraco(st.gold, fmtGold) },
		{ ns.L.CARD_DEATHS, tostring(st.deaths) },
		{ ns.L.CARD_ZONES, tostring(st.zones) },
	}
	for i, v in ipairs(valores) do
		card.tiles[i].label:SetText(v[1]:upper()); card.tiles[i].value:SetText(v[2])
		card.tiles[i].value:SetTextColor(UI.unpackc(i == 4 and st.gold and st.gold > 0 and C.accentBright or C.active))
	end

	-- compartilhar: só no clique; guilda só para quem está em guilda e não desligou
	local msg = self:ChatLine(L)
	local function copiar()                               -- a janela de copiar ficaria atrás do card
		card:Hide()
		if ns.Share then ns.Share:ShowText(ns.L.CARD_COPYTXT, ns.L.CARD_COPYTXT_H, RC:ShareText(L), false) end
	end
	local guilda = IsInGuild and IsInGuild() and ns.db.cardAskGuild ~= false and true or false
	local grupo = IsInGroup and IsInGroup() and true or false
	card.guild:SetShown(guilda); card.copy:SetShown(not guilda)
	card.party:SetShown(grupo)
	card.party:ClearAllPoints(); card.party:SetPoint("RIGHT", card.more, "LEFT", -6, 0)
	local direita = grupo and card.party or card.more
	for _, b in ipairs({ card.guild, card.copy }) do
		b:ClearAllPoints(); b:SetPoint("LEFT", 14, 0); b:SetPoint("RIGHT", direita, "LEFT", -6, 0)
	end
	card.guild:SetScript("OnClick", function() send(msg, "GUILD"); card.guild:Hide(); card.copy:Show() end)
	card.party:SetScript("OnClick", function()           -- uma vez por card: sem spam
		send(msg, (IsInRaid and IsInRaid()) and "RAID" or "PARTY")
		card.party:Hide()
	end)
	card.copy:SetScript("OnClick", copiar)
	card.more:SetScript("OnClick", function(btn)
		UI.Menu(btn, { { ns.L.CARD_COPYTXT, copiar }, { ns.L.CARD_SHOT, card.tirarPrint } })
	end)
	card.bar:Show()
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
