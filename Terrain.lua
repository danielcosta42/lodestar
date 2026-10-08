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

local PASSO = {}                       -- (dr, dc) -> índice em DIRS
for d, rc in ipairs(DIRS) do PASSO[(rc[1] + 1) * 3 + rc[2] + 2] = d end

-- A reta de centro a centro, de (r0,c0) a (r1,c1), célula a célula (na quina exata, em
-- diagonal): nil se algum passo não liga; senão quantas células de água cruza.
local function reta(grid, r0, c0, r1, c1)
	local ar, ac = math.abs(r1 - r0), math.abs(c1 - c0)
	local sr, sc = r1 > r0 and 1 or -1, c1 > c0 and 1 or -1
	local tr = ar > 0 and 0.5 / ar or math.huge          -- "tempo" até a próxima borda de linha/coluna
	local tc = ac > 0 and 0.5 / ac or math.huge
	local r, c, agua = r0, c0, 0
	while r ~= r1 or c ~= c1 do
		local mr, mc = 0, 0
		if math.abs(tr - tc) < 1e-9 then
			mr, mc, tr, tc = sr, sc, tr + 1 / ar, tc + 1 / ac
		elseif tr < tc then
			mr, tr = sr, tr + 1 / ar
		else
			mc, tc = sc, tc + 1 / ac
		end
		local d = PASSO[(mr + 1) * 3 + mc + 2]
		if info(grid, r, c) % 2 ^ d < 2 ^ (d - 1) then return nil end
		r, c = r + mr, c + mc
		if select(2, info(grid, r, c)) then agua = agua + 1 end
	end
	return agua
end

local LONGE, VERTICES = 40, 10           -- até onde o fio tenta alcançar: células (~670 jd), vértices

-- Ilha: região fechada pequena da grade — vila, morro de prédio, cais —, que no jogo se liga
-- ao resto por rampa, ponte ou porta, construções que o terreno não tem. Quase metade dos
-- mestres de voo cai numa. O caminho sai dela (ou chega nela) saltando em reta o pedaço que
-- falta, até SALTO células.
local ILHA, SALTO, PARADO = 3000, 20, 3000   -- células; células; expansões sem chegar mais perto

-- as células ligadas a (r, c) e se a região acaba antes de `ILHA` (é ilha)
local function regiao(grid, r, c)
	local k0 = r * W + c
	local set, q, i = { [k0] = true }, { k0 }, 1
	while q[i] do
		if #q >= ILHA then return set, false end
		local k = q[i]
		i = i + 1
		local kr, kc = floor(k / W), k % W
		local conn = info(grid, kr, kc)
		for d = 1, 8 do
			local nr, nc = kr + DIRS[d][1], kc + DIRS[d][2]
			local nk = nr * W + nc
			if conn % 2 ^ d >= 2 ^ (d - 1) and nr >= 0 and nc >= 0 and nr < W and nc < W and not set[nk] then
				set[nk] = true
				q[#q + 1] = nk
			end
		end
	end
	return set, true
end

-- a célula passável fora de `set` mais perto de (r, c), até SALTO
local function saida(grid, r, c, set)
	local br, bc, bd
	for raio = 1, SALTO do
		for dr = -raio, raio do
			for dc = -raio, raio do
				local d = dr * dr + dc * dc
				if math.max(math.abs(dr), math.abs(dc)) == raio and (not bd or d < bd)
					and not set[(r + dr) * W + c + dc] and info(grid, r + dr, c + dc) ~= 0 then
					br, bc, bd = r + dr, c + dc, d
				end
			end
		end
		if bd and bd <= raio * raio then return br, bc end   -- os anéis seguintes ficam mais longe
	end
	return br, bc
end

-- saindo da ilha de (r, c): a célula livre mais perto que não seja outra ilha (vilas em
-- platôs vizinhos), ou a da região do destino `goal`
local function sai(grid, r, c, set, goal)
	for _ = 1, 6 do
		local er, ec = saida(grid, r, c, set)
		if not er then return nil end
		local s2, ilha = regiao(grid, er, ec)
		if not ilha or s2[goal] then return er, ec end
		for k in pairs(s2) do set[k] = true end
	end
end

-- Caminho de `de` a `para` ({c,x,y}, mesmo continente). nil se não há (fora da grade, sem
-- passagem entre regiões grandes ou busca grande demais): quem chama volta à reta. Ponta
-- numa ilha salta em reta até a borda dela. `ceder`, numa corrotina: a cada tantas
-- expansões (número) ou quando a função disser (orçamento de tempo), cede a vez — não trava
-- o quadro.
function TR.Path(dados, de, para, maxExp, ceder)
	if not (de and para and de.c == para.c and dados) then return nil end
	local grid = dados[de.c]
	if not grid then return nil end
	local sr0, sc0 = TR.Cell(de.x, de.y)
	local gr0, gc0 = TR.Cell(para.x, para.y)
	local sr, sc = ajusta(grid, sr0, sc0)
	local gr, gc = ajusta(grid, gr0, gc0)
	sr, sc, gr, gc = sr or sr0, sc or sc0, gr or gr0, gc or gc0   -- bloqueada de tudo: ilha vazia
	-- ilhas: o jogador sai da dele pela célula livre mais perto; para a do destino, a busca
	-- fica com a célula que mais chegou perto
	local doIni, ilhaIni = regiao(grid, sr, sc)
	local ilhaFim = false
	if not doIni[gr * W + gc] then
		if ilhaIni then
			sr, sc = sai(grid, sr, sc, doIni, gr * W + gc)
			if not sr then return nil end
		end
		ilhaFim = select(2, regiao(grid, gr, gc))
	end
	local start, goal = sr * W + sc, gr * W + gc
	local function h(r, c)
		local dr, dc = math.abs(r - gr), math.abs(c - gc)
		return CEL * (math.max(dr, dc) + (SQ2 - 1) * math.min(dr, dc))
	end
	local fila = novaFila()
	local g, came, fechado = { [start] = 0 }, {}, {}
	fila.poe(h(sr, sc), start)
	local exp, achou = 0, start == goal
	local perto, pertoH, parado = start, h(sr, sc), 0
	local porFuncao = type(ceder) == "function"
	while not achou and not fila.vazia() do
		local k = fila.tira()
		if k == goal then
			achou = true
		elseif not fechado[k] then
			fechado[k] = true
			exp = exp + 1
			if exp > maxExp then break end
			local r, c = floor(k / W), k % W
			if ilhaFim then                              -- já na borda da ilha e sem avançar: chega
				local hk = h(r, c)
				if hk < pertoH then
					perto, pertoH, parado = k, hk, 0
				else
					parado = parado + 1
					if parado > PARADO and pertoH <= SALTO * CEL then break end
				end
			end
			if ceder and coroutine.running() then
				if porFuncao then
					if exp % 256 == 0 and ceder() then coroutine.yield() end
				elseif exp % ceder == 0 then
					coroutine.yield()
				end
			end
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
	local fim = goal
	if not achou then
		if not (ilhaFim and pertoH <= SALTO * CEL) then return nil end
		fim = perto
	end
	local inv, k = {}, fim
	while k do
		inv[#inv + 1] = k
		k = came[k]
	end
	local cel, molh = {}, { [0] = 0 }             -- do início ao fim; água acumulada
	for i = #inv, 1, -1 do
		local n = #cel + 1
		cel[n] = inv[i]
		molh[n] = molh[n - 1] + (select(2, info(grid, floor(inv[i] / W), inv[i] % W)) and 1 or 0)
	end
	-- puxa o fio: de cada vértice (posições em `cel`), reta até o mais adiante (até `alcance`)
	-- que se alcança sem passo travado nem mais água que o caminho por ali
	local function puxa(idx, alcance)
		local out, i = { idx[1] }, 1
		while i < #idx do
			local a = cel[idx[i]]
			local melhor = i + 1
			for j = math.min(#idx, i + alcance), i + 2, -1 do
				local b = cel[idx[j]]
				local w = reta(grid, floor(a / W), a % W, floor(b / W), b % W)
				if w and w <= molh[idx[j]] - molh[idx[i]] then melhor = j; break end
			end
			out[#out + 1] = idx[melhor]
			i = melhor
			if porFuncao and coroutine.running() and ceder() then coroutine.yield() end
		end
		return out
	end
	-- célula a célula some a escadinha das 8 direções; depois, entre os vértices, o L que o A*
	-- devolve em campo aberto (empate de custo), longo demais para a primeira janela
	local todos = {}
	for n = 1, #cel do todos[n] = n end
	local v = puxa(puxa(todos, LONGE), VERTICES)
	-- o primeiro ponto é o jogador, o último o destino; ponta ajustada (prédio, parede) passa
	-- antes pelo centro da célula livre, para não cortar o que a bloqueou
	local pts = { { c = de.c, x = de.x, y = de.y } }
	local r, c = TR.Cell(de.x, de.y)
	if r ~= sr or c ~= sc then pts[2] = TR.CellCenter(de.c, sr, sc) end
	for n = 2, #v - 1 do pts[#pts + 1] = TR.CellCenter(de.c, floor(cel[v[n]] / W), cel[v[n]] % W) end
	local fr, fc = floor(fim / W), fim % W
	r, c = TR.Cell(para.x, para.y)
	if #cel > 1 and (r ~= fr or c ~= fc) then pts[#pts + 1] = TR.CellCenter(de.c, fr, fc) end
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
