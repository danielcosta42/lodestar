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

O que a #57 deixou e as duas revisões independentes acharam.

- [x] Hub era só onde se dá e recebe quest; o objetivo ia para o hub mais próximo (a Burning Blade
      Coven no de Razor Hill), e a rota varria todos os hubs em ordem fixa, indo a qualquer um que
      tivesse algo — uma entrega só, longe → lugar de objetivo longe de toda vila vira hub (à parte:
      junto com as vilas, a cadeia de pontos emendava vilas), e a rota escolhe o próximo hub entre
      os dois mais perto com trabalho (hub só de pegar quest conta 1,2× a distância) simulando o
      mesmo guloso até acabar o trabalho que se sabe, e fica com o de menor caminho total. Sem
      nada a fazer em hub nenhum, o nível sobe.
- [x] Zona inicial: enquanto um hub onde se pega ou se faz quest da subzona de partida (o
      `zoneOrSort`: Valley of Trials, Deathknell, Camp Narache, Northshire, Coldridge, Shadowglen)
      tem trabalho, a rota fica neles; na primeira saída a regra acaba. Pela distância sozinha Dun
      Morogh ia a Kharanos com A New Threat pronta ao lado dos troggs.
- [x] Nível estimado pela XP: `xp.json` é a XP de quest que o QuestieDB traz
      (`support/Forever/QuestXP`, 80% das quests dos guias; a nova do Forever segue a mediana do
      dado), mais os mobs do objetivo, na tabela de XP do vanilla. O nível é o maior entre a XP e a
      fração entregue do guia: só pela fração Camp Narache era deixado no 3 (o jogador já tem 4-5 e
      The Adventurer pede 4); só pela XP as zonas do meio travavam no nível (o jogador intercala
      zonas) e andavam 20-30% mais.
- [x] Aceite acima do nível que só a XP dá: `only level>=N` no aceite, `haveq` em fazer e entregar,
      `completed` em cascata em quem depende dela no guia — o passo some em vez de mostrar o "!"
      cinza. Dun Morogh 13-26 e Silverpine 11-20 pediam nível 20 a quem tinha 18-19 (os mesmos 94
      aceites no `main`). Começou como `ding N` antes do aceite; a revisão mostrou guias inteiros
      parados por uma quest e o `ding` ficou só na entrada do guia (abaixo).
- [x] The New Horde: anterior alternativa que nasce fora sai quando uma da zona cobre o mesmo
      público. Único caso no leveling.
- [x] 8 quests com tarefa no texto e sem objetivo no QuestieDB eram aceitas e entregues sem passo de
      fazer → o alvo sai do nome no texto (Undead Ravager, Injured Deathguard) ou de
      `OBJETIVO_MANUAL` (Webbed Victims = Webbed Forsaken; Captured Sprite Darter, não o solto que o
      nome achava); sem alvo, `note` + `get … |q` com a seta no NPC que mora no lugar do texto
      (`OBJETIVO_LUGAR`: Venture Co. Supervisor na mina, Windfury Sorceress, Dragonmaw Centurion
      na Angerfang, Novice Warrior). Alvo achado pelo texto só vira `kill` se o texto manda matar.

Testado e descartado, contra a mesma bateria:

| variante | caminhada | por quê saiu |
|---|---|---|
| guloso puro (hub mais perto) | −10,5% | Durotar saía do vale com Vile Familiars por fazer |
| hub só de pegar pesando 2× / 4× | −7,3% / −9,5% | pegar quest na vila de passagem é eficiente |
| olhar um hub adiante | −6,9% a −9,5% | |
| subir um nível antes de viagem longa | −17% | o nível estimado passa do real: aceite acima do nível 188 → 582+ |
| plano de pegar-fazer-entregar por inserção | −9,0% | heurística mais fraca que o guloso aqui |
| simulação de 6/12 passos | −12,2% / −14,1% | favorece ir longe e deixar a volta: Northshire ficava para trás |
| simulação só com o que já se pega | −12,5% | o trabalho que a entrega abre é a estrutura do resto da zona |
| nível só pela XP | −1,0% | as zonas do meio travam |
| teto da fração em XP +1/+2/+3 | −10,7% a −15,9% | não muda nenhum aceite acima do nível |

### Revisão completa (duas revisões independentes: código e dados; o guia jogado como jogador)

(O `ding` no meio do guia destes itens saiu na segunda revisão: virou aceite opcional por nível.)

- [x] `ding` sem a condição do aceite travava quem não é da classe/raça → o passo leva a mesma
      condição (`only_cond`), e o último `ding` é por condição. Nenhum `ding` sem uso.
- [x] `ding` cedo no guia (Silverpine pedia 19 com The Weaver e A Recipe for Death, nível 9-10, por
      fazer) → aceite que pede `ding` vai por último, depois de tudo que não pede.
- [x] As sobras entregavam com `turned.add` cru e o nível parava lá → passam pelo `Estado`.
- [x] `xp_quest` somava número de página ("Pages 1, 4, 6 and 8"), dava 8 mobs a quem não diz e mob a
      item de objeto → conta só "N <palavra>", 1 sem número, mob só de item que cai de NPC.
- [x] Nível otimista (Lazy Peons no ~2,4, quests de 7 em Brill no 6, Encroachment com mobs de 9-10
      no 7) → a XP vale meio nível a menos (`XP_FOLGA`) e quest só até +2 (`LV_ACIMA`).
- [x] Marla's Last Wish ia à lápide sem os restos → `OBJETIVO_ANTES`: Samuel Fipps antes.
- [x] O import guardava 3 fontes por item → todas; coletas fora da zona 167 → 145 (as que sobram
      são de objetivo noutra zona por desenho). Wild Eyes, Small Egg e Flagon of Mead certos.
- [x] Quest de classe/masmorra/"fale com" acima da faixa do guia ficava atrás de `ding` acima da
      faixa → sai do guia (tem o próprio). Vyletongue Corruption, A Host of Evil (RFD), as do robe
      do bruxo, Report to Mountaineer Rockgar.
- [x] A cadeia era por continente: o morto-vivo ia a Hillsbrad 32-39 no 23 e a cadeia não dava XP
      para o 60 (o jogador simulado terminava no ~50, com 1.092 aceites acima do nível) →
      `intercalada` (`FICA_NIVEIS` 3, 7-9 travessias); pré-req noutro continente leva a quest ao
      primeiro guia daqui depois dele. Faixa mais estreita (`BAND_WIDTH` 7-10) foi testada e piora.
- [x] Flight to Auberdine era uma ida de barco no meio de Darnassus → entrega noutra zona de que
      nada depende vai para o fim do guia.
- [ ] The Barrens 12-20 da Horda começa por Thunder Bluff e Orgrimmar para todas as raças: desvio
      para quem vem da outra; o DSL não tem "veio por". Registrado em `docs/forever.md`.
- [ ] Nogg's Ring Redo (2950) saiu: pede "Return of the Ring", que nenhum guia oferece, e com as
      fontes completas o destino dela ficou noutro continente.

### Segunda revisão completa

- [x] `ding` no meio do guia parava tudo por uma quest (8 níveis em Ironforge por A Host of Evil, 5
      em Orgrimmar por uma entrega em Gadgetzan) → aceite opcional por nível, em cascata.
- [x] Sem `ding`, a cadeia andava abaixo da faixa nos 50 (Western Plaguelands 53-57 no 51,
      127 aceites acima do nível) → `only level>=N` pelo nível da XP (a curva da fração adianta), e
      cada guia começa com `ding` no nível de entrada. O nível de entrada era o da descoberta (a zona
      inteira): Tanaris 53-60 supunha o 56 e o `ding` pedia 4 níveis → o de baixo das quests que o
      guia leva, menos 1.
- [x] A cascata trocava a condição: `marca` juntava descartando a que já havia, e The Rise of the
      Machines 2 ficava só com `level>=52`, sem `completed(4061)` (a simulação da cadeia achou 2).
- [x] Objetivo com vários NPCs saía só com o primeiro (Exploring the Alliance só com o Randal; o passo
      esperava a quest inteira lá) → um goal por NPC, na ordem do texto, `|q N/i` pela posição no banco
      (a ordem do servidor: The People's Militia, Trapper 504 antes de Smuggler 95), o último sem
      índice; NPC da outra facção fora (Desperate Times); criatura sem facção é `kill` (Ferauu, em
      Standing Our Ground). "Using the Beacon Torch, mark" e "scare … with it" são `use`.
- [x] Are We There, Yeti? 3 mandava de Winterspring a Tanaris e Un'Goro → falar com NPCs em duas zonas
      que não são capital tira a quest do guia (as torres de Andorhal, uma zona só, ficam).
- [x] Fonte de item sem nível: Small Egg em Zephras apontava para mobs de 11 numa quest de 6 → entre
      mobs da mesma confiança, o que não passa do nível da quest.
- [x] Valor Token da Argent Dawn (They Call Me "The Rooster") no leveling → `SO_REPUTACAO`.

### Terceira revisão completa (código e dados; o guia jogado como jogador)

- [x] Quest de explorar sem passo de fazer (The Forgotten Pools, The Fargodeep Mine, Unfinished
      Business, escoltas): aceite e entrega seguidos, a entrega travava e não havia seta → o import
      guarda o `triggerEnd` do QuestieDB e o passo é nota + `goto` ao ponto (conclui ao chegar).
      Sem ponto (Falling With Style, eventos), a entrega leva a nota do que fazer.
- [x] A saída da ilha não estava em guia nenhum (a da Horda, em Mulgore 4-10), e Exploring the
      Alliance/Horde e Journey to Sentinel Hill/the Crossroads nunca abriam → Welcome to Azeroth e a
      cadeia que segue fecham o guia de Zephras; os outros guias não as levam.
- [x] O `ding` de entrada pedia mais que o guia precisa (Tirisfal 53-60 pedia 52 com as primeiras
      de `reqLevel` 50) → até o `reqLevel` das 6 primeiras quests. O revisor achou também que o
      modelo dele contava "Super Reaper 6000" como 6.000 mobs: com a contagem certa, os números
      abaixo.
- [x] Quest de grupo sem aviso nem gate: Alas, Andorhal (Araj the Summoner, elite de 61, para quem
      tem 52) e The Root of All Evil (Xandivious, elite de 62, com a seta em Gorn One Eye) → quest
      com alvo elite pede o nível dela menos 2; `OBJETIVO_ANTES` põe Araj e Xandivious com `|elite`,
      e `OBJETIVO_LUGAR` vale para objetivo de item (a caverna do High Chief Winterfall).
- [x] Marla's Grave com a seta no Samuel Fipps → a seta do objetivo é a do objetivo; o NPC de antes
      só conta para a rota.
- [x] Objetivo de vários itens ou objetos com um alvo só: The Warsong Reports concluía com 1 dos 3
      relatórios e a entrega travava; Set Them Ablaze!, Stones of Binding, Gleaning Our Future → um
      goal por alvo quando há mais de um lugar no mundo (dentro da masmorra, como antes: INSTLOC
      não sobe). Quem entrega o item sem ser vendedor (`npcFlags` sem 4) é `talk` + `collect`.
- [x] Fonte de item pior que antes com todas as fontes: Bloodpetal Sprout no Ravasaur, Nightcrawlers
      no Foreman Thistlenettle (elite) → o nó da zona com o nome do item vence; a loja do continente
      vence elite e mob 5+ acima. A dica contradizia a seta (Falrin's Vendetta citava Blackrock
      Spire com a seta em Feralas; Gromsblood citava o Razorlash) → começa pela fonte da seta e só
      cita a zona dela; a compra diz quem vende.
- [x] `buy <NPC>##<id do NPC>` para o item que começa a quest contava o item de id errado e travava
      (Sign Me Up!) → `talk` no vendedor + `buy` do item.
- [x] Ouvir quem dá a quest com `|q N/i` no passo do aceite travaria com o índice errado (Blood
      Tithe: banco [Aamelia, Alvarion], texto ao contrário) → linha sem `|q`, com dica.
- [x] A cascata de nível tratava breadcrumb (`_antes`) como pré-requisito: Gnogaine sumia para quem
      não fez o breadcrumb → só o pré-requisito do banco.
- [x] Of Mice and Milk (15) entregava ao Nesingwary, entre tigres de 30; Reclaiming the Charred Vale
      (27) em Feralas → sai a quest com entrega ou objetivo numa zona cuja parte mais fácil está 10+
      níveis acima (classe e a ilha têm transporte).
- [x] Entrega sem seta (Buying Friendship: Gelkis, Dragonmaw Rumors: quem recebe não tem spawn) →
      a quest sai.
- [x] Sobras em ondas iam e voltavam entre zonas (Un'Goro, Western Plaguelands, The Barrens 12-20:
      32 trocas) → guloso por lugar. Trocas de zona nos guias: 647 (`main`) → 475 → **340**.
- [x] An Unholy Alliance saiu do guia de Razorfen Kraul → onde a quest se pega (o item que cai da
      Charlga) vence o `zoneOrSort`.
- [x] Comentários que mentiam (o `ding` antes da quest, "pede `ding`"), `gidx[i]` que estouraria com
      pré-req de zona inicial noutro continente, assert de demo tautológico.
- [ ] Objetivo misturado (criatura + item) segue com o primeiro alvo e a nota: a ordem dos objetivos
      no cliente, entre tipos, não se sabe.
- [ ] Item dado por NPC amigo que o banco lista como "drop" (o Pixel, em Splintertree) sai como
      "cai de": a facção do Forever marca bicho hostil como "A"/"AH" e evento com gossip vira hostil
      (Ribbly, Pusillin), então não dá para separar pelo dado.

### Quarta revisão completa

- [x] `kill` sem `|q` com seta prendia a seta (39 passos em 21 guias, nenhum no `main`): A Dark
      Threat Looms nunca chegava à Crocolisk Tear, Crown of Will ficava no Targ, Marla's Grave no
      Fipps → o `kill` do mob que dá o item leva o `|q` do item; o NPC de antes vai num passo
      próprio (`kill` sem seta + `goto` até ele). O demo confere todos os guias de leveling.
- [x] `buy <item>` do item que começa a quest voltava a 0 quando o aceite consome o item → `talk`
      no vendedor com a dica de comprar. `buy … |q` conclui pelo objetivo (Guide.lua): 1
      Nightcrawlers fechava Fishin' Time, que pede 3 e um Shiny Bauble; a conta de cada item sai do
      texto.
- [x] Gatilho dentro de instância (-1,-1: Jail Break!, Willix) dava passo que não conclui; o de cima
      de quem recebe (Ak'Zeloth: "Destroy the Demon Seed") mostrava a quest seguinte → não contam.
- [x] Escolta separada do aceite (Supplies to Auberdine: 41 passos no meio) e antes do resto do
      hub (Free From the Hold saía da fortaleza antes de Guns of Northwatch) → logo depois do
      aceite, e por último no hub.
- [x] O `ding` de entrada e o gate supunham níveis diferentes: 61 guias com `ding` abaixo do nível
      do gate, e aceite sem gate acima do nível de quem entra no `ding` (Stranglethorn 34-41 no 28 com
      The Defense of Grom'gol, de 33) → as 6 primeiras sem gate, e o `ding` sobe até toda quest sem
      gate caber na XP dali. Gatear a partir do `ding` (sem subir) deixa 24 níveis moídos, mas o
      jogador pula conteúdo e termina no 55-57: descartado.
- [x] `|q N/i` pela ordem do QuestieDB, que às vezes não é a do cliente (Storm, Earth, and Fire) →
      o import reordena pelo cache do cliente (`wdb.json`) quando ele tem a quest.
- [x] `longe()` e o ponto do objetivo só olhavam o primeiro item: Warsong Supplies ia a Booty Bay,
      The Star, the Hand and the Heart a Dustwallow → a fonte de cada item.
- [x] Quest de grupo pelos alvos amigos (Kalaran, em The Torch of Retribution) → só hostis; e o gate
      dela é o nível da quest (Collecting Memories, com os mineiros elite, saía no 16).
- [x] Vários alvos na ordem do texto (The Warsong Reports cruzava Ashenvale duas vezes; Hearts, 166
      contra 89; The Coast Isn't Clear só com os murlocs do norte) → vizinho mais perto, e também
      para quest de matar vários tipos. Objetivo de objeto é `click`, não "Collect".
- [x] Saída da ilha: Journey to Sentinel Hill/the Crossroads só abriam depois de ir e voltar → na
      cadeia da saída, entregues na chegada ao guia seguinte.
- [x] Entrega numa zona de guia mais adiante ia e voltava (It's a Secret to Everybody: Un'Goro →
      Winterspring → Un'Goro; The Defias Brotherhood: Westfall → Lakeshire) → espera o primeiro guia
      daquela área, com `haveq`; quem depende dela lá leva `completed` (o elfo noturno chega a Elwynn
      21-28 sem Redridge). `validate_guides` aceita entrega com `haveq` sem aceite no guia.
- [x] Entrega na zona do guia seguinte ia para o fim mesmo com o jogador ao lado (Target: Felstone
      Field: a chave e o caldeirão, e a Bulwark no meio) → só se o guia não vai lá.
- [x] Breadcrumb de capital a capital do outro continente (Assisting Arch Druid Runetotem e
      Staghelm, The New Frontier, Klockmort's Essentials) → fora; classe fica.
- [x] Item "X's Report" sem fonte (Patience: três relatórios) apontava para quem deu a quest → o NPC
      do sobrenome na zona do guia, com `talk`.
- [x] A nota de explorar era o nome do gatilho ("Diagnosis Complete") → o texto da quest, com o
      gatilho na dica do `goto`.
- [x] Entrega em capital que um guia mais adiante visita (Glyphed Oaken Branch em Darnassus, no meio
      de Western Plaguelands) → resolvida na quinta revisão: entregue no começo de Azshara, junto
      com as quests de Darnassus.
- [ ] Rotas que ainda vão e voltam, iguais ao `main`: Dry Times (Westfall → Stormwind → Duskwood →
      Elwynn, no começo de Redridge 15-24), The Sacred Flame (Thunder Bluff duas vezes), The Barrens
      55-60 (Ratchet → Felwood → Un'Goro → Ratchet), The Hammer May Fall (Arathi no meio de
      Hillsbrad). São cadeias que o desenho por zona não junta.
- [ ] Testing the Wells: os poços não têm ponto no banco; a seta fica em quem deu a quest.

### Quinta revisão completa

- [x] A regra do gatilho em cima de quem recebe tirava o gatilho das escoltas (elas terminam lá), e
      a escolta não ia mais logo depois do aceite (Free From the Hold, In Dreams, Missing In Action);
      Protect Kanati (objetivo de matar, sem gatilho) e Vorsha the Lasher ("Keep Muglash safe")
      nem eram reconhecidas → escolta pelo texto, com ou sem objetivo, e o gatilho dela fica; a que
      termina em quem recebe é entregue ali (The Sleeper Has Awakened).
- [x] O adiamento entregava longe demais e cinza: Messenger to Darkshire (18) no Redridge 54-60,
      Return to Nessa (10) no Teldrassil 48-55, Summon Felsteed (o cavalo do bruxo) 16 níveis
      depois; Water Sapta era adiada com o jogador no NPC → o alvo é o primeiro guia adiante (o
      seguinte também) que visita a zona, capital incluída, que comece até 4 níveis acima da quest;
      classe não adia; o guia que já vai à zona (pegar esta, fazer outra, ou já passou) não adia; a
      XP conta no guia de lá.
- [x] Prayer to Elune ficou sem entrega: o guia de destino tirou a herdada pelo filtro de objetivo
      noutro continente → a herdada não passa pelos filtros, e o `generate_all` para se uma adiada
      não sair no destino.
- [x] A divisão de vários mobs ignorava o verbo e os marcadores (Eyes of the Sentinels: `kill
      Credit`; Making Our Move: `kill` num NPC amigo) → o verbo de cada mob pela regra do passo de um
      alvo, e alvo marcador fica no passo de um alvo só.
- [x] A ordem de vizinho mais perto partia de quem deu a quest (Gelkak's Key subia ao norte e voltava
      ao sul) → parte do último `goto`. As sobras preferem o mesmo continente ao trocar de zona.
- [x] A entrega da saída da ilha (Journey to Sentinel Hill) vinha antes da viagem ao início do guia
      seguinte → só a da zona onde o guia seguinte começa fica no fim; a outra vai para ele.
- [x] Fishin' Time mostrava `buy 1 Nightcrawlers` → a conta pelo nome do item primeiro.
- [x] `validate_guides` aceitava qualquer entrega com `haveq` → só se outro guia aceita a quest.
- [ ] A cadeia única intercalada leva o humano a Darkshore 13-20 e The Barrens 14-21 no 22-25, com
      boa parte das quests cinza (~65% da XP ali): é o custo de a cadeia dar XP para o 60 a todas as
      raças (por continente, o morto-vivo parava no ~50).
- [ ] The Warsong Reports (Horde) atravessa Ashenvale no nível 18-19: os três mensageiros são o
      objetivo da quest.
- [ ] Os 50 da Horda (Badlands 50-54 → Tirisfal 53-60 → Western Plaguelands 53-57) moem 1-2 níveis
      a cada entrada: a XP de quest dos 50 não fecha a faixa.

O juiz do nível é o modelo do revisor (`walk3.py`, independente do roteador: XP real reduzida por
diferença de nível, mobs pelo nível e pela contagem do objetivo, mobs no caminho pela distância),
andando a **cadeia inteira** de cada zona inicial, uma classe cada, moendo no `ding` até o nível
pedido:

| cadeia inteira | v2.7.1 | quinta revisão |
|---|---|---|
| aceite acima do nível | 1.092 | **0** |
| mob 3+ níveis acima (por goal; há mais goals por passo) | 577 | 205 |
| níveis moídos em `ding` | 0 | 29 (3-7 por cadeia, no máximo 2 de uma vez) |
| nível no fim da cadeia | ~50 | 57-59 |

Testado e descartado: o `ding` de entrada pelo nível das quests (35 níveis moídos, 150 mobs);
cadeia ordenada pelo nível de baixo em vez da mediana (cinzas na Aliança, distância +0,5% contra o
`main`); esconder a quest vermelha (`ql-3`: menos mobs, mais grind, fim no 57); gate em todo aceite
(3.052 condições, o mesmo que pelo nível da XP); gate a partir do `ding` (fim no 55-57).

`python tools/router.py` confere The New Horde, A Light in the Darkness com passo e, nas seis zonas
iniciais, nada a pegar na área de partida depois de pisar na vila (falha no `main`: Durotar pegava
Report to Sen'jin e The Adventurer depois de Razor Hill), e os casos destas revisões. Medido contra
a v2.7.1:

| | v2.7.1 | quinta revisão |
|---|---|---|
| simulação da cadeia `next`, accept que trava | 0 | 0 |
| pendurada / perdida por ordem | 0 / 0 | 0 / 0 |
| pico do log | 18 | ≤ 15 |
| aceites acima do teto do guia | 10 | **3** |
| `guide_integrity --full` JUMP | 355 | **249** |
| guias de classe, accept sem pré-req (os mesmos) | 35 | 35 |
| distância do esqueleto da rota (só aceite e entrega) | 50.766 | 45.703 (−10,0%) |
| trocas de zona nos guias | 647 | **311** |
| quests novas do Forever em guia | 548 | 545 |

### Sexta revisão completa (quatro rodadas: código e dados; o guia jogado como jogador)

- [x] Os Bloodsail (Dressing the Part, Avast Ye, Admiral!) mandavam matar o Baron Revilgaz em Booty
      Bay → quest com reputação negativa com o cartel (Booty Bay, Gadgetzan, Ratchet, Everlook) sai.
- [x] Quest que pede item só de profissão apontava para quem dá a quest (Hillman's Cloak, Moonsteel
      Broadsword, Advanced Target Dummy, That's Asking A Lot; Lesser Bloodstone Ore e Incendicite
      Ore, que só saem de veio de minério; a Silver Bar, que fora da forja só sai de baú de saque
      aleatório) → sai, também quando entraria pelo fecho de pré-requisitos, e o que depende dela
      fica para quem a fez (`completed`). O que a quest faz (nível de item 1: Pamela's Doll,
      Resonating Skull, Thunder Applejack) fica, item montado aponta para os pedaços ("Combine
      Pamela's Doll's Head, …"), a recompensa de um pré-requisito é fonte (The Essence of Eranikus
      tinha saído), e tecido (Linen Cloth, que o banco não liga a mob nenhum) não é de profissão —
      The Tome of Divinity e Gathering Materials tinham saído; a dica dele diz "cai de humanoides", não
      "Battered Chest". The Elemental Equation (30 Core of Elements) é reputação e sai.
- [x] Quest que começa por item de mob raro esperava o spawn (Blackmoss the Fetid, Silithid
      Harvester; no leveling, o raro elite Aean Swiftriver) → sai; o elite de masmorra fica no guia
      especial (Scarshield Quartermaster: a sintonização de Blackwing Lair tinha sumido).
- [x] Quest sem objetivo no banco era aceita e entregue no passo seguinte, sem o que fazer no meio:
      as de reputação dos centauros de Desolace ("426 Gently Cursed Bones"), My Little Friends, Stalk
      With The Earthmother do xamã orc e troll, Destruction in Deadmines, as A Sealed Crate (sem texto
      nenhum) → sai quando o texto pede trazer, comprar ou pescar item contado ou indefinido, matar
      alguém pelo nome ou usar algo e voltar a quem deu — menos a entrega do item que a própria quest
      dá no aceite (`sourceItem`: "Bring a Timberling Seed") —, e quando não tem texto e o item não tem
      fonte. O nome acha o alvo antes (Outcast Necromancers; Khan Jehn, "Khan Jhen" no texto, pela
      tabela; A Rogue's Deal, "Defeat Calvin Montague", ganha o `kill`). Arena Master (baú do evento de
      PvP) sai.
- [x] Shen'dralas, zona do Forever no sul de Desolace, virava guia de 6 quests entre Badlands e
      Feralas, e na Horda, com menos de 6, Ravaging Ravagers e Khan Jehn não iam a guia nenhum →
      `ZONA_MAE`: as quests dela vão no guia de Desolace, nas duas facções.
- [x] Masmorra e raide no leveling: Vyletongue Corruption (o mob só existe em Maraudon), Fire
      Hardened Mail (o frasco é do Roogug, em Razorfen Kraul), Hearts of Zeal (o QuestieDB põe os
      elites de Scarlet Monastery no mapa de Tirisfal), Destruction in Deadmines e A Bijou for Zanza
      (sem objetivo; o texto cita a masmorra), A Humble Offering e The Calling (chefe de raide), Order
      Must Be Restored (Nathanos Blightcaller, elite de 62), The Root of All Evil (Xandivious, 62) →
      saem, e o que só abre depois delas também (The Brokering of Peace; Ascension..., atrás do
      Axtroz, ficava antes da The Champion of the Horde que a abre).
- [x] Quest de classe que cruza o mar fazia o bruxo atravessar 15 vezes (Tome of the Cabal: um tomo
      em Hillsbrad, outro em Thousand Needles), o xamã dar duas voltas de totem (Storm, Earth, and
      Fire, de dois NPCs) e o ladino ir de Darnassus a Stormwind por Erion's Behest → quest de classe
      com qualquer ponta noutro continente, capital incluída, fica fora do leveling; a cadeia inteira
      está no guia de classe (das variantes de magia do sacerdote para quem está na capital de outra
      raça, a de casa está lá; Returning Home, do elfo noturno, tem a de casa em Teldrassil). Heed My
      Call (Horda), "Use the Twisted Totems" sem lugar no banco, sai.
- [x] The Tempest's Weapons ("Deliver the Eye of the Tempest") vinha no leveling e no guia de classe
      antes da Heed My Call que dá o olho → quest que entrega item que só outra quest dá depende dela.
      Storm, Earth, and Fire, de Bath'rah (Horda) e de Veyric, saía duas vezes no guia de classe da
      Horda → é uma ou outra, a restrita às raças primeiro (a primeira versão da regra ficava com a de
      Veyric e tirava a de Bath'rah).
- [x] Gathering Materials (mago) só tinha o passo do Linen Cloth; as Dalaran Mana Gems e as Charged
      Rift Gems ficavam sem passo (já no `main`) → objetivo de vários itens com um sem lugar sai um
      passo por item; o item sem lugar fica sem seta (a de quem deu a quest era falsa: o Arcanite Bar
      da Argent Dawn), com "Crafted or bought." quando não é item de quest. As "Legacy Reward" (brinde
      de conta) saem.
- [x] O adiamento contava passo de classe e de raça como visita (Ashenvale 30-32 ia a Ironforge pelo
      Tome of the Cabal; The Barrens 14-21 a Stormwind pelos de sacerdote) e não contava a entrega que
      o guia faz (Darkshore atravessava o mar por The Powers Below; Stonetalon ia a Ironforge e
      Stormwind por três entregas, com Duskwood 21-28 começando em Stormwind logo depois) → a visita é
      das quests de todo mundo, com as entregas que ficam no guia; a decisão roda até parar de mudar
      (3 rodadas); noutro continente o adiamento só pede que o guia de lá não comece acima do topo
      deste. Delivery to Andron Gant vai ao começo de Eastern Plaguelands, em Undercity; Seeking
      Spiritual Aid e Marvon's Workshop são entregues na mesma ida a Ratchet.
- [x] Quest com tempo era entregue muito depois do limite (Apothecary Zamah, 300 passos; A Hunter's
      Challenge, com Thelsamar no meio; Scalding Mornbrew Delivery, "five minutes"; The Demon Seed,
      "before the stone expires") → como a escolta: aceita por último, feita e entregue em seguida; a
      que se entrega noutra zona é pega nas sobras, e a ida junta o resto de lá (Zamah, Serpentbloom,
      Hamuul Runetotem e Nara Wildmane numa parada em Thunder Bluff). A rota simulada ia em laço quando
      o hub contava esse aceite como trabalho.
- [x] The Sleeper Has Awakened era entregue em Maestra's Post sem as quests já feitas ao lado → a
      entrega imediata da escolta leva as prontas do lugar.
- [x] Quest cinza de que nada depende (Journey to Astranaar no 35) → sai.
- [x] A cadeia de The Legend of Stalvan sumia: a 68 (baú de Westfall, req 22) saía como "poluente"
      de Westfall 12-18, e a 74 (Sealed Crate, objeto em Stormwind) não ia a guia nenhum → a que
      continua cadeia de leveling de nível maior fica para ir ao guia do pré-req (de masmorra ou de
      classe não: Test of Lore esperava Scarlet Monastery em Hillsbrad), e quest de capital que
      começa em objeto entra na atribuição. O demo confere cada elo de 66 a 98, aceite e entrega.
- [x] Aceite acima do nível no limite (Deadmire, req 35, para quem tinha 34,99; The Battle of
      Darrowshire, req 55, para quem entrava no Eastern Plaguelands no 54) → a folga de meio nível
      vale no portão e no `ding` de entrada.
- [x] The Algaz Gauntlet (19) ficava no fim de Loch Modan 11-18, onde quem chega no topo a pula, e a
      cadeia de Menethil sumia; 42 aceites de grupo travados pelo nível da quest acima do topo do guia
      (A Host of Evil no 35 em Stonetalon 21-27) → a realocação usa o nível em que a quest abre e não
      tolera +1. A de grupo só vai a outra faixa da mesma zona que comece perto dela (Gnogaine ia a
      Duskwood 21-28; Tharil'zun a Redridge 54-60, onde é cinza); sem uma, fica opcional pelo nível
      dela e só abre para quem chega com ele (32 aceites, quase todos de elite). Aceites com
      `reqLevel` acima do teto do guia: 0.
- [x] O teto do nível do guia contava quest que nunca abre (a cadeia de Felbane, 58-60, em
      Stranglethorn 43-51) e Vital Supplies saía como cinza → a faixa é a do que todo jogador do guia
      faz (`preSingle` com qualquer opção feita conta).
- [x] The Barrens 12-20 abria em Thunder Bluff para todos (Sergra Darkthorn, The Barrens Oases) → o
      "fale com" de capital no nível de sair da zona inicial é só da raça da capital e do Skyborne.
      Speak with Un'thuwa, de Durotar, era pega em Thunder Bluff → giver em duas capitais, a da
      gente da zona.
- [x] A Noble Brew mandava aos Wetlands no meio de Duskwood 30-35 (o passo juntava a Tear of Tilloa
      daqui e a Musquash Root de lá) → passo com item noutra zona vai para as sobras (o mapa do
      continente, onde fica o glifo de Glyph Chasing, não conta como outra zona).
- [x] "A full assault on Nathanos Blightcaller" saía `talk` → NPC da outra facção é `kill` (e conta
      como alvo para a regra de raide).
- [x] O demo do roteador abria os guias pela faixa no nome (Dun Morogh 5-10 virou 4-10) → acha a
      faixa até 3 níveis de distância, e falha se o guia sumiu.
- [ ] A cadeia única leva o humano a Darkshore 13-20 e The Barrens 14-21 no 22-25, com boa parte das
      quests cinza: é o custo de a cadeia dar XP para o 60 a todas as raças (ver a quinta revisão).
- [ ] Entrega no mesmo continente adiada só se não ficar cinza: Eagle's Fist (32) e Hints of a New
      Plague? (33) vão a Arathi do fim de Loch Modan 20-38 e Hillsbrad 33-38. Adiar pelo topo desses
      guias de faixa larga traria de volta o Return to Thunder Bluff entregue a 20% da XP.
- [ ] Pegar na capital o que o guia seguinte faz (Un'Goro Soil em Teldrassil 48-55; A Meal Served
      Cold, Reclaimed Treasures, Steelsnap, Deadmire, To Steal From Thieves; Alliance Relations no
      Keldran): o guia que passa na capital não pode levar a quest sem fazê-la, e herdar quest por
      fazer é outra mecânica. As sobras do fim de alguns guias ainda saltam entre hubs (Redridge
      15-24, Badlands 37-43, a perna de Linken em Winterspring).
- [ ] Summon Felsteed (Horda) vai Ratchet → Orgrimmar → Ratchet. Os 50 da Horda moem uns 6 níveis
      entre 42 e 52 (a XP de quest não fecha a faixa). The New Frontier (Horda, req 54) é uma ida a
      Thunder Bluff no meio de Felwood, e Rabine Saturna, do mesmo Hamuul, é pega na volta, no começo
      do guia seguinte. As de Shen'dralas ficam no fim de Desolace (o mapa da sub-zona não entra nos
      hubs da zona), e o Valley of Bones é visitado duas vezes.
- [ ] Já no `main`: os guias de classe levam as cadeias de nível 60 (Armaments of War atrás de The
      Calling, chefe de raide; a do conjunto de masmorra 2); Magram Alliance e Gelkis Alliance pedem
      Friendly com os dois clãs de centauros, sem passo que dê a reputação.

Passos que só abrem para quem fez fora do guia uma quest que nenhum guia da facção entrega
(`only … completed(a[,b])`, nenhuma das opções entregue em guia nenhum): 267 passos com 51
pré-requisitos, contra 249 com 45 no `main`. A diferença são as dependentes das quests de profissão
(Elixir of Agony, That's Asking A Lot, Coolant Heads Prevail, Gizmo for Warug, Favor for Krazek), que ficam para
quem as fez, e Forbidden Knowledge, atrás de The Star, the Hand and the Heart (um item em
Dustwallow); o resto, como no `main`, é breadcrumb de capital para outro continente ou objetivo
noutro continente ou 10+ níveis acima.

| cadeia inteira (`walk3.py`) | v2.7.1 | #59 |
|---|---|---|
| aceite acima do nível | 1.092 | **0** |
| mob 3+ níveis acima (por goal) | 577 | 191 |
| níveis moídos em `ding` | 0 | 37 (4-8 por cadeia) |
| nível no fim da cadeia | ~50 | 57-58 |

| | v2.7.1 | #59 |
|---|---|---|
| simulação da cadeia `next`, accept que trava | 0 | 0 |
| pendurada / perdida por ordem | 0 / 0 | 0 / 0 |
| pico do log | 18 | 16 |
| aceites com `reqLevel` acima do teto do guia | 10 | **0** |
| `guide_integrity --full` JUMP | 355 | **237** |
| guias de classe, accept sem pré-req (os mesmos) | 35 | 35 |
| distância do esqueleto da rota, todos os guias (só aceite e entrega) | 52.053 | 44.917 (−13,7%) |
| trocas de zona nos guias (zona diferente entre `goto` seguidos, sem os passos com `haveq`, `completed` ou classe) | 647 | **289** |
| guias de leveling / quests em guia / novas do Forever | 88 / 3.781 / 548 | 86 / 3.710 / 532 |
