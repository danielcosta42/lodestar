--=============================================================================
-- GearAdvisor — sugere upgrades: compara itens equipáveis na bolsa com o que
-- está equipado (peso de stats por classe) e avisa quando acha uma melhoria.
-- Proficiência de armadura via classID/subClassID NUMÉRICOS (à prova de idioma).
-- Expõe ns.GearAdvisor:Score(link) — reutilizado na escolha de recompensa.
--=============================================================================
local ADDON, ns = ...
local GA = {}
ns.GearAdvisor = GA

local Container = C_Container
local function bagSlots(bag)
	local f = (Container and Container.GetContainerNumSlots) or GetContainerNumSlots
	return (f and f(bag)) or 0
end
local function bagLink(bag, slot)
	local f = (Container and Container.GetContainerItemLink) or GetContainerItemLink
	return f and f(bag, slot)
end

-- GetItemStats key -> stat canônico (as keys ITEM_MOD_* são constantes globais)
local CANON = {
	ITEM_MOD_STRENGTH_SHORT = "str", ITEM_MOD_AGILITY_SHORT = "agi",
	ITEM_MOD_INTELLECT_SHORT = "int", ITEM_MOD_SPIRIT_SHORT = "spi",
	ITEM_MOD_STAMINA_SHORT = "sta", ITEM_MOD_ATTACK_POWER_SHORT = "ap",
	ITEM_MOD_RANGED_ATTACK_POWER_SHORT = "rap", ITEM_MOD_SPELL_POWER_SHORT = "sp",
	ITEM_MOD_SPELL_DAMAGE_DONE_SHORT = "sp", ITEM_MOD_SPELL_HEALING_DONE_SHORT = "heal",
	ITEM_MOD_CRIT_RATING_SHORT = "crit", ITEM_MOD_HIT_RATING_SHORT = "hit",
	ITEM_MOD_HASTE_RATING_SHORT = "haste", ITEM_MOD_DEFENSE_SKILL_RATING_SHORT = "def",
	ITEM_MOD_DODGE_RATING_SHORT = "avoid", ITEM_MOD_PARRY_RATING_SHORT = "avoid",
	RESISTANCE0_NAME = "armor",
}
-- Pesos aproximados por classe (direcional, não perfeito).
local W = {
	WARRIOR = { str=2, ap=1, sta=1.2, agi=1, crit=1, hit=1.2, def=1, avoid=.8, armor=.05 },
	PALADIN = { str=2, int=1, sta=1.2, ap=1, sp=1, heal=.8, crit=1, hit=1, spi=.5, armor=.05 },
	HUNTER  = { agi=2, rap=1, ap=.6, sta=1, crit=1, hit=1.2, int=.4 },
	ROGUE   = { agi=2, ap=1, sta=1, crit=1, hit=1.2 },
	PRIEST  = { int=1.5, spi=1, sp=2, heal=1.5, sta=1, crit=1, hit=1 },
	SHAMAN  = { int=1.3, sp=1.3, heal=1, ap=1, agi=1, str=.8, sta=1, crit=1, hit=1, spi=.6 },
	MAGE    = { int=2, sp=2, crit=1.2, hit=1.2, spi=.5, sta=.6 },
	WARLOCK = { int=1.5, sp=2, sta=1, crit=1, hit=1.2, spi=.4 },
	DRUID   = { int=1.3, sp=1.3, heal=1, agi=1.5, str=.8, sta=1, spi=.8, crit=1, hit=1 },
}
-- INVTYPE -> slot(s) de inventário (constantes, à prova de idioma)
local SLOTS = {
	INVTYPE_HEAD=1, INVTYPE_NECK=2, INVTYPE_SHOULDER=3, INVTYPE_CLOAK=15,
	INVTYPE_CHEST=5, INVTYPE_ROBE=5, INVTYPE_WAIST=6, INVTYPE_LEGS=7, INVTYPE_FEET=8,
	INVTYPE_WRIST=9, INVTYPE_HAND=10, INVTYPE_FINGER={11,12}, INVTYPE_TRINKET={13,14},
	INVTYPE_WEAPON={16,17}, INVTYPE_2HWEAPON=16, INVTYPE_WEAPONMAINHAND=16,
	INVTYPE_WEAPONOFFHAND=17, INVTYPE_SHIELD=17, INVTYPE_HOLDABLE=17,
	INVTYPE_RANGED=18, INVTYPE_RANGEDRIGHT=18, INVTYPE_THROWN=18, INVTYPE_RELIC=18,
}
local ARMOR_RANK = { [1]=1, [2]=2, [3]=3, [4]=4 }  -- cloth, leather, mail, plate
local function maxArmor(class, level)
	if class=="MAGE" or class=="PRIEST" or class=="WARLOCK" then return 1 end
	if class=="ROGUE" or class=="DRUID" then return 2 end
	if class=="HUNTER" or class=="SHAMAN" then return level>=40 and 3 or 2 end
	if class=="WARRIOR" or class=="PALADIN" then return level>=40 and 4 or 3 end
	return 4
end
local function usable(class, level, classID, subClassID)
	if classID == 4 then                       -- Armadura
		local r = ARMOR_RANK[subClassID]
		if not r then return true end          -- escudo/miscelânea: permite
		return r <= maxArmor(class, level)
	end
	return true                                -- armas etc.: aproxima como usável
end

--------------------------------------------------------------------------------
function GA:Score(link, class)
	class = class or select(2, UnitClass("player"))
	local w = W[class]; if not (w and link) then return 0 end
	local s = 0
	local stats = GetItemStats and GetItemStats(link)
	if stats then
		for k, v in pairs(stats) do
			local c = CANON[k]
			if c and w[c] then s = s + v * w[c] end
		end
	end
	local ilvl = select(4, GetItemInfo(link)) or 0
	return s + ilvl * 0.5
end

local function slotScore(invSlot, class)
	local link = GetInventoryItemLink("player", invSlot)
	if not link then return -1 end             -- slot vazio: qualquer coisa é upgrade
	return GA:Score(link, class)
end

--------------------------------------------------------------------------------
-- Varredura das bolsas: acha a melhor melhoria ainda não avisada.
--------------------------------------------------------------------------------
local advised = {}          -- [itemID] = true (uma vez por sessão)
local function scan()
	if not (ns.db and ns.db.gearAdvisor and ns.currentGuide) then return end
	if not GetItemInfoInstant then return end
	local class = select(2, UnitClass("player"))
	local level = UnitLevel("player") or 1
	if not W[class] then return end

	local best, bestGain
	for bag = 0, 4 do
		for slot = 1, bagSlots(bag) do
			local link = bagLink(bag, slot)
			if link and IsEquippableItem and IsEquippableItem(link) then
				local itemID, _, _, equipLoc, _, classID, subClassID = GetItemInfoInstant(link)
				local dest = equipLoc and SLOTS[equipLoc]
				if dest and itemID and not advised[itemID] and usable(class, level, classID, subClassID) then
					local sc = GA:Score(link, class)
					local eqScore = math.huge
					if type(dest) == "table" then
						for _, s in ipairs(dest) do eqScore = math.min(eqScore, slotScore(s, class)) end
					else
						eqScore = slotScore(dest, class)
					end
					local gain = sc - eqScore
					if gain > 0 and (not bestGain or gain > bestGain) then
						bestGain, best = gain, { id = itemID, link = link }
					end
				end
			end
		end
	end
	if best then
		advised[best.id] = true
		if ns.Toast then
			ns.Toast:Show({ title = ns.L.UPGRADE_FOUND, text = best.link,
				color = ns.UI.COL.accent, hold = 7, glyph = "estrela" })
		end
	end
end
GA.Scan = scan

-- coalescência (bag/level muda em rajada)
local pending
local function schedule()
	if pending then return end
	pending = true
	C_Timer.After(0.6, function() pending = false; local ok, e = pcall(scan); if not ok then ns:Debug("gear scan", e) end end)
end
ns:On("BAG_UPDATE_DELAYED", schedule)
ns:On("PLAYER_LEVEL_UP", schedule)
ns:On("PLAYER_EQUIPMENT_CHANGED", schedule)
ns:On("_GUIDE_LOADED", schedule)
