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
  de quem deixa cair o item (NPCs e objetos, e as partes do item que se monta). Item que cai de mais de 40 mobs ou que
  se compra (e não é item de quest) fica sem área: o mapa não ajuda. Fora: o "-1,-1" de dentro da masmorra, zona sem
  mapa, masmorra, campo de batalha, continente.
- **R2 As áreas.** Por zona, ligação simples a 6 unidades do mapa (0-100); área mais larga que 22 se parte ao meio
  pelo eixo mais comprido, até caber. Sai o nascimento perdido: a zona com menos de 10% dos pontos da zona que mais
  tem, e a área com menos de 8% dos pontos da maior da zona dela (a não ser que todas sejam de 1-2 pontos: mob
  nomeado, objeto único). Por zona e não pelo objetivo inteiro, porque a seta fica na zona do passo: o drop que cai
  muito numa zona e um pouco na do guia ainda tem área nesta. Até 12 áreas por zona e 30 por objetivo, da com mais
  pontos para a com menos. Cada área leva o ponto de nascimento mais perto do meio (o alvo: lugar onde o mob nasce de
  verdade, nunca o meio de um lago), o número de pontos e o contorno convexo simplificado a até 10 cantos (Visvalingam,
  por dentro). Coordenada com uma casa, em números de 2 letras de base 36: ~385 KB para 2.250 quests, 3.380
  objetivos e ~10.400 áreas (só as quests dos guias: ~250 KB); em decimal, perto do dobro.
  O mob que o guia manda matar (`kill X##npc |q quest`) sem ser objetivo, mas que deixa cair o item de um, aponta o
  objetivo do item (`a = { [npc] = objetivo }`). Objetivo sem área guarda o lugar (o índice dos seguintes não muda).
- **R3 O objetivo do goal.** Pelo id do goal, do tipo que o verbo pede (kill → mob; collect → item ou objeto; click →
  objeto; get → item); senão o alias do R2; senão o índice do `|q quest/obj`; goal sem id, o único objetivo com
  área. Sem quest (`|q`), nada.
- **R4 O mapa.** Com o mapa-múndi aberto, os objetivos do passo atual que ainda faltam (ativos, não concluídos; o goal
  sem índice cuja quest tem vários objetivos também pergunta ao diário pelo objetivo dele, quando o diário tem o mesmo
  número de objetivos do banco e o do índice é do mesmo tipo) desenham cada área: o contorno convexo inchado (cantos
  redondos; um ponto vira círculo, dois uma pílula) em faixas horizontais translúcidas (âmbar do HUD) e o contorno em
  linha, com sombra escura por baixo. A área para onde a seta vai: miolo mais forte, contorno dourado claro e mais
  grosso, por cima das outras. Vale em qualquer mapa aberto (zona, vizinha, continente), projetada pela coordenada de
  mundo. Só redesenha quando muda o mapa aberto, o tamanho, a área da seta ou os objetivos. Some com a UI do guia
  fechada, sem objetivo com área ou com a opção desligada.
- **R5 A seta.** O objetivo com área vira o destino do guia (rota, caminho, bússola, pino e seta seguem): a área da
  vez, mesmo sem `|goto`. As da seta ficam na zona do `|goto` do passo (sem área nela, vale o `|goto`, como antes);
  goal sem `|goto`, todas. Ao mudar o objetivo (passo novo, objetivo concluído) a ordem se refaz da mais perto do
  jogador para a mais longe (de mundo; fora do continente, do ponto do passo) e a seta vai à primeira. Clique na seta
  (sem arrastar) leva à próxima, e depois da última volta à primeira; arrastar continua movendo a seta. O rótulo diz
  "Mate: X · área 2/5"; o tooltip da seta explica o clique. Com uma área só, ou sem dado, o clique não faz nada. Com
  destino manual, corpo ou parada na frente, o clique também não (a seta não está no passo).
- **R6 A opção.** Configurações → Navegação → "Áreas de nascimento", ligada por padrão. Desligada, o mapa limpa e a
  seta volta ao `|goto` do passo na hora.
- **R7 Para o #122.** `ns.SpawnAreas.For(quest)` → `{ [objetivo] = { kind, id, areas } }` (área: `zone, x, y, n,
  hull`, e `q`, `obj`, `k`); `SA.Near(quests, pos, raio, worldOf)` → os objetivos com área a até `raio` jardas de um
  ponto de mundo (até a borda da área), do mais perto; `SA.NearPlayer(quests, raio)`, o mesmo do jogador.

## Limites

- O dado é o do QuestieDB: mob que o banco não tem, ou com o ponto errado, não tem área (ou tem a errada). O drop do
  item não traz a chance: o mob que quase nunca deixa cair conta igual.
- A área é convexa: um mob que nasce em volta de um lago ou ao longo de uma estrada em curva cobre o meio também (a
  ligação simples e a divisão por largura limitam o quanto).
- As coordenadas do mapa não são quadradas em jardas: a ligação de 6 unidades é mais larga numa zona grande.
- A ordem da "mais perto" é em linha reta, não em tempo de viagem; refeita só quando o objetivo muda (o clique segue
  a ordem do começo do passo).
- O índice do objetivo do banco é o do diário quando os mobs e objetos não se misturam nas mesmas posições do
  QuestieDB; por isso o diário só é consultado com o mesmo número de objetivos e o mesmo tipo.
- Masmorra e campo de batalha ficam de fora (a UI do guia sai lá dentro).

## Critérios de aceite

- `python3 tools/gen_spawnareas.py --demo` confere a geometria (ligação, divisão, contorno, simplificação), quests
  conhecidas (Kobold Camp Cleanup 7 no Echo Ridge Mine; Wolves Across the Border 33 em Elwynn e Dun Morogh; The
  Summoning 1713 no Cyclonian, com o alias; Insane Druids 1012 na ordem) e que o texto do arquivo volta igual.
- `tools/travel-tests.lua` cobre o núcleo puro (decodificar, casar o goal, ordem, a vez e o clique, perto, contorno,
  pílula, círculo, faixas emendadas), a sanidade do SpawnAreas.lua gerado e o Destinations.GuideTarget com área.
- `tools/ui-smoke.lua` (nos dois temas): o passo com um mob em 3+ áreas desenha no mapa, a seta vai à mais perto, o
  clique passa por todas e dá a volta, o arrasto não troca, desligado limpa o mapa e a seta volta ao passo.
