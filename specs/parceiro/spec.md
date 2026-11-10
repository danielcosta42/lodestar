# Parceiro de quest elite (issue #80)

## Problema

Quests elite e de grupo travam o leveling solo, e o grupo certo costuma estar a poucos metros: outro jogador no mesmo
passo do guia, na mesma zona. Hoje o Lodestar só abre o PartyLens ou o buscador do jogo.

## Comportamento

- **R1 Quando.** Opcional (desligado por padrão). O passo atual do guia tem um objetivo elite ou de grupo ativo e
  incompleto; a quest é a desse objetivo (`CurrentObjective().eliteQuestID`, não a primeira do passo) e está no log.
  Fora de instância e de lockdown de chat, grupo não cheio (5, ou 40 em raide).
- **R2 Aviso.** `LB1|Q|questID|mapa` por sussurro de addon (prefixo `LSBuddy`) a até 8 peers da ChehulNet com
  Lodestar, ouvidos há até 5 min, que a malha não marcou como "No player named" (`dir.bad`), na mesma zona (a subzona
  sobe até a zona por `C_Map.GetMapInfo`). Os que estão no mesmo trecho do mesmo guia (caps `guide=`/`step=` a até 5
  passos) vêm primeiro, e só eles servem com o mapa desconhecido (0). Sorteio dentro de cada grupo, para não avisar
  sempre os mesmos. O nome vai a `dir.tried` antes do sussurro, para o "No player named" de quem saiu ficar fora do
  chat. Um aviso por quest a cada 2 min.
- **R3 Recebimento.** Só por sussurro (remetente autêntico), com os toasts ligados. Se estou na mesma quest de grupo,
  na mesma zona, o remetente não está no meu grupo e o grupo não está cheio: apresento-me de volta uma vez (pelo nome de
  sussurro: "Nome Sobrenome" sem reino) e, se posso convidar (fora de grupo, líder ou assistente), um toast clicável
  "Convidar Fulano?" / "Mesma quest: [quest]". Uma oferta por pessoa e quest a cada 10 min.
- **R4 Clique.** O clique convida pelo nome de sussurro (`C_PartyInfo.InviteUnit`); é o único caminho de convite.
- **R5 Toast clicável.** O `Toast` ganha `onClick`: com ação, o toast recebe o clique e some depois dele; sem ação, não
  segura o mouse.
