--=============================================================================
-- Compat: tudo que depende do cliente mora aqui. Nenhum módulo espalha guarda
-- de C_* nem testa versão por conta própria.
--
-- O Lodestar é WoW: Forever e só ("Project Camelot", 1.60.x, interface 160xx).
-- Aquele cliente roda a interface de RETAIL sobre conteúdo vanilla: tem Secret
-- Values e tooltip de retail, e reporta WOW_PROJECT_ID = 1, igual ao retail —
-- então o número de interface é a única coisa que identifica ele.
--=============================================================================
local ADDON, ns = ...

local version, build, _, interface = GetBuildInfo()
interface = tonumber(interface) or 0

ns.Client = {
	version   = version,
	build     = build,
	interface = interface,
	-- Só para diagnóstico: o .toc já restringe a carga. Se alguém forçar
	-- "carregar desatualizados" em outro cliente, o addon avisa em vez de
	-- se comportar de um jeito que ninguém previu.
	isForever = interface >= 16000 and interface < 20000,
}

-- Nível máximo: quem responde é o cliente (o beta está capado em 30).
local function askedMaxLevel(fn)
	local n = fn and tonumber(fn())
	if n and n > 0 then return n end     -- 0 é verdadeiro em Lua: mataria o ETA calado
end
ns.Client.maxLevel = askedMaxLevel(GetMaxLevelForPlayerExpansion)
	or askedMaxLevel(GetMaxPlayerLevel)
	or 60

--------------------------------------------------------------------------------
-- Secret Values
--
-- Quando a identidade de uma unidade é restrita, ou o chat entra em lockdown, o
-- valor chega "secreto": dá pra repassar, mas comparar, concatenar, formatar ou
-- fatiar ESTOURA. Quem lê, pergunta antes.
--
-- Na prática, neste cliente, o que é secreto é estado de COMBATE (vida, auras,
-- cast, ameaça). Identidade de NPC vem limpa — colhemos id e nome de quest giver
-- sem problema. Mas a doc gerada marca UnitGUID/UnitName com os predicados
-- SecretWhenUnitIdentityRestricted / SecretWhenUnitNameIdentityRestricted, então
-- perguntamos antes em vez de depender de um comportamento que pode apertar.
--------------------------------------------------------------------------------
function ns.IsSecret(...)
	if not issecretvalue then return false end
	for i = 1, select("#", ...) do
		if issecretvalue((select(i, ...))) then return true end
	end
	return false
end

-- "Creature-0-4467-0-25-6-000019B300" -> 6. GUID de jogador, secreto ou fora do
-- formato: nil — fatiar um secreto estoura.
function ns.NpcID(guid)
	if not guid or ns.IsSecret(guid) then return nil end
	local kind, _, _, _, _, id = strsplit("-", guid)
	if kind == "Creature" or kind == "Vehicle" then return tonumber(id) end
	return nil
end

--------------------------------------------------------------------------------
-- Tooltip: aqui é o de retail, entrada pelo TooltipDataProcessor — um registro
-- por tipo de dado, servindo todos os tooltips de uma vez.
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
	return false
end
