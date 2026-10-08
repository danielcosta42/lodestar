# WoW: Forever — o que o Lodestar faz, e por quê

Beta aberto em 2026-09-17, até 2026-10-21; lançamento em **2026-11-04**. Build corrente
**1.60.1.70245** (`wow_classic_beta`, **Interface 16001**, token de TOC `Camelot`). O beta está
capado no nível 30 e sem raides.

O Lodestar é **Forever e só**. O suporte a TBC/Anniversary saiu na v2.0.0, e desde a #9 a biblioteca
inteira de guias é gerada do banco do Forever.

- **É a interface de retail sobre conteúdo vanilla.** O cliente reporta `WOW_PROJECT_ID = 1`, igual
  ao retail — a detecção é pela **faixa de interface 16000–16999**, e só.
- **Secret Values ativos**, mas o que é secreto é estado de **combate** (vida, auras, cast, ameaça).
  Nada em quest, gossip, questline ou mapa devolve valor secreto. Identidade de NPC vem limpa aqui —
  colhemos id e nome de quest giver sem problema. Ainda assim perguntamos antes, via
  `C_Secrets.ShouldUnitIdentityBeSecret`, porque a doc gerada marca `UnitGUID`/`UnitName` com
  predicado condicional e a regra pode apertar.

## O cliente só entrega ids

`QuestV2` no 70245 tem 6.609 linhas, com o schema inteiro sendo `ID, UniqueBitFlag,
UiQuestDetailsThemeID`. `QuestObjective` e `QuestV2CliTask` **não existem nesse build** (404 no wago).
Título, nível, zona, giver e objetivo são **servidor**.

E a `QuestV2` **não lista quest repetível**: "Earth Sapta" (1463) foi vista em jogo e não está nela, e
o QuestieDB tem 724 quests que nenhuma das duas `QuestV2` (Forever e Anniversary) lista. Por isso
quest só conta como removida quando o Anniversary **tem** e o Forever **não tem** — ausência nas duas
é repetível, não remoção.

| baseline de "quest nova" | quantas |
|---|---|
| ids que o `QuestV2` do **Anniversary 2.5.6.69795** não tem | 2.833 |
| ids ≥ 30000 no `QuestV2` do 70245 | **2.853** |
| ids que o `QuestV2` do **Classic Era 1.15.9.69722** não tem | 1.795 (no 69913) |

## De onde vêm as rotas

**1. QuestieDB do Forever — a base.** Desde a 1.0.5 (2026-10, "Add Forever base data") o QuestieDB,
o addon de dados que o Questie 12 exige, traz a base inteira do Forever: 5.010 quests, **760 delas
novas**, 13.311 NPCs (3.110 novos), objetos, itens e o mapa de zonas do Forever. É GPL e aberto, como
o banco do Questie de onde as rotas do Lodestar sempre vieram.

O dado mora no próprio `.toc`, em modo *baked*: `## X-Quest-<id>-S: <base64 de CBOR>` com os campos
escalares e uma máscara de quais campos-tabela existem, `## X-Quest-<id>-<campo>` para cada tabela,
valor longo partido em `~N~` + `-1..-N`, e o cabeçalho de ids comprimido com zlib. O número do campo
é o índice do Questie (`questKeys`), então `tools/questiedb.py` decodifica (CBOR à mão, sem
dependência) e entrega o mesmo JSON que o `build_intermediate.py` sempre produziu.

**A coordenada já está no sistema do Forever.** Conferido contra o scan em jogo, Zarlman Two-Moons em
Mulgore: 46.88/61.19 no QuestieDB, 46.86/61.13 no cliente, 47.76/57.53 no banco do Anniversary. O
`EraToForever` que o próprio QuestieDB exporta é para dado de Era, não para este — não reprojetar.

**2. `Cache/WDB/*.wdb` e `/ls scan` — o que nenhum banco tem.** `RequestLoadQuestByID` faz o servidor
mandar o registro completo, e o cliente grava em disco (`tools/wdb.py` lê). O coletor em jogo
(`/ls scan`, `ForeverScan.lua` sobre a `LibChehulQuest`) guarda quem dá e quem entrega cada quest,
com id de NPC e coordenada, e o waypoint que o servidor aponta. No `import_forever.py` o scan **só
preenche lacuna** da base: o nome e o texto do QuestieDB são enUS e estáveis, e o scan pode vir de
um cliente ptBR. O `ForeverData.lua` lista para o `/ls scan` só os **2.106** ids ≥ 30000 que o
QuestieDB não conhece.

### O bug que obriga o desenho do coletor

**SavedVariables não volta no login neste cliente.** A tabela nasce vazia, então o logout sobrescreve
o arquivo com apenas aquela sessão. Por isso `tools/import_scan.py` varre **muitos** arquivos e
mescla de forma aditiva, incluindo os `.bak` que o cliente mantém — e por isso o WDB, que o addon não
escreve, é o canal mais confiável que existe neste cliente.

### O que não raspamos

`tools/fetch_forever.py` existiu e **foi removido**. A ToU da Fanbyte (o "Terms of Use" no rodapé da
Wowhead) proíbe baixar conteúdo por qualquer mecanismo que não seja navegador, e o `robots.txt`
deles bloqueia coletor automático por nome. Não dá pra semear dado aberto com aquilo. Também não
ingerimos o RestedXP: é CC BY-NC-SA, e o share-alike contaminaria tudo que derivasse.

## O que o gerador decide

- **Faixa de nível por leva.** O Forever pôs conteúdo de 55-60 em Tirisfal e em Teldrassil; zona
  com um buraco de 10 níveis sem quest vira dois guias (`Tirisfal Glades (5-12)` e `(55-60)`), senão
  o jogador de nível 5 seria mandado a quest de nível 55. Quest de classe ou só de Skyborne conta para
  a zona virar rota, mas não decide a faixa — as de druida em Moonglade inventavam um "Moonglade
  (10-20)" na cadeia de todo mundo. Abaixo da primeira leva, o guia só leva quest até 10 níveis menor.
- **Fica fora do leveling:** quest que exige profissão (as onze "Camping 101: <profissão>" de cada
  zona inicial), entrega de Craftsman's Writ, e categoria que não é rota — feriado, Darkmoon, guerra
  de AQ, reputação de fim de jogo, profissão e campo de batalha. Classe fica, com `only <Classe>`.
- **Cada facção com o seu lado.** Quest das duas facções lista quem dá e quem recebe dos dois lados
  (The Hunter's Charm: Thunder Bluff e Darnassus); no guia de uma facção fica só o lado dela, pelo
  `friendlyToFaction` do NPC — o que as correções por facção do QuestieDB fazem em Lua. Viagem a
  cidade inimiga: de 43 para 27 passos na Aliança e de 41 para 31 na Horda; o que sobra é Lunar
  Festival, alvo de quest (Mathias Shaw) e NPC que o banco marca como dos dois lados dentro de
  cidade inimiga (Argent Dawn em Darnassus e Ironforge).
- **Quest de capital** vai para o guia da zona onde ela se resolve (entrega ou objetivo) quando a
  faixa serve — "Feralas: A History", de Darnassus, é pega antes de ir a Feralas —; senão para o
  guia cuja faixa serve, preferindo a zona onde a capital fica (Ironforge → Dun Morogh). Sempre no
  continente da capital e do destino, nunca em Zephras Isle; breadcrumb de capital para outro
  continente ("Reclaimers' Business in Desolace", de Ironforge) fica fora — a trilha é por
  continente e não passa na capital do outro.
- **Pré-requisito de fora do guia vira condição do passo**: `only completed(p)` (com várias opções,
  `completed(a,b)` = qualquer uma). O passo só aparece para quem já entregou; antes, ou o guia
  cortava a quest, ou mandava a um NPC que não a abre e travava. Quem depende dela no guia herda.
- **Cadeia que atravessa zonas** (The Defias Brotherhood: Westfall → Redridge → Westfall): a quest
  cujo pré-req fica num guia mais adiante da trilha do continente vai para ele, no bloco final
  ("volte a Sentinel Hill"). Guia que fica com menos de 6 quests se dissolve no vizinho da trilha.
- **Exclusivas.** Todo passo de quest com `exclusiveTo` leva `not completed(x) not haveq(x)`: feita
  uma variante, a outra some em vez de travar — inclusive em guias diferentes do mesmo caminho
  (Call of Fire em Durotar e a de Orgrimmar em The Barrens). No mesmo guia, de par que se lista dos
  dois lados fica uma por público (a outra perde as raças já cobertas); exclusiva de um lado só é
  breadcrumb e entra antes da quest que a fecha (Senir's Observations → Frostmane Hold). No guia de
  classe, a variante dada só numa zona inicial é da raça de lá (Call of Earth em Durotar, Mulgore e
  Zephras), e entre capitais a raça da casa desempata (Devourer of Souls).
- **Fica fora também:** entrega de marca de campo de batalha e doação de pano (Concerted Efforts
  fazia do Alterac da Aliança um "34-60"), quest cujo objetivo ou entrega fica noutro continente,
  e quest que ninguém dá (giver sem spawn, item sem fonte). Item que a quest anterior dá
  (Tome of Divinity) começa onde ela é entregue.
- **O título é a faixa do que o guia leva** (percentis 15-85 das quests dele), não a da descoberta:
  um grupinho de quests de Onyxia fazia "Dustwallow Marsh (35-60)" de um guia que para no 51.
- **Autopilot: o nível manda.** Guia já passado pesa 3 por nível, guia ainda acima 2 por nível,
  outro continente +4; a zona atual só desempata (−1,5) e, por último, a faixa em que o nível fica
  mais no meio. No 11, parado em Brill, abre Silverpine (11-20), não o Tirisfal (5-10) já passado
  — cuja primeira quest pendente era cinza. No login, se a aba ativa de leveling ficou abaixo do
  nível, abre o recomendado; a antiga continua na aba.
- **Zephras Isle fica fora da cadeia.** O `next` dos guias pula a ilha (Dun Morogh → Westfall), e o
  autopilot só a oferece a Skyborne ou a quem já está lá.
- **"Speak with X"** num NPC amigo sai como `talk`, não `kill`: o banco guarda o objetivo como de
  criatura.
- **Pré-requisito em ciclo** (a própria quest, ou a versão dela de outra raça — "Call of Earth" 1516
  pedia `[1516, 1519, 92466]`) é retirado no import.
- **Skyborne** são as raças 95 (Aliança) e 96 (Horda), máscaras `2^32` e `2^33` (enum do QuestieDB,
  não `2^(id-1)`). Máscara só com esses bits — um ou os dois — sai `only Skyborne`. O token em inglês
  ainda não é público: o `Guide.lua` reconhece a raça pelo id, e o guia inicial dela é Zephras Isle.
  Zona inicial com duas faixas começa pela mais baixa.

## Números (QuestieDB 1.0.5, build 70245)

| | |
|---|---|
| Guias | 182 (86 de leveling, 95 especiais, 1 exemplo) |
| Quests distintas em guia | 3693 |
| Quests novas do Forever em guia | **442 de 760** |
| — fora: entrega de Craftsman's Writ | 150 |
| — fora: exigem profissão | 80 |
| — fora: começam por item ou giver sem posição | 68 |
| — fora: evento/repetível/campo de batalha | 8 |
| — fora: outro | 12 |
| `validate_guides.py` — ocorrências | **0** (antes da revisão: 10 bloqueios, 244 pré-req ausentes) |
| Cadeia `next` de cada zona inicial — accept que trava | **0** nos 8 caminhos |
| `guide_integrity.py` — passo sem coordenada | 2 |

`gen_forever.py` imprime essa conta a cada rodada.

## As zonas novas

| zona | areaID / uiMapID | nível | no QuestieDB 1.0.5 |
|---|---|---|---|
| Zephras Isle | 16593 / 2521 | 1-12 | zona inicial da raça nova; **guia nas duas facções** |
| Riverglades | 16591 / 2548 | 36-44 | 181 NPCs com spawn, **nenhuma quest** — fora do beta |
| Mount Hyjal | 616 / 2482 | — | NPCs, nenhuma quest |
| Shen'dralas | 16651 / 2652 | — | NPCs, nenhuma quest |
| Darkspear Islands | 16606 / 2524 | 30-60 | **Battleground 15v15**, não zona de quest |

## Regerar

Num build novo do cliente, ajustar `FOREVER` em `tools/import_forever.py`; numa versão nova do
QuestieDB, só rodar de novo. Tudo é determinístico.

```
python tools/questiedb.py --demo <pasta do QuestieDB>
python tools/wdb.py <pasta Cache/WDB>          # opcional: o que o cliente gravou
python tools/import_scan.py                     # opcional: o /ls scan de todos os SavedVariables
python tools/import_forever.py <pasta do QuestieDB>
python tools/generate_all.py 60
python tools/gen_special.py
python tools/gen_zonedata.py
python tools/gen_trainers.py
python tools/gen_travel.py                      # voos, barcos, zepelins, bonde, serviços
python tools/gen_subzones.py <pasta do QuestieDB>
python tools/gen_forever.py
python tools/validate_guides.py
python tools/check_special.py                  # masmorras e sintonizações, por raça x classe
luajit tools/forever-guides.lua
```

Sem argumento, a pasta do QuestieDB é a vizinha do Lodestar (`AddOns/QuestieDB`). O `QuestV2` de
cada build é baixado do wago uma vez e fica em `tools/build/`; build que não existe devolve 404 em
vez de cair em outro. `generate_all.py` e `gen_special.py` refazem os diretórios de guia do zero.

## Em aberto

- **Riverglades, Hyjal e Shen'dralas.** O QuestieDB 1.0.5 tem os NPCs, não as quests. Entram quando
  ele tiver — ou quando o `/ls scan` colher no lançamento.
- **Quest de profissão.** Fica fora porque o DSL não tem condição de profissão; com uma (`skill(171)`),
  as "Camping 101" e as entregas de Craftsman's Writ podiam entrar para quem tem a profissão.
- **A cadeia é por continente.** Quem começa em Elwynn fica nos Reinos do Leste até o 60 e só
  atravessa no fim; parte dos passos condicionados (~10% em cada caminho) é de cadeia do outro
  continente e não aparece para esse jogador. Quest entre continentes (Thousand Needles → Booty
  Bay) fica fora.
- **"Welcome to Azeroth" da Aliança (94947)** — a quest que tira o Skyborne da ilha — tem quem a dá
  (Denaaris Stargale) posicionado em Alterac Mountains no QuestieDB 1.0.5, e fica fora do guia; a
  gêmea da Horda (95350) está em Mulgore e roteada. Conferir em jogo de onde parte o portal.
- **Passo que começa por item de drop** sem fonte localizada (64 quests novas): falta o
  `itemDrops` do QuestieDB no `items.json`.
- **Dado de Outland na tabela de continentes do `TravelPlanner`.** As zonas de TBC seguem lá. É
  dado **inalcançável, não errado**: nenhum guia rota para lá. (`FlightData` e `TransitData`
  saíram: voos, barcos e zepelins vêm das tabelas do cliente, em `TravelData.lua`.)
  (`ZoneData`, `Trainers` e `SubZones` já saem do banco do Forever.)
- **Níveis de montaria**, quando o jogo disser quais são. Avisar chutando é pior que calar.
- **`ChehulNet.lua` na VERSION 7 nos quatro addons da família.** A cópia do Lodestar e a do GuildOS
  já pulam GUID secreto; PartyLens e ProfessionHelper ainda não. Corrigir nos quatro e subir para 8
  é trabalho de família, fora deste repositório.
