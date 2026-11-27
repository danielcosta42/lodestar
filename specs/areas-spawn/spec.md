# Áreas de nascimento (issue #121)

## Problema

O passo de "mate X" ou "colete Y" aponta um ponto só (o `|goto` que o roteador escolheu). O mob, o drop ou o objeto
nasce em vários lugares da zona, e o jogador não vê onde: o cliente de hoje desenha a área da quest no mapa (a mancha
translúcida com contorno), o Lodestar não desenhava nada. Quando o ponto do guia está disputado ou vazio, não havia
como ir ao próximo lugar onde aquilo nasce.

## Comportamento

- **R1 O dado.** `SpawnAreas.lua`, gerado por `tools/gen_spawnareas.py` do banco do Forever (QuestieDB:
  `quests.json`, `npcs.json`, `objects.json`, `items.json`, `zones.json`). Para toda quest com objetivo no banco (não
  só as dos guias: o #122 usa as do diário), cada objetivo na ordem do QuestieDB — mobs (`objCreatures`), objetos
  (`objObjects`), itens (`objItems`), a mesma do diário — com os pontos de nascimento por zona: do mob, do objeto, ou
  de quem deixa cair o item (NPCs e objetos, e as partes do item que se monta). Sem área, porque o mapa não ajuda: o
  item que cai de mais de 40 mobs; o drop do item que se compra (e não é item de quest) — a erva e o veio de onde ele
  se colhe ficam (Liferoot, Kingsblood, Earthroot); os objetos do item que sai de mais de 6 tipos de objeto (baús
  espalhados: Linen Cloth de 10, Silk Cloth de 36, Gold Bar de 15, Star Ruby de 34, Jade de 32) — sobra o mob que deixa
  cair, se houver. A erva e o veio de 1-2 tipos de nó (Arthas' Tears, Dark Iron Ore, Firebloom, Purple Lotus) ficam.
  Fora do mapa: o "-1,-1" de dentro da masmorra, zona sem mapa, masmorra, campo de batalha, continente. O objetivo de
  masmorra (mais fontes só em masmorra que no mapa, e mais nascimentos lá dentro — só masmorra e o "-1,-1" contam, não
  o campo de batalha) fica sem área nenhuma: o resto de fora é dado perdido (Fetish of Hakkar: 1 no pântano, o resto no
  templo). Não quando o guia manda a uma zona do mapa onde ele nasce (Junkboxes Needed: os 32 Theramore Guard de
  Dustwallow ficam, mesmo com 82 trogg do Alterac Valley).
- **R2 As áreas.** Por zona, ligação simples a 6 unidades do mapa (0-100); área mais larga que 22 se parte ao meio
  pelo eixo mais comprido, até caber. Sai o nascimento perdido:
  - a zona com menos de 10% dos nascimentos da zona que mais tem — as de masmorra contam, as de campo de batalha não —,
    menos a zona de um `|goto` do guia para a quest (Elemental Air: os Dust Devils de Westfall, poucos perto dos de
    Barrens);
  - a área com menos de 8% dos pontos da maior área da zona, **para cada mob ou objeto que nasce nela** (com 1-2 na
    maior, tudo fica): o mob nomeado de um ponto só (Gor'tesh) não some perto dos 3 do outro mob que deixa cair o
    mesmo item, e a área que tem todos os nascimentos de uma fonte passa na frente no teto.

  Até 12 áreas por zona e 30 por objetivo; no teto, as da zona de um `|goto` do guia passam na frente (o Liferoot nasce
  em 14 zonas: as de Alterac ficam), depois as que têm todos os nascimentos de uma fonte, depois da com mais pontos para
  a com menos. Cada área leva o ponto de nascimento
  mais perto do meio (o alvo do clique: lugar onde o mob nasce de verdade, nunca o meio de um lago), o número de pontos
  e o contorno convexo simplificado a até 10 cantos (Visvalingam, por dentro). Coordenada com uma casa, em números de 2
  letras de base 36: ~308 KB para 2.187 quests, 3.277 objetivos e 8.432 áreas (só as quests dos guias: ~225 KB). O mob
  que o guia manda matar (`kill X##npc |q quest`) sem ser objetivo, mas que deixa cair o item de um, aponta o objetivo
  do item (`a = { [npc] = objetivo }`). Objetivo sem área guarda o lugar (o índice dos seguintes não muda).
- **R3 O objetivo do goal.** Pelo id do goal, do tipo que o verbo pede (kill → mob; collect → item ou objeto; click →
  objeto; get → item); senão o alias do R2; senão o índice do `|q quest/obj`; goal sem id, o único objetivo com área
  do tipo que o verbo pede. Sem quest (`|q`), nada.
- **R4 O mapa.** Com o mapa-múndi aberto, os objetivos do passo atual que ainda faltam (ativos, não concluídos; o goal
  sem índice cuja quest tem vários objetivos também pergunta ao diário pelo objetivo dele, quando o diário tem o mesmo
  número de objetivos do banco e o do índice é do mesmo tipo) desenham cada área — também os goals sem `|goto` —: o
  contorno convexo inchado (cantos redondos; um ponto vira círculo, dois uma pílula) em faixas horizontais
  translúcidas (âmbar do HUD) e o contorno em linha, com sombra escura por baixo. A área da vez da seta: miolo mais
  forte, contorno dourado claro e mais grosso, por cima das outras. Vale em qualquer mapa aberto (zona, vizinha,
  continente), projetada pela coordenada de mundo. Na mesma camada da rota (HIGH, criada do mesmo jeito que a do
  RouteMap) e um nível abaixo dela: a rota e os pinos do guia (GuideMap, TOOLTIP) ficam por cima da mancha. Só
  redesenha quando muda o mapa aberto, o tamanho, a área da seta ou os objetivos. Some com a UI do guia fechada, sem
  objetivo com área ou com a opção desligada.
- **R5 A seta.** As áreas só trocam um `|goto` que existe: o goal sem `|goto` continua sem alvo. Para o goal com
  `|goto` numa zona que tem área do objetivo, a seta faz uma volta:
  1. primeiro, **o próprio ponto do guia** — o alvo de sempre, o mesmo do pino do mapa (GuideMap) e da distância na
     janela —, com a área onde ele cai destacada (dentro dela, com 0.25 de folga pelo arredondamento, da mais funda;
     senão a até 1.5 da borda, a de mais nascimentos). Ponto fora de toda área: ele sozinho, sem destaque;
  2. depois, a cada clique na seta (sem arrastar), as outras áreas da zona, no ponto-alvo de cada uma (rota, caminho,
     bússola, pino e seta seguem), em duas levas: as de 3+ nascimentos (o acampamento) antes das de 1-2 (o mob solto);
     em cada leva, a de borda mais perto da anterior (vizinho mais perto, a partir do ponto do guia), sem ziguezaguear
     de um lado para o outro do ponto;
  3. depois da última, volta ao ponto do guia.

  Ao mudar o objetivo (passo novo, objetivo concluído), volta ao ponto do guia. A posição do jogador não entra na
  ordem. O rótulo diz "Mate: X · área 2/5"; o tooltip da seta explica o clique e segue a área nova quando está
  aberto. Com um só alvo (uma área, com o ponto do guia dentro), ou sem dado, o clique não faz nada. Com destino
  manual, corpo ou parada na frente, o clique também não (a seta não está no passo). Arrastar continua movendo a seta.
- **R6 A opção.** Configurações → Navegação → "Áreas de nascimento", ligada por padrão. Desligada, o mapa limpa e a
  seta volta ao `|goto` do passo na hora.
- **R7 Para o #122.** `ns.SpawnAreas.For(quest)` → `{ [objetivo] = { kind, id, areas } }` (área: `zone, x, y, n,
  hull`, e `q`, `obj`, `k`), decodificado sob demanda e guardado até 64 quests (todas, sob o Lua 5.1, passariam de
  8 MB): o #122 deve pedir só as do diário. `SA.Near(quests, pos, raio, worldOf)` → os objetivos com área a até `raio`
  jardas de um ponto de mundo, pela distância de verdade ao contorno convexo (0 dentro dele; o desenho incha o contorno
  uns poucos pixels), do mais perto; `SA.NearPlayer(quests, raio)`, o mesmo do jogador. `SA.PolyDist(contorno, x, y)`
  é a mesma conta nas coordenadas da zona.

## Medição (simulação dos 201 guias, o jogador no `|goto` do passo anterior)

| | ab837ba | agora |
| --- | --- | --- |
| passos com a volta das áreas | 2.713 (23 sem `|goto`) | 2.680 (nenhum sem `|goto`) |
| primeiro alvo fora do ponto do guia | 2.641 | 0 |
| 1ª área ≠ a área do `|goto` (com 2+ áreas) | 354 (198 de leveling) | 10 (o `|goto` fora de toda área: sem destaque) |
| … com menos de 1/3 dos nascimentos da área do guia | 58 (44 de leveling) | 0 |

A ordem da volta (as voltas de 3+ alvos dos guias), de 2529b7a para agora, com o mesmo dado: 368 voltas; com mob solto
antes do acampamento, 48 → 0; o caminho somado de alvo em alvo, 38.002 → 32.062 unidades do mapa (Elemental Air em
Westfall, 11 alvos: 305 → 164).

## Limites

- O dado é o do QuestieDB: mob que o banco não tem, ou com o ponto errado, não tem área (ou tem a errada). O drop do
  item não traz a chance: o mob que quase nunca deixa cair conta igual.
- A área é convexa: um mob que nasce em volta de um lago ou ao longo de uma estrada em curva cobre o meio também (a
  ligação simples e a divisão por largura limitam o quanto). Mob espalhado de poucos nascimentos (Dust Devil) vira
  muitas áreas de um ponto.
- As coordenadas do mapa não são quadradas em jardas: a ligação de 6 unidades é mais larga numa zona grande, e a
  ordem "da borda mais perto" é em unidades do mapa, em linha reta.
- O índice do objetivo do banco é o do diário quando os mobs e objetos não se misturam nas mesmas posições do
  QuestieDB; por isso o diário só é consultado com o mesmo número de objetivos e o mesmo tipo.
- Masmorra e campo de batalha ficam de fora (a UI do guia sai lá dentro).
- A ordem da mancha com os pinos do próprio mapa do jogo é a da rota (mesma camada); só a rota e os pinos do guia têm
  ordem garantida por cima.

## Critérios de aceite

- `python3 tools/gen_spawnareas.py --demo` confere a geometria (ligação, divisão, contorno, simplificação, distância
  ao contorno, filtro por fonte e teto), quests conhecidas (Kobold Camp Cleanup 7 no Echo Ridge Mine; Wolves Across
  the Border 33 em Elwynn e Dun Morogh; The Summoning 1713 no Cyclonian, com o alias; Insane Druids 1012 na ordem; The
  People's Militia 14 com o `|goto` de Moonbrook dentro da área de 20+; Gor'tesh 3824 com a área de um ponto só;
  Gathering Materials 1921 com o Linen Cloth sem área; The Temple of Atal'Hakkar 1445 sem área fora; Arthas' Tears
  7642 e Dark Iron Ore 6642 com área; Liferoot 1712 com as de Alterac no teto; Junkboxes Needed 8249 com os Theramore
  Guard no `|goto`) e que o texto do arquivo volta igual.
- `tools/travel-tests.lua` cobre o núcleo puro (decodificar, casar o goal — o tipo também no "único objetivo" —, a
  distância ao contorno, a volta a partir do ponto do guia, as duas levas e o vizinho mais perto (sem ziguezague), a
  emenda de duas áreas, o ponto fora de toda área, a vez e o clique, perto pelo contorno, o teto do cache, contorno,
  pílula, círculo, faixas emendadas), a sanidade do SpawnAreas.lua gerado (com os casos de 14, 3824, 1921, 1445, 1134,
  8249 e 7642) e o Destinations.GuideTarget (a área só troca um `|goto`).
- `tools/ui-smoke.lua` (nos dois temas): o passo com um mob em 3+ áreas desenha no mapa; a seta fica no ponto do guia
  com o jogador em outra área; o clique passa por todas, com o tooltip seguindo, e volta ao ponto do guia; o arrasto
  não troca; o goal sem `|goto` não vira alvo mas desenha; desligado, o mapa limpa e a seta volta ao passo.

## Nesta área (#122)

### Problema

Na Hinterlands (Horda, passo 19, os lobos do Huntsman Markhor) o mapa mostra muita coisa por fazer — Savage Owlbeast,
Razorbeak Skylord, os Vilebranch, as caixas do Slagtree, todas de quests do diário e na mesma região — e a janela do
guia só lista o objetivo do passo. O jogador não sabe que dá para adiantar os outros ali mesmo.

### Comportamento

- **N1 O que entra.** Os objetivos ainda abertos das quests do diário — das do passo atual (os outros objetivos da
  quest, que o cartão não mostra), das dos passos à frente e das de fora do guia — em cuja área de nascimento (R2) o
  jogador está: a distância de verdade ao contorno convexo (`SA.Near`, 0 dentro) até a folga da zona da área, **0,8% da
  largura da zona em jardas** (`SA.PAD`, a mesma fração com que o mapa incha o contorno ao desenhar: dentro da mancha
  que se vê no mapa), entre 10 e 100 jd (17-81 jd nas zonas do mundo; ~30 na Hinterlands). Fora: o objetivo concluído
  ou com a conta cheia, o que o cartão do passo já mostra (o `|q quest/obj` do goal, ou o objetivo que o goal pede —
  `SA.Match` — no diário), a quest que falhou e a que o jogador pulou no guia. Um por objetivo do diário, com a área
  mais perto.
- **N2 O objetivo do banco no diário.** O índice do `SpawnAreas.lua` (mobs, objetos, itens) só vale como o do diário
  quando o diário tem o mesmo número de objetivos e o mesmo tipo em cada posição (`monster`, `object`, `item`). Senão,
  pelo nome no texto do objetivo ("Silvermane Howler slain: 20/30", "Stalker Flank: 2/8"): o do NPC aprendido ao vê-lo
  (o do botão de alvo), o do item pelo jogo, e o do guia aberto; por fim, o único objetivo de cada tipo que sobrou dos
  dois lados. O que não se acha fica de fora (sem a contagem certa, melhor não mostrar).
- **N3 A ordem.** As quests do passo atual, as dos passos à frente, as de fora do guia; em cada grupo, a mais perto
  (dentro: 0), o passo, a quest, o objetivo.
- **N4 A janela.** "NESTA ÁREA" logo abaixo do cartão do passo, antes do "Enquanto está aqui": um cartão azul (o tom
  das áreas no mapa) com uma linha por objetivo — o ícone do tipo (mob, item, objeto; ouro na quest do passo, azul nas
  outras), o nome do objetivo como o diário diz, sem a contagem e sem o "slain" (o `QUEST_MONSTERS_KILLED` do cliente
  diz o que sai, nos dois formatos), e a contagem do diário à direita ("Silvermane Howler 20/30"). Até 5 linhas; o resto
  vira "+N" à direita do rótulo. O tooltip diz a quest, o texto do objetivo e de onde ela é (deste passo, do passo N
  do guia, fora do guia). O clique guia (destino avulso, como o "Enquanto está aqui") ao ponto-alvo da área mais perto
  do objetivo — a de onde o jogador está.
- **N5 Com o "Enquanto está aqui".** Ele segue com as entregas, as quests para pegar e os objetivos dos passos à
  frente perto do `|goto` deles; o objetivo que "Nesta área" já mostra não repete lá.
- **N6 O mapa.** As áreas dos objetivos da lista, na zona do mapa aberto (só nele: no continente, não), em azul, mais
  claras e finas, por baixo das do passo (que seguem em âmbar, a da seta por cima). Entram na assinatura do desenho.
- **N7 Quando.** Uma conta por segundo, só com a janela do guia aberta, fora de masmorra e quando algo mudou: o
  jogador andou 2 jd ou mais, o passo mudou, ou veio um `QUEST_LOG_UPDATE` (a contagem). Só as quests do diário (o
  cache do `SA.For` guarda 64; o diário tem até 25), com o contorno no mundo guardado em cada área. A janela só
  redesenha quando a lista muda (quest, objetivo, contagem, grupo, ordem).
- **N8 A opção.** Configurações → Janela e HUD → "Nesta área", ao lado do "Enquanto está aqui", ligada por padrão.
  Desligada, a janela e o mapa limpam na hora e o "Enquanto está aqui" volta a mostrar todos os objetivos dele.

### Medição (antes de fixar a folga e o teto)

Simulação dos 91 guias de leveling, com o núcleo de verdade (`AG.Shown`, `AG.Tiers`, `AG.Collect`, `SA.Near`,
`SA.Match`): o jogador no primeiro `|goto` de cada passo; o diário montado da ordem de aceite e
entrega do guia (as aceitas antes e não entregues, até 25: o máximo visto foi 20); objetivo feito quando o guia já
passou do último passo que o faz (sem goal que case com ele, do último passo de objetivo da quest; sem nenhum, aberto
até a entrega); fora os do cartão do passo. A zona em jardas pelo tamanho do mapa no cliente. A conta é das linhas do
bloco (além do cartão). "Passo de campo" é o que tem objetivo de quest no cartão (1.877 dos 9.627 com `|goto`); "nas
áreas" põe o jogador no ponto-alvo de cada área do objetivo do passo na zona dele (4.563 posições: onde ele caça, não
só no ponto do guia).

Passo de campo, no ponto do guia:

| filtro | média | mediana | p90 | máx | 0 linhas | mediana / p90 sem os 0 | 2-5 linhas | mais de 5 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| (a) dentro do contorno | 0,26 | 0 | 1 | 6 | 83% | 1 / 2 | 6% | 0,1% |
| (b) + 5 jd | 0,31 | 0 | 1 | 6 | 80% | 1 / 3 | 7% | 0,1% |
| (b) + 10 jd | 0,33 | 0 | 1 | 6 | 79% | 1 / 3 | 7% | 0,1% |
| + 25 jd | 0,36 | 0 | 1 | 6 | 78% | 1 / 3 | 9% | 0,1% |
| **a mancha desenhada (+0,8% da largura, 10-100 jd)** | **0,38** | **0** | **1** | **6** | **77%** | **1 / 3** | **9%** | **0,1%** |
| + 50 jd | 0,40 | 0 | 1 | 6 | 75% | 1 / 3 | 10% | 0,1% |
| (c) 100 jd | 0,51 | 0 | 2 | 8 | 71% | 1 / 3 | 12% | 0,4% |
| (d) 150 jd | 0,62 | 0 | 2 | 10 | 68% | 1 / 4 | 14% | 1,1% |

Passo de campo, nas áreas do objetivo do passo:

| filtro | média | mediana | p90 | máx | 0 linhas | mediana / p90 sem os 0 | 2-5 linhas | mais de 5 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| (a) dentro do contorno | 0,32 | 0 | 1 | 9 | 81% | 1 / 3 | 7% | 0,3% |
| (b) + 10 jd | 0,34 | 0 | 1 | 9 | 80% | 1 / 3 | 7% | 0,3% |
| **a mancha desenhada** | **0,38** | **0** | **1** | **9** | **78%** | **1 / 3** | **8%** | **0,5%** |
| (c) 100 jd | 0,49 | 0 | 2 | 10 | 73% | 1 / 4 | 10% | 0,8% |
| (d) 150 jd | 0,58 | 0 | 2 | 10 | 70% | 1 / 4 | 12% | 1,3% |

Todo passo com `|goto` (cidade, aceite e entrega incluídos): com a mancha, 89% sem linha, mediana sem os 0 de 1, p90
de 3, máximo 6, 2-5 linhas em 4%; com 150 jd, 82% sem linha e 8% com 2-5.

O que isso diz: o guia já põe em sequência o que nasce no mesmo lugar, então no ponto do guia quase sempre não sobra
nada além do cartão, e quando sobra é 1 linha (p90 de 3). Nenhum filtro chega a "2-5 linhas na maior parte do tempo";
o bloco enche onde os acampamentos se misturam (Blasted Lands: 5 itens dos mesmos bichos; Riverglades, Zephras Isle,
Desolace, Tanaris: 4-6). Abrir para 150 jd só leva o "2-5" de 9% a 14% e põe na lista o que está fora da mancha que o
mapa mostra (100-150 jd são vários puxões dali). Escolha: **a mancha desenhada** (o bloco e o mapa dizem a mesma coisa:
"você está dentro desta área") e **5 linhas** com "+N" (passa disso em 0,1-0,5% das posições). Na Hinterlands, passo 19:
no ponto do guia (68,0, 52,9) entra o Skylord Plume (a área dele cobre o ponto); na área grande dos Silvermane Stalker
a oeste (59,6, 50,8), o Savage Owlbeast e o Skylord Plume; as caixas do Slagtree e os Vilebranch ficam a 115-150 jd,
fora das manchas.

### Limites

- A medição põe o jogador no ponto do guia e nos pontos-alvo das áreas, com o diário que o guia monta: a quest que
  vem de outra zona ou de fora do guia não entra (no jogo, ela entra e pode somar linhas), e o objetivo conta como feito
  no passo do guia que o faz (no jogo, o que se adiantou já sai antes).
- O índice do banco no diário: com o diário diferente do banco, o nome do mob só se acha se o NPC já foi visto (o nome
  no idioma do cliente) ou no cliente em inglês (o do guia); sem nome, o único do tipo; dois do mesmo tipo sem nome
  ficam de fora.
- O mesmo item pedido por duas quests (Blasted Lands) vira duas linhas com o mesmo nome (cada uma com a conta da sua
  quest; o tooltip diz qual).
- A folga segue a largura da zona (como a mancha no mapa aberto com 625 px de largura ou mais; num mapa menor a mancha
  incha 5 px, um pouco mais). As áreas são as do R2 (convexas, do QuestieDB), com os mesmos limites.
- O clique vai ao ponto-alvo da área onde o jogador está (um nascimento perto do meio dela), não ao mob mais perto.

### Critérios de aceite

- `tools/lodestar3-tests.lua`: o índice do banco no diário (a guarda; pelo nome no texto; o único do tipo; dois sem
  nome ficam de fora), o nome sem a contagem nos dois formatos e sem o "slain" (o affix do `QUEST_MONSTERS_KILLED`, com
  posição e parênteses), de onde é cada quest, o goal do guia no diário (o cartão), as linhas (dentro da folga da zona
  da área, o feito, a conta cheia, o do cartão e o fora do diário de fora, a área mais perto, a ordem por grupo,
  distância e passo, o nome sem o texto do diário), a assinatura, e de ponta a ponta com o `SA.Near` (dentro de duas
  áreas, de uma, a 10 jd da borda, fora).
- `tools/ui-smoke.lua` (nos dois temas): um diário de 3 quests e 5 objetivos numa área (com o item antes do objeto no
  diário, ao contrário do banco): os 4 abertos aparecem, os da quest do passo primeiro, com a contagem; o feito não; o
  clique guia à área onde o jogador está (não à outra do mesmo objetivo); o "Enquanto está aqui" não repete; o mapa
  desenha as áreas deles; o do cartão do passo sai da lista; a contagem segue o diário; fora da área a lista esvazia e
  volta ao voltar; desligado, a janela e o mapa limpam.
