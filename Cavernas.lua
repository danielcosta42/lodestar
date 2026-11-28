--=============================================================================
-- Cavernas — o alvo do guia dentro de uma caverna (#135). O caminho pelo terreno tem um nó por célula, sem andares
-- (#112): o alvo de baixo vira o ponto de cima e a seta para em cima da rocha. O Caves.lua (gerado por
-- tools/gen_caves.py do terreno e dos WMO do cliente) diz, por ponto de `|goto`, a caverna, a entrada e o caminho de
-- dentro até o alvo. Com a caverna ativa, a rota vai até a entrada e a última perna segue esse caminho.
--   s = 1: o texto do passo cita a caverna — ativa, a não ser que o jogador escolha "ir por cima";
--   s = 0: pode estar em cima ou embaixo — só se o jogador escolher "pela entrada", ou já estiver lá dentro.
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local CV = {}
ns.Cavernas = CV

-- A chave do ponto, como o gerador escreve: "Zona|x|y" com duas casas
function CV.Key(zone, x, y)
	if not (zone and x and y) then return nil end
	return ("%s|%.2f|%.2f"):format(zone, x, y)
end

-- O ponto de caverna do destino (de um `|goto` do guia), ou nil
function CV.Of(dest, data)
	local p = data and data.p
	if not (p and dest and dest.zone) then return nil end
	return p[CV.Key(dest.zone, dest.x, dest.y)]
end

-- Ativa: s = 1 sem o "por cima" do jogador; s = 0 com o "pela entrada" do jogador ou com ele já lá dentro.
-- `escolha`: true (pela entrada) | false (por cima) | nil (o padrão)
function CV.Active(e, escolha, dentro)
	if not e then return false end
	if escolha ~= nil then return escolha end
	return e.s == 1 or (dentro and true or false)
end

-- O caminho da caverna como pontos { c, x, y } (da entrada ao alvo)
function CV.Points(e)
	local out, p = {}, e and e.p or {}
	for i = 1, #p - 1, 2 do out[#out + 1] = { c = e.c, x = p[i], y = p[i + 1] } end
	return out
end

-- O que resta do caminho a partir de `pos` (já dentro): `pos` e os pontos depois do segmento mais perto
-- (Terrain.Ahead dá o índice do próximo ponto)
function CV.Rest(pts, pos)
	local out = { { c = pos.c, x = pos.x, y = pos.y } }
	local prox = #pts
	if ns.Terrain and #pts >= 2 then prox = select(5, ns.Terrain.Ahead(pts, pos, 0)) end
	for i = prox, #pts do out[#out + 1] = pts[i] end
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local DENTRO_JD = 40          -- jd do caminho da caverna, dentro de lugar fechado: o jogador está lá

local function escolhas()
	if not ns.char then return {} end
	ns.char.caves = ns.char.caves or {}
	return ns.char.caves
end

-- A distância de `pos` ao caminho da caverna (Terrain.Ahead)
local function aoCaminho(e, pos)
	if not (e and pos and pos.c == e.c and ns.Terrain) then return math.huge end
	return select(4, ns.Terrain.Ahead(CV.Points(e), pos, 0))
end

-- O jogador está dentro desta caverna: lugar fechado (IsIndoors) e perto do caminho dela
function CV:Inside(e, pos)
	if not (e and pos and IsIndoors and IsIndoors()) then return false end
	return aoCaminho(e, pos) <= DENTRO_JD
end

-- Para o Travel: a caverna do destino, se ativa -> { nome, entrada, pts, dentro } | nil. `primeiro`: o trecho que sai
-- do jogador — só nele "já dentro" vale (o IsIndoors é do jogador, não da parada de antes)
function CV:Route(dest, pos, primeiro)
	local e = CV.Of(dest, ns.caves)
	if not e then return nil end
	local key = CV.Key(dest.zone, dest.x, dest.y)
	local dentro = primeiro and CV:Inside(e, pos) or false
	if not CV.Active(e, escolhas()[key], dentro) then return nil end
	local w = ns.caves.w and ns.caves.w[e.w]
	local pts = CV.Points(e)
	return { nome = w and w.n ~= "" and w.n or nil, entrada = pts[1], pts = pts, dentro = dentro, s = e.s }
end

-- Para a janela do guia: a caverna do destino do guia, quando é ele que a rota segue (não o manual nem o corpo),
-- ativa ou não -> { nome, s, ativa, dentro, key, e } | nil
function CV:Current()
	local D = ns.Destinations
	local dest, kind
	if D and D.Active then dest, kind = D:Active() end
	if kind ~= "guide" then return nil end
	local e = CV.Of(dest, ns.caves)
	if not e then return nil end
	local key = CV.Key(dest.zone, dest.x, dest.y)
	local pos = ns.Travel and ns.Travel.PlayerWorld and ns.Travel.PlayerWorld()
	local w = ns.caves.w and ns.caves.w[e.w]
	local dentro = CV:Inside(e, pos)
	return { nome = w and w.n ~= "" and w.n or nil, s = e.s, key = key, e = e, dentro = dentro,
		ativa = CV.Active(e, escolhas()[key], dentro) }
end

local function refaz()
	if ns.Travel and not ns.Travel:Busy() then ns.Travel:Replan(true) end      -- em voo ou a bordo, não
end

-- O jogador troca: pela entrada <-> por cima (e a rota se refaz)
function CV:Toggle()
	local cur = CV:Current()
	if not cur then return end
	escolhas()[cur.key] = not cur.ativa
	refaz()
	if ns.Viewer then ns.Viewer:Refresh() end
end

-- Entrou ou saiu da caverna do destino (por qualquer entrada), ou a troca de caverna/por cima: a rota se refaz de onde
-- o jogador está. Na perna da caverna, fora dela, longe da entrada e do caminho (saiu, ou nunca entrou): também.
local estado
local FORA_JD = 40
function CV:Watch()
	local cur = CV:Current()
	local agora = cur and (cur.key .. ":" .. tostring(cur.ativa) .. ":" .. tostring(cur.ativa and cur.dentro)) or nil
	local mudou = agora ~= estado
	local antes = estado
	estado = agora
	if mudou then
		if antes ~= nil and agora ~= nil then refaz() end
		if ns.Viewer then ns.Viewer:Refresh() end
		return
	end
	local r = cur and cur.ativa and not cur.dentro and ns.Travel and ns.Travel:Route()
	local leg = r and r.legs[r.leg]
	if leg and leg.cave then
		local pos = ns.Travel.PlayerWorld()
		local pts = CV.Points(cur.e)
		if pos and pos.c == cur.e.c and math.sqrt((pos.x - pts[1].x) ^ 2 + (pos.y - pts[1].y) ^ 2) > FORA_JD
			and aoCaminho(cur.e, pos) > FORA_JD then
			refaz()
		end
	end
end
ns:Every(2, function() CV:Watch() end)
