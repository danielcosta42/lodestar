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
  profissão abre a lista; coordenada.
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
  diário de mascotes volta a como o jogador deixou.
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
- tools/ui-smoke.lua (light e dark): o addon inteiro carrega, loga e monta e atualiza cada janela e página sem erro.
- Suíte inteira verde; nada do Polestar (GPL-3) copiado; dados do pfQuest (MIT) e do próprio jogo.
