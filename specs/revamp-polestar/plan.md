# Plano

- **QuestState.lua** (novo). Topo puro: `Progress(objetivos, obj)`, `FmtLeft(s)`, `TimerAlert(estado, q, resta)`,
  `Dependents(passos, q)`, `Skip/Undo(char, ids)`, `ReturnStep(passos, atual, q)`, `UsedAhead(passos, atual, q, ativo)`,
  `RouteQuests(listas)`. Abaixo, no jogo: leitura do diário (objetivos, tempo, falha), abandono pela confirmação do
  jogo, mostrar no diário, avisos de tempo, detecção de abandono (QUEST_REMOVED + não entregue).
- **Guide.lua**: `char.skipped` entra em `IsGoalActive`/`IsStepComplete` como o `dropped` (para todo verbo, mesmo com a
  quest no diário); `ns:GoToStep(i)` segura o passo como o Voltar.
- **Viewer.lua**: contador/tempo/falha no texto do objetivo; linhas com clique direito; aviso de cima (abandonada ou
  pulada com Desfazer); tempo atualizado por ticker de 1 s só nas linhas com tempo.
- **QuestLogTidy.lua** (novo): a janela do diário.
- **Instance.lua** (novo): `ns.instanceHidden`, lido por `ns:UIShown()`; `Viewer:Show()` o limpa.
- **Bindings.xml** + **Bindings.lua** (novo): nomes localizados e `Lodestar_Binding(ação)`.
- **StepTracker.lua / Vendor.lua / FlightMap.lua**: Shift; voo automático.
- **GearAdvisor.lua**: `GA:Gain(link)`; **GearTips.lua** (novo): linha no tooltip e seta na recompensa.
- **Report.lua** (novo): topo puro `ReportText(ctx)`; janela com caixa de texto selecionada.
- **PartyTell.lua** (novo): topo puro `Ready(antes, agora)`; envio no grupo.
- **TomTomShim.lua** (novo): topo puro `ParseWay(texto)`; API mínima e `/way`.
- Core (padrões, comandos, COMMAND_UI), Settings, Locales (enUS, ptBR), .toc.
