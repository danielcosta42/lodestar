# Spec — Rotas do Forever a partir do QuestieDB

- **Data:** 2026-10-07 · **Status:** implementado · **Issue:** #9
- **Alvo:** Lodestar (addon, WoW: Forever) e o gerador em `tools/`

## Problema

Os guias que sobreviveram ao v2.0.0 são rota de Anniversary: coordenada, giver e pré-requisito de
TBC num cliente que não é TBC (Mulgore difere ~4% em y). E as quests novas do Forever não estão em
guia nenhum, porque o dado delas "não existia". Desde o QuestieDB 1.0.5 existe: 760 quests novas,
3.110 NPCs novos, coordenadas já no sistema do Forever (conferido contra o scan em jogo).

## Objetivo

A biblioteca inteira do Lodestar passa a sair do banco do Forever — rotas vanilla com a geografia
certa e as quests novas roteadas, incluindo a zona inicial da raça nova.

## Fora de escopo

- Tabelas escritas à mão (`FlightData`, `TransitData`, `TravelPlanner`): seguem como estão.
- Guias curados de TBC no `gen_special.py` (sementes de attunement de Outland): não geram nada no
  banco do Forever e somem sozinhos.
- Coleta nova em jogo: o coletor já existe (#7); aqui ele só passa a mirar o que falta.

## Histórias

- Como jogador do Forever, quero que o autopilot me mande para o NPC certo, na coordenada certa
  deste cliente.
- Como Skyborne no nível 1, quero um guia de Zephras Isle escolhido sozinho.
- Como quem roda `/ls scan`, quero varrer só o que nenhum banco conhece.

## Critérios de aceite

- [x] `python tools/questiedb.py --demo` passa: decodifica o `QuestieDB_Forever.toc` sem rede e
      sem dependência nova, e os campos batem com o schema do QuestieDB (quest 7 → McBride em
      Elwynn 48.92/41.61; quest 94489 em Zephras Isle).
- [x] `import_forever.py` usa o QuestieDB como base, o scan por cima, e é determinístico.
- [x] Nenhum guia cita quest que o Anniversary tem e o Forever não (o `QuestV2` não lista as
      repetíveis — "Earth Sapta" 1463 foi vista em jogo e não está nele —, então ausência nas duas
      tabelas não conta como remoção).
- [x] Existe `Leveling/<Facção>/Zephras_Isle_*` para as duas facções; Skyborne (raças 95/96)
      cai nele pelo `findStartGuide`, e `only Skyborne` funciona como condição.
- [x] Toda quest nova com giver posicionado e nível ≤ 60 está em algum guia, ou o gerador
      lista quantas ficaram de fora e por quê.
- [x] `ForeverData.lua`: `foreverUnknown` = ids ≥ 30000 do `QuestV2` do Forever que o banco não
      conhece (abaixo disso são as 217 quests vanilla que o Questie descartou por não serem usadas).
- [x] `luajit tools/forever-guides.lua` e `luajit tools/forever-scan.lua` verdes.

## Matriz de estados

| Entidade | Estados | Comportamento |
|---|---|---|
| quest | no QuestieDB e no `QuestV2` / só no QuestieDB / Anniversary-sim-Forever-não | roteia / roteia (repetível) / sai |
| quest | giver com spawn / sem spawn / giver é item | roteia / fica fora, contada / ancora pela fonte do item |
| zona | top-level / subzona / masmorra | vira guia se tiver quest / não vira / vira guia de masmorra |
| jogador | raça vanilla / Skyborne A / Skyborne H | guia inicial da raça / Zephras Isle (A) / Zephras Isle (H) |

## Riscos

- O QuestieDB 1.0.5 é a primeira versão com dado do Forever; muda a cada release. O import é
  reexecutável e a versão usada fica registrada no cabeçalho dos arquivos gerados.
- Licença: Questie/QuestieDB são GPL-3.0; o Lodestar já deriva rotas do Questie e registra a
  procedência (README, `docs/forever.md`).
