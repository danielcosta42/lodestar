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

## Revisão adversarial — segunda rodada

- [x] Regressão do M1: contar só quest sem classe derrubou Alterac Mountains (8 quests sem guia) → a
      zona vira rota pela contagem total; só a faixa usa as quests sem classe e não só-Skyborne.
- [x] Faixas vizinhas se sobrepunham no vão → disjuntas (cada leva vai do próprio início até antes da seguinte).
- [x] Ramo "só a outra facção dá a quest" nunca disparava neste dado → removido, e o doc corrigido.

## Revisão adversarial — terceira rodada

- [x] Título vinha da descoberta: um grupinho de nível 60 fazia "Dustwallow Marsh (35-60)" de um guia que
      para no 51, e o autopilot o escolhia para nível 50-60 → título = faixa das quests que o guia leva.
- [x] Com o título fiel, a "Alterac Mountains (34-60)" de dez quests ganhava o desempate do autopilot
      → desempate pela faixa em que o nível fica mais no meio; empate exato pela chave (determinístico).

## Revisão das rotas (QA, pedido "valida se as rotas fazem sentido")

Quatro revisores leram os 152 guias; o roteador foi reescrito em cima do que acharam.

- [x] Hub montado por coordenada crua (passo de Stormwind caía na fazenda de Westfall) → hub só para ponto dentro da zona; o resto vai num bloco final.
- [x] Só `reqLevel` decidia a hora da quest → nível estimado do jogador sobe conforme as entregas; quest espera chegar a ~2 do nível dela.
- [x] Quest de masmorra no leveling, guia de masmorra classificado por fonte de item → `em_masmorra` sai do leveling; masmorra pelo alvo/entrega.
- [x] "Eventos por zona" eram escolta (bit 2 de `specialFlags`), não feriado → guias removidos; feriado só pelo `zoneOrSort`.
- [x] `kill` em NPC amigo, `only` com várias raças, fonte de item de outra zona, mestre de estábulo no lugar do de voo, viagem para a "entrada" da zona → corrigidos no emissor.
- [x] Cadeia `next` zigue-zague entre continentes → trilha por continente; zona inicial e a ilha só como começo.
- [x] Pré-req de fora do guia: cortava (−773 quests) ou travava (10 bloqueios, 244 ausentes) → `only completed(...)`; `completed(a,b)` = qualquer uma no `Guide.lua`.
- [x] exclusiveTo de um lado tratado como escolha (Frostmane Hold sumia) → só par mútuo é escolha; breadcrumb entra antes.
- [x] Call of Earth de Durotar/Mulgore/Zephras colapsava na da ilha → raça pela zona inicial do giver; capital da raça desempata.
- [x] Item dado pela quest anterior (Tome of Divinity) saía `turnin` sem `accept` → começa onde a anterior é entregue; quest sem quem a dê sai.
- [x] Cadeia Westfall → Redridge → Westfall ficava escondida → quest vai para o guia mais adiante onde o pré-req está; guia que esvazia se dissolve.
- [x] Azshara da Aliança sem guia (contava como território da Horda) → neutras contam.
- [x] Quest de capital na faixa da zona "casa" (Teldrassil 48-55 de recados de Darnassus; Tirisfal 13-16 com quest 50) → pela zona de destino quando a faixa serve.
- [x] Concerted Efforts / doações de pano no leveling → fora (`SO_REPUTACAO`); poluente medido sem quest de classe.
- [x] `gen_prereq.py` lia `../Guides` relativo ao cwd (rodado da raiz, gerava vazio) → relativo ao arquivo.

### Revisão do roteador reescrito (preflight)

- [x] Variantes exclusivas com público sobreposto (não igual) chegavam ao mesmo jogador — Call of Fire de Durotar e de Orgrimmar para o orc, Desperate Prayer humano/anão/ambos, Mantles of the Dawn neutra e da facção — e o segundo accept travava → a que sobra perde as raças já cobertas (só do lado do guia); sai se não sobrar. `only` agora exprime máscara de várias classes (`not <Classe>`).
- [x] Passada 2 refiltrava (faixa, poluente) e perdia 14 quests atribuídas (Get the Gnomes Drunk em guia nenhum) → passada 2 gera exatamente o conjunto atribuído; título refeito do conjunto final. Só sai quest de classe acima do teto do guia (está no guia de classe).
- [x] `_antes` calculado antes de tirar as quests sem giver (latente) → depois.
- [x] Recalcular as medianas fez as duas trilhas terminarem no 60, e o salto entre continentes valia dos dois lados: a cadeia da Horda virou laço (Silithus → Stranglethorn → Eastern Plaguelands → Silithus) → só atravessa a trilha que acaba antes.
- [x] Exclusivas em guias diferentes do mesmo caminho (Call of Fire em Durotar e em The Barrens, Ashenvale Hunt, Mantles of the Dawn) — 94 pares → exclusividade vira condição do passo, `not completed(x) not haveq(x)`, herdada pelos dependentes; feita uma, a outra some. Breadcrumb some depois da quest que a fecha pelo mesmo caminho.
- [x] A condição de exclusiva herdada de uma opção de `preSingle` negava as outras opções: Call of Earth 1520 sumia para o tauren que fez a 1519, Tormus Deepforge para o anão que fez Vejrek → das opções só vale a negação comum a todas, e nenhuma quest nega a si mesma nem um pré-req dela.

## Guia recomendado (teste em jogo)

- [x] No login (nível 11, em Brill) o addon sugeriu "A Rogue's Deal", quest nível 5 de Deathknell: o bônus de zona (−5) passava por cima do nível e o Tirisfal 5-10 ganhava do Silverpine 11-20 → nível manda (já passado pesa 3/nível, acima 2/nível, outro continente +4), zona só desempata (−1,5).
- [x] Aba ativa salva abaixo do nível era restaurada sem passar pelo autopilot → no login, se o nível passou da faixa da aba de leveling, abre o recomendado (a antiga fica na aba).
- [x] Silverpine 11-20 começava por "Hidden Enemies" em Orgrimmar: a atribuição de quest de capital testava faixa antes de continente → continente primeiro; breadcrumb de capital para outro continente (73) fica fora do leveling.
- [x] Mapa-múndi sem pino, pontos do guia nem linha: só se desenhava com o mapa aberto exatamente na zona do alvo (Tirisfal aberto, alvo em Silverpine: nada; mapa do continente: nada) → alvo e jogador projetados pela coordenada de mundo no mapa que estiver aberto; a linha é recortada na borda. `/ls tdebug` mostra o estado do mapa.
