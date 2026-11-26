# Utilidades de corrida (issue #92)

## Problema

Depois do Lodestar 3 (#90), o que decide a corrida dos guias é o tempo de leveling e o que o jogador tem à mão.

## Comportamento

- **R1 Enquanto está aqui.** A cada 2 s, dos 40 passos à frente: objetivos cuja quest está no diário, entregas
  prontas e quests para pegar, com coordenada, a até 220 jd. Uma linha por quest (a mais perto), até 3, do mais perto.
  Quest para pegar só quando o guia não a segura: nenhum "suba até o nível N" por fazer antes dela e nenhuma entrega
  por fazer no mesmo passo (a próxima da corrente); o texto diz a quest e quem a dá. Na janela do guia, depois do
  passo; clique guia até lá. A janela só redesenha quando a lista muda.
- **R2 Masmorra no grind.** Passo com "suba até o nível N" por fazer: a masmorra que cabe agora entre as que têm guia
  para a sua facção (Dungeons:BestNow) e quantas quests dela faltam pegar, com "Ver a masmorra".
- **R3 Botão de alvo.** Botão seguro (LodestarTarget, atalho em Teclas de atalho) com /targetexact no mob (kill) ou NPC
  (talk) do passo; mais de um, cada clique fora de combate passa ao próximo. Marca o alvo com ícone de raide (8 inimigo,
  1 NPC) se ele não tem marca e você pode (sozinho, grupo; em raide só líder/assistente). O nome no idioma do cliente é
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
