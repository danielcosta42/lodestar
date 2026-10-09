--=============================================================================
-- Splits — o leveling como speedrun (specs/splits). No topo, o núcleo puro (testado fora
-- do jogo, tools/splits-tests.lua): segmentos, linhas do painel, ouro, formatação. Abaixo,
-- o painel.
--
-- lp = /played no ding de cada nível (RunTracker: run.levelPlayed). Segmento do nível L = o
-- tempo do ding de L-1 ao de L. Comparações congeladas no início da run, como o fantasma:
-- o recorde da classe (Opponent) e os melhores segmentos de então (run.bestAtStart).
--=============================================================================
local ADDON, ns = ...
local SP = {}
ns.Splits = SP

function SP.Clock(s)
	s = math.floor(math.abs(s or 0) + 0.5)
	local d, h, m, sec = math.floor(s / 86400), math.floor(s % 86400 / 3600), math.floor(s % 3600 / 60), s % 60
	if d > 0 then return ("%dd %d:%02d"):format(d, h, m) end
	if h > 0 then return ("%d:%02d:%02d"):format(h, m, sec) end
	return ("%d:%02d"):format(m, sec)
end

function SP.Delta(d) return (d < 0 and "-" or "+") .. SP.Clock(d) end

function SP.Segment(lp, L)
	if lp[L] and lp[L - 1] then return lp[L] - lp[L - 1] end
end

-- ouro: mais rápido que o melhor anterior (sem anterior, nada a bater)
function SP.IsGold(best, seg) return best ~= nil and seg ~= nil and seg < best end

-- Linhas do painel: os 5 últimos níveis feitos, o atual ao vivo (rumo a cur+1) e o seguinte.
-- o = { lp, cmp (lp do recorde), best (melhores segmentos), gold = { [L] = true }, cur, live
-- (/played agora), mode = "pb" | "seg", max }
function SP.Rows(o)
	local rows, max = {}, o.max or 60
	local function delta(L, t, seg)
		if o.mode == "pb" then return t and o.cmp[L] and t - o.cmp[L] or nil end
		return seg and o.best[L] and seg - o.best[L] or nil
	end
	for L = math.max(2, o.cur - 4), o.cur do
		local t, seg = o.lp[L], SP.Segment(o.lp, L)
		rows[#rows + 1] = { level = L, t = t, seg = seg, delta = delta(L, t, seg), gold = o.gold and o.gold[L] }
	end
	if o.cur < max then
		local L = o.cur + 1
		local seg = o.lp[o.cur] and o.live - o.lp[o.cur] or nil
		rows[#rows + 1] = { level = L, t = o.live, seg = seg, delta = delta(L, o.live, seg), live = true }
		if L < max then
			rows[#rows + 1] = { level = L + 1, t = o.mode == "pb" and o.cmp[L + 1] or nil, future = true }
		end
	end
	return rows
end

if not ns.On then return end

--------------------------------------------------------------------------------
-- no jogo: melhores segmentos no ding, e o painel
--------------------------------------------------------------------------------
local UI = ns.UI
local W, ROW_H, MAX_ROWS = 236, 18, 7
local VERMELHO = { 0.90, 0.36, 0.30, 1 }
local frame

local function classe() return select(2, UnitClass("player")) or "WARRIOR" end

-- os melhores segmentos da classe (todas as runs) e o retrato deles no início desta run
local function melhores()
	ns.db.bestSeg = ns.db.bestSeg or {}
	ns.db.bestSeg[classe()] = ns.db.bestSeg[classe()] or {}
	return ns.db.bestSeg[classe()]
end

ns:On("_LEVEL_PLAYED", function(_, L)
	local run = ns.RunTracker.Run()
	local bs = melhores()
	run.bestAtStart = run.bestAtStart or CopyTable(bs)
	local seg = SP.Segment(run.levelPlayed, L)
	if not seg then return end
	if SP.IsGold(run.bestAtStart[L], seg) then
		run.gold = run.gold or {}
		run.gold[L] = true
	end
	if not bs[L] or seg < bs[L] then bs[L] = seg end
	SP:Update()
end)

-- comparação em uso: o recorde da classe (se há) ou os melhores segmentos
local function comparacao()
	local opp = ns.RunTracker:Opponent()
	if ns.db.splits.cmp ~= "seg" and opp and opp.levelPlayed then return "pb", opp end
	return "seg"
end

local function makeRow(parent)
	local C = UI.COL
	local r = CreateFrame("Frame", nil, parent)
	r:SetHeight(ROW_H)
	r.bg = UI.Rect(r, "BACKGROUND", { C.accent[1], C.accent[2], C.accent[3], 0.12 }); r.bg:SetAllPoints()
	r.lv = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.lv, 12, { num = true, color = C.muted })
	r.lv:SetPoint("LEFT", 8, 0)
	r.t = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.t, 12, { num = true, color = C.active })
	r.t:SetPoint("RIGHT", -78, 0)
	r.delta = r:CreateFontString(nil, "OVERLAY"); UI.SetFont(r.delta, 12, { num = true, color = C.active })
	r.delta:SetPoint("RIGHT", -8, 0)
	return r
end

local function pinta(r, d)
	local C, L = UI.COL, ns.L
	r.gold, r.live = d.gold, d.live
	r.lv:SetText(L.SPLITS_LV:format(d.level))
	r.t:SetText(d.t and SP.Clock(d.t) or "—")
	r.t:SetTextColor(UI.unpackc(d.future and C.dim or d.live and C.accent or C.active))
	r.delta:SetText(d.delta and SP.Delta(d.delta) or "")
	local cor = d.gold and C.accentBright or (d.delta and d.delta < 0 and C.done) or VERMELHO
	r.delta:SetTextColor(UI.unpackc(cor))
	r.bg:SetShown(d.live or false)
	r:Show()
end

function SP:Update()
	if not frame then return end
	local ligado = ns.db.splits.enabled
	frame:SetShown(ligado)
	if not ligado then return end
	local L, RT = ns.L, ns.RunTracker
	local run = RT.Run()
	local modo, opp = comparacao()
	local live = RT:LivePlayed()
	local rows = SP.Rows({ lp = run.levelPlayed, cmp = opp and opp.levelPlayed or {}, best = run.bestAtStart or melhores(),
		gold = run.gold, cur = UnitLevel("player") or 1, live = live, mode = modo, max = ns.Client and ns.Client.maxLevel })
	for i = 1, MAX_ROWS do
		local r = frame.rows[i]
		if rows[i] then pinta(r, rows[i]) else r:Hide() end
	end
	frame.vs:SetText(modo == "pb" and L.SPLITS_VS_PB:format(opp.name or "?") or L.SPLITS_VS_SEG)
	local cur = UnitLevel("player") or 1
	local noNivel = run.levelPlayed[cur] and live - run.levelPlayed[cur]
		or (run.levelStart and live - run.levelStart) or nil
	frame.clock:SetText(noNivel and L.SPLITS_ON_LEVEL:format(SP.Clock(noNivel)) or "")
end

local function build()
	if frame then return frame end
	local C, L = UI.COL, ns.L
	frame = UI.Panel(UIParent, { name = "LodestarSplits" })
	frame:SetSize(W, 30 + MAX_ROWS * ROW_H + 26)
	frame:SetScale(ns.db.splits.scale or 1)
	local pos = ns.db.splits.pos
	if pos then frame:SetPoint(pos.point, UIParent, pos.point, pos.x, pos.y) else frame:SetPoint("RIGHT", -260, 80) end
	frame:SetMovable(true); frame:EnableMouse(true); frame:RegisterForDrag("LeftButton"); frame:SetClampedToScreen(true)
	frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local pt, _, _, x, y = self:GetPoint()
		ns.db.splits.pos = { point = pt, x = x, y = y }
	end)

	-- cabeçalho: clique troca a comparação
	frame.head = CreateFrame("Button", nil, frame)
	frame.head:SetPoint("TOPLEFT", 1, -1); frame.head:SetPoint("TOPRIGHT", -1, -1); frame.head:SetHeight(26)
	local bar = UI.Rect(frame.head, "ARTWORK", C.accent)
	bar:SetPoint("TOPLEFT"); bar:SetPoint("TOPRIGHT"); bar:SetHeight(2)
	local title = frame.head:CreateFontString(nil, "OVERLAY")
	UI.SetFont(title, 12, { title = true, color = C.accent })
	title:SetPoint("LEFT", 8, -1); title:SetText(L.SPLITS_TITLE)
	frame.vs = frame.head:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.vs, 10.5, { color = C.muted })
	frame.vs:SetPoint("RIGHT", -8, -1)
	frame.head:SetScript("OnClick", function()
		ns.db.splits.cmp = ns.db.splits.cmp == "seg" and "pb" or "seg"
		SP:Update()
	end)
	frame.head:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP"); GameTooltip:AddLine(L.SPLITS_TIP, 1, 1, 1, true); GameTooltip:Show()
	end)
	frame.head:SetScript("OnLeave", function() GameTooltip:Hide() end)
	frame.head:RegisterForDrag("LeftButton")
	frame.head:SetScript("OnDragStart", function() frame:StartMoving() end)
	frame.head:SetScript("OnDragStop", frame:GetScript("OnDragStop"))

	frame.rows = {}
	for i = 1, MAX_ROWS do
		local r = makeRow(frame)
		r:SetPoint("TOPLEFT", 1, -28 - (i - 1) * ROW_H); r:SetPoint("TOPRIGHT", -1, -28 - (i - 1) * ROW_H)
		frame.rows[i] = r
	end
	frame.clock = frame:CreateFontString(nil, "OVERLAY")
	UI.SetFont(frame.clock, 11, { num = true, color = C.muted })
	frame.clock:SetPoint("BOTTOMLEFT", 9, 8)
	return frame
end

function SP:Toggle()
	ns.db.splits.enabled = not ns.db.splits.enabled
	build()
	SP:Update()
end

function SP:ApplyScale()
	if frame then frame:SetScale(ns.db.splits.scale or 1) end
end

ns:On("PLAYER_ENTERING_WORLD", function()
	if ns.db.splits.enabled then build(); SP:Update() end
end)
ns:Every(1, function() if frame and frame:IsShown() then SP:Update() end end)
