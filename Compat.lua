--=============================================================================
-- Compat: tudo que depende de QUAL cliente está rodando mora aqui.
-- Nenhum módulo espalha guarda de C_* nem testa versão por conta própria.
--
-- Clientes suportados:
--   TBC Anniversary  (2.5.x, interface 205xx)  -- o de sempre
--   WoW: Forever     (1.60.x, interface 160xx) -- "Project Camelot", beta 2026-09-17
--
-- O Forever roda a interface de RETAIL sobre conteúdo vanilla: tem Secret Values,
-- tooltip de retail e nenhum Outland. Ele não expõe WOW_PROJECT_ID próprio nem
-- API de detecção — o número de interface é a única coisa que o cliente diz.
--=============================================================================
local ADDON, ns = ...

local version, build, _, interface = GetBuildInfo()
interface = tonumber(interface) or 0

ns.Client = {
	version   = version,
	build     = build,
	interface = interface,
	isForever = interface >= 16000 and interface < 20000,
	isTBC     = interface >= 20500 and interface < 30000,
}

-- Nível máximo: no Anniversary é 70 e sempre foi; no Forever quem responde é o
-- cliente (o beta está capado em 30, o lançamento vai a 60).
local function askedMaxLevel(fn)
	local n = fn and tonumber(fn())
	if n and n > 0 then return n end     -- 0 é verdadeiro em Lua: mataria o ETA calado
end
ns.Client.maxLevel = ns.Client.isTBC and 70
	or askedMaxLevel(GetMaxLevelForPlayerExpansion)
	or askedMaxLevel(GetMaxPlayerLevel)
	or 60

--------------------------------------------------------------------------------
-- Secret Values (sistema de retail, ativo no Forever)
--
-- Quando a identidade de uma unidade é restrita, ou o chat entra em lockdown, o
-- valor chega "secreto": dá pra repassar, mas comparar, concatenar, formatar ou
-- fatiar ESTOURA. Quem lê, pergunta antes.
--------------------------------------------------------------------------------
function ns.IsSecret(...)
	if not issecretvalue then return false end
	for i = 1, select("#", ...) do
		if issecretvalue((select(i, ...))) then return true end
	end
	return false
end

-- "Creature-0-4467-0-25-6-000019B300" -> 6. GUID de jogador, secreto (identidade
-- restrita no Forever) ou fora do formato: nil — fatiar um secreto estoura.
function ns.NpcID(guid)
	if not guid or ns.IsSecret(guid) then return nil end
	local kind, _, _, _, _, id = strsplit("-", guid)
	if kind == "Creature" or kind == "Vehicle" then return tonumber(id) end
	return nil
end

--------------------------------------------------------------------------------
-- Tooltip
--
-- OnTooltipSetUnit é script de frame no Anniversary; no Forever o tooltip é o de
-- retail e a entrada é o TooltipDataProcessor — um registro por tipo de dado,
-- servindo todos os tooltips de uma vez.
--------------------------------------------------------------------------------
function ns.HookUnitTooltip(fn)          -- fn(tooltip, unit)
	if TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall and Enum
		and Enum.TooltipDataType and Enum.TooltipDataType.Unit
		and TooltipUtil and TooltipUtil.GetDisplayedUnit then
		TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Unit, function(tt)
			local _, unit = TooltipUtil.GetDisplayedUnit(tt)
			if unit then fn(tt, unit) end
		end)
		return true
	end
	if GameTooltip and GameTooltip.HasScript and GameTooltip:HasScript("OnTooltipSetUnit") then
		GameTooltip:HookScript("OnTooltipSetUnit", function(tt)
			local _, unit = tt:GetUnit()
			if unit then fn(tt, unit) end
		end)
		return true
	end
	return false
end
