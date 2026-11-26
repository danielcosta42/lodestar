--=============================================================================
-- Updates — versão nova (issue #92): quando alguém da família (a rede ChehulNet: guilda, grupo, por perto) roda um
-- Lodestar mais novo que o seu, um aviso uma vez por sessão, com a versão. Nada é enviado por isto: a versão já vai
-- no anúncio da rede (ChehulNetWire.lua, "v=").
-- No topo, o núcleo puro (comparação, testada fora do jogo). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local U = {}
ns.Updates = U

-- "2.15.0" -> { 2, 15, 0 }; "dev" ou lixo -> nil
function U.Parse(v)
	if type(v) ~= "string" then return nil end
	local a, b, c = v:match("^v?(%d+)%.(%d+)%.?(%d*)$")
	if not a then return nil end
	return { tonumber(a), tonumber(b), tonumber(c) or 0 }
end

-- 1 se a > b, -1 se a < b, 0 igual; nil se algum não é versão
function U.Compare(a, b)
	local x, y = U.Parse(a), U.Parse(b)
	if not (x and y) then return nil end
	for i = 1, 3 do
		if x[i] ~= y[i] then return x[i] > y[i] and 1 or -1 end
	end
	return 0
end

-- A versão do Lodestar no anúncio da rede: o "v=" que vem antes do "lvl=" (as caps do "ls", ChehulNetWire.lua).
function U.FromCaps(caps)
	return type(caps) == "string" and caps:match("v=([%w%.%-]+),lvl=%d+") or nil
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local told
ns:Every(60, function()
	if told or not ns.version or not U.Parse(ns.version) then return end
	local CN = _G.ChehulNet
	if not (CN and CN.Peers) then return end
	local newest
	for name, p in pairs(CN:Peers() or {}) do
		local runs = not CN.PeerRuns or CN:PeerRuns(name, "ls")
		local v = runs and U.FromCaps(p.caps)
		if v and U.Compare(v, ns.version) == 1 and (not newest or U.Compare(v, newest) == 1) then newest = v end
	end
	if newest then
		told = true
		if ns.Toast then
			ns.Toast:Show({ title = ns.L.UPD_T, text = ns.L.UPD_S:format(newest, ns.version), color = ns.UI.COL.tip, hold = 10 })
		end
		ns:Printf(ns.L.UPD_S, newest, ns.version)
	end
end)
