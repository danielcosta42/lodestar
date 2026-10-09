--=============================================================================
-- RacePanel — o painel da corrida (specs/corrida): Guilda / Realm, Mais alto / Mais rápido
-- (com o marco escolhido), a minha linha sempre visível e destacada, e o convite à guilda
-- (sempre na aba Guilda; o texto do vazio chama para ele). Os dados vêm de ns.Race:Rows.
--=============================================================================
local ADDON, ns = ...
local RP = {}
ns.RacePanel = RP
local UI, R = ns.UI, ns.Race

local W, H, HEAD_H, ROW_H, MAX_ROWS = 420, 470, 44, 24, 12
local MS = ns.RACE_MILESTONES
local frame
local scope, kind, msIdx = "guild", "alto", nil

-- o marco mais avançado (de nível) que eu já bati; sem nenhum, o primeiro
local function marcoPadrao()
	local mine = R.MyRecord().ms
	local idx = 1
	for i, m in ipairs(MS) do if m.kind == "level" and mine[m.id] then idx = i end end
	return idx
end

local function corClasse(class)
	local c = RAID_CLASS_COLORS and RAID_CLASS_COLORS[class or ""]
	if c then return c.r, c.g, c.b end
	return UI.unpackc(UI.COL.active)
end

local function tooltip(row)
	local d = row._data
	if not d then return end
	local L = ns.L
	GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
	GameTooltip:SetText(d.name, corClasse(d.class))
	GameTooltip:AddLine(L.RACE_TIP_LEVEL:format(d.level or 0, d.xp or 0), 1, 1, 1)
	if d.played then GameTooltip:AddLine(L.RACE_TIP_PLAYED:format(R.Dur(d.played)), 0.8, 0.8, 0.8) end
	local peer = ns.Squad and ns.Squad.Peer and ns.Squad:Peer(d.name)
	if peer and peer.guide then
		GameTooltip:AddLine(L.RACE_TIP_GUIDE:format(peer.guide, peer.step or ""), 0.5, 0.7, 0.9)
	end
	GameTooltip:Show()
end

local function makeRow(parent)
	local C = UI.COL
	local r = CreateFrame("Button", nil, parent)
	r:SetHeight(ROW_H)
	r:SetPoint("LEFT", 12, 0); r:SetPoint("RIGHT", -12, 0)
	r.mine = UI.Rect(r, "BACKGROUND", { C.accent[1], C.accent[2], C.accent[3], 0.10 }); r.mine:SetAllPoints()
	local bar = UI.Rect(r, "ARTWORK", C.accent); bar:SetPoint("TOPLEFT", r.mine); bar:SetPoint("BOTTOMLEFT", r.mine)
	bar:SetWidth(2); r.mineBar = bar
	r.pos = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.pos, 12, { num = true, color = C.muted })
	r.pos:SetPoint("LEFT", 6, 0); r.pos:SetWidth(26); r.pos:SetJustifyH("RIGHT")
	r.name = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.name, 13, { color = C.active })
	r.name:SetPoint("LEFT", r.pos, "RIGHT", 10, 0)
	r.value = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.value, 12, { num = true, color = C.active })
	r.value:SetPoint("RIGHT", -8, 0); r.value:SetJustifyH("RIGHT")
	r.dot = UI.Media(r, "dot", "OVERLAY"); r.dot:SetSize(7, 7); r.dot:SetPoint("LEFT", r.name, "RIGHT", 6, 0)
	r.dot:SetVertexColor(UI.unpackc(C.done))
	r.seen = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.seen, 10.5, { color = C.dim })
	r.seen:SetPoint("LEFT", r.name, "RIGHT", 6, 0)
	r:SetScript("OnEnter", tooltip)
	r:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return r
end

local function fillRow(r, d, pos, now)
	local L = ns.L
	r._data = d
	r.pos:SetText(pos)
	r.name:SetText(d.name); r.name:SetTextColor(corClasse(d.class))
	if kind == "alto" then r.value:SetText(L.RACE_VAL_LEVEL:format(d.level or 0, d.xp or 0))
	else r.value:SetText(R.Dur(d.val)) end
	r.mine:SetShown(d.me); r.mineBar:SetShown(d.me)
	r.dot:SetShown(d.online and not d.me or false)
	-- fora do ar: há quanto tempo anunciou; repassado: veio pela rede, não do dono
	local longe = not d.me and not d.online
	r.seen:SetShown(longe)
	if longe then r.seen:SetText(d.own and d.seen and L.RACE_SEEN:format(R.Dur(now - d.seen)) or L.RACE_RELAYED) end
	r:Show()
end

function RP:Refresh()
	if not (frame and frame:IsShown()) then return end
	local L = ns.L
	for k, t in pairs(frame.scopeTabs) do t:SetActive(k == scope) end
	frame.kindTabs.high:SetActive(kind == "alto"); frame.kindTabs.fast:SetActive(kind ~= "alto")
	local rapido = kind ~= "alto"
	frame.msBar:SetShown(rapido)
	if rapido then frame.msLabel:SetText(R.Label(L, MS[msIdx])) end
	frame.list:SetPoint("TOPLEFT", 0, rapido and -(HEAD_H + 74) or -(HEAD_H + 44))

	local semGuilda = scope == "guild" and not (IsInGuild and IsInGuild())
	local rows = semGuilda and {} or R:Rows(scope, kind)
	local mostrar = {}
	for i = 1, math.min(#rows, MAX_ROWS) do mostrar[i] = i end
	local eu = R.Position(rows, ns.PlayerName())
	if eu and eu > MAX_ROWS then mostrar[MAX_ROWS] = eu end            -- eu sempre à vista
	local now = time()
	for i, idx in ipairs(mostrar) do
		local r = frame.rows[i]
		r:ClearAllPoints()
		r:SetPoint("TOPLEFT", frame.list, "TOPLEFT", 12, -(i - 1) * ROW_H)
		r:SetPoint("TOPRIGHT", frame.list, "TOPRIGHT", -12, -(i - 1) * ROW_H)
		fillRow(r, rows[idx], idx, now)
	end
	for i = #mostrar + 1, MAX_ROWS do frame.rows[i]:Hide() end

	local sozinho = #rows <= 1
	frame.empty:SetShown(semGuilda or sozinho)
	frame.empty:SetText(semGuilda and L.RACE_NOGUILD or (rapido and L.RACE_EMPTY_FAST)
		or (scope == "guild" and L.RACE_EMPTY) or L.RACE_EMPTY_REALM)
	frame.invite:SetShown(scope == "guild" and not semGuilda)
	frame.count:SetText(L.RACE_COUNT:format(#rows))
end

local function build()
	if frame then return frame end
	local C, L = UI.COL, ns.L
	frame = UI.Panel(UIParent, { name = "LodestarRace" })
	frame:SetSize(W, H); frame:SetPoint("CENTER")
	frame:SetFrameStrata("DIALOG"); frame:SetToplevel(true)
	frame:SetMovable(true); frame:EnableMouse(true); frame:SetClampedToScreen(true)
	UI.CornerFlourish(frame)

	local header = UI.Panel(frame, { color = C.header, border = false })
	header:SetPoint("TOPLEFT", 1, -1); header:SetPoint("TOPRIGHT", -1, -1); header:SetHeight(HEAD_H)
	header:EnableMouse(true); header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
	local line = UI.Rect(header, "ARTWORK", C.accent)
	line:SetPoint("TOPLEFT"); line:SetPoint("TOPRIGHT"); line:SetHeight(2)
	local icon = UI.Glyph(header, "estrela", "ARTWORK", 64); icon:SetSize(18, 18); icon:SetPoint("LEFT", 14, 0)
	icon:SetVertexColor(UI.unpackc(C.accent))
	local title = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 15, { title = true, color = C.active })
	title:SetPoint("LEFT", icon, "RIGHT", 8, 5); title:SetText(L.RACE_TITLE)
	local sub = header:CreateFontString(nil, "OVERLAY")
	UI.SetFont(sub, 10, { color = C.muted })
	sub:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -2); sub:SetText(L.RACE_SUB)
	local close = UI.CloseButton(header, function() frame:Hide() end); close:SetPoint("RIGHT", -8, 0)

	-- abas: escopo à esquerda, tipo de placar à direita
	frame.scopeTabs = {
		guild = UI.Tab(frame, L.RACE_TAB_GUILD, function() scope = "guild"; RP:Refresh() end),
		realm = UI.Tab(frame, L.RACE_TAB_REALM, function() scope = "realm"; RP:Refresh() end),
	}
	frame.scopeTabs.guild:SetPoint("TOPLEFT", 12, -(HEAD_H + 8))
	frame.scopeTabs.realm:SetPoint("LEFT", frame.scopeTabs.guild, "RIGHT", 2, 0)
	frame.kindTabs = {
		high = UI.Tab(frame, L.RACE_TAB_HIGH, function() kind = "alto"; RP:Refresh() end),
		fast = UI.Tab(frame, L.RACE_TAB_FAST, function()
			msIdx = msIdx or marcoPadrao()
			kind = MS[msIdx].id
			RP:Refresh()
		end),
	}
	frame.kindTabs.fast:SetPoint("TOPRIGHT", -12, -(HEAD_H + 8))
	frame.kindTabs.high:SetPoint("RIGHT", frame.kindTabs.fast, "LEFT", -2, 0)
	local sep = UI.Rect(frame, "ARTWORK", { 1, 1, 1, 0.06 })
	sep:SetPoint("TOPLEFT", 12, -(HEAD_H + 36)); sep:SetPoint("TOPRIGHT", -12, -(HEAD_H + 36)); sep:SetHeight(1)

	-- seletor de marco (só no Mais rápido)
	local bar = CreateFrame("Frame", nil, frame)
	bar:SetPoint("TOPLEFT", 12, -(HEAD_H + 42)); bar:SetPoint("TOPRIGHT", -12, -(HEAD_H + 42)); bar:SetHeight(26)
	frame.msBar = bar
	local function passo(d)
		return function()
			msIdx = (msIdx - 1 + d) % #MS + 1
			kind = MS[msIdx].id
			RP:Refresh()
		end
	end
	frame.msPrev = UI.Button(bar, "‹", 26, 22); frame.msPrev:SetPoint("LEFT")
	frame.msPrev:SetScript("OnClick", passo(-1))
	frame.msNext = UI.Button(bar, "›", 26, 22); frame.msNext:SetPoint("RIGHT")
	frame.msNext:SetScript("OnClick", passo(1))
	frame.msLabel = bar:CreateFontString(nil, "OVERLAY"); UI.SetFont(frame.msLabel, 13, { color = C.accent })
	frame.msLabel:SetPoint("CENTER")

	frame.list = CreateFrame("Frame", nil, frame)
	frame.list:SetPoint("TOPLEFT", 0, -(HEAD_H + 44)); frame.list:SetPoint("BOTTOMRIGHT", 0, 48)
	frame.rows = {}
	for i = 1, MAX_ROWS do frame.rows[i] = makeRow(frame.list) end

	frame.empty = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.empty, 12, { color = C.muted })
	frame.empty:SetPoint("TOP", frame.list, "TOP", 0, -(ROW_H + 24)); frame.empty:SetWidth(W - 80)
	frame.empty:SetJustifyH("CENTER")

	-- rodapé: quantos no placar e o convite à guilda
	local foot = UI.Rect(frame, "ARTWORK", { 1, 1, 1, 0.06 })
	foot:SetPoint("BOTTOMLEFT", 12, 44); foot:SetPoint("BOTTOMRIGHT", -12, 44); foot:SetHeight(1)
	frame.count = frame:CreateFontString(nil, "OVERLAY"); UI.SetFont(frame.count, 11, { color = C.muted })
	frame.count:SetPoint("BOTTOMLEFT", 16, 18)
	frame.invite = UI.Button(frame, L.RACE_INVITE, 150, 26); frame.invite:SetPoint("BOTTOMRIGHT", -12, 12)
	frame.invite:SetScript("OnClick", function() if not R:Invite() then ns:Print(L.RACE_INVITE_WAIT) end end)

	frame:SetScript("OnShow", function() RP:Refresh() end)
	R.OnChange = function() RP:Refresh() end
	return frame
end

function RP:Show() build(); frame:Show(); RP:Refresh() end
function RP:Toggle()
	build()
	if frame:IsShown() then frame:Hide() else RP:Show() end
end
