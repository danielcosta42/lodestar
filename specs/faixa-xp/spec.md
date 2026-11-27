# Faixa de XP: ritmo e previsão

Issue: #126.

## Problema

A faixa de XP (XPHud, presa sob a janela do guia) mostra a XP/hora da sessão e o tempo para subir, calculado como (XP
que falta) ÷ (XP/hora). Enquanto o jogador faz os objetivos e ainda não entregou nada, a XP/hora é só a dos monstros.
A previsão sai em horas, mesmo com o diário cheio de quests que vão dar boa parte do nível. Pedido em jogo: "melhora
a previsão por quest a completar, para não ficar horas tão altas contando só com xp de monstro".

## Comportamento

- **XP das quests do diário:** a de cada quest vem de `GetQuestLogRewardXP(id)`, a função que a interface do
  próprio Forever usa (fora da documentação: chamada com `pcall`, e sem ela a faixa fica como antes). São somadas as
  prontas para entregar e as em andamento, menos a que falhou, a escondida, a que o jogador pulou no guia e a que
  acabou de entregar (a XP dela já chegou e ela ainda pode estar no diário por um instante).
- **XP/hora:** a faixa mostra a total da sessão. A previsão também usa a de monstro: a total menos a XP das entregas
  (`QUEST_TURNED_IN` traz a XP de cada uma).
- **Previsão do nível (`XPHud.Eta`):** a menor de duas contas:
  - (XP que falta − XP das quests do diário) ÷ XP/hora de monstro. O tempo de fazer essas quests já corre dentro
    dela, e entregar uma quest já descontada não muda a conta.
  - (XP que falta) ÷ XP/hora total, como se o resto da sessão fosse igual. É a conta certa para a sessão longa, com
    quests que ainda nem estão no diário.

  Se as quests bastam, a faixa diz "sobe com as quests" no lugar do tempo. Sem XP/hora e sem bastar: "--".
- **Previsão do nível máximo:** a mesma conta com a XP de todos os níveis que faltam.
- **Dica da faixa (passar o mouse):** quanto vem das quests, o total e as prontas.

## Critérios de aceite

- Com quests no diário, a previsão desconta a XP delas; entregar uma já descontada não encurta a previsão.
- Quests que bastam para o nível → "sobe com as quests".
- Sem quests ou sem a função → a previsão de antes.
- Testes: a conta (`tools/lodestar3-tests.lua`) e a faixa com o diário falso (`tools/ui-smoke.lua`, "XP bar quests").
