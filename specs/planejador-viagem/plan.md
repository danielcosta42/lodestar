# Planejador de viagem — plano de implementação

> Execução: nativa, em sequência, com aviso a cada tarefa e revisão conjunta no fim (pedido do
> usuário). Cada tarefa fecha com teste e commit.

**Objetivo:** rota por pernas (a pé, voo, barco, zepelim, bonde, pedra, teleporte) até o destino
ativo, desenhada no mapa e no minimapa, com seta, bússola, painel Viagem e todo comando acessível
pela interface.

**Arquitetura:** dados gerados offline das tabelas do cliente (`TravelData.lua`); planejador puro em
Lua (`Journey.lua`, Dijkstra sobre ~100 nós); camada de jogo (`Travel.lua`) que junta o contexto do
personagem, mantém a rota atual e decide quando recalcular; desenho e bússola consomem a rota por
uma interface única (`ns.Travel:Route()`). Geometria pura isolada em `RouteGeom.lua` para teste.

**Stack:** Lua 5.1 (cliente 16001), luajit para testes (`tools/forever-guides.lua`), Python 3 para o
gerador (`tools/gen_travel.py`).

**Spec:** `specs/planejador-viagem/spec.md`.

## Restrições globais

- Nada copiado do Shortest Path Forever (GPL-3.0); dados só do cliente (wago.tools) e do QuestieDB.
- Coordenada de mundo: `{ c = continentID, x = norte, y = oeste }` (mesma convenção de
  `C_Map.GetWorldPosFromMapPos` e de `TaxiNodes.Pos_0/Pos_1`).
- Ângulos no padrão de `GetPlayerFacing()`: 0 = norte, crescendo no sentido anti-horário.
- Texto visível ao jogador sempre por `ns.L` (enUS base + ptBR).
- Comentários em português, no tom do código vizinho; sem assinatura de IA em commit.

## Foco de revisão (o que os testes de cada tarefa já fixam)

1. Destino em outro continente sem ligação → `Plan` devolve nil; seta "Vá para <zona>", sem rota
   desenhada (T2, T5).
2. Voo não descoberto como destino de voo nunca aparece; só como partida após andar (T2).
3. Rota não fica trocando quando dois caminhos empatam (histerese) (T3).
4. Morte durante uma rota manual: corpo tem prioridade; ao reviver volta a manual, não o guia (T4).
5. Ângulo da bússola na volta dos 360° (alvo a 350° com o jogador a 10°) (T6).

---

### Task 1 — Dados: `tools/gen_travel.py` → `TravelData.lua`

**Arquivos:** criar `tools/gen_travel.py`, `TravelData.lua`; alterar `Lodestar.toc` (carregar
`TravelData.lua` antes de `TravelPlanner.lua`), `docs/forever.md` (pipeline).

**Produz:**

```lua
ns.travel = {
  nodes   = { [id] = { n = "Sentinel Hill, Westfall", c = 0, x = -10628.3, y = 1037.3, f = "A", z = "Westfall" } },
  flights = { [from] = { [to] = { s = 74, p = { x1, y1, x2, y2, ... } } } },  -- p: traçado simplificado
  ships   = { { k = "boat"|"zeppelin", s = 180, w = 150, stops = { {c,x,y,n}, ... }, p = {...} } },
  tram    = { a = { zone = "Stormwind City", x = 63.9, y = 8.2 }, b = { zone = "Ironforge", x = 77.0, y = 51.0 }, s = 120 },
  teleports = { { spell = 3561, zone = "Stormwind City", x = 49.6, y = 86.5 }, ... },
  services  = { [kind] = { { id, n, zone, x, y, f, sub } } },  -- kind: repair, vendor, inn, bank,
            -- auction, flight, stable, trainer (classe/profissão continuam em ns.classTrainers/profTrainers)
  FLIGHT_SPEED = 32, SHIP_SPEED = 30, WALK_SPEED = 7,
}
```

Regras: nó entra se tem ≥1 `TaxiPath`, nome sem `zzOLD`/`Programmer`/`Quest Path`; facção pelos bits
1 (A) e 2 (H) de `Flags`, senão pelas montarias (`MountCreatureID_1` → A, `_0` → H); `z` = zona pelo
trecho após a última vírgula do nome casado com o nome de zona conhecido (prefixo). Voo: segundos =
comprimento ÷ `FLIGHT_SPEED`; traçado por Douglas-Peucker (tolerância 20 jardas). Transporte: trajeto
com ≥2 paradas (`Delay > 0`) em continentes 0/1; `k = zeppelin` se alguma parada tem z > 30; `s` =
comprimento entre paradas ÷ `SHIP_SPEED`; `w` = meio ciclo. Serviços pelas flags de `npcs.json`
(estalagem 128, banco 256, leilão 4096, estábulo 8192, reparo 16384, vendedor 4, voo 8), facção A/H/AH.

**Teste:** `python tools/gen_travel.py --demo` — asserts: ≥30 nós por facção; toda rota liga dois nós
mantidos; nenhum nome descartado sobra; todo transporte tem 2+ paradas; Booty Bay–Ratchet é barco e
Orgrimmar–Undercity é zepelim; todo serviço tem zona e coordenada.

### Task 2 — Planejador puro: `Journey.lua`

**Produz:** `ns.Journey.Plan(from, to, ctx) → route|nil`, com
`ctx = { data = ns.travel, fac = "A"|"H", known = {[id]=true}, speed = 7,
hearth = { c, x, y, wait = s }|nil, teleports = { { c, x, y, cast = 10, label } }, world = fn(zone,x,y) }`
e `route = { s = total, legs = { { k = "walk"|"flight"|"ship"|"tram"|"hearth"|"teleport", a = {c,x,y},
b = {c,x,y}, s = segundos, label = string, p = {x1,y1,...}|nil, discover = nodeId|nil } } }`.

Grafo: nós = início, fim, voos da facção, paradas de transporte, estações do bonde, destino da pedra
e dos teleportes. Arestas a pé entre todo par no mesmo continente (distância ÷ `ctx.speed`); voo de
`a` para `b` só se `b` conhecido e (`a` conhecido ou alcançado a pé → `discover = a`); custo + 10 s.
Transporte: `w + s` entre paradas consecutivas (ida e volta). Pedra: do início para o destino da pedra,
`10 + wait`. Teleporte: do início, `cast`. Dijkstra com fila simples (n ≈ 120).

**Testes (luajit, dados de mentira):** perto (200 jd) anda; longe (3000 jd) com voos conhecidos voa
(3 pernas: anda, voa, anda); voo de partida desconhecido é usado se compensa e marca `discover`;
destino desconhecido nunca é destino de voo; pedra pronta perto do alvo vence; pedra com espera de 900 s
perde; outro continente usa barco; outro continente sem ligação → nil.

### Task 3 — Camada de jogo: `Travel.lua`

**Consome:** `ns.Journey.Plan`, `ns.travel`, `ns.Destinations:Active()` (T4).
**Produz:** `ns.Travel:Route()` (rota atual, `legs` e `leg` = índice da perna atual),
`ns.Travel:Leg()`, `ns.Travel:Replan(force)`, evento interno `_ROUTE_CHANGED`;
funções puras `Travel.ShouldReplace(cur, new)` e `Travel.AdvanceLeg(route, pos, onTaxi)`.

Contexto: voos conhecidos (`LodestarCharDB.taxi`, de `C_TaxiMap.GetAllTaxiNodes` ao abrir o mapa de
voo; antes disso, voos das zonas em `LodestarCharDB.zones`); posição da pedra (`LodestarCharDB.bind`,
gravada quando `GetBindLocation()` muda; fallback: única estalagem da zona); velocidade a pé medida
(média móvel 3 s, limites 5–30); teleportes de mago/druida conhecidos e Astral Recall. Recalcula ao
mudar o destino, ao terminar perna, a cada 10 s; troca só se `ShouldReplace`.

**Testes:** `ShouldReplace` (≥15% ou ≥30 s; empate não troca); `AdvanceLeg` (chegou ao fim da perna a
pé → próxima; pousou → próxima; no meio → mesma).

### Task 4 — Destinos e serviços: `Destinations.lua`, `Services.lua`

**Produz:** `ns.Destinations:Set(kind, dest)` / `:Clear(kind)` / `:Active() → dest, kind` com
`kind ∈ {"corpse","manual","guide"}` e `dest = { zone, x, y, label, red = bool }`;
`ns.Services:Nearest(kind, sub) → service, route`; `ns.Services.Pick(cands, planFn) → cand` (pura).

**Testes:** prioridade corpo > manual > guia; limpar o corpo volta ao manual; `Pick` escolhe o de menor
tempo e não o de menor distância; filtro de facção.

### Task 5 — Seta pela perna: `Waypoint.lua`, adaptador `TravelPlanner.lua`

`WP:PickTarget()` passa a devolver o fim da perna atual quando há rota (com `goto_` sintético e
`text` = rótulo da perna); sem rota, comportamento atual. Rótulo: `L.LEG_WALK/FLY/SHIP/TRAM/HEARTH/
TELEPORT` + tempo (`fmtTime`). Perna de pedra ou teleporte: ícone do item/feitiço no painel da seta.
`TravelPlanner:Plan()` passa a ler a rota (mantém `InZone`, `PlayerZoneEng`, `HearthZone`).

**Testes:** rótulo de cada tipo de perna; `fmtTime` (45 → "45s", 130 → "2m10s").

### Task 6 — Geometria pura: `RouteGeom.lua`

**Produz:** `G.Dots(path, spacing) → {x,y,...}` (pontos igualmente espaçados ao longo da linha),
`G.ToMinimap(px, py, wx, wy, facing, rotate, ydPerPx, radius) → rx, ry, inside`,
`G.CompassX(px, py, wx, wy, facing, fov, half) → x, clamped`.

**Testes:** espaçamento; norte fica em cima e oeste à esquerda; com rotação, o alvo à frente fica em
cima; fora do raio volta `inside=false` na borda; bússola: alvo à frente = 0, à esquerda = negativo,
350° com jogador a 10° = levemente à direita, fora do campo = preso na borda.

### Task 7 — Rota no mapa-múndi: `RouteMap.lua` (substitui a linha do `Trail.lua`)

Pool de texturas de ponto; cada perna projetada por `WP:MapPos` (mundo → mapa aberto via
`C_Map.GetMapPosFromWorldPos`), recortada por `WP.ClipSegment`; perna atual alfa 1, próximas 0,5;
corpo em vermelho; ícones de parada (voo, cais, destino, "descubra"). Redesenho quando muda mapa,
tamanho do canvas ou rota; ponta do jogador a cada 0,25 s com o mapa aberto.

### Task 8 — Rota no minimapa: `RouteMinimap.lua` (substitui a linha do `Trail.lua`)

Mesmo traçado via `G.ToMinimap` com o alcance calibrado (`MM_RANGE` + `ns.db.minimap.rangeMult`),
respeitando `rotateMinimap`; pontos param na borda; ícone da próxima parada (preso na borda se longe).

### Task 9 — Bússola: `Compass.lua`

Faixa no topo (`ns.db.compass = { enabled, scale, point, x, y, locked }`), marcas N/L/S/O, marcadores
da próxima parada, do destino e do próximo passo do guia por `G.CompassX`; texto de distância e tempo.

### Task 10 — Destino manual e serviços por comando

Shift+clique no mapa-múndi (`WorldMapFrame:GetNormalizedCursorPosition()` no mapa aberto) e no
minimapa (cursor → jardas → mundo) → `Destinations:Set("manual")`; Shift+clique perto do pino limpa.
`/ls way` e `/ls train`/`/ls prof` passam por `Destinations`; novo `/ls near [tipo]`.

### Task 11 — Painel Viagem: `TravelPanel.lua` + botão no cabeçalho do guia

Lista das pernas com tempo e total; botões de serviço (treinador de classe, de profissão com escolha,
reparo, vendedor, estalagem, banco, leilão, voo, estábulo); destino manual (ativo, "Limpar", campo
de coordenada); estado do corpo.

### Task 12 — Todo comando na interface

Botão **⋯** no cabeçalho (reset, export, import, record, scan iniciar/parar/status/limpar); clique
direito no botão do minimapa vira menu rápido; Configurações → Geral ("Ver boletim agora", "Rever o
tour", botão de item de quest), Aparência (bússola, tamanho, rota até o corpo), Avançado (debug,
diagnóstico da rota, alcance do minimapa em slider). `ns.COMMAND_UI` em `Core.lua` mapeia todo
comando do `/ls` para sua entrada.

**Teste:** lista os `cmd == "..."` do `Core.lua` e falha se algum não está em `ns.COMMAND_UI`.

### Task 13 — Limpeza e acabamento

`FlightMap.lua` destaca o destino da perna de voo da rota; saem `FlightData.lua`, `TransitData.lua`
e a cadeia de regras do `TravelPlanner.lua`; strings enUS/ptBR; README e `docs/`.

### Task 14 — Verificação final

Testes Lua, `gen_travel.py --demo`, luacheck, ruff (F, E9), harness com o addon inteiro (rota em Brill
→ Silverpine; Goldshire → Ironforge), pacote do CI, instalação no beta, PR com `Closes #13`.
