# Splits: o leveling como speedrun

Issue: #48.

## Problema

O XPHud mostra uma linha de "fantasma" (o seu melhor personagem da classe rumo ao próximo nível),
mas não há como ver a run inteira como num speedrun: quanto cada nível levou, onde se ganhou ou
perdeu tempo, se este nível foi o mais rápido que você já fez. É o que streamer mostra na tela e o
que prende quem corre.

## Objetivo

Um painel de splits no estilo LiveSplit, legível na live:

- uma linha por nível: o /played em que chegou nele e a diferença para a comparação (verde à frente,
  vermelho atrás);
- o nível atual com o cronômetro ao vivo (tempo no nível até agora); a diferença ao vivo só aparece
  quando piora (contra o recorde, além da do último ding; por segmento, passando do melhor), como no
  LiveSplit;
- **ouro** quando um nível sai mais rápido que o seu melhor tempo anterior naquele nível com a
  classe (melhor segmento), como no LiveSplit; a primeira run não tem ouro (nada para bater);
- no rodapé: contra quem você está correndo.

## Comparação

- **Recorde pessoal** (padrão): o fantasma da classe — o /played em cada nível da sua run mais rápida
  com a classe nesta conta (`ns.db.ghost`).
- **Melhores segmentos**: nível a nível, contra o seu melhor tempo naquele nível.
- Trocar a comparação é um clique no cabeçalho do painel. Sem recorde da classe ainda, vale o
  melhor segmento.

## Painel

- Desligado por padrão; liga em Configurações › HUD ou `/ls splits`. Arrastável, com escala.
- Mostra 5 níveis feitos + o atual + o seguinte (do fantasma), rolando com a run.
- Cores e tamanho pensados para a captura de tela (contraste alto, fonte de números).

## Dados

- Tempo de cada nível: `run.levels[L].time` (RunTracker), que fica vazio quando não foi medido
  direito (ding duplo, nível começado sem o addon). Melhor segmento por classe e nível:
  `ns.db.bestSeg[classe][L]`, atualizado no ding — nunca com estimativa nem tempo zero.
- Ouro contra o melhor de agora (inclusive de outro personagem da mesma classe).
- Nada é preenchido para trás: nível sem tempo (antes do addon) aparece sem diferença.
- Personagem apagado e refeito com o mesmo nome (/played ou nível menores que os já vistos) começa
  uma run do zero, sem herdar a anterior.

## Fora

Comparação com a guilda ou o realm (a corrida só tem os marcos de 10 em 10), exportar para o
LiveSplit, splits por zona.

## Técnico (spec e plano condensados)

- `Splits.lua`: núcleo puro no topo (`Clock`, `Delta`, `Segment`, `IsGold`, `Rows`), testado por
  `tools/splits-tests.lua`; abaixo, o painel.
- No `_LEVEL_PLAYED` (RunTracker, a cada ding com o /played): retrato dos melhores segmentos no início
  da run (`run.bestAtStart`, como o fantasma `run.opponent`), ouro em `run.gold[L]`, melhor segmento
  salvo em `ns.db.bestSeg[classe][L]`.
- Painel `LodestarSplits` (desligado por padrão: `ns.db.splits.enabled`), posição e escala salvas,
  atualizado a cada 1 s quando visível; `/ls splits`; Configurações › HUD (liga e tamanho).
- Harness: cenário SPLITS (liga/desliga, diferença contra o recorde, ouro, troca de comparação).
