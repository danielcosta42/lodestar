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
  item que cai de mais de 40 mobs ou que se compra (e não é item de quest); o objeto que dá item de ofício (classe 7:
  Linen Cloth de 10 baús, Gold Bar, Star Ruby, as ervas e os veios) e o item que sai de mais de 6 tipos de objeto —
  sobra o mob que deixa cair, se houver. Fora do mapa: o "-1,-1" de dentro da masmorra, zona sem mapa, masmorra, campo
  de batalha, continente. O objetivo de masmorra (mais fontes só lá dentro que no mapa, e mais nascimentos lá dentro)
  fica sem área nenhuma: o resto de fora é dado perdido (Fetish of Hakkar: 1 no pântano, o resto no templo).
- **R2 As áreas.** Por zona, ligação simples a 6 unidades do mapa (0-100); área mais larga que 22 se parte ao meio
  pelo eixo mais comprido, até caber. Sai o nascimento perdido:
  - a zona com menos de 10% dos nascimentos da zona que mais tem — as de masmorra contam —, menos a zona de um
    `|goto` do guia para a quest (Elemental Air: os Dust Devils de Westfall, poucos perto dos de Barrens);
  - a área com menos de 8% dos pontos da maior área da zona, **para cada mob ou objeto que nasce nela** (com 1-2 na
    maior, tudo fica): o mob nomeado de um ponto só (Gor'tesh) não some perto dos 3 do outro mob que deixa cair o
    mesmo item, e a área que tem todos os nascimentos de uma fonte passa na frente no teto.

  Até 12 áreas por zona e 30 por objetivo, da com mais pontos para a com menos. Cada área leva o ponto de nascimento
  mais perto do meio (o alvo do clique: lugar onde o mob nasce de verdade, nunca o meio de um lago), o número de pontos
  e o contorno convexo simplificado a até 10 cantos (Visvalingam, por dentro). Coordenada com uma casa, em números de 2
  letras de base 36: ~287 KB para 2.162 quests, 3.241 objetivos e 7.719 áreas (só as quests dos guias: ~217 KB). O mob
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
  2. depois, a cada clique na seta (sem arrastar), as outras áreas da zona, da borda mais perto do ponto do guia para a
     mais longe, no ponto-alvo de cada uma (rota, caminho, bússola, pino e seta seguem);
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

| | antes (ab837ba) | depois |
| --- | --- | --- |
| passos com a volta das áreas | 2.713 (23 sem `|goto`) | 2.659 (nenhum sem `|goto`) |
| primeiro alvo fora do ponto do guia | 2.641 | 0 |
| 1ª área ≠ a área do `|goto` (com 2+ áreas) | 354 (198 de leveling) | 8 (o `|goto` fora de toda área: sem destaque) |
| … com menos de 1/3 dos nascimentos da área do guia | 58 (44 de leveling) | 0 |

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
  Gathering Materials 1921 com o Linen Cloth sem área; The Temple of Atal'Hakkar 1445 sem área fora) e que o texto do
  arquivo volta igual.
- `tools/travel-tests.lua` cobre o núcleo puro (decodificar, casar o goal — o tipo também no "único objetivo" —, a
  distância ao contorno, a volta a partir do ponto do guia, a emenda de duas áreas, o ponto fora de toda área, a vez e
  o clique, perto pelo contorno, o teto do cache, contorno, pílula, círculo, faixas emendadas), a sanidade do
  SpawnAreas.lua gerado (com os casos de 14, 3824, 1921 e 1445) e o Destinations.GuideTarget (a área só troca um
  `|goto`).
- `tools/ui-smoke.lua` (nos dois temas): o passo com um mob em 3+ áreas desenha no mapa; a seta fica no ponto do guia
  com o jogador em outra área; o clique passa por todas, com o tooltip seguindo, e volta ao ponto do guia; o arrasto
  não troca; o goal sem `|goto` não vira alvo mas desenha; desligado, o mapa limpa e a seta volta ao passo.
