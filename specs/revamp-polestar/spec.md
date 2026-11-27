# Revamp: o que o Polestar faz e o Lodestar ainda não (issue #89)

## Problema

O Polestar (fitzforge/polestar, GPL-3) cobre no dia a dia do leveling coisas que o Lodestar não faz: o objetivo não diz
quanto falta, uma quest com tempo não avisa, pular uma quest só pula o passo inteiro, abandonar uma quest por engano
deixa o guia parado sem dizer por quê, a janela fica na frente dentro da masmorra, não há atalho de teclado, e quem
quer ajudar a corrigir uma rota não tem como mandar onde está. A base do Lodestar segue melhor (rota pelo terreno,
planejador, horários, corrida, rede); o que falta é refino. As ideias vêm de lá; o código não: o Lodestar é MIT e nada
do Polestar é copiado.

## Comportamento

- **R1 Contador.** Objetivo ligado a quest (`|q id[/obj]`) mostra a contagem do jogo depois do texto: `3/8`; sem
  índice e com vários objetivos, `3/8 · 1/5`. `collect` sem quest e com conta mostra a bolsa: `2/5`. Feito, sem conta.
  A prévia "A seguir" mostra o mesmo.
- **R2 Tempo.** Quest com tempo mostra o que resta no objetivo (`4:59`, `1:02:03` acima de uma hora), atualizado a cada
  segundo. Aos 5 min e a 1 min um toast e um som, uma vez por quest e limite ("Avisos de quest com tempo", ligado).
- **R3 Falhada.** Quest falhada (escolta, tempo) mostra o objetivo apagado com "falhou: abandone e pegue de novo".
- **R4 Pular quest.** Clique direito numa linha de quest abre: Pular esta quest; Mostrar no diário (fora de combate);
  Abandonar (com a confirmação do próprio jogo). Pular tira a quest do guia **e as que dependem dela** (passos com
  `completed(id)` na condição, em cadeia), em todo guia, até desfazer. Um aviso no topo do passo diz o que saiu, com
  **Desfazer**, por 20 s. A quest pulada não é aceita pelo modo guloso; aceitá-la à mão desfaz o pulo dela.
- **R5 Abandonada.** Abandonar (sem entregar) uma quest que algum passo daqui para a frente ainda usa mostra no topo do
  passo: "Você abandonou [Quest]", com **Voltar por ela** (vai ao passo que a aceita, segurado como o Voltar) e
  **Pular** (R4). Some quando ela volta ao diário ou é pulada.
- **R6 Diário.** "Arrumar o diário" (menu ⋯, Configurações > Ferramentas, `/ls diario`) lista as quests do diário que o
  resto da rota não usa (o guia ativo do passo atual em diante, os guias seguintes da cadeia e as outras abas, do passo
  salvo em diante), cada uma com Abandonar, e à parte as concluídas que nenhum passo à frente entrega. Nada é abandonado
  sem o clique.
- **R7 Masmorra.** Ao entrar em masmorra, raide, campo de batalha ou arena, a janela do guia, a seta do guia e a
  automação saem; voltam ao sair ("Esconder em instâncias", ligado). Guia de masmorra ou sintonia ativo fica. `/ls`, o
  atalho ou o botão do minimapa reabrem lá dentro. Na primeira vez, um toast diz isso.
- **R8 Atalhos.** Bindings.xml, seção Lodestar: mostrar/esconder a janela, próximo, anterior, painel Viagem, usar o item
  da quest, arrumar o diário, relatório.
- **R9 Shift.** Com Shift apertado ao abrir o NPC, o vendedor ou o mestre de voo, o Lodestar não aceita, não entrega,
  não escolhe, não vende, não repara e não voa.
- **R10 Voo automático** (opcional, desligado). No mestre de voo, se a rota tem um voo a partir daqui e o nó está no
  mapa, voa para ele; Shift escolhe à mão.
- **R11 Melhoria.** Tooltip de item equipável e usável que é melhoria sobre o equipado: `▲ Melhoria +N%` (verde). Na
  escolha de recompensa, uma seta verde na melhor melhoria ("Dicas de equipamento", ligado).
- **R12 Relatório.** "Relatar um problema" (menu ⋯, Configurações > Ferramentas, `/ls report`): uma janela com texto
  pronto para copiar (versão, cliente, guia, passo e seus objetivos, mapa e coordenada, nível, classe, raça, facção,
  quests do passo no diário, outros addons ligados) e o endereço das issues. Nada sai sozinho.
- **R13 Avisar o grupo** (opcional, desligado). Em grupo (não raide, não instância de campo), quando uma quest do diário
  fica pronta para entregar: "Lodestar: [Quest] pronta para entregar" no chat do grupo. Uma vez por quest; nada no
  login, no /reload nem para o que já estava pronto.
- **R14 TomTom** (opcional, desligado). Sem o TomTom instalado: `TomTom:AddWaypoint(mapa, x, y, opções)` de outros
  addons e `/way [#mapa|zona] x y [nome]` viram o destino manual do Lodestar; `RemoveWaypoint` limpa. Com o TomTom,
  nada muda. (#117) O `/way` agora põe uma parada antes do destino (o `AddWaypoint` dos outros addons segue trocando o
  destino manual); `/way off` tira o manual e as paradas.

## Fora

Dados que o cliente não tem (busca de itens, raros, masmorra no lugar do grind, mapa sem névoa), gamepad, skins,
cliente desktop e guias de comunidade com compilador: ficam para outra rodada. Lembrete de montaria segue fora (o
Forever não diz em que nível ela vem; ver Milestones.lua).

## Critérios de aceite

- `tools/revamp-tests.lua` cobre R1 (contador), R2 (formato e avisos), R4 (dependentes, desfazer), R5 (passo de volta,
  uso à frente), R6 (o que a rota usa), R12 (texto) e R14 (`/way`).
- Toda a suíte existente segue verde; nenhuma chamada a global removido do cliente (tools/forever-guides.lua).
- Tudo novo em Configurações; o que fala com outras pessoas ou outros addons (R13, R14) e o voo automático nascem
  desligados.
- Textos em inglês e português; os outros idiomas caem no inglês.
