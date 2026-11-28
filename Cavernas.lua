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

local function dist(a, b) return math.sqrt((a.x - b.x) ^ 2 + (a.y - b.y) ^ 2) end

-- Distância de `pos` ao caminho (segmentos) e o índice do segmento mais perto
function CV.DistTo(pts, pos)
	local best, bi = math.huge, 1
	for i = 1, #pts - 1 do
		local a, b = pts[i], pts[i + 1]
		local vx, vy = b.x - a.x, b.y - a.y
		local l2 = vx * vx + vy * vy
		local t = l2 > 0 and math.max(0, math.min(1, ((pos.x - a.x) * vx + (pos.y - a.y) * vy) / l2)) or 0
		local d = dist(pos, { x = a.x + vx * t, y = a.y + vy * t })
		if d < best then best, bi = d, i end
	end
	if #pts == 1 then best = dist(pos, pts[1]) end
	return best, bi
end

-- O que resta do caminho a partir de `pos` (já dentro): `pos` e os pontos depois do segmento mais perto
function CV.Rest(pts, pos)
	local _, bi = CV.DistTo(pts, pos)
	local out = { { c = pos.c, x = pos.x, y = pos.y } }
	for i = bi + 1, #pts do out[#out + 1] = pts[i] end
	return out
end

function CV.Length(pts)
	local L = 0
	for i = 2, #pts do L = L + dist(pts[i - 1], pts[i]) end
	return L
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

-- O jogador está dentro desta caverna: lugar fechado (IsIndoors) e perto do caminho dela
function CV:Inside(e, pos)
	if not (e and pos and IsIndoors and IsIndoors()) then return false end
	if pos.c ~= e.c then return false end
	return (CV.DistTo(CV.Points(e), pos)) <= DENTRO_JD
end

-- Para o Travel: a caverna do destino, se ativa -> { nome, entrada, pts, dentro } | nil
function CV:Route(dest, pos)
	local e = CV.Of(dest, ns.caves)
	if not e then return nil end
	local key = CV.Key(dest.zone, dest.x, dest.y)
	local dentro = CV:Inside(e, pos)
	if not CV.Active(e, escolhas()[key], dentro) then return nil end
	local w = ns.caves.w and ns.caves.w[e.w]
	local pts = CV.Points(e)
	return { nome = w and w.n ~= "" and w.n or nil, entrada = pts[1], pts = pts, dentro = dentro, s = e.s }
end

-- Para a janela do guia: a caverna do destino do guia de agora, ativa ou não -> { nome, s, ativa, key } | nil
function CV:Current()
	local dest = ns.Destinations and ns.Destinations.GuideTarget and ns.Destinations.GuideTarget()
	local e = CV.Of(dest, ns.caves)
	if not e then return nil end
	local key = CV.Key(dest.zone, dest.x, dest.y)
	local pos = ns.Travel and ns.Travel.PlayerWorld and ns.Travel.PlayerWorld()
	local w = ns.caves.w and ns.caves.w[e.w]
	return { nome = w and w.n ~= "" and w.n or nil, s = e.s, key = key,
		ativa = CV.Active(e, escolhas()[key], CV:Inside(e, pos)) }
end

-- O jogador troca: pela entrada <-> por cima (e a rota se refaz)
function CV:Toggle()
	local cur = CV:Current()
	if not cur then return end
	escolhas()[cur.key] = not cur.ativa
	if ns.Travel then ns.Travel:Replan(true) end
	if ns.Viewer then ns.Viewer:Refresh() end
end

-- entrou ou saiu da caverna do destino (por qualquer entrada): a rota se refaz de onde o jogador está
local estado
ns:Every(2, function()
	local cur = CV:Current()
	local agora = cur and (cur.key .. ":" .. tostring(cur.ativa)) or nil
	if agora ~= estado then
		local antes = estado
		estado = agora
		if antes ~= nil and agora ~= nil and ns.Travel then ns.Travel:Replan(true) end
		if ns.Viewer then ns.Viewer:Refresh() end
	end
end)
