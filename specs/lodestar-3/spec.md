# Lodestar 3: visual claro e central do jogador (issue #90)

## Problema

O revamp funcional (#89) cobre o que o Polestar faz na janela do guia, mas o Lodestar continua parecendo o mesmo, e
fica no leveling. A meta é ser a central do jogador de WoW: Forever: guia, navegação, masmorras, equipamento por
spec, coleção e Legado num lugar só, com um visual claro e legível. Layout aprovado no artefato ("Lodestar 3 · visual
claro").

## Comportamento

- **R1 Tema.** Claro por padrão; o escuro de sempre em Configurações > Janela e HUD > Visual claro (vale com
  /reload). Uma paleta só (UI.COL), mudada no lugar no ADDON_LOADED. O que é desenhado sobre o mundo (seta, bússola,
  coordenadas, item da quest, rota no mapa e no minimapa) usa a paleta fixa UI.HUD em qualquer tema. Barlow (OFL)
  nos idiomas latinos; nos outros, a fonte do jogo.
- **R2 Kit.** Cartão arredondado (9-slice, Media/round-*.tga), sombra (Media/shadow.tga), botão primário e de
  contorno, selo, segmentado, item de menu lateral, rolagem. No escuro tudo cai no retângulo de 1px.
- **R3 Janela do guia.** Cabeçalho com o guia e a faixa (Central, Navegação, ···, recolher, fechar); abas em
  pílula com passo/total; barra com "Passo X de Y" e a porcentagem; avisos (abandonada/pulo, grupo, a perna de
  viagem que abre a Navegação); o passo como cartão (quem, onde, distância; objetivos com contagem à direita e
  barra); ações rápidas (treinador, reparo, estalagem, diário — rotas, não botões seguros); A seguir; Voltar e
  Pular passo. Tudo do #89 segue (clique direito, marcar à mão, tempo, falha).
- **R4 Navegação.** O destino com o tempo total e a hora de chegada; a viagem em linha do tempo (perna, ícone, tempo;
  a atual destacada, as feitas apagadas); os serviços em grade com o tempo de viagem medido ao abrir (um por quadro);
  profissão abre a lista; coordenada. (#108) O quadro da linha do tempo tem altura (sem ela, as pernas ancoradas
  nele não se resolvem e o cliente não as desenha); o fio entre as bolinhas desce do centro delas; na grade, rótulo curto quando o nome não cabe (Profissões, Estábulo).
  O + de adicionar guia fica com o fundo no nível do botão (senão o fundo cobre o glifo). (#113) O cartão da viagem começa abaixo
  do cabeçalho de verdade: o mais baixo entre a linha da zona e a coluna da direita (tempo, chegada, Limpar), não num
  topo fixo. (#117) Serviço (grade, ações rápidas do guia, /ls near) ou coordenada (campo, /ls way, /way, Shift+clique
  no mapa e no minimapa) vira **parada** antes do destino em vez de trocá-lo; Shift+clique no serviço ou Shift no Ir
  vai direto (troca o destino, como antes). Várias paradas, na ordem em que entraram, listadas com × para tirar; a
  linha do tempo mostra as pernas até cada parada, o marcador dela ("parada N · em 1m20s") e o resto; total e chegada
  somam o desvio. A parada sai ao chegar (a perna que termina nela) ou ao abrir a janela do serviço perto dela (60 jd;
  a do próprio NPC sempre), e a seta segue para a próxima dizendo a parada e o depois ("Reparo · depois Silvermane
  Stalker"). O corpo passa na frente (as paradas esperam); só na sessão; Limpar e fechar o guia tiram junto.
  (#117, revisão) A janela cabe na tela: a lista de paradas e a linha do tempo dividem a altura que sobra (no máximo
  640 px, ou 80% da tela se for maior); não cabendo, saem primeiro as pernas feitas, e ficam a perna atual, o resto do
  trecho até a próxima parada, um "+N a mais no caminho" (com o tempo) e o destino — que nunca some —, e até 4 paradas
  na lista com "+N a mais". O vendedor só conclui o reparo se conserta; o treinador de profissão, só o da própria
  parada (na Grande Forja há um de cada a 60 jd). Passar a 15 jd de qualquer parada a conclui (não só a do trecho
  atual). Em voo ou a bordo, pôr ou tirar parada não refaz a rota do meio do ar ou do mar: refaz ao pousar ou
  desembarcar. Coordenada fora do mapa (zona que não se conhece) não vira parada: o chat diz; a zona digitada vale em
  qualquer caixa e no idioma do cliente. O serviço mais perto mede da última parada da fila (entra depois dela); o
  repetido não entra nem avisa como se tivesse entrado; o de profissão leva o nome traduzido.
- **R5 Central.** Substitui a Biblioteca (ns.GuideMenu abre a Central). Menu: Início, Leveling, Masmorras,
  Equipamento, Colecionáveis, Legado, Classe, Reputação, Sintonias, Eventos; Configurações e Relatar no pé.
  - **Início:** continuar (guia, passo, o que fazer agora, nível e XP) e os cartões de masmorra, equipamento, Legado e
    coleção, cada um com link para a página.
  - **Listas de guias:** o modelo da Biblioteca (grupos, recomendado, progresso), com busca.
- **R6 Masmorras.** Por nível (raides no fim); a que cabe agora; o detalhe com a faixa, a zona, os chefes e a
  entrada (aprendida ao entrar: o último ponto do mundo antes da instância; antes disso, a aproximada do roteiro);
  as quests do guia de masmorra da facção com o estado e Guiar; por chefe, o loot que melhora a spec, com o ganho e
  a chance. Dados: DungeonData.lua, gerado do pfQuest (MIT) por tools/gen_dungeons.py.
- **R7 Equipamento.** Spec escolhida (padrão: a do jogo, senão a árvore com mais pontos); pesos por status de cada
  spec, com predefinições de leveling, editáveis (clique sobe, clique direito desce) e o texto do Pawn; por espaço,
  o que veste e a melhor melhoria ao alcance (masmorras da faixa, recompensas das quests da rota, bolsas) com a origem
  e o ganho; "Ao alcance agora" ou "Próximos 5 níveis". O GearAdvisor (aviso, tooltip, recompensa) passa a usar
  estes pesos.
- **R8 Recompensas colhidas.** Ao ver uma quest (detalhe ou conclusão), as escolhas e o que vem sempre ficam em
  ns.db.rewards, para o Equipamento.
- **R9 Colecionáveis.** Montarias e mascotes do diário do jogo, com a origem como o jogo escreve; filtro por origem,
  "só o que falta", progresso; Guiar ao vendedor (quando o Lodestar o conhece) ou à zona da origem. O filtro do
  diário de mascotes volta a como o jogador deixou. (#109) A origem agrupa pelo nome do tipo do jogo quando ele vem
  e, senão, pelo rótulo da primeira linha do texto de origem ("Vendedor", "Saque"); sem texto, Outras. "Todas" conta
  cada item uma vez. Aba Brinquedos (C_ToyBox, família Classic): lê com coletados, não coletados e busca abertos e
  devolve os filtros da caixa como estavam; a API não dá a origem do brinquedo (sem Guiar). Guiar só com texto de
  origem.
- **R10 Legado.** Os desafios do Legado (conquistas sob a raiz das LEGACY_DEFAULT_CATEGORY_*): pontos da conta,
  grupos com feito/total, a lista do grupo com o progresso (critérios; nos de classe, o seu personagem mais alto da
  classe), o mais perto com o caminho (Leveling, Masmorras) e abrir o Legado do jogo. Os personagens da conta
  (classe, nível, profissões) ficam só no SavedVariables.

## Fora

Pixel a pixel em jogo (não há cliente aqui), gamepad, skins de terceiros, guias de profissão (seguem com o Profession
Helper), busca de itens, raros.

## Critérios de aceite

- tools/lodestar3-tests.lua: pesos e Pawn, melhor por espaço, spec pela árvore, faixa, masmorra que cabe, quests do
  guia, origem do colecionável, progresso e mais perto do Legado, tema mudado no lugar, sanidade do DungeonData.
- tools/ui-smoke.lua (light e dark): o addon inteiro carrega, loga e monta e atualiza cada janela e página sem erro;
  paradas (#117): serviço e coordenada viram parada antes do destino, Shift vai direto, × tira, chegar e abrir a
  janela do serviço concluem, o corpo passa na frente, Limpar tira tudo. (#117, revisão) Vendedor que não conserta não
  conclui o reparo; passar antes pela segunda parada a conclui; em voo a rota não se refaz até pousar; zona que não se
  conhece não vira parada; a altura da Navegação com muitas paradas e pernas (6 e 7, 9 e 12, 0 e 9...) fica em 640 px,
  com o destino e os "+N".
- tools/travel-tests.lua (#117): fila de paradas (ordem, repetida, tirar, limpar por serviço), cadeia com corpo e
  sem destino, janela que conclui (tipo e distância, NPC), rota emendada (pernas, marcadores, total, corte sem
  ligação, pedra uma vez), texto da seta com o depois. (#117, revisão) Quanto falta com barco de horário depois de uma
  parada (sem contar a ida ao cais duas vezes), ponto fora do mapa fica de fora da cadeia, janela que conclui (vendedor
  sem conserto, treinador de profissão só pelo NPC), parada por onde se passa, em voo/a bordo sem refazer, voo
  automático só no trecho atual, o mais perto medido da última parada, zona em qualquer caixa, o que cabe na Navegação.
- Suíte inteira verde; nada do Polestar (GPL-3) copiado; dados do pfQuest (MIT) e do próprio jogo.
