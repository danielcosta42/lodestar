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
