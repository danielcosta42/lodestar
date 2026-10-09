# Corrida — tarefas

## #45 — marcos e guilda

- [ ] T1 `RaceMilestones.lua`: a tabela v1. Teste: ids únicos, kinds válidos, pisos de nível crescentes.
- [ ] T2 Codec do registro + plausibilidade. Teste: ida e volta; lixo; campo inválido; marco implausível cai sozinho.
- [ ] T3 Armazenamento e placares: merge do dono, expiração, Mais alto / Mais rápido, filtro da guilda e do roster, eu sempre presente. (depende de T2)
- [ ] T4 Eventos: texto do marco com posição, liderança, ultrapassagem, limite de frequência. (depende de T3)
- [ ] T5 No jogo: meu registro, detecção dos marcos (nível pelo `_LEVEL_PLAYED`, quest, masmorra, perícia), malha (guilda/grupo), chat, toasts. Harness RACE. (depende de T1–T4)
- [ ] T6 `RacePanel.lua` + entradas (`/ls corrida`, squad/party, Configurações) + textos. Harness RACEUI. (depende de T5)

## #46 — realm

- [ ] T7 Codec do repasse, merge do repasse (dono vence), digest do top 5, rotação, supressão. Teste. (depende de T3)
- [ ] T8 No jogo: registro e repasse pelo YELL, repasse pela guilda, aba Realm, posição no realm na mensagem. Harness. (depende de T6, T7)
