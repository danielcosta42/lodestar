# Retrospectiva da jornada

Issue: #49.

## Problema

Chegar ao 60 é o momento de maior orgulho do leveling, e hoje passa sem nada além do card do
nível. É também o momento em que o jogador mais quer mostrar a conquista (Discord, Reddit, guilda)
— a melhor vitrine gratuita para o addon.

## Objetivo

Um pôster da jornada inteira, feito para print e para postar:

- personagem, classe, raça e /played total até o 60 (ou até agora, se aberto antes);
- um gráfico de barras com o tempo de cada nível (1→60), com os marcos e o nível mais rápido e o
  mais lento destacados;
- totais: quests, mortes, zonas, ouro ganho, passos de guia feitos;
- a corrida: posição na guilda e no realm no 60 (quando há) e os marcos batidos;
- rodapé com "Guiado pelo Lodestar" e o link do addon.

## Quando

- Abre sozinho ao chegar no 60 (depois do card do nível).
- `/ls jornada` (e `retro`) abre a qualquer momento, com os números até agora e "em andamento".

## Ações (fora do print)

- Mandar um resumo de uma linha no chat da guilda (manual, com o link).
- Copiar o texto; tirar o print (a barra de ações some na hora da captura, como no card).

## Dados

`run.levels[L]` (tempo, quests, mortes, zonas, ouro, passos por nível), `run.levelPlayed`,
`ns.char.deaths`, registros da corrida. Nível sem dado (antes do addon) aparece vazio no gráfico, e
o pôster diz desde que nível há dados.

## Fora

Imagem exportada (o jogo não permite), comparação com outros personagens, retrospectiva por zona.

## Técnico (spec e plano condensados)

- `Retro.lua`: núcleo puro no topo (`Summary`: barras, totais, destaques pelo ritmo em XP/h com 3+
  níveis medidos; `ChatLine`), testado por `tools/retro-tests.lua`; abaixo, o pôster
  `LodestarRetro` no estilo do boletim (nota e formatos vêm do `ReportCard`).
- `RunTracker`: `run.zonesSeen` (zonas distintas da jornada, daqui para frente).
- Abre sozinho no nível máximo (`_LEVEL_PLAYED`): depois que o boletim daquele nível fecha e fora de
  combate. `/ls jornada` (`retro`) e Configurações › Painéis abrem a qualquer momento.
- Harness: cenário RETRO (abre, barras, destaque, números, guilda, abertura no 60 depois do card).
