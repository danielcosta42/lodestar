--=============================================================================
-- Deaths — conta mortes (por personagem). A rota até o corpo é do Destinations.
--=============================================================================
local ADDON, ns = ...

ns:On("PLAYER_DEAD", function()
	ns.char.deaths = (ns.char.deaths or 0) + 1
	if ns.Toast then
		ns.Toast:Show({ title = ns.L.YOU_DIED, text = ns.L.DEATHS_N:format(ns.char.deaths),
			color = ns.UI.COL.amber, hold = 5, glyph = "alvo" })
	end
end)
