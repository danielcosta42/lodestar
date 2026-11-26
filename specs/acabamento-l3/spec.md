# Acabamento do Lodestar 3 (issue #93)

## Problema

O primeiro teste em jogo da v2.15.0 mostrou:
- o tema escuro com formato diferente do claro;
- listas com marcadores e espaçamentos ruins;
- a seta e as Configurações ainda no visual antigo;
- a troca de tema pedindo /reload no chat;
- no nível 47, um guia que começava por quest cinza;
- o reparo automático sem opção de não usar o dinheiro da guilda.

## Comportamento

- **R1 Mesmo formato nos dois temas.** UI.Card, UI.Panel, UI.Button, UI.Bar, UI.Badge, UI.Chip, UI.Switch,
  UI.Slider, UI.Segmented e UI.NavItem desenham sempre cantos arredondados (9-slice), com fio e sombra na janela de
  topo. O tema muda só a paleta: o escuro tem papel, cartão mais claro que o papel, faixa e fio visível (UI.THEMES.dark).
  O HUD (UI.HUD) segue na paleta fixa. Faixa de topo e de rodapé de janela (`top` / `bottom`) arredonda só o lado de
  fora. O fio dourado de topo das janelas fica dentro da curva do canto.
- **R2 Configurações na Central.** Página "settings" da Central, fora do menu e no rodapé dele. Seções num cartão à
  esquerda, conteúdo com rolagem à direita. /lodestar config, o minimapa e o rodapé abrem a Central nela; de novo,
  fecham. O subtítulo mostra a versão com um "v" só.
- **R3 Recarregar na hora.** O tema é um controle Claro | Escuro; trocar recarrega a interface (C_UI.Reload). Desligar
  a compatibilidade TomTom também. Nada vai ao chat.
- **R4 Seta nova.** Três camadas geradas por tools/gen_media.py (contorno, miolo e sombra) girando juntas. O miolo é
  dourado, verde perto do ponto e âmbar em viagem. Embaixo vai uma pílula arredondada do tema com a distância e o
  destino; a largura segue o texto. Fechar o guia some com a seta: o destino avulso ("Guiar", /way) sai junto; só o
  do corpo fica.
- **R5 Linhas de lista.** UI.ListRow tem:
  - marcador em ladrilho (glifo num quadrado arredondado, no tom do selo);
  - título, e embaixo um texto ou uma barra;
  - à direita, um valor e uma ação com a largura do texto;
  - altura fixa e fio embaixo.

  Usada em Masmorras (quests), Legado (desafios e "mais perto") e Raros. Masmorras ganha cabeçalho em três linhas e
  chefes com a melhoria embaixo do nome. Nos Colecionáveis, o "Guiar" tem a largura do texto.
- **R6 Quest cinza.** O nível vem do jogo quando a quest está carregada (C_QuestLog.GetQuestDifficultyLevel; as dos
  80 passos à frente são pedidas). Senão, vem de QuestLevels.lua (tools/gen_questlevels.py, pfQuest MIT). Uma quest
  é cinza quando o jogador passou do nível dela mais que UnitQuestTrivialLevelRange.
  - Sai do guia a quest cinza que não está no diário nem foi feita, junto com o que só ela libera. Fica a que leva a
    uma quest que não é cinza.
  - Aceitar uma à mão traz de volta.
  - A escolha automática do guia soma até 4 pontos pela fração de quests do guia que não servem mais (feitas ou
    cinza).
  - Configurações > Automação desliga ("Pular quests cinza").
- **R7 Reparo pela guilda.** "Usar o dinheiro da guilda" (ligado por padrão); desligado, o reparo automático usa
  sempre o seu ouro.

## Critérios de aceite

- tools/lodestar3-tests.lua cobre R6 (regra do cinza, o que sai e o que fica, o que ainda serve).
- tools/ui-smoke.lua nos dois temas cobre:
  - R2: abre na Central, todas as seções, o atalho fecha;
  - R3: o tema recarrega;
  - R6: no 60 sai quest, no 5 nenhuma; escolha automática.
- A suíte inteira fica verde.
