--=============================================================================
-- Characters — os personagens da conta na Central (issue #92): classe, nível, profissões, ouro, onde e quando foi a
-- última vez. Os dados são os que o Legado já guarda (ns.db.alts, só no SavedVariables, nunca saem daqui).
-- No topo, o núcleo puro (ordem e total, testados fora do jogo). Abaixo, a página.
--=============================================================================
local ADDON, ns = ...
local CH = {}
ns.Characters = CH

-- alts = { [nome-reino] = { class, level, money, t } } -> lista ordenada (nível, depois o mais recente) e o ouro total
function CH.Sorted(alts)
	local list, gold = {}, 0
	for key, a in pairs(alts or {}) do
		list[#list + 1] = { key = key, name = key:match("^([^%-]+)") or key, a = a }
		gold = gold + (tonumber(a.money) or 0)
	end
	table.sort(list, function(x, y)
		if (x.a.level or 0) ~= (y.a.level or 0) then return (x.a.level or 0) > (y.a.level or 0) end
		if (x.a.t or 0) ~= (y.a.t or 0) then return (x.a.t or 0) > (y.a.t or 0) end
		return x.key < y.key
	end)
	return list, gold
end

-- "há 3 dias", "há 2 h", "agora" (L = textos)
function CH.Ago(t, now, L)
	if not t then return "" end
	local s = math.max(0, (now or 0) - t)
	if s < 120 then return L and L.CH_NOW or "now" end
	if s < 7200 then return (L and L.CH_MIN or "%d min ago"):format(math.floor(s / 60)) end
	if s < 172800 then return (L and L.CH_HOURS or "%d h ago"):format(math.floor(s / 3600)) end
	return (L and L.CH_DAYS or "%d days ago"):format(math.floor(s / 86400))
end

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI
local unpackc = UI.unpackc

local PAGE = { label = ns.L.CH_PAGE, glyph = "treinador", order = 8 }

local function row(parent)
	local C = UI.COL
	local r = CreateFrame("Frame", nil, parent)
	r:SetHeight(52)
	r.bg = UI.Card(r, { color = C.card }); r.bg:SetAllPoints(); r.bg:SetFrameLevel(r:GetFrameLevel())
	r.lvl = UI.Text(r, 22, C.active, { num = true, justify = "CENTER" }); r.lvl:SetPoint("LEFT", 12, 0); r.lvl:SetWidth(40)
	r.name = UI.Text(r, 14, C.active, { bold = true, wrap = false }); r.name:SetPoint("TOPLEFT", 62, -9)
	r.name:SetPoint("RIGHT", r, "RIGHT", -190, 0)
	r.sub = UI.Text(r, 11.5, C.dim, { num = true, wrap = false }); r.sub:SetPoint("TOPLEFT", r.name, "BOTTOMLEFT", 0, -3)
	r.sub:SetPoint("RIGHT", r, "RIGHT", -190, 0)
	r.money = UI.Text(r, 12.5, C.muted, { num = true, justify = "RIGHT" }); r.money:SetPoint("TOPRIGHT", -14, -10)
	r.when = UI.Text(r, 11.5, C.dim, { num = true, justify = "RIGHT" }); r.when:SetPoint("TOPRIGHT", r.money, "BOTTOMRIGHT", 0, -4)
	r.me = UI.Badge(r, ns.L.CH_YOU, "gold"); r.me:SetPoint("RIGHT", r.money, "LEFT", -12, 0); r.me:Hide()
	return r
end

PAGE.build = function(page, H)
	H.PageTitle(page, ns.L.CH_PAGE)
	page.scroll, page.list = UI.Scroll(page)
	page.scroll:SetPoint("TOPLEFT", 0, -52); page.scroll:SetPoint("BOTTOMRIGHT", -8, 0)
	page.rows = {}
end

PAGE.refresh = function(page)
	local L = ns.L
	if ns.Legacy and ns.Legacy.SaveMe then ns.Legacy.SaveMe() end
	local list, gold = CH.Sorted(ns.db.alts)
	page.subFS:SetText(L.CH_SUB:format(#list, ns.CoinText(gold)))
	local me = (UnitName("player") or "") .. "-" .. (GetRealmName and GetRealmName() or "")
	for _, r in ipairs(page.rows) do r:Hide() end
	local y = 0
	for i, it in ipairs(list) do
		local r = page.rows[i] or row(page.list); page.rows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.list, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.list, "RIGHT", -6, 0)
		local a = it.a
		local cc = RAID_CLASS_COLORS and a.class and RAID_CLASS_COLORS[a.class]
		r.lvl:SetText(tostring(a.level or "?"))
		r.name:SetText(it.name)
		if cc and UI.dark then r.name:SetTextColor(cc.r, cc.g, cc.b) else r.name:SetTextColor(unpackc(UI.COL.active)) end
		local profs = {}
		for p, rank in pairs(a.profs or {}) do profs[#profs + 1] = ("%s %d"):format(p, rank) end
		table.sort(profs)
		local cls = a.class and (LOCALIZED_CLASS_NAMES_MALE and LOCALIZED_CLASS_NAMES_MALE[a.class] or a.class) or "?"
		r.sub:SetText(cls .. (a.zone and (" · " .. a.zone) or "") .. (#profs > 0 and (" · " .. table.concat(profs, ", ")) or ""))
		r.money:SetText(a.money and ns.CoinText(a.money) or "")
		r.when:SetText(CH.Ago(a.t, time(), L))
		r.me:SetShown(it.key == me)
		r:Show()
		y = y + 58
	end
	page.list:SetHeight(math.max(1, y)); page.scroll.Sync()
end

if ns.Hub then ns.Hub:RegisterPage("characters", PAGE) end
