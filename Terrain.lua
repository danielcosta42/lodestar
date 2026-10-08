--=============================================================================
-- Terrain — o caminho a pé pelo terreno do cliente (Terrain0/1.lua, de tools/gen_terrain.py).
-- Grade de 16,7 jd por continente; por célula, a ligação com os 8 vizinhos e se é água funda.
-- A* só na perna a pé, decodificando só os quadrantes por onde a busca passa. Puro.
--
--   ns.Terrain.Path(dados, de, para, maxExpansoes, cederACada) -> { {c,x,y}, ... } ou nil
--   dados = ns.terrain ({ [continente] = { [linha*64+coluna] = RLE } })
--=============================================================================
local ADDON, ns = ...
local TR = {}
ns.Terrain = TR

local TILE = 1600 / 3
local CEL = TILE / 32
local TOPO = 32 * TILE
local W = 64 * 32                      -- células por lado do continente
local NADO = 2.5                       -- nadar custa: devagar, e desmonta
local SQ2 = math.sqrt(2)
local DIRS = { { -1, 0 }, { -1, 1 }, { 0, 1 }, { 1, 1 }, { 1, 0 }, { 1, -1 }, { 0, -1 }, { -1, -1 } }
local floor = math.floor

function TR.Cell(x, y) return floor((TOPO - x) / CEL), floor((TOPO - y) / CEL) end
function TR.CellCenter(c, r, col) return { c = c, x = TOPO - (r + 0.5) * CEL, y = TOPO - (col + 0.5) * CEL } end

-- RLE (contagem, valor) -> bytes
function TR.Decode(s)
	local out = {}
	for i = 1, #s - 1, 2 do out[#out + 1] = string.rep(string.char(s:byte(i + 1)), s:byte(i)) end
	return table.concat(out)
end

local cache = setmetatable({}, { __mode = "k" })    -- [grade] = { [quadrante] = bytes | false }
local function info(grid, r, c)
	if r < 0 or c < 0 or r >= W or c >= W then return 0, false end
	local t = floor(r / 32) * 64 + floor(c / 32)
	local cg = cache[grid]
	if not cg then cg = {}; cache[grid] = cg end
	local d = cg[t]
	if d == nil then
		d = grid[t] and TR.Decode(grid[t]) or false
		cg[t] = d
	end
	if not d then return 0, false end
	local i = (r % 32) * 32 + c % 32
	local wb = d:byte(1025 + floor(i / 8))
	return d:byte(i + 1), floor(wb / 2 ^ (i % 8)) % 2 == 1
end
TR.Info = info

-- Fila de prioridade: heap 4-ário num vetor só, com o par (prioridade, chave) lado a lado.
local function novaFila()
	local v, n = {}, 0
	local q = {}
	function q.poe(f, k)
		n = n + 1
		local i = n
		while i > 1 do
			local pai = math.floor((i - 2) / 4) + 1
			if v[2 * pai - 1] <= f then break end
			v[2 * i - 1], v[2 * i] = v[2 * pai - 1], v[2 * pai]
			i = pai
		end
		v[2 * i - 1], v[2 * i] = f, k
	end
	function q.tira()
		local topo = v[2]
		local f, k = v[2 * n - 1], v[2 * n]
		v[2 * n - 1], v[2 * n] = nil, nil
		n = n - 1
		if n == 0 then return topo end
		local i = 1
		while true do
			local filho, ff = nil, f
			local c0 = 4 * (i - 1) + 2
			for c = c0, math.min(c0 + 3, n) do
				if v[2 * c - 1] < ff then filho, ff = c, v[2 * c - 1] end
			end
			if not filho then break end
			v[2 * i - 1], v[2 * i] = v[2 * filho - 1], v[2 * filho]
			i = filho
		end
		v[2 * i - 1], v[2 * i] = f, k
		return topo
	end
	function q.vazia() return n == 0 end
	return q
end

-- célula passável mais perto de (r, c), até 2 células (o ponto pode cair num prédio, numa ponte)
local function ajusta(grid, r, c)
	if info(grid, r, c) ~= 0 then return r, c end
	local br, bc, bd
	for dr = -2, 2 do
		for dc = -2, 2 do
			local d = dr * dr + dc * dc
			if (not bd or d < bd) and info(grid, r + dr, c + dc) ~= 0 then br, bc, bd = r + dr, c + dc, d end
		end
	end
	return br, bc
end

-- Caminho de `de` a `para` ({c,x,y}, mesmo continente). nil se não há (fora da grade, longe de
-- célula passável, sem passagem ou busca grande demais): quem chama volta à reta. `ceder`, numa
-- corrotina: a cada tantas expansões (número) ou quando a função disser (orçamento de tempo),
-- cede a vez — não trava o quadro.
function TR.Path(dados, de, para, maxExp, ceder)
	if not (de and para and de.c == para.c and dados) then return nil end
	local grid = dados[de.c]
	if not grid then return nil end
	local sr, sc = ajusta(grid, TR.Cell(de.x, de.y))
	local gr, gc = ajusta(grid, TR.Cell(para.x, para.y))
	if not (sr and gr) then return nil end
	local start, goal = sr * W + sc, gr * W + gc
	local function h(r, c)
		local dr, dc = math.abs(r - gr), math.abs(c - gc)
		return CEL * (math.max(dr, dc) + (SQ2 - 1) * math.min(dr, dc))
	end
	local fila = novaFila()
	local g, came, fechado = { [start] = 0 }, {}, {}
	fila.poe(h(sr, sc), start)
	local exp, achou = 0, start == goal
	local porFuncao = type(ceder) == "function"
	while not achou and not fila.vazia() do
		local k = fila.tira()
		if k == goal then
			achou = true
		elseif not fechado[k] then
			fechado[k] = true
			exp = exp + 1
			if exp > maxExp then return nil end
			if ceder and coroutine.running() then
				if porFuncao then
					if exp % 256 == 0 and ceder() then coroutine.yield() end
				elseif exp % ceder == 0 then
					coroutine.yield()
				end
			end
			local r, c = floor(k / W), k % W
			local conn = info(grid, r, c)
			for d = 1, 8 do
				local nr, nc = r + DIRS[d][1], c + DIRS[d][2]
				if conn % 2 ^ d >= 2 ^ (d - 1) and nr >= 0 and nc >= 0 and nr < W and nc < W then
					local nk = nr * W + nc
					if not fechado[nk] then
						local _, agua = info(grid, nr, nc)
						local ng = g[k] + (d % 2 == 0 and CEL * SQ2 or CEL) * (agua and NADO or 1)
						if not g[nk] or ng < g[nk] then
							g[nk], came[nk] = ng, k
							fila.poe(ng + h(nr, nc), nk)
						end
					end
				end
			end
		end
	end
	if not achou then return nil end
	local inv, k = {}, goal
	while k do
		inv[#inv + 1] = k
		k = came[k]
	end
	-- só os pontos onde a direção muda; o primeiro é o jogador, o último o destino
	local pts = { { c = de.c, x = de.x, y = de.y } }
	local pdr, pdc
	for i = #inv - 1, 2, -1 do
		local a, b = inv[i], inv[i - 1]
		local dr, dc = floor(b / W) - floor(a / W), b % W - a % W
		if dr ~= pdr or dc ~= pdc then
			pts[#pts + 1] = TR.CellCenter(de.c, floor(a / W), a % W)
			pdr, pdc = dr, dc
		end
	end
	pts[#pts + 1] = { c = para.c, x = para.x, y = para.y }
	return pts
end

-- No caminho `path`, a partir do ponto mais perto do jogador: o ponto `look` jardas adiante
-- (para onde a seta aponta) e quanto falta até o fim, pelo caminho. Devolve x, y, falta, a
-- distância do jogador ao caminho e o índice do próximo ponto.
function TR.Ahead(path, pos, look)
	local bi, bt, bd = 1, 0, math.huge
	for i = 1, #path - 1 do
		local a, b = path[i], path[i + 1]
		local vx, vy = b.x - a.x, b.y - a.y
		local l2 = vx * vx + vy * vy
		local t = l2 > 0 and math.max(0, math.min(1, ((pos.x - a.x) * vx + (pos.y - a.y) * vy) / l2)) or 0
		local px, py = a.x + vx * t, a.y + vy * t
		local d = (pos.x - px) ^ 2 + (pos.y - py) ^ 2
		if d < bd then bi, bt, bd = i, t, d end
	end
	local a, b = path[bi], path[bi + 1] or path[bi]
	local x, y = a.x + (b.x - a.x) * bt, a.y + (b.y - a.y) * bt
	local falta, ax, ay, resto = 0, nil, nil, look
	local i = bi
	while path[i + 1] do
		local nx, ny = path[i + 1].x, path[i + 1].y
		local seg = math.sqrt((nx - x) ^ 2 + (ny - y) ^ 2)
		falta = falta + seg
		if not ax then
			if seg >= resto and seg > 0 then
				ax, ay = x + (nx - x) * resto / seg, y + (ny - y) * resto / seg
			else
				resto = resto - seg
			end
		end
		x, y, i = nx, ny, i + 1
	end
	return ax or path[#path].x, ay or path[#path].y, falta, math.sqrt(bd), bi + 1
end
