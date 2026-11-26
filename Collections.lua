--=============================================================================
-- Collections — os Colecionáveis do Lodestar 3 (specs/lodestar-3): montarias e mascotes do diário do próprio jogo
-- (C_MountJournal, C_PetJournal), com o texto de origem que o jogo mostra, filtro por origem, progresso e Guiar
-- (o vendedor quando o Lodestar o conhece; senão a zona que a origem cita).
--
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo e a página da Central.
--=============================================================================
local ADDON, ns = ...
local CL = {}
ns.Collections = CL

-- O texto de origem do jogo ("|cFFFFD200Vendedor: |rKatie Hunter|n|cFFFFD200Zona: |rFloresta de Elwynn") em pares
-- { rótulo, valor }, sem cor, sem ícone de moeda.
function CL.ParseSource(text)
	local out = {}
	if type(text) ~= "string" or text == "" then return out end
	local s = text:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("|T.-|t", ""):gsub("|n", "\n")
	for line in s:gmatch("[^\n]+") do
		local label, value = line:match("^%s*([^:]+):%s*(.-)%s*$")
		if label and value and value ~= "" then out[#out + 1] = { label, value }
		elseif line:match("%S") then out[#out + 1] = { nil, (line:gsub("^%s+", ""):gsub("%s+$", "")) } end
	end
	return out
end

-- Primeiro valor que é uma zona conhecida (`isZone(nome)` diz), e o primeiro valor (quem: vendedor, chefe, quest).
function CL.WhereWho(pairs_, isZone)
	local zone, who
	for _, p in ipairs(pairs_ or {}) do
		if not zone and isZone and isZone(p[2]) then zone = p[2] end
		if not who and p[1] and not (isZone and isZone(p[2])) then who = p[2] end
	end
	return zone, who
end

-- O tipo de origem pelo rótulo da primeira linha ("Vendedor", "Saque"...), contra os nomes do jogo
-- (labels[i] = BATTLE_PET_SOURCE_i). 0 quando não casa.
function CL.SourceTypeFromText(pairs_, labels)
	local first = pairs_ and pairs_[1] and pairs_[1][1]
	if not first then return 0 end
	first = first:lower()
	for i, lbl in pairs(labels or {}) do
		if type(lbl) == "string" and lbl:lower() == first then return i end
	end
	return 0
end

-- Contagem: { collected = bool }* -> feitos, total
function CL.Count(list)
	local have = 0
	for _, it in ipairs(list or {}) do if it.collected then have = have + 1 end end
	return have, #(list or {})
end

-- Por tipo de origem; 0 = todos. Os já coletados saem quando `missingOnly`.
function CL.Filter(list, sourceType, missingOnly)
	local out = {}
	for _, it in ipairs(list or {}) do
		if (sourceType == 0 or it.sourceType == sourceType) and not (missingOnly and it.collected) then out[#out + 1] = it end
	end
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI
local unpackc = UI.unpackc

-- os nomes de origem do próprio jogo, BATTLE_PET_SOURCE_1..12 (montarias usam os mesmos)
function CL.SourceLabels()
	local t = {}
	for i = 1, 12 do t[i] = _G["BATTLE_PET_SOURCE_" .. i] end
	return t
end

local function zoneOf(name)
	if not name then return nil end
	local low = name:lower()
	for eng in pairs(ns.zoneUiMap or {}) do
		if eng:lower() == low or ns.LocalizedZone(eng):lower() == low then return eng end
	end
end
CL.ZoneOf = zoneOf

function CL:Mounts()
	local MJ = C_MountJournal
	local out = {}
	if not (MJ and MJ.GetMountIDs and MJ.GetMountInfoByID) then return out end
	local myFaction = UnitFactionGroup("player") == "Horde" and 0 or 1
	for _, id in ipairs(MJ.GetMountIDs() or {}) do
		local name, spellID, icon, _, _, sourceType, _, isFactionSpecific, faction, hide, collected = MJ.GetMountInfoByID(id)
		if name and not hide and not (isFactionSpecific and faction ~= nil and faction ~= myFaction) then
			local _, _, source = nil, nil, ""
			if MJ.GetMountInfoExtraByID then _, _, source = MJ.GetMountInfoExtraByID(id) end
			out[#out + 1] = { id = id, name = name, icon = icon, spell = spellID, sourceType = sourceType or 0,
				collected = collected and true or false, source = source or "" }
		end
	end
	table.sort(out, function(a, b) return a.name < b.name end)
	return out
end

-- o diário de mascotes filtra o que mostra: abre tudo, lê, devolve como o jogador deixou
function CL:Pets()
	local PJ = C_PetJournal
	local out = {}
	if not (PJ and PJ.GetNumPets and PJ.GetPetInfoByIndex) then return out end
	-- cada filtro como o jogador deixou (coletados, origens, tipos), para devolver depois; a busca fica como está
	local saved, sources, types = {}, {}, {}
	local F = { LE_PET_JOURNAL_FILTER_COLLECTED or 1, LE_PET_JOURNAL_FILTER_NOT_COLLECTED or 2 }
	if PJ.IsFilterChecked and PJ.SetFilterChecked then
		for _, f in ipairs(F) do saved[f] = PJ.IsFilterChecked(f); PJ.SetFilterChecked(f, true) end
	end
	if PJ.GetNumPetSources and PJ.IsPetSourceChecked and PJ.SetPetSourceChecked then
		for i = 1, PJ.GetNumPetSources() or 0 do sources[i] = PJ.IsPetSourceChecked(i); PJ.SetPetSourceChecked(i, true) end
	end
	if PJ.GetNumPetTypes and PJ.IsPetTypeChecked and PJ.SetPetTypeChecked then
		for i = 1, PJ.GetNumPetTypes() or 0 do types[i] = PJ.IsPetTypeChecked(i); PJ.SetPetTypeChecked(i, true) end
	end
	local n = PJ.GetNumPets() or 0
	local seen = {}
	for i = 1, n do
		local petID, speciesID, owned, _, _, _, _, speciesName, icon, _, _, source = PJ.GetPetInfoByIndex(i)
		if speciesID and not seen[speciesID] then
			seen[speciesID] = true
			out[#out + 1] = { id = speciesID, petID = petID, name = speciesName or "?", icon = icon,
				sourceType = CL.SourceTypeFromText(CL.ParseSource(source), CL.SourceLabels()),
				collected = owned and true or false, source = source or "" }
		end
	end
	if PJ.SetFilterChecked then for f, v in pairs(saved) do PJ.SetFilterChecked(f, v) end end
	for i, v in pairs(sources) do PJ.SetPetSourceChecked(i, v) end
	for i, v in pairs(types) do PJ.SetPetTypeChecked(i, v) end
	table.sort(out, function(a, b) return a.name < b.name end)
	return out
end

-- o vendedor pelo nome, entre os serviços que o Lodestar conhece (TravelData)
local function vendorByName(name)
	if not (name and ns.travel and ns.travel.services) then return nil end
	for _, list in pairs(ns.travel.services) do
		for _, e in ipairs(list) do
			if e.n == name then return e end
		end
	end
end

function CL:GuideTo(it)
	local pairs_ = CL.ParseSource(it.source)
	local zone, who = CL.WhereWho(pairs_, zoneOf)
	local v = vendorByName(who)
	if v then
		ns.Waypoint:SetCustom(v.zone, v.x, v.y, ("%s — %s"):format(it.name, who), v.map)
	elseif zoneOf(zone) then
		ns.Waypoint:SetCustom(zoneOf(zone), 50, 50, ("%s — %s"):format(it.name, zone))
	else
		return ns:Print(ns.L.V3_COL_NOWHERE)
	end
	if ns.Toast then ns.Toast:Show({ title = it.name, text = who or zone or "", color = UI.COL.tip, hold = 4 }) end
end

local cacheMounts, cachePets
function CL:Summary()
	cacheMounts = cacheMounts or CL:Mounts()
	cachePets = cachePets or CL:Pets()
	local mh, mt = CL.Count(cacheMounts)
	local ph, pt = CL.Count(cachePets)
	if mt + pt == 0 then return nil end
	return { title = ns.L.V3_COL_SUM:format(mh, mt, ph, pt), text = ns.L.V3_COL_SUM_SUB,
		progress = (mh + ph) / math.max(1, mt + pt), link = ns.L.V3_SEE_COLLECT }
end
-- (não PET_JOURNAL_LIST_UPDATE: mexer nos filtros para ler dispara ele, e cada leitura apagaria o cache)
for _, ev in ipairs({ "NEW_MOUNT_ADDED", "COMPANION_LEARNED", "NEW_PET_ADDED", "COMPANION_UNLEARNED" }) do
	ns:On(ev, function() cacheMounts, cachePets = nil, nil end)
end

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
local PAGE = { label = ns.L.V3_COLLECT, glyph = "bandeira", order = 5 }
local tab, srcFilter, missingOnly = "mounts", 0, true

local function srcLabel(i)
	return i == 0 and ns.L.V3_ALL or _G["BATTLE_PET_SOURCE_" .. i] or (ns.L.V3_SOURCE .. " " .. i)
end

PAGE.build = function(page, H)
	local C, L = UI.COL, ns.L
	H.PageTitle(page, L.V3_COLLECT)
	page.tabs = UI.Segmented(page, { { L.V3_MOUNTS, "mounts" }, { L.V3_PETS, "pets" } }, function(v)
		tab, srcFilter = v, 0; PAGE.refresh(page, H)
	end)
	page.tabs:SetPoint("TOPRIGHT", -40, 2); page.tabs:Select(tab)
	page.missing = UI.Button(page, "", 150, 28); page.missing:SetPoint("RIGHT", page.tabs, "LEFT", -10, 0)
	page.missing:SetScript("OnClick", function() missingOnly = not missingOnly; PAGE.refresh(page, H) end)
	page.bar = UI.Bar(page, C.tip); page.bar:SetHeight(8)
	page.bar:SetPoint("TOPLEFT", 0, -46); page.bar:SetPoint("TOPRIGHT", -40, -46)
	-- filtro por origem (à esquerda)
	page.srcCard = UI.Card(page, { color = C.card })
	page.srcCard:SetPoint("TOPLEFT", 0, -66); page.srcCard:SetSize(200, 514)
	page.srcLabel = H.Label(page.srcCard, L.V3_SOURCE); page.srcLabel:SetPoint("TOPLEFT", 14, -14)
	page.srcRows = {}
	-- grade
	page.scroll, page.grid = UI.Scroll(page)
	page.scroll:SetPoint("TOPLEFT", 214, -66); page.scroll:SetPoint("BOTTOMRIGHT", -8, 0)
	page.cards = {}
end

local function itemCard(parent)
	local C = UI.COL
	local c = UI.Card(parent, { color = C.card })
	c:SetHeight(76)
	c.icon = c:CreateTexture(nil, "ARTWORK"); c.icon:SetSize(40, 40); c.icon:SetPoint("TOPLEFT", 12, -12)
	c.name = UI.Text(c, 13.5, C.active, { bold = true, wrap = false })
	c.name:SetPoint("TOPLEFT", c.icon, "TOPRIGHT", 10, 0); c.name:SetPoint("RIGHT", c, "RIGHT", -12, 0)
	c.src = UI.Text(c, 11.5, C.dim, { num = true, wrap = true })
	c.src:SetPoint("TOPLEFT", c.name, "BOTTOMLEFT", 0, -3); c.src:SetPoint("RIGHT", c, "RIGHT", -12, 0)
	c.src:SetHeight(28); c.src:SetJustifyV("TOP")
	c.badge = UI.Badge(c, "", "ok"); c.badge:SetPoint("BOTTOMRIGHT", -10, 8)
	c.go = CreateFrame("Button", nil, c); c.go:SetSize(52, 16); c.go:SetPoint("BOTTOMLEFT", c.icon, "BOTTOMRIGHT", 10, -6)
	c.goFS = UI.Text(c.go, 12, C.tip, { bold = true }); c.goFS:SetPoint("LEFT"); c.goFS:SetText(ns.L.V3_GO)
	return c
end

PAGE.refresh = function(page, H)
	local C, L = UI.COL, ns.L
	-- lido uma vez e de novo só quando o diário muda (o eventos do jogo limpam o cache)
	if tab == "mounts" then cacheMounts = cacheMounts or CL:Mounts() else cachePets = cachePets or CL:Pets() end
	local all = tab == "mounts" and cacheMounts or cachePets
	local have, total = CL.Count(all)
	page.subFS:SetText(L.V3_COL_PROGRESS:format(have, total))
	page.bar:SetProgress(have / math.max(1, total))
	page.missing.text:SetText(missingOnly and L.V3_MISSING_ONLY or L.V3_SHOW_ALL)
	-- origens presentes
	local counts = { [0] = 0 }
	for _, it in ipairs(all) do
		if not (missingOnly and it.collected) then
			counts[0] = counts[0] + 1
			counts[it.sourceType] = (counts[it.sourceType] or 0) + 1
		end
	end
	local types = {}
	for k in pairs(counts) do types[#types + 1] = k end
	table.sort(types)
	for _, r in ipairs(page.srcRows) do r:Hide() end
	for i, st in ipairs(types) do
		local r = page.srcRows[i]
		if not r then
			r = UI.NavItem(page.srcCard, "", nil, nil); page.srcRows[i] = r
		end
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.srcCard, "TOPLEFT", 6, -30 - (i - 1) * 33)
		r:SetPoint("RIGHT", page.srcCard, "RIGHT", -6, 0)
		r.fs:SetText(srcLabel(st)); r:SetCount(counts[st], "plain"); r:SetActive(st == srcFilter)
		r:SetScript("OnClick", function() srcFilter = st; PAGE.refresh(page, H) end)
		r:Show()
	end
	-- cartões
	local list = CL.Filter(all, srcFilter, missingOnly)
	for _, c in ipairs(page.cards) do c:Hide() end
	local gw = page.scroll:GetWidth() > 0 and page.scroll:GetWidth() or (H:ContentWidth() - 222)
	local cw = math.floor((gw - 12) / 2)
	local shown = math.min(#list, 120)
	for i = 1, shown do
		local it = list[i]
		local c = page.cards[i] or itemCard(page.grid); page.cards[i] = c
		c:ClearAllPoints(); c:SetWidth(cw)
		c:SetPoint("TOPLEFT", page.grid, "TOPLEFT", ((i - 1) % 2) * (cw + 12), -math.floor((i - 1) / 2) * 86)
		c.icon:SetTexture(it.icon)
		c.icon:SetDesaturated(not it.collected)
		c.name:SetText(it.name)
		local parts = {}
		for _, p in ipairs(CL.ParseSource(it.source)) do parts[#parts + 1] = p[1] and (p[1] .. ": " .. p[2]) or p[2] end
		c.src:SetText(table.concat(parts, " · "))
		if it.collected then c.badge:Set(L.V3_COLLECTED, "ok"); c.badge:Show() else c.badge:Hide() end
		c.go:SetShown(not it.collected)
		c.go:SetScript("OnClick", function() CL:GuideTo(it) end)
		c:Show()
	end
	page.grid:SetHeight(math.max(1, math.ceil(shown / 2) * 86))
	page.scroll.Sync()
end

PAGE.count = function() return nil end

if ns.Hub then ns.Hub:RegisterPage("collections", PAGE) end
