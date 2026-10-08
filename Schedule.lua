--=============================================================================
-- Schedule — o horário de barco e zepelim. O ciclo vem dos dados (trecho `s[k]` entre as
-- paradas k e k+1, espera atracado `d[k]`); a fase — em que ponto do ciclo o transporte
-- está agora — só se sabe observando em jogo (grito do anunciador, embarque, desembarque).
-- Puro: tempos em segundos da hora do servidor.
--
--   h = { t0 = início do ciclo pela última observação, last = hora dela, T = período aprendido
--         (nil enquanto só há a estimativa), obs = { ["parada:evento"] = hora }, ride = { [k] = s } }
--=============================================================================
local ADDON, ns = ...
local SC = {}
ns.Schedule = SC

local OFF, OLD, MAXN = 30, 12 * 3600, 3    -- s de folga; s até envelhecer; voltas para medir o período

-- Chegada e saída de cada parada, contadas da chegada na parada 1, e o período. `ride` = os
-- trechos medidos, que valem mais que a estimativa.
function SC.Offsets(ship, ride)
	local arr, dep, t = {}, {}, 0
	for k = 1, #ship.stops do
		arr[k] = t
		dep[k] = t + (ship.d and ship.d[k] or 0)
		t = dep[k] + (ride and ride[k] or ship.s[k] or 0)
	end
	return arr, dep, t
end

-- O início do ciclo que a observação (parada k, "arr" | "dep", hora t) implica.
function SC.CycleStart(ship, k, ev, t, ride)
	local arr, dep = SC.Offsets(ship, ride)
	return t - (ev == "dep" and dep[k] or arr[k])
end

-- Próxima chegada/saída (ev) da parada k a partir da hora t; nil sem horário confiável:
-- nenhum, velho (mais de 12 h) ou, com o período só estimado, além da volta observada.
local function nextAt(ship, k, t, h, ev)
	if not (h and h.t0) then return nil end
	if h.last and t - h.last > OLD then return nil end
	local arr, dep, Tc = SC.Offsets(ship, h.ride)
	local T = h.T or Tc
	if not h.T and h.last and t > h.last + Tc then return nil end
	local first = h.t0 + (ev == "arr" and arr[k] or dep[k])
	return first + math.ceil((t - first) / T) * T
end
function SC.NextDeparture(ship, k, t, h) return nextAt(ship, k, t, h, "dep") end
function SC.NextArrival(ship, k, t, h) return nextAt(ship, k, t, h, "arr") end

-- Junta uma observação ao horário. A fase sai da observação mais nova. O período sai de duas
-- da mesma parada e evento a até 3 voltas uma da outra, se cair a até 1/4 da estimativa; já
-- aprendido, uma observação fora da previsão (servidor reiniciou) só move a fase.
function SC.Learn(h, ship, k, ev, t, ride)
	h = h or {}
	ride = ride or h.ride
	local _, _, Tc = SC.Offsets(ship, ride)
	local T = h.T
	local key = k .. ":" .. ev
	local prev = h.obs and h.obs[key]
	if prev and t - prev > 0 and t - prev <= OLD then
		local ref = T or Tc
		local n = math.floor((t - prev) / ref + 0.5)
		local per = n >= 1 and (t - prev) / n
		if per and n <= MAXN and math.abs(per - ref) <= (T and OFF / n or ref / 4) then T = per end
	end
	local obs = {}
	for kk, v in pairs(h.obs or {}) do obs[kk] = v end
	obs[key] = t
	return { t0 = SC.CycleStart(ship, k, ev, t, ride), last = t, T = T, obs = obs, ride = ride }
end
