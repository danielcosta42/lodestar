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
  prontas para entregar e as em andamento. O guia vai fazê-las, e o tempo de fazê-las já corre dentro da XP/hora.
- **Previsão do nível:** (XP que falta − XP das quests do diário) ÷ XP/hora (`XPHud.Eta`). Se as quests bastam, a
  faixa diz "sobe com as quests" no lugar do tempo. Sem XP/hora e sem bastar: "--".
- **Previsão do nível máximo:** a mesma conta com a XP de todos os níveis que faltam.
- **Dica da faixa (passar o mouse):** quanto vem das quests, o total e as prontas.

## Critérios de aceite

- Com quests no diário, a previsão desconta a XP delas.
- Quests que bastam para o nível → "sobe com as quests".
- Sem quests ou sem a função → a previsão de antes.
- Testes: a conta (`tools/lodestar3-tests.lua`) e a faixa com o diário falso (`tools/ui-smoke.lua`, "XP bar quests").
