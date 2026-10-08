# Planejador de viagem (A+B)

Issue #13. O que o Shortest Path Forever (SPF) faz bem, reescrito no Lodestar: rota de verdade até
o alvo, combinando a pé, voo, barco, zepelim, bonde, pedra de lar e teleporte, desenhada por pernas
no mapa-múndi e no minimapa, com seta e bússola.

## Contexto

Hoje a seta, a trilha do minimapa e a linha do mapa vão em linha reta até o alvo do passo. O
`TravelPlanner.lua` é uma cadeia de regras que escolhe uma saída só ("voe", "barco", "pedra") e não
monta pernas. `FlightData.lua` e `TransitData.lua` foram escritos à mão para TBC e trazem Outland.

O SPF é GPL-3.0 e o Lodestar é MIT: **nada é copiado dele**, nem código nem dados. Os dados saem do
próprio cliente (tabelas do build no wago.tools) e do QuestieDB, como as rotas de quest.

## Escopo

O SPF tem quatro partes; esta spec cobre **A** e **B**.

| Parte | O quê | Nesta spec |
|---|---|---|
| A | Planejador: a pé + voo + barco + zepelim + bonde + pedra + teleporte, pelo menor tempo | sim |
| B | Desenho da rota por pernas no mapa e minimapa; seta; bússola | sim |
| C | Caminho a pé pelo terreno (malha de colisão do cliente, A* com andares) | não — spec própria |
| D | Horário ao vivo de barco e zepelim (contagem regressiva, alerta de chegada) | não — spec própria |

Também fora: elevadores (só importam para o caminho a pé, entram em C), portais fixos (o único no
dado é o de Dalaran, como trajeto de quest, sem origem e destino de portal), área de quest desenhada
pelo cliente, ícones e tooltips de cais no mapa.

## Decisões

- **O que dispara uma rota:** o alvo do passo do guia, um destino manual (Shift+clique no mapa ou
  minimapa, ou coordenada colada), um serviço próximo, e o corpo depois de morrer.
  Prioridade: **corpo > manual > guia**; ao chegar ou cancelar, volta para o de baixo.
- **Na tela:** a seta atual aponta para o fim da **perna atual**; uma bússola nova no topo mostra a
  próxima parada, o destino final e o próximo passo do guia.
- **Voos:** só voa *para* voo conhecido; um voo ainda não descoberto vale como ponto de partida
  depois de andar até ele (a rota marca "descubra o voo aqui"). Antes do primeiro mapa de voo aberto,
  assume conhecidos os voos das zonas por onde o personagem já passou com o Lodestar ligado
  (`LodestarCharDB.zones`, gravado ao entrar em cada zona).
- **Todo comando tem acesso pela interface**; o comando digitado vira atalho opcional.

## Componentes

Cada unidade tem uma responsabilidade e uma interface pequena; as funções puras são testadas fora do
jogo.

### 1. Dados — `tools/gen_travel.py` → `TravelData.lua`

Baixa do wago.tools, no build pinado em `import_forever.FOREVER`, `TaxiNodes`, `TaxiPath` e
`TaxiPathNode` (cache em `tools/build/`). Gera `TravelData.lua` (MIT), que substitui `FlightData.lua`
e `TransitData.lua`:

- `ns.travel.nodes[id] = { name, cont, x, y, fac }` — pontos de voo em coordenada de mundo; `fac` =
  `"A"`, `"H"` ou `"AH"` pelos bits de `Flags`. Saem os nós sem facção e os de nome `zzOLD…`,
  `Programmer…` e `Quest Path…`.
- `ns.travel.flights[from][to] = { s, path }` — `s` em segundos (comprimento do trajeto ÷
  `FLIGHT_SPEED`), `path` = o traçado simplificado (Douglas-Peucker, tolerância de ~20 jardas).
- `ns.travel.ships = { { kind, a = {cont,x,y}, b = {cont,x,y}, s, wait, path } }` — os trajetos com
  parada (`Delay > 0`) em `TaxiPathNode`; `kind` = barco ou zepelim; `wait` = meio ciclo.
- `ns.travel.tram` — a ligação fixa entre as estações de Ironforge e Stormwind.
- `ns.travel.services[kind] = { { npc, zone, x, y, fac, sub } }` — de `npcs.json` (`npcFlags`) e
  do `Trainers.lua` que já existe: treinador de classe e de profissão, reparo, vendedor, estalagem,
  banco, leilão, mestre de voo, mestre de estábulo.

`FLIGHT_SPEED` e a velocidade dos transportes são constantes nomeadas (o botão de calibração), a
ajustar com voos reais.

Autoverificação do gerador (`--demo`): contagem por facção, toda rota liga dois nós válidos, nenhum
nó descartado aparece, todo serviço tem posição.

### 2. Planejador — `Journey.lua`

```lua
local route = ns.Journey:Plan(from, to)   -- from/to = { cont, x, y } em coordenada de mundo
-- route = { seconds = 312, legs = { { kind = "walk"|"flight"|"ship"|"tram"|"hearth"|"teleport",
--           from = {...}, to = {...}, seconds = 40, label = "...", path = { {x,y}, ... },
--           discover = nodeId? } } }   ou nil se não houver ligação
```

Grafo por consulta (~100 nós): o jogador, o destino, os voos da facção, os cais, as estações do
bonde, o lugar da pedra e os teleportes conhecidos; Dijkstra.

| Ligação | Custo (s) | Condição |
|---|---|---|
| a pé | distância ÷ velocidade medida (padrão 7 jd/s) | mesmo continente |
| voo | `s` + 10 | origem conhecida, ou não descoberta alcançada a pé (vira `discover`); destino conhecido |
| barco/zepelim | `wait` + `s` | — |
| bonde | fixo | — |
| pedra de lar / Astral Recall | 10 + recarga restante | item ou feitiço disponível; destino = posição gravada ao vincular, senão a estalagem da cidade de `GetBindLocation()` |
| teleporte de mago / druida | conjuração | feitiço conhecido |

A velocidade a pé é medida enquanto o jogador anda (montaria e buffs entram sozinhos). Voos
conhecidos: `LodestarCharDB.taxi[id] = true`, gravado ao abrir o mapa de voo e ao descobrir um voo.
Recalcula quando o destino muda, quando uma perna termina (chegada ou pouso) e a cada 10 s andando;
uma rota nova só substitui a atual se for ≥ 15% ou ≥ 30 s mais rápida.

`TravelPlanner.lua` vira um adaptador fino sobre o `Journey` (`InZone`, `PlayerZoneEng`,
`HearthZone` seguem) enquanto os consumidores migram, e depois sai.

### 3. Destinos — `Destinations.lua` e `Services.lua`

- `Destinations` guarda os três destinos (corpo, manual, guia) e devolve o ativo pela prioridade.
  O corpo vem de `C_DeathInfo.GetCorpseMapPosition` quando o jogador é fantasma.
- `Services:Nearest(kind, sub)` pega os 5 candidatos mais perto em linha reta, de facção amiga, e
  devolve o de menor `Journey:Plan(...).seconds`.
- Shift+clique no mapa-múndi (cursor no mapa aberto) e no minimapa (cursor → jardas pelo zoom)
  define o destino manual; Shift+clique no pino o cancela.

### 4. Desenho — `RouteMap.lua` e `RouteMinimap.lua`

Substituem a linha reta do `Trail.lua`.

- Mapa-múndi (qualquer mapa aberto): cada perna em pontilhado, projetada pela coordenada de mundo
  (`Waypoint:MapPos`) e cortada na borda (`Waypoint.ClipSegment`); a perna atual forte, as próximas
  mais fracas, as feitas somem; ícone em cada parada (mestre de voo, com marca de "descubra" quando
  for o caso; cais; destino). Rota até o corpo em vermelho. Os pontos numerados do guia
  (`GuideMap.lua`) continuam por cima.
- Minimapa: o mesmo traçado em volta do jogador, de jardas para pixels pelo zoom calibrado, com o
  minimapa giratório; os pontos param na borda; a próxima parada vira ícone (preso na borda se longe).
- Mapa de voo: o destino do voo da rota em destaque (`FlightMap.lua`).
- Texturas de um pool; redesenho só quando muda o mapa, o zoom ou a rota; a ponta que sai do
  jogador a cada 0,25 s com o mapa ou minimapa visível.

### 5. Seta e bússola — `Waypoint.lua` e `Compass.lua`

- A seta aponta para o fim da perna atual; o texto diz ação e tempo ("Voe para Ironforge · 2m10s").
  Em voo, tempo até o pouso (já existe). No cais, "Espere o barco para Theramore". Perna de pedra ou
  teleporte: ícone e nome do item ou feitiço.
- `Compass.lua`: faixa no topo com N/L/S/O, marcadores da próxima parada, do destino final e do
  próximo passo do guia; fora do campo de visão, presos na borda com uma setinha; distância da
  próxima parada e tempo total. Arrastável, travável, tamanho 50–200%, liga/desliga.

### 6. Interface — acesso a todos os comandos

| Onde | O que ganha |
|---|---|
| Botão de bússola no cabeçalho do guia → **painel Viagem** (novo) | rota atual (pernas com tempo e total) · serviços próximos (um botão por categoria; "treinador da minha classe" = `/ls train`, "treinador de profissão" = `/ls prof`) · destino manual (ativo, "Limpar", campo de coordenada = `/ls way`) · estado do corpo |
| Botão **⋯ (Ações)** no cabeçalho do guia | Reiniciar guia (`reset`) · Exportar (`export`) · Importar (`import`) · Gravar rota (`record`) · Coleta do servidor: iniciar/parar/status/limpar (`scan`) |
| Botão do minimapa, clique direito | menu rápido: abrir/recolher guia, Biblioteca, Viagem, Serviços próximos, Configurações |
| Configurações → Geral | "Ver boletim agora" (`card`) · "Rever o tour" (`intro`) · botão de item de quest (`item`) |
| Configurações → Aparência | bússola (liga/desliga, tamanho) · rota até o corpo |
| Configurações → Avançado (nova) | modo depuração (`debug`) · diagnóstico da rota (`tdebug`) · alcance do minimapa num controle deslizante (`calibrate`) |

`/ls near [tipo]` é o atalho digitado dos serviços.

## Erros e casos de borda

- Sem rota possível (outro continente sem ligação conhecida): a seta mostra "Vá para <zona>", como
  hoje, e o mapa e o minimapa não desenham rota.
- Instância ou mapa sem coordenada de mundo: sem rota, seta como hoje.
- Em combate: o planejamento é Lua puro e segue; nada de quadro protegido é tocado.
- Destino de serviço sem candidato da facção: o painel avisa e não traça rota.
- Classe sem treinador no banco do Forever (paladino da Horda; xamã da Aliança): ao abrir a janela
  de um treinador de classe, o Lodestar lembra dele (por conta) e passa a usá-lo; sem nenhum
  conhecido, a mensagem diz a classe e a facção e pede para falar com um treinador uma vez (#17).
- Voo conhecido apagado do cliente (personagem novo, outra conta): a lista é por personagem e se
  refaz ao abrir o mapa de voo.

## Testes

Funções puras em `tools/forever-guides.lua` (luajit):

- planejador com dados de mentira: perto anda; longe voa; vale andar até um voo novo; pedra pronta
  perto do alvo usa a pedra, em recarga não; outro continente vai de barco; a histerese não troca de
  rota por pouco;
- destinos: a prioridade corpo > manual > guia; o serviço pelo menor tempo (um reparo mais perto em
  reta, mas atrás de um voo, perde); o filtro de facção;
- desenho: espaçamento dos pontos; mundo → minimapa com e sem rotação, cortado no raio; o voo pelo
  traçado e não em reta; corte na borda do mapa (já existe);
- bússola: ângulo → posição na faixa, a volta dos 360°, preso na borda fora do campo de visão;
- interface: todo comando do `/ls` tem entrada na interface (a checagem lista os comandos do
  `SlashCmdList` e compara com um registro de ações).

Gerador: `python tools/gen_travel.py --demo`.

## Critérios de aceite (validação em jogo)

1. Humano em Goldshire, alvo em Ironforge: vai pelo meio mais rápido (hoje o bonde de Stormwind, 318 s,
   à frente do voo); a rota aparece em pernas no mapa e no minimapa e a seta aponta para a entrada.
2. Night elf em Auberdine, alvo em Menethil: barco; "Pegue o barco para Menethil Harbor" no cais. Barco e
   zepelim só por cais da sua facção.
3. Orc em Orgrimmar, alvo em Undercity: zepelim.
4. Pedra vinculada em Brill e pronta, alvo em Brill vindo de longe: a rota usa a pedra e mostra o
   ícone dela.
5. Voo não descoberto no caminho mais rápido: a rota passa por ele e marca "descubra o voo aqui".
6. Morreu: rota vermelha até o corpo; ao reviver, a rota do guia volta.
7. Painel Viagem → Reparo: rota até o reparo de menor tempo.
8. Bússola: os marcadores giram com o jogador e ficam presos na borda fora do campo de visão.
9. Todo comando do `/ls` tem um botão ou menu na interface.
