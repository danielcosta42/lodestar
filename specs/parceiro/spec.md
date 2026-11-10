# Parceiro de quest elite (issue #80)

## Problema

Quests elite e de grupo travam o leveling solo, e o grupo certo costuma estar a poucos metros: outro jogador no mesmo
passo do guia, na mesma zona. Hoje o Lodestar só abre o PartyLens ou o buscador do jogo.

## Comportamento

- **R1 Quando.** O passo atual do guia tem um objetivo elite ou de grupo ativo e incompleto (`ns.API.CurrentObjective`
  com `needGroup`) e a quest está no log. Fora de instância, com a opção ligada e o grupo não cheio (menos de 5, fora
  de raide).
- **R2 Aviso.** `LB1|Q|questID|mapa` por sussurro de addon (prefixo `LSBuddy`) aos peers da ChehulNet com Lodestar
  (`ls`), no mesmo mapa (o `mapID` do HELLO), ouvidos há até 5 min; até 8, um aviso por quest a cada 2 min.
- **R3 Recebimento.** Só por sussurro (remetente autêntico). Se eu estou na mesma quest de grupo, no mesmo mapa, com
  grupo não cheio: um toast clicável "Fulano está em [quest] por perto · clique para convidar". Uma oferta por pessoa
  e quest a cada 10 min. Apresento-me de volta uma vez (o outro também me vê).
- **R4 Clique.** O clique no toast convida (`C_PartyInfo.InviteUnit`); é o único caminho de convite (evento de
  hardware). Nada vai ao chat.
- **R5 Toast clicável.** O `Toast` ganha `onClick`: com ação, o toast recebe o clique e some depois dele; sem ação,
  não segura o mouse.
