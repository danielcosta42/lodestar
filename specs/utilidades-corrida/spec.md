# Utilidades de corrida (issue #92)

## Problema

Depois do Lodestar 3 (#90), o que decide a corrida dos guias é o tempo de leveling e o que o jogador tem à mão.

## Comportamento

- **R1 Enquanto está aqui.** A cada 2 s, dos 40 passos à frente: objetivos cuja quest está no diário, entregas
  prontas e quests para pegar, com coordenada, a até 220 jd. Uma linha por quest (a mais perto), até 3, do mais perto.
  Quest para pegar só quando o guia não a segura: a corrente o passo já segura ("only completed"); o nível, nenhum
  "suba até o nível N" por fazer antes dela. Também precisa do nível mínimo e dos pré-requisitos do banco
  (`ns.questReq`, QuestLevels.lua; issue #100). Nada que o guia vá fazer de passagem: se um passo antes do da
  sugestão volta a até 60 jd do ponto, ele faz lá. O texto diz a quest e quem a dá, no idioma do cliente quando o
  jogo sabe. Na janela do guia, depois do
  passo; clique guia até lá. A janela só redesenha quando a lista muda.
  (#118) E o que o guia não leva: quest pronta no diário que o guia aberto não vai entregar daqui para frente (só
  pega, a entrega ficou para trás, ou não cita; a pulada de propósito não entra), com o ponto de entrega
  (QuestEnders.lua, gerado por tools/gen_questenders.py do banco do Forever: NPC/objeto de entrega e os primeiros
  pontos dele, sem o "-1,-1" de dentro da masmorra nem zona sem mapa) a até 220 jd — "Entregue <quest>", aviso
  (toast) uma vez por quest na sessão. Livros da biblioteca na bolsa (quest do livro aberta) com o jogador na cidade do
  bibliotecário da facção (Owen Thadd em Undercity; Garion Wendell em Stormwind) — "Entregue N livros a
  <bibliotecário>", sempre na lista (antes das outras linhas), vale na cidade toda e avisa uma vez por visita (zera ao
  sair da cidade); com o guia dos livros aberto, não repete. O aviso sai mesmo com a janela do guia fechada; a lista,
  só com ela.
- **R1b Automação além do passo (issue #100).** O aceite automático pega a quest que o guia aceita em qualquer passo
  daqui em diante, não só no atual. A entrega automática entrega a quest pronta que o guia entrega em qualquer passo,
  inclusive um que ficou para trás. Isso vale no gossip, na janela de saudação (com entrega) e na de detalhe. Fica de
  fora o que não vale para o personagem: passo de outra classe ou raça, quest pulada, descartada ou cinza. A
  recompensa (`|reward N`) é a do passo daquela entrega.
- **R2 Masmorra no grind.** Passo com "suba até o nível N" por fazer: a masmorra que cabe agora entre as que têm guia
  para a sua facção (Dungeons:BestNow) e quantas quests dela faltam pegar, com "Ver a masmorra".
- **R3 Botão de alvo.** Botão seguro (LodestarTarget, atalho em Teclas de atalho) com /targetexact no mob (kill) ou NPC
  (talk) do passo; mais de um, cada clique fora de combate passa ao próximo. Marca o alvo com ícone de raide (8 inimigo,
  1 NPC) se você pode (sozinho, grupo; em raide só líder/assistente). (#119) A marca vai na própria macro do clique
  (`/cleartarget`, `/targetexact`, `/tm [@target,exists,nodead] ~<ícone>`): neste cliente o SetRaidTarget é protegido e
  chamado depois do clique dava ADDON_ACTION_FORBIDDEN. O `~` só marca quem não tem marca (não alterna nem troca a de
  outro); o `/cleartarget` evita marcar o alvo de antes quando o mob do passo não está por perto. A macro roda ao soltar
  (mouse e tecla: `useOnKeyDown` falso) e o "próximo" passa depois dela. Ao entrar em combate (antes do bloqueio) a macro
  só mira (sem limpar o alvo da luta) e volta a marcar ao sair. O nome no idioma do cliente é
  aprendido ao ver a unidade (placa, mouse, alvo) para os NPCs do guia; sem ele, o do guia. Some com o guia fechado e
  sem alvo no passo (e a macro fica vazia: o atalho não mira o alvo velho). Atributos e posição só fora de combate;
  ancorado no UIParent.
- **R4 Grupo sincronizado.** Mensagem de addon "LS3|S|qid:estado,..." ao grupo de casa (não raide) com as quests do
  passo atual e dos 5 seguintes: "h/n", "c" (pronta) ou "x" (sem a quest). Ao mudar, a cada 30 s e quando o grupo
  muda. Recebe só do PARTY, valida, guarda por 10 min e só de quem está no grupo. Sob o objetivo: "Ana 5/8 · Bia pronta
  · Caio não tem"; "Compartilhar com o grupo" no clique direito quando alguém não tem e o jogo deixa.
- **R5 Raros.** RareData.lua (tools/gen_rares.py, pfQuest MIT): os raros por zona com nível e até 6 pontos. A cada 5 s,
  fora de instância e de voo: um raro a até 160 jd vira toast clicável (Guiar), uma vez por raro a cada 15 min. Página
  Raros na Central: os da zona, do mais perto.
- **R6 Personagens.** Página na Central com cada personagem da conta (ns.db.alts): nível, classe, zona, profissões,
  ouro, há quanto tempo; o total de ouro.
- **R7 Versão nova.** A cada minuto, entre os pares da ChehulNet que rodam o "ls", a versão mais nova que a sua vira
  um aviso, uma vez por sessão. Nada é enviado por isto.

## Critérios de aceite

- tools/lodestar3-tests.lua cobre R1 (escolha), R3 (alvos, macro, ícone), R4 (codec, limites, linha), R5 (perto,
  aviso, sanidade do RareData), R6 (ordem, total, tempo), R7 (comparação, caps).
- tools/ui-smoke.lua monta tudo nos dois temas; suíte inteira verde.
