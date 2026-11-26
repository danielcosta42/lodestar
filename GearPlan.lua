--=============================================================================
-- GearPlan — o Equipamento do Lodestar 3 (specs/lodestar-3): os pesos por status de cada spec (predefinições
-- editáveis, texto do Pawn), a nota de um item por esses pesos e, por espaço, a melhor melhoria ao alcance —
-- loot das masmorras da faixa (DungeonData, do pfQuest), recompensas das quests da rota (colhidas no jogo) e o que
-- está nas bolsas. O GearAdvisor (aviso de upgrade, tooltip, escolha de recompensa) passa a usar estes pesos.
--
-- No topo, o núcleo puro (testado fora do jogo, tools/lodestar3-tests.lua). Abaixo, o jogo e a página da Central.
--=============================================================================
local ADDON, ns = ...
local G = {}
ns.GearPlan = G

-- As specs de cada classe, na ordem das árvores do jogo, e os pesos de leveling (direcionais, não simulados: o
-- jogador ajusta). Chaves: str agi sta int spi ap rap sp heal crit hit haste def avoid armor block mp5 dps.
G.SPECS = {
	WARRIOR = { "arms", "fury", "prot" }, PALADIN = { "holy", "prot", "ret" }, HUNTER = { "bm", "mm", "surv" },
	ROGUE = { "assa", "combat", "sub" }, PRIEST = { "disc", "holy", "shadow" }, SHAMAN = { "ele", "enh", "resto" },
	MAGE = { "arcane", "fire", "frost" }, WARLOCK = { "affl", "demo", "destro" }, DRUID = { "balance", "feral", "resto" },
}
G.PRESETS = {
	WARRIOR = {
		arms = { str = 2.0, crit = 1.4, hit = 1.2, agi = 1.0, ap = 1.0, sta = 0.6, dps = 3.0, armor = 0.02 },
		fury = { str = 2.0, crit = 1.5, hit = 1.4, agi = 1.0, ap = 1.0, haste = 1.0, sta = 0.5, dps = 2.6, armor = 0.02 },
		prot = { sta = 1.6, def = 1.5, avoid = 1.3, armor = 0.12, block = 0.6, str = 1.0, agi = 0.7, hit = 0.6, dps = 0.8 },
	},
	PALADIN = {
		holy = { int = 1.6, heal = 1.4, sp = 0.6, mp5 = 2.0, crit = 1.0, spi = 0.5, sta = 0.4 },
		prot = { sta = 1.6, def = 1.5, avoid = 1.2, armor = 0.12, block = 0.6, sp = 0.8, str = 0.8, int = 0.5 },
		ret = { str = 2.0, crit = 1.4, hit = 1.3, ap = 1.0, agi = 0.8, int = 0.4, sta = 0.6, dps = 3.0, armor = 0.02 },
	},
	HUNTER = {
		bm = { agi = 2.0, rap = 1.0, ap = 0.9, crit = 1.2, hit = 1.3, int = 0.5, sta = 0.6, dps = 2.4 },
		mm = { agi = 2.0, rap = 1.0, ap = 0.9, crit = 1.4, hit = 1.4, int = 0.5, sta = 0.5, dps = 2.8 },
		surv = { agi = 2.2, rap = 0.9, ap = 0.8, crit = 1.3, hit = 1.3, int = 0.5, sta = 0.6, dps = 2.4 },
	},
	ROGUE = {
		assa = { agi = 2.0, ap = 1.0, crit = 1.4, hit = 1.5, str = 1.0, sta = 0.5, haste = 1.0, dps = 2.8 },
		combat = { agi = 2.0, ap = 1.0, crit = 1.3, hit = 1.6, str = 1.0, sta = 0.5, haste = 1.1, dps = 3.2 },
		sub = { agi = 2.1, ap = 1.0, crit = 1.3, hit = 1.4, str = 1.0, sta = 0.5, dps = 2.6 },
	},
	PRIEST = {
		disc = { int = 1.5, heal = 1.3, sp = 0.8, spi = 1.0, mp5 = 1.8, sta = 0.6, crit = 0.8 },
		holy = { int = 1.4, heal = 1.5, sp = 0.6, spi = 1.2, mp5 = 1.8, sta = 0.5, crit = 0.8 },
		shadow = { sp = 2.0, int = 1.0, spi = 0.9, hit = 1.4, crit = 0.8, sta = 0.8, haste = 0.9 },
	},
	SHAMAN = {
		ele = { sp = 2.0, int = 1.2, crit = 1.2, hit = 1.4, mp5 = 1.0, sta = 0.6, haste = 0.9 },
		enh = { str = 1.8, agi = 1.4, ap = 1.0, crit = 1.3, hit = 1.4, int = 0.4, sta = 0.6, dps = 3.0 },
		resto = { int = 1.5, heal = 1.5, mp5 = 2.0, sp = 0.6, crit = 0.9, spi = 0.4, sta = 0.5 },
	},
	MAGE = {
		arcane = { sp = 2.0, int = 1.3, crit = 1.2, hit = 1.4, spi = 0.6, sta = 0.6, haste = 1.0 },
		fire = { sp = 2.0, int = 1.0, crit = 1.5, hit = 1.5, spi = 0.4, sta = 0.6, haste = 0.9 },
		frost = { sp = 2.0, int = 1.0, crit = 1.2, hit = 1.4, spi = 0.5, sta = 0.8, haste = 0.9 },
	},
	WARLOCK = {
		affl = { sp = 2.0, sta = 1.1, int = 0.9, hit = 1.5, spi = 0.6, crit = 0.7, haste = 0.9 },
		demo = { sp = 2.0, sta = 1.3, int = 0.9, hit = 1.4, spi = 0.6, crit = 0.8 },
		destro = { sp = 2.0, sta = 0.9, int = 1.0, hit = 1.5, crit = 1.3, spi = 0.4, haste = 0.9 },
	},
	DRUID = {
		balance = { sp = 2.0, int = 1.2, crit = 1.2, hit = 1.4, spi = 0.6, sta = 0.6, mp5 = 0.8 },
		feral = { agi = 2.0, str = 1.6, ap = 1.0, crit = 1.3, hit = 1.3, sta = 1.0, armor = 0.06, def = 0.6 },
		resto = { int = 1.4, heal = 1.5, spi = 1.2, mp5 = 1.8, sp = 0.6, sta = 0.5 },
	},
}

-- O que cada nome de status do Pawn vira aqui.
G.PAWN = {
	strength = "str", agility = "agi", stamina = "sta", intellect = "int", spirit = "spi",
	attackpower = "ap", rangedattackpower = "rap", feralattackpower = "ap",
	spellpower = "sp", spelldamage = "sp", firespelldamage = "sp", frostspelldamage = "sp",
	shadowspelldamage = "sp", arcanespelldamage = "sp", naturespelldamage = "sp", holyspelldamage = "sp",
	ap = "ap", rap = "rap", feralap = "ap",
	healing = "heal", critrating = "crit", crit = "crit", spellcritrating = "crit", spellcrit = "crit",
	hitrating = "hit", hit = "hit", spellhitrating = "hit", spellhit = "hit", hasterating = "haste", haste = "haste",
	defenserating = "def", defense = "def", dodgerating = "avoid", dodge = "avoid", parryrating = "avoid",
	parry = "avoid", armor = "armor", blockrating = "block", blockvalue = "block", block = "block",
	mp5 = "mp5", mana5 = "mp5", meleedps = "dps", dps = "dps", rangeddps = "dps",
}

-- ( Pawn: v1: "Nome": Class=Warrior, Strength=2.0, ... ) -> pesos, nome. Ignora o que não conhece; nil se nada.
function G.ParsePawn(text)
	if type(text) ~= "string" then return nil end
	-- até o ÚLTIMO ")": o nome pode ter parênteses ("Guerreiro (Armas)")
	local body = text:match("%(%s*Pawn%s*:%s*v%d+%s*:%s*(.*)%)") or text
	local name = body:match('^"([^"]*)"')
	if name then body = body:sub(#name + 3) end
	local w, any = {}, false
	for k, v in body:gmatch("([%a_]+)%s*=%s*(%-?[%d%.]+)") do
		local key = G.PAWN[k:lower()]
		local n = tonumber(v)
		if key and n then w[key] = (w[key] or 0) + n; any = true end
	end
	return any and w or nil, name
end

-- Nota de um item: soma de status x peso.
function G.Score(stats, weights)
	local s = 0
	for k, v in pairs(stats or {}) do
		local w = weights and weights[k]
		if w then s = s + v * w end
	end
	return s
end

-- A nota que uma arma de duas mãos tem de bater: a mão principal mais a secundária (escudo, mão esquerda).
function G.PairBase(equipped, pair)
	local total, any = 0, false
	for _, s in ipairs(pair) do
		local e = equipped[s]
		if e == nil then return nil end                 -- sem dado: não dá para comparar
		if e > 0 and e ~= math.huge then total = total + e end
		if e ~= -1 then any = true end
	end
	return any and total or -1
end

-- Por espaço, a melhor candidata que bate o equipado. candidates = { { id, slots = { invSlot, ... }, score, source,
-- pair = { 16, 17 }? } }, equipped = { [invSlot] = nota } (vazio = -1; ocupado e sem dado = nil, que nada bate).
-- Das melhores para as piores: cada uma vai para o espaço livre de pior nota que ela bate (dois anéis vazios recebem
-- dois anéis); a mesma peça não vale para dois espaços; duas mãos (`pair`) compara com principal + secundária.
function G.BestPerSlot(candidates, equipped)
	local sorted = {}
	for _, c in ipairs(candidates or {}) do sorted[#sorted + 1] = c end
	table.sort(sorted, function(a, b) return a.score > b.score end)
	local best, used = {}, {}
	for _, c in ipairs(sorted) do
		if not used[c.id] then
			local target, base
			for _, s in ipairs(c.slots or {}) do
				if not best[s] then
					local e = c.pair and G.PairBase(equipped, c.pair) or equipped[s]
					if e and (not base or e < base) then target, base = s, e end
				end
			end
			if target and c.score > base then
				used[c.id] = true
				best[target] = { id = c.id, score = c.score, source = c.source, base = base,
					gain = base > 0 and (c.score - base) / base or 1 }
			end
		end
	end
	return best
end

-- A spec pela árvore com mais pontos: pontos = { n1, n2, n3 } -> índice (1 no empate e sem pontos).
function G.SpecFromPoints(points)
	local bi, bn = 1, -1
	for i, n in ipairs(points or {}) do
		if (tonumber(n) or 0) > bn then bi, bn = i, tonumber(n) or 0 end
	end
	return bi
end

-- A faixa de itens "ao alcance": a masmorra cabe (lo-2 .. hi) e o nível pedido do item até `ahead` acima do seu.
function G.InReach(level, dlo, dhi, reqLevel, ahead)
	return level >= (dlo or 1) - 2 and level <= (dhi or 60) + 2 and (reqLevel or 1) <= level + (ahead or 0)
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end
local UI = ns.UI
local unpackc = UI.unpackc

-- status do jogo -> chave daqui (constantes ITEM_MOD_*, à prova de idioma)
local CANON = {
	ITEM_MOD_STRENGTH_SHORT = "str", ITEM_MOD_AGILITY_SHORT = "agi", ITEM_MOD_INTELLECT_SHORT = "int",
	ITEM_MOD_SPIRIT_SHORT = "spi", ITEM_MOD_STAMINA_SHORT = "sta", ITEM_MOD_ATTACK_POWER_SHORT = "ap",
	ITEM_MOD_RANGED_ATTACK_POWER_SHORT = "rap", ITEM_MOD_SPELL_POWER_SHORT = "sp",
	ITEM_MOD_SPELL_DAMAGE_DONE_SHORT = "sp", ITEM_MOD_SPELL_HEALING_DONE_SHORT = "heal",
	ITEM_MOD_CRIT_RATING_SHORT = "crit", ITEM_MOD_HIT_RATING_SHORT = "hit", ITEM_MOD_HASTE_RATING_SHORT = "haste",
	ITEM_MOD_DEFENSE_SKILL_RATING_SHORT = "def", ITEM_MOD_DODGE_RATING_SHORT = "avoid",
	ITEM_MOD_PARRY_RATING_SHORT = "avoid", ITEM_MOD_BLOCK_RATING_SHORT = "block", ITEM_MOD_BLOCK_VALUE_SHORT = "block",
	ITEM_MOD_MANA_REGENERATION_SHORT = "mp5", ITEM_MOD_POWER_REGEN0_SHORT = "mp5",
	ITEM_MOD_DAMAGE_PER_SECOND_SHORT = "dps", RESISTANCE0_NAME = "armor",
}

local function myClass() return select(2, UnitClass("player")) end

function G:Specs(class) return G.SPECS[class or myClass()] or {} end

-- a spec do jogo: C_SpecializationInfo (a do retail, que este cliente traz), senão a árvore com mais pontos (as
-- funções de talento antigas, se existirem). O druida do retail tem 4 (Guardião é o feral de tanque).
local DRUID4 = { "balance", "feral", "feral", "resto" }
function G:DetectedSpec(class)
	class = class or myClass()
	local list = G.SPECS[class]
	if not list then return nil end
	local SI = C_SpecializationInfo
	local get = (SI and SI.GetSpecialization) or GetSpecialization
	if get then
		local ok, s = pcall(get)
		s = ok and tonumber(s)
		if s and s >= 1 then
			if class == "DRUID" and s <= 4 then return DRUID4[s] end
			if s <= #list then return list[s] end
		end
	end
	if GetNumTalentTabs and GetTalentTabInfo then
		local pts, any = {}, false
		for i = 1, math.min(3, GetNumTalentTabs() or 0) do
			local r = { GetTalentTabInfo(i) }
			-- a posição do "pontos gastos" mudou entre versões: o primeiro número depois do nome
			for j = 2, #r do if type(r[j]) == "number" then pts[i] = r[j]; break end end
			if (pts[i] or 0) > 0 then any = true end
		end
		if any then return list[G.SpecFromPoints(pts)] end
	end
	return nil
end

-- a spec: a escolhida; senão a do jogo; nil quando não se sabe (aí vale o peso genérico da classe)
function G:Spec(class)
	class = class or myClass()
	if not G.SPECS[class] then return nil end
	return ns.db.gear.spec[class] or G:DetectedSpec(class)
end

function G:SetSpec(spec, class)
	ns.db.gear.spec[class or myClass()] = spec
	G:Invalidate()
end

-- os pesos: os editados da spec, os de predefinição da spec, ou (spec desconhecida) os genéricos da classe do
-- GearAdvisor — chutar a primeira árvore daria inteligência a um paladino de retribuição
function G:Weights(class, spec)
	class = class or myClass()
	spec = spec or G:Spec(class)
	if not spec then return ns.GearAdvisor and ns.GearAdvisor.ClassWeights(class) or {} end
	local mine = ns.db.gear.weights[class] and ns.db.gear.weights[class][spec]
	return mine or (G.PRESETS[class] and G.PRESETS[class][spec]) or {}
end

function G:SetWeights(w, class, spec)
	class = class or myClass(); spec = spec or G:Spec(class) or (G.SPECS[class] or {})[1]
	if not ns.db.gear.spec[class] then ns.db.gear.spec[class] = spec end   -- editar fixa a spec mostrada
	ns.db.gear.weights[class] = ns.db.gear.weights[class] or {}
	ns.db.gear.weights[class][spec] = w
	G:Invalidate()
end

function G:ResetWeights(class, spec)
	class = class or myClass(); spec = spec or G:Spec(class)
	if ns.db.gear.weights[class] then ns.db.gear.weights[class][spec] = nil end
	G:Invalidate()
end

function G.Stats(link)
	local raw = link and ns.ItemStats(link)
	if not raw then return nil end
	local out = {}
	for k, v in pairs(raw) do
		local c = CANON[k]
		if c then out[c] = (out[c] or 0) + v end
	end
	return out
end

-- nota pelos pesos da spec; o nível do item desempata um pouco (dois itens sem status)
function G:ScoreLink(link)
	local stats = G.Stats(link)
	if not stats then return 0 end
	local ilvl = select(4, ns.ItemInfo(link)) or 0
	return G.Score(stats, G:Weights()) + ilvl * 0.3
end

-- o equipado em cada espaço (espaço vazio = -1; com item ainda sem dado = nil)
local INV = { 1, 2, 3, 15, 5, 9, 10, 6, 7, 8, 11, 12, 13, 14, 16, 17, 18 }
G.INV = INV
local function equippedScores()
	local out = {}
	for _, s in ipairs(INV) do
		local link = GetInventoryItemLink("player", s)
		if not link then
			local main = s == 17 and GetInventoryItemLink("player", 16)
			out[s] = (main and select(4, ns.ItemInfoInstant(main)) == "INVTYPE_2HWEAPON") and math.huge or -1
		elseif ns.ItemInfo(link) then
			out[s] = G:ScoreLink(link)
		end
	end
	return out
end

-- candidatas: o loot das masmorras da faixa, as recompensas das quests da rota, as bolsas
local pendingLoad, cache = {}, nil

local function routeQuestIDs()
	local ids = {}
	local g = ns.currentGuide
	if not g then return ids end
	local steps, n = ns.ensureParsed(g), 0
	for i = ns.char.currentStep or 1, #steps do
		for _, goal in ipairs(steps[i].goals) do
			if goal.verb == "turnin" and goal.id then ids[goal.id] = steps[i].index or i end
		end
	end
	local nxt = ns:NextGuideKey(g)
	while nxt and n < 3 do
		n = n + 1
		for i, st in ipairs(ns.ensureParsed(ns.guides[nxt])) do
			for _, goal in ipairs(st.goals) do if goal.verb == "turnin" and goal.id then ids[goal.id] = ids[goal.id] or -i end end
		end
		nxt = ns:NextGuideKey(ns.guides[nxt])
	end
	return ids
end

local function addCandidate(list, seen, id, source, level, ahead)
	if not id or seen[id] then return end
	local _, _, _, equipLoc, _, classID, subClassID = ns.ItemInfoInstant(id)
	local slots = equipLoc and ns.GearAdvisor and ns.GearAdvisor.SlotsFor(equipLoc)
	if not slots then return end
	local name, link, _, _, minLevel = ns.ItemInfo(id)
	if not link then
		if not pendingLoad[id] and C_Item and C_Item.RequestLoadItemDataByID then
			pendingLoad[id] = true
			pcall(C_Item.RequestLoadItemDataByID, id)
		end
		return
	end
	if (minLevel or 1) > level + (ahead or 0) then return end
	if not ns.GearAdvisor.Usable(myClass(), level, classID, subClassID) then return end
	seen[id] = true
	list[#list + 1] = { id = id, link = link, name = name, slots = slots, score = G:ScoreLink(link), source = source,
		pair = equipLoc == "INVTYPE_2HWEAPON" and { 16, 17 } or nil }
end

function G:Candidates(ahead)
	local level = UnitLevel("player") or 1
	local list, seen = {}, {}
	for _, d in ipairs(ns.dungeonData or {}) do
		if G.InReach(level, d.lo, d.hi, 1, 0) then
			for _, b in ipairs(d.bosses) do
				for _, it in ipairs(b.loot) do
					addCandidate(list, seen, it[1], { kind = "dungeon", dungeon = d.key, boss = b.name, chance = it[2] },
						level, ahead)
				end
			end
		end
	end
	local quests = routeQuestIDs()
	for qid, stepIdx in pairs(quests) do
		local r = ns.db.rewards[qid]
		if r then
			for _, id in ipairs(r.choice or {}) do addCandidate(list, seen, id, { kind = "quest", quest = qid, step = stepIdx }, level, ahead) end
			for _, id in ipairs(r.reward or {}) do addCandidate(list, seen, id, { kind = "quest", quest = qid, step = stepIdx }, level, ahead) end
		end
	end
	local Container = C_Container or {}
	for bag = 0, 4 do
		for slot = 1, (Container.GetContainerNumSlots and Container.GetContainerNumSlots(bag)) or 0 do
			local link = Container.GetContainerItemLink and Container.GetContainerItemLink(bag, slot)
			local id = link and ns.ItemInfoInstant(link)
			if id then addCandidate(list, seen, id, { kind = "bag" }, level, 0) end
		end
	end
	return list
end

-- O plano: por espaço, o equipado e a melhor melhoria. Em cache até algo mudar.
function G:Plan(ahead)
	ahead = ahead or 0
	if cache and cache.ahead == ahead then return cache end
	local eq = equippedScores()
	local best = G.BestPerSlot(G:Candidates(ahead), eq)
	cache = { ahead = ahead, equipped = eq, best = best }
	return cache
end

-- Quanto um item melhora sobre o equipado (o pior dos espaços dele): ganho relativo, ou nil (não cabe, não é da
-- classe, nível alto demais para `ahead`, ainda sem dado).
function G:GainOf(id, ahead)
	local level = UnitLevel("player") or 1
	local _, _, _, equipLoc, _, classID, subClassID = ns.ItemInfoInstant(id)
	local slots = equipLoc and ns.GearAdvisor and ns.GearAdvisor.SlotsFor(equipLoc)
	if not slots then return nil end
	local _, link, _, _, minLevel = ns.ItemInfo(id)
	if not link then
		if not pendingLoad[id] and C_Item and C_Item.RequestLoadItemDataByID then
			pendingLoad[id] = true; pcall(C_Item.RequestLoadItemDataByID, id)
		end
		return nil
	end
	if (minLevel or 1) > level + (ahead or 0) or not ns.GearAdvisor.Usable(myClass(), level, classID, subClassID) then
		return nil
	end
	local eq = G:Plan(ahead or 0).equipped
	local base
	if equipLoc == "INVTYPE_2HWEAPON" then base = G.PairBase(eq, { 16, 17 })
	else for _, s in ipairs(slots) do if eq[s] and (not base or eq[s] < base) then base = eq[s] end end end
	if not base then return nil end
	local sc = G:ScoreLink(link)
	if sc <= base then return nil end
	return base > 0 and (sc - base) / base or 1
end

function G:Invalidate()
	cache = nil
	if ns.Hub then ns.Hub:Refresh() end
end

function G:Summary()
	local plan = G:Plan(0)
	local n, top = 0, nil
	for _, b in pairs(plan.best) do
		n = n + 1
		if not top or b.gain > top.gain then top = b end
	end
	local L = ns.L
	local spec = G:Spec()
	local text
	if top then
		local name = select(1, ns.ItemInfo(top.id)) or "?"
		text = L.V3_GEAR_TOP:format(name, math.floor(top.gain * 100 + 0.5), G.SourceText(top.source))
	end
	return { title = n > 0 and L.V3_GEAR_N:format(n) or L.V3_GEAR_NONE, text = text or L.V3_GEAR_SPEC:format(G.SpecLabel(spec)),
		link = L.V3_SEE_GEAR }, n
end

function G.SpecLabel(spec)
	return spec and (rawget(ns.L, "SPEC_" .. myClass() .. "_" .. spec) or spec) or ns.L.V3_SPEC_UNKNOWN
end

function G.SourceText(src)
	local L = ns.L
	if not src then return "" end
	if src.kind == "dungeon" then
		return L.V3_SRC_DUNGEON:format(src.dungeon, src.boss, math.floor((src.chance or 0) + 0.5))
	elseif src.kind == "quest" then
		local title = ns.QuestState and ns.QuestState.Title(src.quest) or tostring(src.quest)
		return src.step and src.step > 0 and L.V3_SRC_QUEST_STEP:format(title, src.step) or L.V3_SRC_QUEST:format(title)
	elseif src.kind == "bag" then
		return L.V3_SRC_BAG
	end
	return ""
end

-- os dados chegam aos poucos: recalcula quando param de chegar
local reloading
ns:On("GET_ITEM_INFO_RECEIVED", function(_, id)
	if not pendingLoad[id] then return end
	pendingLoad[id] = nil
	if reloading then return end
	reloading = true
	C_Timer.After(0.6, function() reloading = nil; G:Invalidate() end)
end)
for _, ev in ipairs({ "PLAYER_EQUIPMENT_CHANGED", "PLAYER_LEVEL_UP", "BAG_UPDATE_DELAYED", "CHARACTER_POINTS_CHANGED" }) do
	ns:On(ev, function() cache = nil end)
end

-- recompensas de quest vistas no jogo: a escolha e o que vem sempre (Equipamento). Na hora (sem atraso): a
-- automação (StepTracker) aceita e entrega no mesmo evento, e chama isto antes de agir.
local function harvestRewards()
	local qid = GetQuestID and GetQuestID()
	if not (qid and qid > 0 and ns.db) then return end
	local r = { choice = {}, reward = {} }
	for i = 1, (GetNumQuestChoices and GetNumQuestChoices()) or 0 do
		local link = GetQuestItemLink("choice", i)
		local id = link and ns.ItemInfoInstant(link)
		if id then r.choice[#r.choice + 1] = id end
	end
	for i = 1, (GetNumQuestRewards and GetNumQuestRewards()) or 0 do
		local link = GetQuestItemLink("reward", i)
		local id = link and ns.ItemInfoInstant(link)
		if id then r.reward[#r.reward + 1] = id end
	end
	if #r.choice > 0 or #r.reward > 0 then ns.db.rewards[qid] = r; cache = nil end
end
G.HarvestRewards = function() pcall(harvestRewards) end
ns:On("QUEST_DETAIL", G.HarvestRewards)
ns:On("QUEST_COMPLETE", G.HarvestRewards)

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
local SLOT_LABEL = { [1] = "HEADSLOT", [2] = "NECKSLOT", [3] = "SHOULDERSLOT", [15] = "BACKSLOT", [5] = "CHESTSLOT",
	[9] = "WRISTSLOT", [10] = "HANDSSLOT", [6] = "WAISTSLOT", [7] = "LEGSSLOT", [8] = "FEETSLOT", [11] = "FINGER0SLOT",
	[12] = "FINGER1SLOT", [13] = "TRINKET0SLOT", [14] = "TRINKET1SLOT", [16] = "MAINHANDSLOT",
	[17] = "SECONDARYHANDSLOT", [18] = "RANGEDSLOT" }
local function slotName(s)
	local g = SLOT_LABEL[s] and _G[SLOT_LABEL[s]]
	return g or tostring(s)
end

local WEIGHT_KEYS = { "str", "agi", "sta", "int", "spi", "ap", "sp", "heal", "crit", "hit", "haste", "def", "avoid",
	"armor", "block", "mp5", "dps" }

StaticPopupDialogs["LODESTAR_PAWN"] = {
	text = ns.L.V3_PAWN_PROMPT, button1 = OKAY, button2 = CANCEL, hasEditBox = true, editBoxWidth = 360,
	OnAccept = function(self)
		local eb = self.editBox or self.EditBox
		local w = G.ParsePawn(eb and eb:GetText())
		if w then G:SetWeights(w); ns:Print(ns.L.V3_PAWN_OK) else ns:Print(ns.L.V3_PAWN_BAD) end
	end,
	timeout = 0, whileDead = true, hideOnEscape = true, preferredIndex = 3,
}

local PAGE = { label = ns.L.V3_GEAR, glyph = "escudo", order = 4 }
local ahead = 0

PAGE.build = function(page, H)
	local C, L = UI.COL, ns.L
	H.PageTitle(page, L.V3_GEAR)
	local cw = H:ContentWidth() - 8
	-- coluna da spec e dos pesos
	local side = UI.Card(page, { color = C.card })
	side:SetPoint("TOPLEFT", 0, -52); side:SetSize(232, 520)
	page.specLabel = H.Label(side, L.V3_SPEC); page.specLabel:SetPoint("TOPLEFT", 16, -14)
	page.specBtns = {}
	for i = 1, 3 do
		local b = UI.Button(side, "", 200, 28)
		b:SetPoint("TOPLEFT", 16, -32 - (i - 1) * 32)
		page.specBtns[i] = b
	end
	page.wLabel = H.Label(side, L.V3_WEIGHTS); page.wLabel:SetPoint("TOPLEFT", 16, -138)
	page.wRows = {}
	for i, k in ipairs(WEIGHT_KEYS) do
		local r = CreateFrame("Frame", nil, side); r:SetSize(200, 18)
		r:SetPoint("TOPLEFT", 16, -156 - (i - 1) * 19)
		r.name = UI.Text(r, 12, C.muted); r.name:SetPoint("LEFT"); r.name:SetWidth(70)
		r.name:SetText(L["STAT_" .. k:upper()] or k)
		r.bar = UI.Bar(r, C.accentBright); r.bar:SetSize(90, 4); r.bar:SetPoint("LEFT", 74, 0)
		r.val = UI.Text(r, 12, C.active, { num = true, justify = "RIGHT" }); r.val:SetPoint("RIGHT")
		r.minus = CreateFrame("Button", nil, r); r.minus:SetAllPoints(r); r.minus:RegisterForClicks("AnyUp")
		r.minus:SetScript("OnClick", function(_, btn)
			local w = {}
			for kk, vv in pairs(G:Weights()) do w[kk] = vv end
			local step = IsShiftKeyDown() and 0.5 or 0.1
			w[k] = math.max(0, math.floor(((w[k] or 0) + (btn == "RightButton" and -step or step)) * 10 + 0.5) / 10)
			G:SetWeights(w)
		end)
		r.minus:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetText(L.V3_WEIGHT_TIP, nil, nil, nil, nil, true); GameTooltip:Show()
		end)
		r.minus:SetScript("OnLeave", function() GameTooltip:Hide() end)
		page.wRows[i] = r
	end
	local reset = UI.Button(side, L.V3_RESET, 96, 26); reset:SetPoint("BOTTOMLEFT", 16, 14)
	reset:SetScript("OnClick", function() G:ResetWeights() end)
	local pawn = UI.Button(side, L.V3_PAWN, 96, 26); pawn:SetPoint("LEFT", reset, "RIGHT", 8, 0)
	pawn:SetScript("OnClick", function() StaticPopup_Show("LODESTAR_PAWN") end)

	-- modo e tabela
	page.mode = UI.Segmented(page, { { L.V3_GEAR_NOW, 0 }, { L.V3_GEAR_SOON, 5 } }, function(v) ahead = v; PAGE.refresh(page, H) end)
	page.mode:SetPoint("TOPRIGHT", -40, 2); page.mode:Select(0)
	local tw = cw - 232 - 14
	page.table = UI.Card(page, { color = C.card })
	page.table:SetPoint("TOPLEFT", side, "TOPRIGHT", 14, 0); page.table:SetSize(tw, 520)
	local head = CreateFrame("Frame", nil, page.table); head:SetPoint("TOPLEFT", 1, -1); head:SetPoint("TOPRIGHT", -1, -1)
	head:SetHeight(30)
	local hbg = UI.Rect(head, "BACKGROUND", C.header); hbg:SetAllPoints()
	local cols = { 14, 120, 120 + math.floor((tw - 230) * 0.42), tw - 70 }
	page.cols = cols
	local hl = { L.V3_COL_SLOT, L.V3_COL_WEAR, L.V3_COL_BEST, L.V3_COL_GAIN }
	for i, t in ipairs(hl) do
		local fs = H.Label(head, t); fs:SetPoint("LEFT", cols[i], 0)
		if i == 4 then fs:SetPoint("RIGHT", head, "RIGHT", -14, 0); fs:SetJustifyH("RIGHT") end
	end
	page.scroll, page.list = UI.Scroll(page.table)
	page.scroll:SetPoint("TOPLEFT", 0, -32); page.scroll:SetPoint("BOTTOMRIGHT", -8, 8)
	page.rows = {}
	page.note = UI.Text(page, 11.5, C.dim, { wrap = true })
	page.note:SetPoint("TOPLEFT", page.table, "BOTTOMLEFT", 0, -8); page.note:SetWidth(tw)
	page.note:SetText(L.V3_GEAR_NOTE)
end

local function gearRow(page)
	local C = UI.COL
	local r = CreateFrame("Frame", nil, page.list)
	r:SetHeight(40)
	local cols = page.cols
	r.slot = UI.Text(r, 12.5, C.muted, { wrap = false }); r.slot:SetPoint("TOPLEFT", cols[1], -6); r.slot:SetWidth(cols[2] - cols[1] - 6)
	r.wear = UI.Text(r, 12.5, C.active, { wrap = false }); r.wear:SetPoint("TOPLEFT", cols[2], -6); r.wear:SetWidth(cols[3] - cols[2] - 8)
	r.best = UI.Text(r, 12.5, C.active, { bold = true, wrap = false }); r.best:SetPoint("TOPLEFT", cols[3], -6)
	r.best:SetWidth(cols[4] - cols[3] - 8)
	r.src = UI.Text(r, 11, C.dim, { num = true, wrap = false }); r.src:SetPoint("TOPLEFT", r.best, "BOTTOMLEFT", 0, -2)
	r.src:SetWidth(cols[4] - cols[3] - 8)
	r.gain = UI.Text(r, 14, C.done, { num = true, justify = "RIGHT" }); r.gain:SetPoint("TOPRIGHT", r, "TOPRIGHT", -14, -8)
	r.sep = UI.Rect(r, "ARTWORK", C.line); r.sep:SetHeight(1); r.sep:SetPoint("BOTTOMLEFT", 8, 0); r.sep:SetPoint("BOTTOMRIGHT", -8, 0)
	r:EnableMouse(true)
	r:SetScript("OnEnter", function(self)
		if self._link then GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetHyperlink(self._link); GameTooltip:Show() end
	end)
	r:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return r
end

PAGE.refresh = function(page, H)
	local C, L = UI.COL, ns.L
	local class = myClass()
	local spec = G:Spec(class)
	page.subFS:SetText(L.V3_GEAR_SUB:format(UnitLevel("player") or 1, UnitClass("player") or "", G.SpecLabel(spec)))
	for i, b in ipairs(page.specBtns) do
		local s = G:Specs(class)[i]
		b:SetShown(s ~= nil)
		if s then
			b.text:SetText(G.SpecLabel(s) .. (ns.db.gear.spec[class] == nil and s == spec and (" · " .. L.V3_AUTO) or ""))
			b:SetScript("OnClick", function() G:SetSpec(s) end)
			if b.line then b.line:SetVertexColor(unpackc(s == spec and C.accentBright or C.border)) end
		end
	end
	local w = G:Weights(class, spec)
	local maxw = 0.01
	for _, v in pairs(w) do maxw = math.max(maxw, v) end
	for i, k in ipairs(WEIGHT_KEYS) do
		local r = page.wRows[i]
		r.val:SetText(("%.1f"):format(w[k] or 0)); r.bar:SetProgress((w[k] or 0) / maxw)
		r.name:SetTextColor(unpackc((w[k] or 0) > 0 and C.active or C.faded))
	end
	local plan = G:Plan(ahead)
	local y = 0
	for i, s in ipairs(INV) do
		local r = page.rows[i] or gearRow(page); page.rows[i] = r
		r:ClearAllPoints(); r:SetPoint("TOPLEFT", page.list, "TOPLEFT", 0, -y); r:SetPoint("RIGHT", page.list, "RIGHT")
		r.slot:SetText(slotName(s))
		local link = GetInventoryItemLink("player", s)
		r.wear:SetText(link or ("|cff%s%s|r"):format(UI.Hex("faded"), L.V3_EMPTY_SLOT))
		local b = plan.best[s]
		if b then
			local name, blink = ns.ItemInfo(b.id)
			r.best:SetText(blink or name or "?"); r.src:SetText(G.SourceText(b.source))
			r.gain:SetText(("+%d%%"):format(math.floor(b.gain * 100 + 0.5))); r.gain:SetTextColor(unpackc(C.done))
			r._link = blink
		else
			r.best:SetText(("|cff%s%s|r"):format(UI.Hex(link and "done" or "faded"), link and L.V3_GEAR_BEST or L.V3_GEAR_NOTHING))
			r.src:SetText(""); r.gain:SetText(link and "" or "—"); r.gain:SetTextColor(unpackc(link and C.done or C.faded))
			r._link = link
		end
		r:Show()
		y = y + 42
	end
	page.list:SetHeight(y)
	page.scroll.Sync()
end

PAGE.count = function()
	local _, n = G:Summary()
	return n and n > 0 and n or nil, "ok"
end

if ns.Hub then ns.Hub:RegisterPage("gear", PAGE) end
