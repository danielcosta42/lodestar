# Tarefas — Rotas do Forever a partir do QuestieDB

- **Plano:** `specs/questiedb-forever/plan.md`

- [x] **T1** — `tools/questiedb.py`: leitor do `.toc` (CBOR, partes `~N~`, ids zlib) → quests/npcs/objects/items/zones · Testes: `--demo`
- [x] **T2** — `build_intermediate.faction_of` e `router.RACE_BIT` conhecem Skyborne · Depende de: —
- [x] **T3** — `import_forever.py` sobre o QuestieDB + scan; `router.BUILD` = `build/forever` · Depende de: T1
- [x] **T4 [P]** — `Guide.lua`: condição `Skyborne` e guia inicial por id de raça · Testes: `forever-guides.lua`
- [x] **T5** — `generate_all.py` (nível 60, limpa o diretório) e `gen_special.py` (limpa as categorias) · Depende de: T3
- [x] **T6** — `gen_prereq` / `gen_zonedata` / `gen_trainers` / `gen_subzones` / `gen_forever` no banco do Forever · Depende de: T3
- [x] **T7** — Regerar tudo e conferir: validadores, testes Lua, contagem de quests novas roteadas · Depende de: T4–T6
- [x] **T8** — `docs/forever.md`, README, `.gitignore`/`.pkgmeta` · Depende de: T7

## Achados durante a implementação (entraram no escopo)

- [x] Quest que exige profissão saía para todo mundo (as onze "Camping 101" de cada zona inicial) — `reqSkill` no banco, fora do leveling.
- [x] Zona com duas levas de nível virava um guia só (Tirisfal 4-55) — corte em faixas (`BAND_GAP`).
- [x] Quest de capital era distribuída por área, não por guia — a segunda faixa da zona levava tudo; e caía em Zephras Isle.
- [x] Categoria que não é rota (feriado, Darkmoon, AQ, BG, reputação, profissão) entrava no leveling — `FORA_DO_LEVELING`.
- [x] "Speak with X" saía como `kill` — vira `talk`.
- [x] Pré-requisito em ciclo no QuestieDB (Call of Earth) — retirado no import.
- [x] Zonas sintéticas de continente sem nome ("Zone10074") — nome no leitor.
- [x] ~~Aba "Dailies" da biblioteca removida~~ — revertido na revisão: guia importado pelo jogador
      nessa categoria ficaria inalcançável; a aba vazia já tem estado vazio.

## Revisão adversarial (preflight, passo 4)

- [x] H1 — zona inicial com duas faixas: `findStartGuide` pegava qualquer uma (ordem do `pairs`) → a mais baixa.
- [x] H2 — máscara com os dois bits Skyborne não saía `only Skyborne` → regra por máscara, não por bit único.
- [x] M1 — quest de classe decidia faixa de zona ("Moonglade (10-20)" de druida) → só quest sem classe conta.
- [x] M2 — Zephras Isle na cadeia de todo mundo → `next` pula a ilha; autopilot só a oferece a Skyborne.
- [x] M3 — quest das duas facções mandava para cidade inimiga → roteador por facção, pelo `friendlyToFaction`.
- [x] Baixos — CBOR (mapa com chave repetida, string em pedaços, valores simples), arquivos fechados,
      scan só preenche lista vazia, `talk` só para NPC amigo e sem perder a marca de grupo do `use`,
      teste confere também a zona de coordenada de instância, números do doc remedidos (289).
