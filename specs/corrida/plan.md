# Corrida — plano técnico

Spec: `specs/corrida/spec.md`.

## Arquivos

| Arquivo | Papel |
|---|---|
| `RaceMilestones.lua` | a tabela de marcos (dados): `ns.RACE_MILESTONES` |
| `Race.lua` | núcleo puro no topo (codec, plausibilidade, armazenamento, placares, eventos, repasse); abaixo do `if not ns.On`, o que roda no jogo (detecção, malha, chat, toasts) |
| `RacePanel.lua` | o painel |
| `RunTracker.lua` | dispara `_LEVEL_PLAYED` (nível, /played) no ding, quando o /played chega |
| `Squad.lua` | sai o painel "Na rota"; fica o anúncio LSGuide (guia/passo) e a API |
| `Core.lua`, `Settings.lua`, `Locales/enUS.lua`, `Locales/ptBR.lua`, `Lodestar.toc` | padrões, `/ls corrida`, chaves, textos, ordem de carga |
| `tools/race-tests.lua` | testes do núcleo puro (`luajit tools/race-tests.lua`) |

Núcleo puro testável fora do jogo, como `RouteGeom`/`Terrain` (P2): nada de API do jogo nas funções
do topo; quem chama passa o "agora", o nome, a guilda e o roster.

## Marco

`{ id = "l30", kind = "level", v = 30, min = 6 * 3600 }`; kinds `level` (v = nível), `quest` (v =
lista de ids), `dungeon` (primeiro ENCOUNTER_END com sucesso em instância "party"), `skill` (v =
rank; profissão = linha de perícia abandonável). `min` = piso de /played em segundos (bem abaixo do
recorde mundial: falso positivo de trapaça é pior que deixar passar).

## Protocolo (prefixo `LSRace`, pela `ChehulMesh`)

- Registro: `R1|R|CLASSE|nível|xp|played|id=t;id=t` (xp 0–100 inteiro, tempos em segundos inteiros).
- Repasse (#46): `R1|T|escopo|placar|nome,CLASSE,nível,xp,valor,idade;…` — escopo `G` (guilda) ou
  `R` (realm); placar `alto` (valor = /played) ou id de marco (valor = tempo do marco); idade = s
  desde a última notícia real; até 5 entradas e 250 bytes (um YELL, sem dividir).
- Campo inválido derruba a mensagem inteira; marco implausível cai sozinho.
- Versão nova = `R2`; quem não conhece ignora.

Envio: registro pela guilda (no login, ao mudar — com 10 s de espera — e a cada 5 min) e pelo grupo
(ao mudar e ao entrar no grupo). #46: `M:Realm(prefixo, registro, "LSRace:R")` e
`M:Realm(prefixo, repasse do próximo placar, "LSRace:T")` — o registro só quando muda (ou a cada 5
min), o repasse a cada 3 min: duas chaves fixas, sem tomar o YELL da família; pela guilda, cada placar a cada 10 min, pulando o que
alguém repassou nos últimos 10 min (supressão).

## Armazenamento

`ns.db.race[realm] = { recs = { [nome] = { class, level, xp, played, ms = {id=t}, own, seen,
relSeen, g } } }`; `ns.char.raceMs[id] = t | false` (marcos não-nível do personagem; false = sem
tempo, batido antes), `ns.char.raceSkill` (linha de base das perícias), `ns.char.raceLead` (o nível
em que já anunciou a liderança), `ns.char.raceLim` (limites de frequência). Os marcos de nível vêm de
`run.levelPlayed`. Expira em 30 dias (`max(seen, relSeen)`).

## Eventos

- Marco batido → mensagem (se `ns.db.raceChat`, limite de 10 min) e anúncio imediato.
- Depois de cada mudança no placar da guilda: 1º lugar (3+, não era antes) → mensagem; minha
  posição mudou por causa de alguém → toast (se `ns.db.raceToasts`, limite de 5 min).

## Decisões

- Sem servidor: tudo é o que a malha ouviu (spec). Repasse limitado ao top 5 por placar, rotativo no
  YELL (P5: custo previsível; a malha já pena com o limite de chat do cliente).
- O dono vence o repasse; plausibilidade só por pisos e coerência (P6: simples e auditável).
- O painel "Na rota" some: o mesmo lugar mostra a corrida, que já lista quem está online (P7: menos
  interface para manter).

## Testes (P2)

`tools/race-tests.lua`: integridade da tabela de marcos; codec ida e volta e lixo; plausibilidade;
merge (dono, guilda, expiração); placares (ordem, desempate, só quem tem o marco, filtro do roster,
eu sempre presente); eventos (mensagem do marco, liderança, ultrapassagem, limite); #46: repasse,
dono vence, digest, rotação, supressão. Harness: cenários RACE (detecção, anúncio, chat, toasts) e
RACEUI (painel, abas, seletor).
