# Colecionáveis do Forever (issue #94)

## Problema

A página Colecionáveis mostra montarias e mascotes do diário do jogo. Ela não guia o que o Forever acrescentou:
- as missões que dão colecionável (o saco de dormir, a tocha do vigia);
- os livros da biblioteca escondidos pelo mundo;
- os pets raros de caçador.

## Comportamento

- **R1 Dados.** CollectData.lua (`ns.collectData`) é gerado por tools/gen_collect.py a partir de
  tools/data/collect/*.json. Os JSON são fatos levantados de páginas públicas, com as fontes e a confiança em cada
  entrada. Nada vem de addon GPL. Há três tipos:
  - `quests`: as correntes de colecionável, com os passos;
  - `books`: os livros, os pontos de entrega e as recompensas;
  - `pets`: os pets raros de caçador e onde nascem.
- **R2 Guias.** Cada tipo vira guia da janela, montado dos dados:
  - "Collectibles/<nome>" para cada corrente;
  - "Collectibles/Library Books": todos os livros num guia só, em ordem de rota (zona a zona, vizinho mais perto) e a
    entrega por facção no fim;
  - "Collectibles/Rare Hunter Pets": só caçador.

  O passo de livro ou pet fecha com `|complete collected(tipo:id)`.
- **R3 O que já foi pego.** O que o jogo sabe vale primeiro: a quest do livro feita, o item na bolsa, o brinquedo
  no diário, a última quest da corrente. Também vale o marcado à mão: clique na linha da janela, na página ou o
  clique direito no ponto do mapa. Fica por personagem (`ns.char.collect`).
- **R4 No mapa.** Os livros que faltam (e os pets raros, para caçador) aparecem:
  - no mapa-múndi aberto;
  - perto (300 jd), no minimapa;
  - bem perto (60 jd), num aviso clicável, uma vez por ponto na sessão.

  Clique no ponto guia até lá; clique direito marca como pego. Configurações > HUD desliga.
- **R5 Central.** Página "Segredos" com as abas Missões, Livros e Pets raros (esta só para caçador). Mostra o
  progresso, a próxima recompensa dos livros e "Abrir o guia". Cada linha tem "Guiar" e, clicada, marca ou desmarca.
- **R6 Seta.** No estilo dos passos de viagem: a seta dourada sobre um brilho suave, sem caixa, com o texto solto
  embaixo e sombra (distância em dourado, destino em claro, até quatro linhas), nas cores do HUD.

## Critérios de aceite

- tools/lodestar3-tests.lua cobre a ordem de rota, os três guias gerados (pelo parser de verdade), o que está perto
  e o progresso.
- tools/ui-smoke.lua cobre:
  - a página Segredos nas abas;
  - os guias registrados e carregáveis;
  - marcar e desmarcar;
  - os pinos do mapa e do minimapa.
- A suíte inteira fica verde.
