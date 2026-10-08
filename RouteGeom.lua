--=============================================================================
-- RouteGeom — a geometria pura da rota: pontilhado ao longo de uma linha, ponto de
-- mundo no minimapa, alvo na faixa da bússola. Sem nada do jogo (testada fora dele).
--
-- Mundo: x = norte, y = oeste. Ângulos como GetPlayerFacing(): 0 = norte, anti-horário.
--=============================================================================
local ADDON, ns = ...
local G = {}
ns.RouteGeom = G

-- Pontos igualmente espaçados ao longo da linha {x1, y1, x2, y2, ...}, a partir do
-- primeiro; o espaçamento continua através das curvas. Devolve {x, y, x, y, ...}.
function G.Dots(path, spacing)
	local out = {}
	if #path < 2 then return out end
	out[1], out[2] = path[1], path[2]
	local carry = 0                    -- distância andada desde o último ponto
	for i = 1, #path - 3, 2 do
		local ax, ay, bx, by = path[i], path[i + 1], path[i + 2], path[i + 3]
		local len = math.sqrt((bx - ax) ^ 2 + (by - ay) ^ 2)
		local t = spacing - carry
		while t <= len + 1e-9 do
			out[#out + 1] = ax + (bx - ax) * t / len
			out[#out + 1] = ay + (by - ay) * t / len
			t = t + spacing
		end
		carry = len - (t - spacing)
	end
	return out
end

-- Cantos arredondados da linha {x1, y1, x2, y2, ...}: em cada vértice do meio, corta até `r`
-- de cada lado (no máximo 1/3 do segmento, para dois cantos não se cruzarem) e liga por uma
-- curva de `n` pedaços. As pontas ficam.
function G.Round(p, r, n)
	n = n or 4
	if #p < 6 then return p end
	local out = { p[1], p[2] }
	for i = 3, #p - 3, 2 do
		local ax, ay, vx, vy, bx, by = p[i - 2], p[i - 1], p[i], p[i + 1], p[i + 2], p[i + 3]
		local la = math.sqrt((ax - vx) ^ 2 + (ay - vy) ^ 2)
		local lb = math.sqrt((bx - vx) ^ 2 + (by - vy) ^ 2)
		local ka = la > 0 and math.min(r, la / 3) / la or 0
		local kb = lb > 0 and math.min(r, lb / 3) / lb or 0
		local qx, qy = vx + (ax - vx) * ka, vy + (ay - vy) * ka
		local sx, sy = vx + (bx - vx) * kb, vy + (by - vy) * kb
		for j = 0, n do
			local t = j / n
			local u = 1 - t
			out[#out + 1] = u * u * qx + 2 * u * t * vx + t * t * sx
			out[#out + 1] = u * u * qy + 2 * u * t * vy + t * t * sy
		end
	end
	out[#out + 1], out[#out + 2] = p[#p - 1], p[#p]
	return out
end

-- A linha {x1, y1, ...} (ponto `false` = fora: outro continente) recortada por
-- `clip(x0, y0, x1, y1)` em trechos contínuos {x, y, x, y, ...}: o pontilhado corre por
-- cada trecho inteiro, sem recomeçar nos vértices.
function G.Runs(p, clip)
	local runs, run = {}, nil
	for i = 1, #p - 3, 2 do
		local x0, y0, x1, y1
		if p[i] and p[i + 2] then x0, y0, x1, y1 = clip(p[i], p[i + 1], p[i + 2], p[i + 3]) end
		if not x0 then
			run = nil
		else
			if not (run and math.abs(run[#run - 1] - x0) < 1e-6 and math.abs(run[#run] - y0) < 1e-6) then
				run = { x0, y0 }
				runs[#runs + 1] = run
			end
			run[#run + 1], run[#run + 2] = x1, y1
		end
	end
	return runs
end

-- O pontilhado do trecho com setas: a cada `every` pontos, uma seta para onde a linha segue.
-- Devolve {x, y, rot, ...}: rot = false (ponto) ou a rotação anti-horária da seta, que sem
-- girar aponta para cima. `ydown`: y cresce para baixo (o canvas do mapa).
function G.Marks(run, spacing, every, ydown)
	local d, out = G.Dots(run, spacing), {}
	for k = 1, #d - 1, 2 do
		local rot = false
		if ((k + 1) / 2) % every == 0 and d[k + 2] then
			local dx, dy = d[k + 2] - d[k - 2], d[k + 3] - d[k - 1]
			rot = math.atan2(-dx, ydown and -dy or dy)
		end
		out[#out + 1], out[#out + 2], out[#out + 3] = d[k], d[k + 1], rot
	end
	return out
end

-- Ponto de mundo (wx, wy) visto do jogador (px, py) no minimapa: pixels (direita, cima).
-- `rotate`: minimapa girando com o jogador (a frente fica em cima). Fora do raio: preso
-- na borda, `inside` = false.
function G.ToMinimap(px, py, wx, wy, facing, rotate, ydPerPx, radius)
	local east, north = -(wy - py), wx - px
	local right, up = east, north
	if rotate then
		local c, s = math.cos(facing), math.sin(facing)
		right, up = east * c + north * s, -east * s + north * c
	end
	right, up = right / ydPerPx, up / ydPerPx
	local d = math.sqrt(right * right + up * up)
	if d > radius then
		return right * radius / d, up * radius / d, false
	end
	return right, up, true
end

-- Alcance do minimapa (raio, jardas) por zoom; fechado (cidade, caverna) é bem menor.
local MM_OUT = { [0] = 233.33, [1] = 200, [2] = 166.66, [3] = 133.33, [4] = 100, [5] = 66.66 }
local MM_IN = { [0] = 150, [1] = 120, [2] = 90, [3] = 60, [4] = 40, [5] = 25 }
function G.MinimapRange(zoom, indoor)
	return (indoor and MM_IN or MM_OUT)[zoom] or (indoor and 60 or 133.33)
end

-- O inverso: pixels (direita, cima) do minimapa -> ponto de mundo (Shift+clique).
function G.FromMinimap(px, py, right, up, facing, rotate, ydPerPx)
	right, up = right * ydPerPx, up * ydPerPx
	local east, north = right, up
	if rotate then
		local c, s = math.cos(facing), math.sin(facing)
		east, north = right * c - up * s, right * s + up * c
	end
	return px + north, py - east
end

-- O pedaço do segmento (x0,y0)-(x1,y1) dentro do círculo de raio r no centro (o
-- minimapa). nil se não cruza.
function G.ClipCircle(x0, y0, x1, y1, r)
	local dx, dy = x1 - x0, y1 - y0
	local a = dx * dx + dy * dy
	local b = 2 * (x0 * dx + y0 * dy)
	local c = x0 * x0 + y0 * y0 - r * r
	if a == 0 then
		if c <= 0 then return x0, y0, x1, y1 end
		return nil
	end
	local disc = b * b - 4 * a * c
	if disc < 0 then return nil end
	local sq = math.sqrt(disc)
	local t0 = math.max(0, (-b - sq) / (2 * a))
	local t1 = math.min(1, (-b + sq) / (2 * a))
	if t0 > t1 then return nil end
	return x0 + t0 * dx, y0 + t0 * dy, x0 + t1 * dx, y0 + t1 * dy
end

-- Posição horizontal na faixa da bússola (de -half a +half) do alvo (wx, wy), com o
-- jogador olhando para `facing`; `fov` = abertura total da faixa. Fora dela: presa na
-- borda e `clamped` = true.
function G.CompassX(px, py, wx, wy, facing, fov, half)
	local bearing = math.atan2(wy - py, wx - px)        -- anti-horário a partir do norte
	local rel = (bearing - facing + math.pi) % (2 * math.pi) - math.pi
	local edge = fov / 2
	if math.abs(rel) > edge then
		return (rel > 0 and -half or half), true
	end
	return -rel / edge * half, false
end
