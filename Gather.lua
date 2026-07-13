--=============================================================================
-- Gather — coleta na rota (Onda 2b). NÃO reconstrói motor de profissão: faz
-- HANDOFF pro Profession Helper (rota de coleta, mapa, lista). Se o PH não estiver
-- instalado, avisa gentilmente. Detecção das profissões de coleta é via API do PH.
--=============================================================================
local ADDON, ns = ...
local G = {}
ns.Gather = G

local function PH() return _G.ProfessionHelper end

-- Profissões de COLETA do char (via Profession Helper). {} se PH ausente.
function G:GatheringProfs()
	local ph = PH()
	if not (ph and ph.AltManager and ph.Identity and ph.GetProfessionData) then return {} end
	local ok, list = pcall(function() return ph.AltManager:GetCharProfessions(ph.Identity:GetCharName()) end)
	if not ok or type(list) ~= "table" then return {} end
	local out = {}
	for _, p in ipairs(list) do
		local d = p.name and ph:GetProfessionData(p.name)
		if d and d.type == "gathering" then out[#out + 1] = p.name end
	end
	return out
end

-- Abre a rota de coleta do PH pra `prof`; sem arg, escolhe a única / lista / avisa.
function G:Open(prof)
	local ph = PH()
	if not ph or not ph.ToggleGatheringGuide then ns:Print(ns.L.GATHER_NEEDPH); return end
	if prof and prof ~= "" then ph:ToggleGatheringGuide(prof); return end
	local profs = self:GatheringProfs()
	if #profs == 0 then
		ns:Print(ns.L.GATHER_NONE)
	elseif #profs == 1 then
		ph:ToggleGatheringGuide(profs[1])
	else
		ns:Print(ns.L.GATHER_PICK)
		for _, p in ipairs(profs) do ns:Print("  /ls gather " .. p) end
	end
end

-- true se dá pra oferecer coleta (PH presente e char tem profissão de coleta).
function G:Available()
	return PH() ~= nil and #self:GatheringProfs() > 0
end
