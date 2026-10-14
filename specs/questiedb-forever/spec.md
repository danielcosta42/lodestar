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

## QuestieDB 1.0.6 e build 70338 (#55, 2026-10-12)

A 1.0.6 refez a base de um snapshot de 10/10: +216 quests (Shen'dralas, Desolace, Wetlands, quatro
masmorras novas, o battleground de Darkspear Islands) e cadeia corrigida em quest que já existia.

- [x] Masmorra nova sem mapa no QuestieDB (City of Dalaran 16544, Excavation Site: Wetlands 16732,
      Ruins of Lordaeron 16611, The Hall of Thanes 16919) não tinha nome em `zones.json`, e as quests
      dela caíam no leveling: chefe sem seta, e quest de Alterac dada em Stormwind → a zona entra com
      o nome do `dungeons.lua` e uiMapId 0; quest classificada na masmorra sem nada posicionado fora
      vai para o guia da masmorra (`em_masmorra`).
- [x] Quest do battleground Darkspear Islands (16606), dada pelo battlemaster da capital, entrava no
      leveling de The Barrens e Ashenvale → 16606 em `FORA_DO_LEVELING`, como AV, WSG e AB.
- [x] `gen_trainers.py` usava Shari Stilwell como exemplo de NPC sem título; a 1.0.6 deu a ela
      "Paladin Trainer" → o exemplo passa a ser o Marshal McBride.

Revisão independente:

- [x] Earthen Echo ("Bring the Titan Relic", relíquia de dentro da Excavation Site) não tem objetivo
      no banco e ficava no leveling de Mulgore — accept que nunca entrega; idem A Frightened Request
      e Unending Torment em Silverpine (já no main) → em masmorra sem mapa, sem objetivo posicionado
      fora basta; quem recebe fora é só o fim da cadeia.
- [x] A 1.0.6 pôs uma caixa de correio de Orgrimmar como início de Deviate Hides, e o guia de
      Wailing Caverns da Aliança mandava a Orgrimmar → objeto em capital inimiga não serve de início.
- [x] The Binding (65603) ganhou nível na 1.0.6, e o Incubus nasce em Undercity, Stormwind e
      Orgrimmar: o bruxo da Aliança ia a Orgrimmar → `best_spawn` prefere zona fora da capital inimiga.
- [ ] Item sem fonte na masmorra nova aponta para quem dá a quest; as quests da Aliança em Ruins of
      Lordaeron começam por item sem fonte — dado que falta no QuestieDB.
- [ ] `QuestV2` do 70338: o wago devolvia 503; `FOREVER` segue no 70245 até ele voltar.

Medido contra a v2.6.0 (simulação da cadeia `next` por raça×classe, 8 caminhos): 0 accept que trava,
pico do log 17 nos dois, 10 aceites acima do teto do guia nos dois, 0 quest perdida por ordem, 0
pendurada. Passo sem coordenada no leveling: 2 → 0 (os 3 que sobram são chefes das masmorras novas,
no guia delas).

Salto grande na mesma zona (`guide_integrity` JUMP) no leveling: 218 → 234, com 3% mais passos.
Em passo de conteúdo que não mudou, 201 → 201; os +16 são todos de passo com quest que a 1.0.6
criou ou alterou (nova, cadeia corrigida, NPC que mudou de lugar) — o vai e volta hub ↔ campo de
Desolace, Wetlands e Silverpine, que ganharam quests. A ordenação do roteador não mudou.

## Rotas das zonas iniciais (#57, 2026-10-13)

Feedback do beta: o troll saía do Valley of Trials quase de cara, deixando quest para trás, e o
morto-vivo em Deathknell era mandado aceitar quest cinza e "falar" com o mob de matar. Os três já
estavam na v2.6.0.

- [x] Objetivo de criatura saía `talk` quando o NPC tinha `faction` — e o Forever marca `AH` em mob
      hostil: 307 passos `talk |q`, 132 com alvo sem gossip → texto que manda matar sai `kill`; se o
      alvo é NPC com quem se fala, a palavra de matar tem de estar na frase do nome dele (o "kill
      her" de Mother's Milk é a aranha, não Ragged John; em The Battle of Darrowshire o "Defeat" é
      do Redpath the Corrupted). Sobram 207, e os 18 alvos sem gossip são curar, alimentar, falar,
      investigar.
- [x] `nivel_ok` dava folga de +1 ao `reqLevel` → o `reqLevel` é trava; a folga fica no nível da
      quest. A estimativa conta só as quests sem classe e sobe em curva (`fração ** 0,7`): em reta,
      a trava fazia Camp Narache, Northshire e Coldridge serem deixadas com quest de nível 3-4 por
      pegar, e o guia voltava lá (revisão independente).
- [x] Cutting Teeth (788) esperava Your Place In The World **e** The New Horde (Orgrimmar), e ela e
      o que pede ela (Sting of the Scorpid, Galgar, os tablets) iam para o fim de Durotar → no
      `_antes`, anterior pelo `nextInChain` basta uma entre as que cobrem o mesmo público. No dado
      as quatro Call of Fire têm a máscara de toda a Horda; só no guia de classe, onde a raça da
      zona inicial estreita o público, cada raça espera a sua.
- [x] O vai e volta depois do vale (Razor Hill → Burning Blade Coven → Sen'jin → vale): o objetivo
      vai para o hub mais próximo, e a Coven cai no de Razor Hill → #59, abaixo.
- [x] The New Horde segue como ida a Orgrimmar e volta ao vale para entregar quest de nível 1 → #59.

`python tools/router.py` confere os três (falha no `main`). Medido contra a v2.7.0:

| | v2.7.0 | #57 |
|---|---|---|
| simulação da cadeia `next`, accept que trava | 0 | 0 |
| pico do log | 17 | 18 |
| aceites acima do teto do guia | 10 | 10 |
| pendurada / perdida por ordem | 0 / 0 | 0 / 0 |
| `guide_integrity --full` JUMP | 376 | **355** |
| guias de classe, accept sem pré-req (os mesmos) | 35 | 35 |
| accept acima do nível, modelo de XP até o 20, raça nativa × 9 classes | 348 | **198** |
| — dentro da zona inicial | 177 | 9 (Zephras Isle) |
| distância percorrida no leveling | 81.528 | 78.027 (−4,3%) |

O modelo de XP é de validação, não verdade: XP de quest `20·nível^1,5+60`, dobrada se tem objetivo
(os mobs), e a tabela de XP por nível do vanilla. A curva 0,7 saiu de varrer 0,5–1,0: 0,5 devolve o
"!" cinza de Deathknell, 1,0 deixa Camp Narache e Coldridge para trás. Nos 80 primeiros passos,
Durotar 578 → 353 e Elwynn 352 → 293; Dun Morogh 360 → 433 e Teldrassil 409 → 451 seguem com o vai
e volta entre a zona inicial e a vila, que o `main` também tem (desenho dos hubs, acima).

## Hubs, The New Horde e tarefa sem objetivo (#59, 2026-10-14)

O que a #57 deixou e a revisão independente achou.

- [x] Hub era só onde se dá e recebe quest; o objetivo ia para o hub mais próximo (a Burning Blade
      Coven no de Razor Hill), e a rota varria todos os hubs em ordem fixa, indo a qualquer um que
      tivesse algo — uma entrega só, longe → lugar de objetivo longe de toda vila vira hub (à parte:
      junto com as vilas, a cadeia de pontos emendava vilas), e a rota vai ao hub mais próximo com o
      que fazer agora; sem nada, o nível sobe. Testados e descartados: hub só de pegar quest
      pesando o dobro (−7,3% contra −10,5%), olhar um hub adiante (−6,9% a −9,5%) e subir um nível
      antes de viagem longa — anda −17%, mas cada viagem evitada sobe o nível estimado de vez e o
      aceite acima do nível vai de 188 a 582–845; e voltar a pé custa menos que moer um nível.
- [x] The New Horde: anterior alternativa que nasce fora sai quando uma da zona cobre o mesmo
      público. Único caso no leveling.
- [x] 8 quests com tarefa no texto e sem objetivo no QuestieDB eram aceitas e entregues sem passo de
      fazer → o alvo sai do nome no texto (Undead Ravager, Injured Deathguard) ou de
      `OBJETIVO_MANUAL` (Webbed Victims = Webbed Forsaken; Captured Sprite Darter, não o solto que o
      nome achava); sem alvo, `note` + `get … |q`, que o addon conclui quando o cliente marca a quest
      completa. Alvo achado pelo texto só vira `kill` se o texto manda matar.

Revisão independente: o laço termina e o `assert` não dispara (variando `DIARIO`, `HUB_MERGE_DIST`,
`CURVA_NIVEL` e nível máximo); nenhuma quest sumiu de guia além de The New Horde; a regeneração
reproduz os guias byte a byte. Ficam:

- [ ] Mulgore sai de Camp Narache e volta por The Adventurer (nível 6), que o nível estimado só abre
      depois: ~28 de desvio. O `main` a pegava antes de sair.
- [ ] Durotar deixa Vile Familiars por fazer ao sair do vale (o Ukor, a 10, ganha da Coven, a 14) e
      volta ao vale 4 vezes contra 2; ainda anda menos (478 contra 504 nos 120 primeiros passos).
- [ ] Na simulação por raça×classe, −10,8% no total, mas Hillsbrad 33-38 (+13%), The Hinterlands
      (+10%), Silithus (+9%) e Azshara (+8%) da Aliança andam mais: o guloso volta à vila para uma
      entrega entre dois objetivos pendentes.
- [ ] A Light in the Darkness tem passo em Night Web's Hollow, mas antes de Night Web's Hollow (que
      espera The Damned): duas idas ao mesmo lugar. Juntar pede olhar adiante.
- [ ] Os 4 passos `get … |q` sem alvo não têm seta; From the Ashes (Wetlands) manda de Menethil à
      Angerfang só pela nota.

`python tools/router.py` confere The New Horde, A Light in the Darkness e Northshire sem quest
deixada para trás (falha no `main`). Medido contra a v2.7.1:

| | v2.7.1 | #59 |
|---|---|---|
| simulação da cadeia `next`, accept que trava | 0 | 0 |
| pico do log | 18 | 17 |
| aceites acima do teto do guia | 10 | 10 |
| pendurada / perdida por ordem | 0 / 0 | 0 / 0 |
| `guide_integrity --full` JUMP | 355 | **298** |
| guias de classe, accept sem pré-req (os mesmos) | 35 | 35 |
| accept acima do nível, modelo de XP | 198 | **188** |
| — dentro da zona inicial | 9 | 9 (Zephras Isle) |
| distância percorrida no leveling | 78.027 | **69.846 (−10,5%)** |
| quests novas do Forever em guia | 548 | 548 |

Nos 80 primeiros passos: Durotar 353 → 234, Tirisfal 296 → 279, Mulgore 415 → 323, Elwynn 293 → 240,
Dun Morogh 433 → 345, Teldrassil 451 → 310, Zephras Isle 263 → 190 (H) e 248 → 213 (A).
