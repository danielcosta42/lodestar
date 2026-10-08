--=============================================================================
-- Schedule — o horário de barco e zepelim. O ciclo vem dos dados (trecho `s[k]` entre as
-- paradas k e k+1, espera atracado `d[k]`); a fase — em que ponto do ciclo o transporte
-- está agora — só se sabe observando em jogo (grito do anunciador, embarque, desembarque).
-- Puro: tempos em segundos da hora do servidor.
--
--   h = { starts = { início de ciclo observado, ... }, T = período, t0 = último início,
--         ride = { [k] = travessia medida de k para k+1 } }
--=============================================================================
local ADDON, ns = ...
local SC = {}
ns.Schedule = SC

local KEEP, OFF, OLD = 5, 30, 12 * 3600     -- inícios guardados; s fora da previsão; s até envelhecer

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

-- Próxima chegada/saída (ev) da parada k a partir da hora t; nil sem horário aprendido.
local function nextAt(ship, k, t, h, ev)
	if not (h and h.t0) then return nil end
	local arr, dep, Tc = SC.Offsets(ship, h.ride)
	local T = h.T or Tc
	local first = h.t0 + (ev == "arr" and arr[k] or dep[k])
	return first + math.ceil((t - first) / T) * T
end
function SC.NextDeparture(ship, k, t, h) return nextAt(ship, k, t, h, "dep") end
function SC.NextArrival(ship, k, t, h) return nextAt(ship, k, t, h, "arr") end

-- Junta uma observação ao horário. Outra parada do mesmo ciclo só reafirma o início; uma
-- volta nova soma um início, e com dois ou mais o período sai deles. Fora da previsão
-- (servidor reiniciou) ou velho demais, recomeça dali — o período aprendido fica.
function SC.Learn(h, ship, k, ev, t, ride)
	h = h or {}
	ride = ride or h.ride
	local _, _, Tc = SC.Offsets(ship, ride)
	local T = h.T or Tc
	local s0 = SC.CycleStart(ship, k, ev, t, ride)
	local starts = {}
	for i, v in ipairs(h.starts or {}) do starts[i] = v end
	local last = starts[#starts]
	if last then
		local n = math.floor((s0 - last) / T + 0.5)
		if math.abs(s0 - (last + n * T)) > OFF or t - last > OLD then starts, last = {}, nil end
	end
	if last and math.abs(s0 - last) < T / 2 then
		starts[#starts] = s0                     -- mesmo ciclo: a observação mais nova vale
	else
		starts[#starts + 1] = s0
	end
	while #starts > KEEP do table.remove(starts, 1) end
	if #starts >= 2 then
		local span = starts[#starts] - starts[1]
		local n = math.floor(span / T + 0.5)
		if n >= 1 then T = span / n end
	end
	return { starts = starts, T = T, t0 = starts[#starts], ride = ride }
end
