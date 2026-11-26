-- As passagens que a grade do terreno não tem (rampa, ponte, porta, escada), gravadas em jogo com /ls passagem e
-- trazidas para cá dos relatórios (issue #99). { c = continente, z = zona (referência), pts = { x1, y1, ... } }
-- em coordenada de mundo.
local ADDON, ns = ...
if not ns then return end
ns.passagesData = {
}
