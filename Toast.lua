--=============================================================================
-- Toast — popups informativos (aceitou/concluiu quest, subiu de nível, guia).
-- Slide + fade, fila, empilhamento. Visual clean coerente com o kit.
--=============================================================================
local ADDON, ns = ...
local T = {}
ns.Toast = T
local UI = ns.UI

local MAX_ACTIVE = 3
local IN_DUR, OUT_DUR = 0.28, 0.45
local HOLD_DUR = 4.0

local container, pool, active, queue = nil, {}, {}, {}

local function ensureContainer()
	if container then return container end
	container = CreateFrame("Frame", "LodestarToasts", UIParent)
	container:SetSize(280, 10)
	local p = ns.db.toast or {}
	container:SetPoint(p.point or "TOP", UIParent, p.point or "TOP", p.x or 0, p.y or -160)
	container:SetFrameStrata("HIGH")
	return container
end

local function makeToast()
	local C = UI.COL
	local f = UI.Panel(ensureContainer(), { color = { 0.10, 0.11, 0.13, 0.96 },
		accentStripe = true })
	f:SetSize(280, 48)
	f:SetFrameStrata("HIGH")

	local glyph = UI.Media(f, "dot", "OVERLAY"); glyph:SetSize(12, 12)
	glyph:SetPoint("LEFT", 14, 0)
	f.glyph = glyph

	f.title = f:CreateFontString(nil, "OVERLAY")
	UI.SetFont(f.title, 13, { color = C.active })
	f.title:SetPoint("TOPLEFT", glyph, "TOPRIGHT", 10, 2)
	f.title:SetPoint("RIGHT", -10, 0)
	f.title:SetJustifyH("LEFT"); f.title:SetWordWrap(false)

	f.sub = f:CreateFontString(nil, "OVERLAY")
	UI.SetFont(f.sub, 11, { color = C.muted })
	f.sub:SetPoint("TOPLEFT", f.title, "BOTTOMLEFT", 0, -2)
	f.sub:SetPoint("RIGHT", -10, 0)
	f.sub:SetJustifyH("LEFT"); f.sub:SetWordWrap(false)
	return f
end

local function acquire()
	local f = table.remove(pool) or makeToast()
	return f
end

local function restack()
	local y = 0
	for i, f in ipairs(active) do
		f:ClearAllPoints()
		f:SetPoint("TOP", container, "TOP", 0, -y + (f._slide or 0))
		y = y + f:GetHeight() + 8
	end
end

-- driver de animação
local driver = CreateFrame("Frame")
driver:Hide()
driver:SetScript("OnUpdate", function(_, elapsed)
	for i = #active, 1, -1 do
		local f = active[i]
		f._t = (f._t or 0) + elapsed
		if f._state == "in" then
			local k = math.min(1, f._t / IN_DUR)
			f:SetAlpha(k)
			f._slide = (1 - k) * 12
			if k >= 1 then f._state, f._t = "hold", 0 end
		elseif f._state == "hold" then
			f._slide = 0
			if f._t >= (f._hold or HOLD_DUR) then f._state, f._t = "out", 0 end
		elseif f._state == "out" then
			local k = math.min(1, f._t / OUT_DUR)
			f:SetAlpha(1 - k)
			f._slide = -k * 8
			if k >= 1 then
				f:Hide()
				table.remove(active, i)
				pool[#pool + 1] = f
			end
		end
	end
	restack()
	-- puxa da fila se houver espaço
	while #active < MAX_ACTIVE and #queue > 0 do
		T:_spawn(table.remove(queue, 1))
	end
	if #active == 0 and #queue == 0 then driver:Hide() end
end)

function T:_spawn(data)
	local C = UI.COL
	local f = acquire()
	local col = data.color or C.accent
	f.stripe:SetColorTexture(UI.unpackc(col))
	f.glyph:SetTexture(UI.GLYPH .. (data.glyph or "losango") .. "-64")
	f.glyph:SetVertexColor(UI.unpackc(col))
	f.title:SetTextColor(UI.unpackc(col))
	f.title:SetText(data.title or "")
	f.sub:SetText(data.text or "")
	f._state, f._t, f._slide = "in", 0, 12
	f._hold = data.hold or HOLD_DUR
	f:SetAlpha(0); f:Show()
	active[#active + 1] = f
	driver:Show()
end

-- API pública
function T:Show(data)
	if not (ns.db and ns.db.toastsEnabled ~= false) then return end
	ensureContainer()
	if #active < MAX_ACTIVE then self:_spawn(data) else queue[#queue + 1] = data end
end

--------------------------------------------------------------------------------
-- Wiring de eventos
--------------------------------------------------------------------------------
local function questName(id)
	if C_QuestLog and C_QuestLog.GetTitleForQuestID then
		local n = C_QuestLog.GetTitleForQuestID(id)
		if n then return n end
	end
	if QuestUtils_GetQuestName then
		local n = QuestUtils_GetQuestName(id)
		if n and n ~= "" then return n end
	end
	return ns.L.QUEST_FALLBACK:format(tostring(id))
end

ns:On("QUEST_ACCEPTED", function(_, a, b)
	-- assinatura varia entre versões: (logIndex, questID) ou (questID)
	local qid = b or a
	T:Show({ title = ns.L.QUEST_ACCEPTED, text = questName(qid), color = UI.COL.accent, glyph = "bandeira" })
end)

ns:On("QUEST_TURNED_IN", function(_, qid)
	T:Show({ title = ns.L.QUEST_DONE, text = questName(qid), color = UI.COL.done, glyph = "check" })
end)

ns:On("PLAYER_LEVEL_UP", function(_, level)
	T:Show({ title = ns.L.LEVEL_UP:format(level or "?"),
		text = ns.L.LEVEL_UP_SUB, color = UI.COL.accent, hold = 5, glyph = "estrela" })
end)

ns:On("_GUIDE_LOADED", function(_, guide, silent)
	if not guide or silent then return end
	local name = guide.key:match("[^/]+$") or guide.key
	T:Show({ title = ns.L.GUIDE_LOADED, text = name, color = UI.COL.tip, glyph = "livro" })
end)
