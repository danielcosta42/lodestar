# Rota de leveling com as zonas novas do Forever (issue #97)

## Problema

Os guias de leveling vinham do QuestieDB 1.0.10 (cliente 70245): sem a Riverglades nem Mount Hyjal. A Aliança
parava no 57 e a Horda no 58 só com quests. Sobravam grind (599k XP na Aliança, 938k na Horda) e quests cinza.

## Comportamento

- **R1 Banco atual.** tools/questiedb.py lê o repositório-fonte do QuestieDB, rodando o carregador do próprio
  QuestieDB: base, correções e passes derivados, como no addon empacotado. O caminho do .toc empacotado segue
  valendo. O import usa o QuestV2 do cliente 1.60.1.71139; fonte.json registra a versão e o commit.
- **R2 Zonas novas na cadeia.** A Riverglades (38-44 Aliança, 39-43 Horda, depois de Badlands) e Mount Hyjal (56-60)
  entram nos guias e no `next`.
- **R3 Ordem pelo nível de verdade.** A próxima zona sai do nível simulado do personagem (XP das quests do
  roteador). O prazo de cada guia é o que vier primeiro: a mediana ou 4 níveis antes de 30% dele ficar cinza.
  - Guia de 59+ fica fora da cadeia.
  - Guia pequeno só se funde com outro a até 10 níveis.
  - Quest que pede mais de 3 níveis acima da saída simulada do guia vai para um guia posterior.
  - Humano, Anão e Skyborne entram pelos Eastern Kingdoms. Elfo Noturno segue por Darkshore.
- **R4 Especiais e dados.** Os guias de classe, masmorra e reputação foram regerados do banco novo; o
  pré-requisito de classe fora de masmorra vira `completed()`. QuestLevels.lua passa a vir do banco do Forever
  primeiro, com o pfQuest como reserva. ForeverData.lua foi regerado.
- **R5 Season of Discovery.** As correntes de runa (76000-85999) ficam fora do leveling, menos as de xamã, que já
  estavam.

## Critérios de aceite

- validate_guides.py APROVADO (0 ocorrências), check_special.py 0 problemas, self-test do router ok.
- Toda raça chega ao 60 na simulação. Em relação ao antes: menos quest cinza e menos grind por facção.
- docs/rota-auditoria-2026-11.md com antes × depois; a suíte Lua inteira verde.
