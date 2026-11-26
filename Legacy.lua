--=============================================================================
-- Legacy — o Legado do Lodestar 3 (specs/lodestar-3). O Forever tem os desafios do Legado como conquistas (as
-- categorias sob a raiz das LEGACY_DEFAULT_CATEGORY_*), um ponto de conta por desafio. Aqui: os pontos, cada grupo
-- de desafios com o feito/total, a grade das classes 25/45/60 com o seu personagem mais alto de cada uma, e o que
-- está mais perto, com o guia que leva lá. Os personagens da conta: ns.db.alts (só local, nunca sai daqui).
--
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo e a página da Central.
--=============================================================================
local ADDON, ns = ...
local LG = {}
ns.Legacy = LG

-- Quanto falta de uma conquista, pelos critérios: { {have, need, done}* } -> fração 0..1 (sem critério: 0).
function LG.Progress(criteria)
	local have, need = 0, 0
	for _, c in ipairs(criteria or {}) do
		local n = math.max(1, tonumber(c.need) or 1)
		local h = c.done and n or math.max(0, math.min(n, tonumber(c.have) or 0))
		have, need = have + h, need + n
	end
	return need > 0 and have / need or 0
end

-- O nível que pede um desafio de classe pelo nome ("... level 25", "nível 45"): o maior número entre 10 e 60.
function LG.LevelOf(name)
	local best
	for n in (name or ""):gmatch("%d+") do
		local v = tonumber(n)
		if v and v >= 10 and v <= 60 and (not best or v > best) then best = v end
	end
	return best
end

-- O mais perto: as não feitas, pela fração de progresso (maior primeiro), até `n`.
function LG.Closest(list, n)
	local open = {}
	for _, a in ipairs(list or {}) do if not a.completed then open[#open + 1] = a end end
	table.sort(open, function(a, b)
		if (a.progress or 0) ~= (b.progress or 0) then return (a.progress or 0) > (b.progress or 0) end
		return (a.name or "") < (b.name or "")
	end)
	local out = {}
	for i = 1, math.min(n or 4, #open) do out[i] = open[i] end
	return out
end

-- O personagem mais alto de cada classe entre os da conta: alts = { [chave] = { class, level } }.
function LG.BestByClass(alts)
	local out = {}
	for _, a in pairs(alts or {}) do
		if a.class and (not out[a.class] or (a.level or 0) > out[a.class]) then out[a.class] = a.level or 0 end
	end
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI

local CONST = Constants and Constants.LegacyConsts or {}
local CLASSES = { "WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "SHAMAN", "MAGE", "WARLOCK", "DRUID" }
local CLASS_CAT = {}
for _, c in ipairs(CLASSES) do CLASS_CAT[c] = CONST["LEGACY_DEFAULT_CATEGORY_" .. c] end

-- os personagens da conta (classe, nível, profissões); a chave é nome-reino e fica só no SavedVariables
local function saveMe()
	if not (ns.db and UnitName) then return end
	local name, realm = UnitName("player"), GetRealmName and GetRealmName() or ""
	if not name or ns.IsSecret(name) then return end
	local profs = {}
	for i = 1, ns.NumSkillLines() or 0 do
		local info = ns.SkillLine(i)
		if info and not info.isHeader and info.isAbandonable and info.name and info.rank then
			profs[info.name] = info.rank
		end
	end
	ns.db.alts[name .. "-" .. realm] = { class = select(2, UnitClass("player")), level = UnitLevel("player"),
		profs = profs, t = time(), money = GetMoney and GetMoney() or nil,
		zone = GetZoneText and GetZoneText() or nil, faction = UnitFactionGroup("player") }
end
ns:On("PLAYER_LOGIN", function() C_Timer.After(5, saveMe) end)
ns:On("PLAYER_LEVEL_UP", function() C_Timer.After(1, saveMe) end)
ns:On("SKILL_LINES_CHANGED", function() C_Timer.After(1, saveMe) end)
ns:On("PLAYER_MONEY", function() C_Timer.After(2, saveMe) end)
ns:On("PLAYER_LOGOUT", saveMe)
LG.SaveMe = saveMe

function LG:Available()
	return GetCategoryList and GetCategoryInfo and GetCategoryNumAchievements and GetAchievementInfo and true or false
end

-- O ancestral de topo (pai -1) de uma categoria: o grupo, como a janela de Legado do jogo monta a árvore.
local function topOf(cat)
	local guard, cur = 0, cat
	while cur and guard < 10 do
		local _, parent = GetCategoryInfo(cur)
		if not parent or parent == -1 or parent == 0 then return cur end
		cur, guard = parent, guard + 1
	end
	return cur
end

-- { groups = { { id, name, list = { {id, name, completed, progress, cat, class, level}* } }* }, done, total }
-- Toda categoria de GetCategoryList com desafio entra (é o que Blizzard_LegacyChallenges faz neste cliente).
function LG:Read()
	if not LG:Available() then return nil end
	local catClass = {}
	for c, id in pairs(CLASS_CAT) do if id then catClass[id] = c end end
	local groups, byId = {}, {}
	local done, total = 0, 0
	for _, cat in ipairs(GetCategoryList() or {}) do
		local n = (GetCategoryNumAchievements(cat, true)) or 0
		if n > 0 then
			local gid = topOf(cat)
			local g = byId[gid]
			if not g then
				g = { id = gid, name = (GetCategoryInfo(gid)), list = {} }
				byId[gid] = g; groups[#groups + 1] = g
			end
			local class = catClass[cat]
			for i = 1, n do
				local id, name, _, completed = GetAchievementInfo(cat, i)
				if id then
					local crit = {}
					for j = 1, (GetAchievementNumCriteria and GetAchievementNumCriteria(id)) or 0 do
						local _, _, cdone, have, need = GetAchievementCriteriaInfo(id, j)
						crit[#crit + 1] = { have = have, need = need, done = cdone }
					end
					local a = { id = id, name = name, completed = completed and true or false, cat = cat, class = class,
						level = class and LG.LevelOf(name), progress = LG.Progress(crit) }
					g.list[#g.list + 1] = a
					total = total + 1
					if a.completed then done = done + 1 end
				end
			end
		end
	end
	-- desafio de classe sem critério: o progresso é o nível do seu personagem mais alto da classe
	local best = LG.BestByClass(ns.db.alts)
	for _, g in ipairs(groups) do
		for _, a in ipairs(g.list) do
			if a.class and a.level and not a.completed and (a.progress or 0) == 0 then
				a.progress = math.min(0.99, (best[a.class] or 0) / a.level)
			end
		end
	end
	return { groups = groups, done = done, total = total }
end

function LG:Points()
	local MF = C_MajorFactions
	if MF and MF.GetCurrentRenownLevel and CONST.LEGACY_REWARD_TRACK_FACTION_ID then
		local ok, n = pcall(MF.GetCurrentRenownLevel, CONST.LEGACY_REWARD_TRACK_FACTION_ID)
		if ok and tonumber(n) then return n end
	end
end

function LG:OpenGame(achievementID)
	if C_AddOns and C_AddOns.LoadAddOn then pcall(C_AddOns.LoadAddOn, "Blizzard_LegacySystem") end
	local f = _G.LegacySystemFrame
	if not f then return ns:Print(ns.L.V3_LEG_NOGAME) end
	if achievementID and f.OpenToChallenge then pcall(f.OpenToChallenge, f, achievementID, true)
	elseif f.ShowChallenges then pcall(f.ShowChallenges, f) end
end

-- o guia que leva a um desafio: profissão -> a Central de profissões; classe -> leveling; masmorra -> Masmorras
function LG:Action(a)
	if a.class then return "leveling" end
	local name = (a.name or ""):lower()
	if name:find("dungeon") or name:find("masmorra") or name:find("boss") or name:find("chefe") then return "dungeons" end
	return nil
end

local cache
function LG:Summary()
	cache = cache or LG:Read()
	if not cache or cache.total == 0 then return nil end
	local all = {}
	for _, g in ipairs(cache.groups) do for _, a in ipairs(g.list) do all[#all + 1] = a end end
	local close = LG.Closest(all, 1)[1]
	local pts = LG:Points()
	return { title = ns.L.V3_LEG_SUM:format(pts or cache.done, cache.total),
		text = close and ns.L.V3_LEG_NEXT:format(close.name) or "", progress = cache.done / math.max(1, cache.total),
		link = ns.L.V3_SEE_LEGACY }
end
ns:On("ACHIEVEMENT_EARNED", function() cache = nil end)
ns:On("CRITERIA_UPDATE", function() cache = nil end)

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
local PAGE = { label = ns.L.V3_LEGACY, glyph = "estrela", order = 6 }
local selectedGroup

PAGE.build = function(page, H)
	local C, L = UI.COL, ns.L
	local cw = H:ContentWidth() - 8
	page.hero = UI.Card(page, { color = C.card }); page.hero:SetPoint("TOPLEFT", 0, 0); page.hero:SetSize(cw, 92)
	page.heroLabel = H.Label(page.hero, L.V3_LEG_POINTS); page.heroLabel:SetPoint("TOPLEFT", 18, -16)
	page.points = UI.Text(page.hero, 36, C.active, { num = true }); page.points:SetPoint("TOPLEFT", page.heroLabel, "BOTTOMLEFT", 0, -2)
	page.bar = UI.Bar(page.hero, C.epic); page.bar:SetHeight(10)
	page.bar:SetPoint("LEFT", page.hero, "LEFT", 180, 4); page.bar:SetPoint("RIGHT", page.hero, "RIGHT", -18, 4)
	page.barSub = UI.Text(page.hero, 12, C.dim, { num = true }); page.barSub:SetPoint("TOPLEFT", page.bar, "BOTTOMLEFT", 0, -6)
	page.open = CreateFrame("Button", nil, page.hero); page.open:SetSize(170, 16)
	page.open:SetPoint("TOPRIGHT", page.bar, "BOTTOMRIGHT", 0, -6)
	page.openFS = UI.Text(page.open, 12, C.tip, { bold = true, justify = "RIGHT" }); page.openFS:SetAllPoints()
	page.openFS:SetText(L.V3_LEG_OPEN)
	page.open:SetScript("OnClick", function() LG:OpenGame() end)
	-- grupos (esquerda), lista do grupo (meio), mais perto (direita)
	page.gCard = UI.Card(page, { color = C.card }); page.gCard:SetPoint("TOPLEFT", 0, -106); page.gCard:SetSize(200, 474)
	page.gLabel = H.Label(page.gCard, L.V3_LEG_GROUPS); page.gLabel:SetPoint("TOPLEFT", 14, -14)
	page.gRows = {}
	local mw = math.floor((cw - 200 - 28) * 0.52)
	page.lCard = UI.Card(page, { color = C.card }); page.lCard:SetPoint("TOPLEFT", page.gCard, "TOPRIGHT", 14, 0)
	page.lCard:SetSize(mw, 474)
	page.lLabel = H.Label(page.lCard, ""); page.lLabel:SetPoint("TOPLEFT", 14, -14)
	page.lscroll, page.list = UI.Scroll(page.lCard)
	page.lscroll:SetPoint("TOPLEFT", 12, -34); page.lscroll:SetPoint("BOTTOMRIGHT", -14, 10)
	page.rows = {}
	page.cCard = UI.Card(page, { color = C.card }); page.cCard:SetPoint("TOPLEFT", page.lCard, "TOPRIGHT", 14, 0)
	page.cCard:SetSize(cw - 200 - 28 - mw, 474)
	page.cLabel = H.Label(page.cCard, L.V3_LEG_CLOSEST); page.cLabel:SetPoint("TOPLEFT", 14, -14)
	page.cscroll, page.clist = UI.Scroll(page.cCard)
	page.cscroll:SetPoint("TOPLEFT", 6, -34); page.cscroll:SetPoint("BOTTOMRIGHT", -12, 10)
	page.cRows = {}
	page.none = UI.Text(page, 13, C.dim, { wrap = true }); page.none:SetPoint("TOPLEFT", 0, -120); page.none:SetWidth(cw)
	page.none:SetText(L.V3_LEG_NONE); page.none:Hide()
end

local function achRow(parent) return UI.ListRow(parent, 46) end

PAGE.refresh = function(page, H)
	local C, L = UI.COL, ns.L
	cache = LG:Read()
	local data = cache
	local has = data and data.total > 0
	for _, k in ipairs({ "hero", "gCard", "lCard", "cCard" }) do page[k]:SetShown(has and true or false) end
	page.none:SetShown(not has)
	if not has then return end
	local pts = LG:Points()
	page.points:SetText(("%d |cff%s/ %d|r"):format(pts or data.done, UI.Hex("dim"), data.total))
	page.bar:SetProgress(data.done / math.max(1, data.total))
	page.barSub:SetText(L.V3_LEG_DONE:format(data.done, data.total))
	-- grupos
	selectedGroup = selectedGroup or (data.groups[1] and data.groups[1].id)
	local sel
	for _, r in ipairs(page.gRows) do r:Hide() end
	for i, g in ipairs(data.groups) do
		local r = page.gRows[i]
		if not r then r = UI.NavItem(page.gCard, "", nil, nil); page.gRows[i] = r end
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.gCard, "TOPLEFT", 6, -30 - (i - 1) * 33)
		r:SetPoint("RIGHT", page.gCard, "RIGHT", -6, 0)
		local d = 0
		for _, a in ipairs(g.list) do if a.completed then d = d + 1 end end
		r.fs:SetText(g.name or "?"); r:SetCount(("%d/%d"):format(d, #g.list), d == #g.list and "ok" or "plain")
		r:SetActive(g.id == selectedGroup)
		if g.id == selectedGroup then sel = g end
		r:SetScript("OnClick", function() selectedGroup = g.id; PAGE.refresh(page, H) end)
		r:Show()
	end
	sel = sel or data.groups[1]
	-- a lista do grupo (classes: com o seu mais alto)
	local best = LG.BestByClass(ns.db.alts)
	page.lLabel:SetText((sel and sel.name or ""):upper())
	for _, r in ipairs(page.rows) do r:Hide() end
	local y = 0
	for i, a in ipairs(sel and sel.list or {}) do
		local r = page.rows[i] or achRow(page.list); page.rows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.list, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.list, "RIGHT")
		local yours = a.class and best[a.class] and L.V3_LEG_YOURS:format(best[a.class])
		local id = a.id
		r:Set({
			glyph = a.completed and "check" or "estrela", tone = a.completed and "ok" or "epic",
			title = (a.name or "?") .. (yours and not a.completed and ("  |cff%s%s|r"):format(UI.Hex("dim"), yours) or ""),
			titleColor = a.completed and C.faded or C.active,
			progress = not a.completed and (a.progress or 0) or nil, progressColor = C.epic,
			sub = a.completed and (yours or L.V3_Q_DONE) or nil,
			value = a.completed and "" or ("%d%%"):format(math.floor((a.progress or 0) * 100)),
			onClick = function() LG:OpenGame(id) end,
		})
		r:Show()
		y = y + 46
	end
	page.list:SetHeight(math.max(1, y)); page.lscroll.Sync()
	-- mais perto
	local all = {}
	for _, g in ipairs(data.groups) do for _, a in ipairs(g.list) do all[#all + 1] = a end end
	for _, r in ipairs(page.cRows) do r:Hide() end
	y = 0
	for i, a in ipairs(LG.Closest(all, 8)) do
		local r = page.cRows[i] or UI.ListRow(page.clist, 58); page.cRows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.clist, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.clist, "RIGHT")
		local target = LG:Action(a)
		r:Set({
			glyph = "estrela", tone = "epic", title = a.name or "?", wrap = true,
			sub = L.V3_LEG_PCT:format(math.floor((a.progress or 0) * 100)),
			action = target and L.V3_GO or L.V3_LEG_SEE,
			onAction = function() if target then H:Show(target) else LG:OpenGame(a.id) end end,
		})
		r:Show()
		y = y + 58
	end
	page.clist:SetHeight(math.max(1, y)); page.cscroll.Sync()
end

PAGE.count = function() return nil end

if ns.Hub then ns.Hub:RegisterPage("legacy", PAGE) end
