--=============================================================================
-- Collections — os Colecionáveis do Lodestar 3 (specs/lodestar-3): montarias, mascotes e brinquedos do próprio jogo
-- (C_MountJournal, C_PetJournal, C_ToyBox), com o texto de origem que o jogo mostra, filtro por origem, progresso e
-- Guiar (o vendedor quando o Lodestar o conhece; senão a zona que a origem cita).
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

-- A chave de origem de um item, para agrupar e filtrar: o nome do tipo do jogo quando ele vem (labels[sourceType]);
-- senão o rótulo da primeira linha do texto de origem ("Vendedor", "Saque"); sem nada, "" (Outras). Neste cliente o
-- tipo do jogo vem 0 para tudo (issue #109): é o texto que separa.
function CL.SourceKey(it, labels)
	local st = it and it.sourceType or 0
	if st > 0 and labels and type(labels[st]) == "string" then return labels[st] end
	local p = CL.ParseSource(it and it.source)
	return p[1] and p[1][1] or ""
end

-- Por origem: a chave (CL.SourceKey) ou, sem ela, o tipo do jogo; nil ou 0 = todos. Os já coletados saem quando
-- `missingOnly`.
function CL.Filter(list, key, missingOnly)
	local out = {}
	local all = key == nil or key == 0
	for _, it in ipairs(list or {}) do
		local k = it.key
		if k == nil then k = it.sourceType end
		if (all or k == key) and not (missingOnly and it.collected) then out[#out + 1] = it end
	end
	return out
end

-- As origens presentes (só o que falta, quando `missingOnly`): { { chave, n }, ... } da maior para a menor, Outras
-- ("") por último; e o total, com cada item uma vez.
function CL.Buckets(list, missingOnly)
	local n, total = {}, 0
	for _, it in ipairs(list or {}) do
		if not (missingOnly and it.collected) then
			total = total + 1
			local k = it.key or ""
			n[k] = (n[k] or 0) + 1
		end
	end
	local out = {}
	for k, c in pairs(n) do out[#out + 1] = { k, c } end
	table.sort(out, function(a, b)
		if (a[1] == "") ~= (b[1] == "") then return b[1] == "" end
		if a[2] ~= b[2] then return a[2] > b[2] end
		return a[1] < b[1]
	end)
	return out, total
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI

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
	local labels = CL.SourceLabels()
	for _, id in ipairs(MJ.GetMountIDs() or {}) do
		local name, spellID, icon, _, _, sourceType, _, isFactionSpecific, faction, hide, collected = MJ.GetMountInfoByID(id)
		if name and not hide and not (isFactionSpecific and faction ~= nil and faction ~= myFaction) then
			local _, _, source = nil, nil, ""
			if MJ.GetMountInfoExtraByID then _, _, source = MJ.GetMountInfoExtraByID(id) end
			local it = { id = id, name = name, icon = icon, spell = spellID, sourceType = sourceType or 0,
				collected = collected and true or false, source = source or "" }
			it.key = CL.SourceKey(it, labels)
			out[#out + 1] = it
		end
	end
	table.sort(out, function(a, b) return a.name < b.name end)
	return out
end

-- o diário de mascotes filtra o que mostra: abre tudo, lê, devolve como o jogador deixou
local reading = false
-- O diário de mascotes deste cliente só se enche depois que a interface de Coleções do jogo carrega (ela é sob
-- demanda; issue #100): sem isso a página dizia "0 de 0". Carrega uma vez; o PET_JOURNAL_LIST_UPDATE refaz.
local journalAsked, waitingJournal = false, false
local function askJournal()
	if journalAsked or (InCombatLockdown and InCombatLockdown()) then return end   -- em combate: na próxima
	journalAsked = true
	waitingJournal = true                        -- espera a lista desta carga (e só desta: sem laço)
	local load = (C_AddOns and C_AddOns.LoadAddOn) or LoadAddOn
	if load then pcall(load, "Blizzard_Collections") end
end

-- Sem o diário (ou vazio): os mascotes que o personagem tem, pela lista de companheiros de sempre.
local function companionPets()
	local out = {}
	if not (GetNumCompanions and GetCompanionInfo) then return out end
	for i = 1, GetNumCompanions("CRITTER") or 0 do
		local creatureID, name, spellID, icon = GetCompanionInfo("CRITTER", i)
		if name then
			out[#out + 1] = { id = creatureID or spellID or i, name = name, icon = icon, sourceType = 0,
				collected = true, source = "", key = "" }
		end
	end
	table.sort(out, function(a, b) return a.name < b.name end)
	return out
end
CL.CompanionPets = companionPets

function CL:Pets()
	local PJ = C_PetJournal
	local out = {}
	if not (PJ and PJ.GetNumPets and PJ.GetPetInfoByIndex) then return companionPets() end
	-- cada filtro como o jogador deixou (coletados, origens, tipos), para devolver depois; a busca fica como está
	local saved, sources, types = {}, {}, {}
	local F = { LE_PET_JOURNAL_FILTER_COLLECTED or 1, LE_PET_JOURNAL_FILTER_NOT_COLLECTED or 2 }
	if PJ.IsFilterChecked and PJ.SetFilterChecked then
		for _, f in ipairs(F) do saved[f] = PJ.IsFilterChecked(f); PJ.SetFilterChecked(f, true) end
	end
	if PJ.GetNumPetSources and PJ.IsPetSourceChecked and PJ.SetPetSourceChecked then
		for i = 1, PJ.GetNumPetSources() or 0 do sources[i] = PJ.IsPetSourceChecked(i); PJ.SetPetSourceChecked(i, true) end
	end
	-- o diário deste cliente liga o tipo com SetPetTypeFilter (Blizzard_PetCollection, Classic)
	local setType = PJ.SetPetTypeFilter or PJ.SetPetTypeChecked
	if PJ.GetNumPetTypes and PJ.IsPetTypeChecked and setType then
		for i = 1, PJ.GetNumPetTypes() or 0 do types[i] = PJ.IsPetTypeChecked(i); setType(i, true) end
	end
	-- a busca do diário filtra também: tira e devolve o texto que estava na caixa
	local search = _G.PetJournalSearchBox and _G.PetJournalSearchBox.GetText and _G.PetJournalSearchBox:GetText() or ""
	if search ~= "" and PJ.ClearSearchFilter then PJ.ClearSearchFilter() end
	reading = true
	local n = PJ.GetNumPets() or 0
	local seen = {}
	local labels = CL.SourceLabels()
	for i = 1, n do
		local petID, speciesID, owned, _, _, _, _, speciesName, icon, _, _, source = PJ.GetPetInfoByIndex(i)
		if speciesID and not seen[speciesID] then
			seen[speciesID] = true
			local it = { id = speciesID, petID = petID, name = speciesName or "?", icon = icon,
				sourceType = CL.SourceTypeFromText(CL.ParseSource(source), labels),
				collected = owned and true or false, source = source or "" }
			it.key = CL.SourceKey(it, labels)
			out[#out + 1] = it
		end
	end
	if PJ.SetFilterChecked then for f, v in pairs(saved) do PJ.SetFilterChecked(f, v) end end
	for i, v in pairs(sources) do PJ.SetPetSourceChecked(i, v) end
	for i, v in pairs(types) do setType(i, v) end
	if search ~= "" and PJ.SetSearchFilter then PJ.SetSearchFilter(search) end
	reading = false
	if #out == 0 then
		-- pede a carga (uma vez; ela marca a espera antes, para o evento não se perder); diário que segue vazio
		-- depois da carga, ou leitura em combate, não fica redesenhando
		askJournal()
		local fb = companionPets()
		fb.fallback = true                           -- reserva: não fica em cache como se fosse o diário
		return fb
	end
	waitingJournal = false
	table.sort(out, function(a, b) return a.name < b.name end)
	return out
end

-- A caixa de brinquedos (Blizzard_ToyBox, família Classic: C_ToyBox, issue #109). Como no diário de mascotes, o que
-- ela mostra passa pelos filtros do jogador (coletados, não coletados, busca): abre tudo, lê, devolve como estava.
-- A API não dá o texto de origem do brinquedo: todos em Outras, sem Guiar.
local waitingToys = false
function CL:Toys()
	local TB = C_ToyBox
	local out = {}
	if not (TB and TB.GetNumFilteredToys and TB.GetToyFromIndex and TB.GetToyInfo) then return out end
	local coll = TB.GetCollectedShown and TB.GetCollectedShown()
	local unc = TB.GetUncollectedShown and TB.GetUncollectedShown()
	local search = _G.ToyBox and type(_G.ToyBox.searchString) == "string" and _G.ToyBox.searchString or ""
	reading = true
	if TB.SetCollectedShown then TB.SetCollectedShown(true) end
	if TB.SetUncollectedShown then TB.SetUncollectedShown(true) end
	if search ~= "" and TB.SetFilterString then TB.SetFilterString("") end
	if TB.ForceToyRefilter then TB.ForceToyRefilter() end
	for i = 1, TB.GetNumFilteredToys() or 0 do
		local itemID = TB.GetToyFromIndex(i)
		if itemID and itemID > 0 then
			local _, name, icon = TB.GetToyInfo(itemID)
			if name then
				out[#out + 1] = { id = itemID, name = name, icon = icon, sourceType = 0, source = "", key = "",
					collected = PlayerHasToy and PlayerHasToy(itemID) and true or false }
			end
		end
	end
	if TB.SetCollectedShown and coll ~= nil then TB.SetCollectedShown(coll) end
	if TB.SetUncollectedShown and unc ~= nil then TB.SetUncollectedShown(unc) end
	if search ~= "" and TB.SetFilterString then TB.SetFilterString(search) end
	reading = false
	if #out == 0 then
		askJournal()                                 -- a caixa pode só se encher com as Coleções carregadas
		waitingToys = true
		return out
	end
	waitingToys = false
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

local cacheMounts, cachePets, cacheToys
function CL:Summary()
	cacheMounts = cacheMounts or CL:Mounts()
	local pets = cachePets or CL:Pets()
	if not pets.fallback then cachePets = pets end
	local mh, mt = CL.Count(cacheMounts)
	local ph, pt = CL.Count(pets)
	if mt == 0 then cacheMounts = nil end               -- leitura vazia (diário ainda não carregou): de novo depois
	if pt == 0 then cachePets = nil end
	if mt + pt == 0 then return nil end
	return { title = ns.L.V3_COL_SUM:format(mh, mt, ph, pt), text = ns.L.V3_COL_SUM_SUB,
		progress = (mh + ph) / math.max(1, mt + pt), link = ns.L.V3_SEE_COLLECT }
end
-- a lista do diário mudou (carregou depois do login, por exemplo) — menos quando fomos nós, lendo
ns:On("PET_JOURNAL_LIST_UPDATE", function()
	if reading then return end
	cachePets = nil
	-- a lista chegou com a página aberta esperando por ela: redesenha uma vez (só esperando: a própria leitura mexe
	-- nos filtros e o evento pode voltar depois, o que viraria um laço)
	if waitingJournal and ns.Hub and ns.Hub:IsShown() and ns.Hub:Current() == "collections" then
		waitingJournal = false
		C_Timer.After(0.5, function() if ns.Hub:IsShown() then ns.Hub:Refresh() end end)
	end
end)
for _, ev in ipairs({ "NEW_MOUNT_ADDED", "COMPANION_LEARNED", "NEW_PET_ADDED", "COMPANION_UNLEARNED" }) do
	ns:On(ev, function() cacheMounts, cachePets = nil, nil end)
end
-- brinquedo novo, ou a caixa que chegou depois: lê de novo; com a página esperando por ela, redesenha uma vez
ns:On("TOYS_UPDATED", function()
	if reading then return end
	cacheToys = nil
	if waitingToys and ns.Hub and ns.Hub:IsShown() and ns.Hub:Current() == "collections" then
		waitingToys = false
		C_Timer.After(0.5, function() if ns.Hub:IsShown() then ns.Hub:Refresh() end end)
	end
end)

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
local PAGE = { label = ns.L.V3_COLLECT, glyph = "bandeira", order = 5 }
local tab, srcFilter, missingOnly = "mounts", nil, true   -- srcFilter: chave de origem (CL.SourceKey); nil = todas

local function srcLabel(key)
	if key == nil then return ns.L.V3_ALL end
	return key == "" and ns.L.V3_SRC_OTHER or key
end

PAGE.build = function(page, H)
	local C, L = UI.COL, ns.L
	H.PageTitle(page, L.V3_COLLECT)
	page.tabs = UI.Segmented(page, { { L.V3_MOUNTS, "mounts" }, { L.V3_PETS, "pets" }, { L.V3_TOYS, "toys" } },
		function(v) tab, srcFilter = v, nil; PAGE.refresh(page, H) end)
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
	c.src = UI.Text(c, 11.5, C.dim, { num = true, wrap = false })
	c.src:SetPoint("TOPLEFT", c.name, "BOTTOMLEFT", 0, -4); c.src:SetPoint("TOPRIGHT", c.name, "BOTTOMRIGHT", 0, -4)
	c.badge = UI.Badge(c, "", "ok"); c.badge:SetPoint("BOTTOMRIGHT", -10, 10)
	c.go = CreateFrame("Button", nil, c); c.go:SetHeight(18); c.go:SetPoint("BOTTOMLEFT", c.icon, "BOTTOMRIGHT", 10, -8)
	c.goFS = UI.Text(c.go, 12, C.tip, { bold = true }); c.goFS:SetPoint("LEFT"); c.goFS:SetText(ns.L.V3_GO)
	c.go:SetWidth(math.ceil(c.goFS:GetStringWidth()) + 6)
	return c
end

PAGE.refresh = function(page, H)
	local L = ns.L
	-- lido uma vez e de novo só quando o diário muda (o eventos do jogo limpam o cache)
	-- leitura vazia (o diário ainda não carregou) não fica em cache
	local petsNow
	if tab == "mounts" then cacheMounts = cacheMounts or CL:Mounts()
	elseif tab == "toys" then cacheToys = cacheToys or CL:Toys()
	else
		petsNow = cachePets or CL:Pets()
		if not petsNow.fallback then cachePets = petsNow end   -- a reserva (companheiros) não fica em cache
	end
	local all = (tab == "mounts" and cacheMounts or tab == "toys" and cacheToys or petsNow) or {}
	if cacheMounts and #cacheMounts == 0 then cacheMounts = nil end
	if cachePets and #cachePets == 0 then cachePets = nil end
	if cacheToys and #cacheToys == 0 then cacheToys = nil end
	local have, total = CL.Count(all)
	page.subFS:SetText(L.V3_COL_PROGRESS:format(have, total))
	page.bar:SetProgress(have / math.max(1, total))
	page.missing.text:SetText(missingOnly and L.V3_MISSING_ONLY or L.V3_SHOW_ALL)
	-- origens presentes: Todas (cada item uma vez) e as do texto; só Outras = nada a separar, fica só Todas
	local buckets, total2 = CL.Buckets(all, missingOnly)
	if #buckets == 1 and buckets[1][1] == "" then buckets = {} end
	local present = srcFilter == nil
	for _, b in ipairs(buckets) do if b[1] == srcFilter then present = true end end
	if not present then srcFilter = nil end        -- a origem escolhida sumiu (aba, só o que falta)
	local rows = { { nil, total2 } }
	for _, b in ipairs(buckets) do rows[#rows + 1] = b end
	for _, r in ipairs(page.srcRows) do r:Hide() end
	local maxRows = math.floor((514 - 30) / 33)
	for i = 1, math.min(#rows, maxRows) do
		local key, n = rows[i][1], rows[i][2]
		local r = page.srcRows[i]
		if not r then
			r = UI.NavItem(page.srcCard, "", nil, nil); page.srcRows[i] = r
		end
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.srcCard, "TOPLEFT", 6, -30 - (i - 1) * 33)
		r:SetPoint("RIGHT", page.srcCard, "RIGHT", -6, 0)
		r.fs:SetText(srcLabel(key)); r:SetCount(n, "plain"); r:SetActive(key == srcFilter)
		r:SetScript("OnClick", function() srcFilter = key; PAGE.refresh(page, H) end)
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
		c.go:SetShown(not it.collected and it.source ~= "")   -- sem texto de origem não há para onde guiar
		c.go:SetScript("OnClick", function() CL:GuideTo(it) end)
		c:Show()
	end
	page.grid:SetHeight(math.max(1, math.ceil(shown / 2) * 86))
	page.scroll.Sync()
end

PAGE.count = function() return nil end
CL.Page = PAGE                                       -- a fumaça da interface lê a página montada

if ns.Hub then ns.Hub:RegisterPage("collections", PAGE) end
