--=============================================================================
-- Vendor — ao abrir o vendedor: repara tudo (fundos da guilda primeiro) e vende
-- o lixo cinza automaticamente. Tudo opcional (ns.db.autoRepair / autoSell).
--=============================================================================
local ADDON, ns = ...

local Container = C_Container
local function bagSlots(bag)
	local f = (Container and Container.GetContainerNumSlots) or GetContainerNumSlots
	return (f and f(bag)) or 0
end
-- retorna quality, link, noValue, count
local function bagInfo(bag, slot)
	if Container and Container.GetContainerItemInfo then
		local i = Container.GetContainerItemInfo(bag, slot)
		if type(i) == "table" then return i.quality, i.hyperlink, i.hasNoValue, i.stackCount end
	end
	local _, count, _, quality, _, _, link, _, noValue = (GetContainerItemInfo or function() end)(bag, slot)
	return quality, link, noValue, count
end
local function useContainer(bag, slot)
	local f = (Container and Container.UseContainerItem) or UseContainerItem
	if f then f(bag, slot) end
end
local function coin(v) return GetCoinTextureString and GetCoinTextureString(v) or tostring(v) end

--------------------------------------------------------------------------------
local function autoRepair()
	if not (ns.db and ns.db.autoRepair) then return end
	if not (CanMerchantRepair and CanMerchantRepair()) then return end
	local cost = GetRepairAllCost and GetRepairAllCost() or 0
	if not cost or cost <= 0 then return end

	local usedGuild = false
	if CanGuildBankRepair and CanGuildBankRepair() and RepairAllItems then
		local w = GetGuildBankWithdrawMoney and GetGuildBankWithdrawMoney() or 0
		if w == -1 or w >= cost then RepairAllItems(true); usedGuild = true end
	end
	if not usedGuild then
		if (GetMoney and GetMoney() or 0) >= cost and RepairAllItems then RepairAllItems() else return end
	end
	if ns.Toast then
		ns.Toast:Show({ title = ns.L.REPAIRED,
			text = usedGuild and ns.L.REPAIRED_GUILD or coin(cost),
			color = ns.UI.COL.tip, hold = 4 })
	end
end

local function autoSell()
	if not (ns.db and ns.db.autoSell) then return end
	local total = 0
	for bag = 0, 4 do
		for slot = 1, bagSlots(bag) do
			local quality, link, noValue, count = bagInfo(bag, slot)
			if link and quality == 0 and not noValue then      -- cinza (Poor) e vendável
				local price = select(11, GetItemInfo(link))
				total = total + (price or 0) * (count or 1)
				useContainer(bag, slot)
			end
		end
	end
	if total > 0 and ns.Toast then
		ns.Toast:Show({ title = ns.L.SOLD_JUNK, text = coin(total), color = ns.UI.COL.tip, hold = 4 })
	end
end

ns:On("MERCHANT_SHOW", function()
	autoRepair()
	autoSell()
end)
