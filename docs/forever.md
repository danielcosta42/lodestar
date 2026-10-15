# WoW: Forever — o que o Lodestar faz, e por quê

Beta aberto em 2026-09-17, até 2026-10-21; lançamento em **2026-11-04**. Build corrente
**1.60.1.70338** (`wow_classic_beta`, **Interface 16001**, token de TOC `Camelot`); as tabelas do
cliente (`QuestV2`, voos) ainda são as do 70245 — o wago estava fora do ar quando o 70338 entrou. O
beta está capado no nível 30 e sem raides.

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
novas**, 13.311 NPCs (3.110 novos), objetos, itens e o mapa de zonas do Forever. A 1.0.6
(2026-10-12) refez a base de um snapshot de 10/10: 5.226 quests (+216, nenhuma removida), 13.392
NPCs, e cadeia corrigida em quest que já existia (51 pré-requisitos, 43 quem recebe, 42
`nextInChain`). É GPL e aberto, como o banco do Questie de onde as rotas do Lodestar sempre vieram.

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
  de AQ, reputação de fim de jogo, profissão e campo de batalha (Darkspear Islands incluído: as
  quests dela saem do battlemaster da capital). Classe fica, com `only <Classe>`.
- **Masmorra nova do Forever** (City of Dalaran, Excavation Site: Wetlands, Ruins of Lordaeron, The
  Hall of Thanes) não tem mapa nem spawn lá dentro no QuestieDB. A zona entra com o nome do
  `dungeons.lua` e uiMapId 0; quest classificada nela sem objetivo posicionado fora vai para o guia
  da masmorra em vez de virar passo sem seta no leveling — inclusive a que o banco nem lista o
  objetivo ("Bring the Titan Relic"). Em masmorra antiga, quest sem objetivo só vai se quem recebe
  também não estiver fora: "Speak with Hamuul Runetotem" segue no leveling.
- **Capital inimiga só se não houver outra.** Spawn em várias zonas escolhe fora da capital da outra
  facção (o Incubus do bruxo: Stormwind para a Aliança), e objeto que dá quest numa capital inimiga
  não serve de início (a caixa de correio de Orgrimmar dá Deviate Hides; a Aliança pega com o Nalpak).
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
  continente ("Reclaimers' Business in Desolace", de Ironforge) fica fora — o guia é de um
  continente, e a capital do outro não está nele. Vale para quest que começa em objeto da capital
  (o Sealed Crate de Stormwind, no meio de The Legend of Stalvan). "Fale com" de capital no nível de
  sair da zona inicial, num guia cuja gente não nasce na casa dela, é só da raça da capital e do
  Skyborne (Sergra Darkthorn e The Barrens Oases, de Thunder Bluff, levavam o orc de Durotar a pé até
  lá no começo de The Barrens 12-20).
- **Pré-requisito de fora do guia vira condição do passo**: `only completed(p)` (com várias opções,
  `completed(a,b)` = qualquer uma). O passo só aparece para quem já entregou; antes, ou o guia
  cortava a quest, ou mandava a um NPC que não a abre e travava. Quem depende dela no guia herda.
- **A cadeia intercala os continentes por nível.** Uma só por facção: depois da zona inicial, o
  primeiro guia do próprio continente, e daí todos os guias dos dois, em ordem de nível; troca de
  continente quando o próximo daqui passa 3 níveis (`FICA_NIVEIS`) do próximo de lá — 7 a 9
  travessias por cadeia. Por continente, o morto-vivo ia de Hillsbrad 22-28 a Hillsbrad 32-39 no
  nível 23 (o conteúdo de 28-32 da Horda é de Kalimdor) e a cadeia não dava XP para o 60. O custo:
  a cadeia é a mesma para todas as raças, e o humano passa por Darkshore 13-20 e The Barrens 14-21
  já no 22-25, com boa parte das quests cinza (o modelo do revisor dá ~65% da XP ali).
- **Cadeia que atravessa zonas** (The Defias Brotherhood: Westfall → Redridge → Westfall): a quest
  cujo pré-req fica num guia mais adiante da trilha do continente vai para ele, no bloco final
  ("volte a Sentinel Hill"); pré-req noutro continente, mais adiante na cadeia, leva a quest ao
  primeiro guia daqui depois dele (Devils in Westfall espera a de Stonetalon). A quest de nível
  acima da zona onde começa que continua cadeia de nível maior não sai como "poluente" dali: é ela
  que vai ao guia do pré-req (The Legend of Stalvan do baú de Westfall, req 22, vai a Duskwood;
  tirada, a cadeia de Stalvan sumia). Guia que fica com
  menos de 6 quests se dissolve no vizinho da trilha. Entrega noutra zona de que nada depende vai
  para o fim do guia (Flight to Auberdine, na chegada a Darkshore).
- **Exclusivas.** Todo passo de quest com `exclusiveTo` leva `not completed(x) not haveq(x)`: feita
  uma variante, a outra some em vez de travar — inclusive em guias diferentes do mesmo caminho
  (Call of Fire em Durotar e a de Orgrimmar em The Barrens). No mesmo guia, de par que se lista dos
  dois lados fica uma por público (a outra perde as raças já cobertas); exclusiva de um lado só é
  breadcrumb e entra antes da quest que a fecha (Senir's Observations → Frostmane Hold). No guia de
  classe, a variante dada só numa zona inicial é da raça de lá (Call of Earth em Durotar, Mulgore e
  Zephras), e entre capitais a raça da casa desempata (Devourer of Souls).
- **Fica fora também:** entrega de marca de campo de batalha e doação de pano (Concerted Efforts
  fazia do Alterac da Aliança um "34-60"), quest cujo objetivo ou entrega fica noutro continente — a
  de classe também, e com qualquer ponta noutro continente, capital incluída: a cadeia inteira está
  no guia de classe (Tome of the Cabal, do bruxo, com um tomo em Hillsbrad e outro em Thousand
  Needles, fazia 15 travessias; Storm, Earth, and Fire, duas voltas de totem; Erion's Behest, do
  ladino, ia de Darnassus a Stormwind no meio de Darkshore; as variantes das quests de magia do
  sacerdote para quem está na capital de outra raça) —, e quest que ninguém dá (giver sem spawn,
  item sem fonte). Item que a quest anterior dá (Tome of Divinity) começa onde ela é entregue. É de
  masmorra também a quest com um objetivo que só existe lá dentro (Vyletongue Corruption, com o
  frasco cheio no poço da entrada; Fire Hardened Mail, com o frasco do Roogug em Razorfen Kraul), a
  da masmorra cujo alvo fora dela é só elite (Hearts of Zeal: o QuestieDB põe os elites de Scarlet
  Monastery no mapa de Tirisfal) e, sem objetivo no banco, a que o texto manda à masmorra
  (Destruction in Deadmines, A Bijou for Zanza). E a de raide: alvo chefe de raide (A Humble
  Offering, The Calling) ou elite acima do nível máximo (Order Must Be Restored: "a full assault on
  Nathanos Blightcaller", 62; The Root of All Evil: Xandivious, 62), e o que só abre depois dela
  (The Brokering of Peace; Ascension..., depois do Axtroz).
- **O título é a faixa do que o guia leva** (percentis 15-85 das quests dele), não a da descoberta:
  um grupinho de quests de Onyxia fazia "Dustwallow Marsh (35-60)" de um guia que para no 51.
- **Autopilot: o nível manda.** Guia já passado pesa 3 por nível, guia ainda acima 2 por nível,
  outro continente +4; a zona atual só desempata (−1,5) e, por último, a faixa em que o nível fica
  mais no meio. No 11, parado em Brill, abre Silverpine (11-20), não o Tirisfal (5-10) já passado
  — cuja primeira quest pendente era cinza. No login, se a aba ativa de leveling ficou abaixo do
  nível, abre o recomendado; a antiga continua na aba.
- **Zephras Isle fica fora da cadeia.** O `next` dos guias pula a ilha (Dun Morogh → Westfall), e o
  autopilot só a oferece a Skyborne ou a quem já está lá.
- **Quest com tempo** ("within 12 minutes", "five minutes", "1 hour", "timer runs out", "before the
  stone expires") é como a escolta: aceita por último no lugar, feita logo depois e entregue em
  seguida (A Hunter's Challenge tinha a ida a Thelsamar no meio; The Demon Seed, a de Thunder Bluff).
  A que se entrega noutra zona é pega nas sobras, na ida para lá: Apothecary Zamah ia a Thunder Bluff
  300 passos depois, já falha, e depois de pega nos Crossroads a ida a Thunder Bluff junta Serpentbloom,
  Hamuul Runetotem e Nara Wildmane.
- **O que o banco não liga, ligado pelo dado:** quest que manda entregar um item que só outra quest
  dá depende dela ("Deliver the Eye of the Tempest" só depois de Heed My Call, que traz o olho — no
  guia de classe do xamã vinha antes); a mesma quest de classe dada por dois NPCs, com os mesmos itens
  (Storm, Earth, and Fire: a de Bath'rah, em Alterac, para orc, tauren e troll, e a de Veyric, em
  Arathi), é uma ou outra — a das raças primeiro, a outra para quem ela não cobre.
  Objetivo de vários itens com um sem lugar ganha um passo por item (Gathering Materials, do mago: o
  Linen Cloth e as Dalaran Mana Gems; antes só o tecido). As "Legacy Reward" (brinde de conta, sem
  texto nem objetivo) ficam fora.
- **Zona nova dentro de outra** (`ZONA_MAE`): Shen'dralas, o Valley of Bones ao sul de Desolace, vai
  no guia de Desolace — sozinha virava guia quando tinha 6 quests e sumia com menos.
- **Giver em duas capitais**: a da gente da zona antes (Speak with Un'thuwa, de Durotar, em
  Orgrimmar, não em Thunder Bluff).
- **"Speak with X"** num NPC amigo sai como `talk`, não `kill`: o banco guarda o objetivo como de
  criatura. Mas o Forever marca `AH` em mob hostil (Mindless Zombie, Mottled Boar): objetivo cujo
  texto manda matar (kill, slay, hunt, bounty…) sai `kill` qualquer que seja o `faction`. Se o alvo
  é NPC com quem se fala (gossip, dá ou recebe quest), a palavra tem de estar na frase do nome dele:
  o "kill her" de Mother's Milk é a aranha, não Ragged John. NPC da outra facção não conversa: "a
  full assault on Nathanos Blightcaller" é `kill` no guia da Aliança.
- **O nível mínimo é trava.** A quest espera o nível estimado alcançar o `reqLevel` — sem folga: no
  nível 1 o NPC mostra o "!" cinza da The Damned (`reqLevel` 2) e não a entrega. A folga de +1 fica
  para o nível da quest. A estimativa conta só as quests de todo mundo (as de classe diluíam a
  fração) e sobe em curva, `fração ** 0,7` (`CURVA_NIVEL`): o nível 2 sai com duas quests, o 10
  pede dezenas, e em reta a trava deixava Camp Narache e Coldridge com quest por pegar.
- **Anteriores pelo `nextInChain` são caminhos alternativos** quando servem ao mesmo público:
  Cutting Teeth vem de Your Place In The World (no vale) ou de The New Horde (Eitrigg, em
  Orgrimmar), e esperar as duas jogava o vale de Durotar para o fim do guia. Variante de público
  diferente é de outro jogador e a dependente espera a de cada um — no guia de classe, onde a raça
  da zona inicial estreita a Call of Fire de cada zona. A alternativa que nasce fora sai do guia
  quando uma da zona cobre o mesmo público: The New Horde não manda mais a Orgrimmar.
- **A rota escolhe o próximo hub simulando.** Hub é vila (quem dá e quem recebe) e, à parte, lugar de
  objetivo longe de toda vila — a Burning Blade Coven é hub próprio. Entre os dois hubs mais perto com
  trabalho (o que só tem quest nova conta 1,2× a distância), fica o que dá o menor caminho total
  simulando o mesmo guloso até acabar o trabalho que se sabe. Na zona inicial, a rota fica nos hubs
  das quests da subzona de partida (o `zoneOrSort`) enquanto eles tiverem trabalho.
- **O nível estimado é o maior entre a XP e a fração do guia.** A XP é a do QuestieDB (`xp.json`, do
  `support/Forever/QuestXP`; quest nova do Forever segue a mediana do dado) mais os mobs do
  objetivo, na tabela do vanilla — ela sabe que o começo é rápido. A fração entregue, em curva, sabe
  que fora da zona inicial o jogador intercala zonas. A XP vale meio nível a menos (`XP_FOLGA`: a
  conta é aproximada), e quest só entra até 2 níveis acima (`LV_ACIMA`; +3 é mob vermelho). A faixa
  que a curva usa é a do que todo jogador do guia faz: sem quest de classe, herdada ou que espera
  pré-requisito de fora (a cadeia de Felbane, 58-60, puxava o teto de Stranglethorn 43-51 para 58 e
  Vital Supplies, de 45, saía como cinza). Quest de classe, de masmorra ou "fale com" que pede nível
  acima da faixa do guia sai dele: tem o guia de classe ou de masmorra.
- **Aceite acima do nível da XP é opcional.** O `reqLevel` acima do nível que só a XP dá, com a
  mesma folga de meio nível (a curva da fração adianta o nível; Deadmire, req 35, saía sem gate para
  quem tinha 34,99 no fim de Dustwallow), leva `only level>=N` no aceite; fazer e entregar levam
  `haveq`, e quem depende dela no guia pelo banco (pré-requisito, não breadcrumb), `completed`, em
  cascata. O NPC não dá a quest a quem não tem o nível, e o passo some em vez de travar. Quest de
  grupo (alvo hostil elite perto do nível dela: Araj the Summoner, 61, em Alas, Andorhal; os
  Irradiated Invaders de Gnogaine) pede o nível da quest. Antes era um `ding N` no meio do guia, que
  parava tudo por uma quest (8 níveis em Ironforge por A Host of Evil). Quest que pede nível acima
  do topo do guia vai ao guia seguinte da trilha que chega lá, sem tolerância de +1 (com a folga,
  The Algaz Gauntlet, 19, ficava no fim de Loch Modan 11-18 e a cadeia de Menethil sumia); a de
  grupo, pelo nível dela, só para outra faixa da mesma zona que comece perto dela — senão fica,
  opcional (Gnogaine, elite de 27, ia de Dun Morogh 13-26 para Duskwood 21-28).
- **O guia começa com `ding` no nível de entrada**: o de baixo das quests que ele leva, menos 1 (não
  o da descoberta, a zona inteira: Tanaris 53-60 supunha o 56), até o `reqLevel` das 6 primeiras
  quests sem gate que ele dá (`ENTRADA_QUESTS`), e subindo até toda quest sem gate caber no nível
  que a XP dá a partir dali, com a folga — o gate supõe o nível do guia, e Stranglethorn 34-41
  entrava no 28 com The Defense of Grom'gol, de 33, sem gate; sem a folga, a Chromie dava The Battle
  of Darrowshire (req 55) a quem entrava no Eastern Plaguelands no 54 e tinha 54,6. Conclui sozinho
  para quem já tem o nível.
- **Item de objetivo: todas as fontes.** O import guardava só as 3 primeiras de cada item, e a
  fonte da zona do guia sumia: Boar Intestines mandava de Loch Modan a Westfall, Murloc Eye de
  Silverpine aos Wetlands, Flagon of Mead a Booty Bay (167 de 1.209 coletas fora da zona). Com todas,
  a ordem é: o nó da zona que tem o nome do item (as 75 plantas de Bloodpetal Sprout, não o Ravasaur
  que derruba um); mob comum até 4 níveis acima da quest, preferindo o que não passa do nível dela
  (Small Egg em Zephras: os Hippogryph de nível 6-7, não o Shadowgale Ursera de 11); objeto; a loja
  do continente contra elite, raro ou mob muito acima (Fishin' Time mandava matar o Foreman
  Thistlenettle, elite de 20, por Nightcrawlers); o elite; e, sem nada, o NPC do nome do item
  ("Dillinger's Report": Deathguard Dillinger, pelo sobrenome, só na zona do guia), a quem se pede.
  Masmorra só vence o mundo aberto se o mundo tiver menos de 20 spawns (`FONTE_MUNDO`). A dica "cai
  de" começa pela fonte da seta e só cita as da zona dela, e some quando a seta está no nó do item.
  Na compra, o passo diz quem vende (`talk`, sem seta); quem não é vendedor entrega o item (os
  mensageiros de The Warsong Reports). `buy … |q` conclui pelo objetivo da quest, não pela bolsa
  (1 Nightcrawlers fechava o passo de Fishin' Time, que pede 3 e um Shiny Bauble). Item que vem de
  um NPC que o banco não liga à quest: `OBJETIVO_ANTES` (os restos de Samuel Fipps antes da lápide
  de Marla, Araj antes do filactério, Xandivious antes da essência), num passo próprio — `kill`
  sem seta e um `goto` até ele. Item noutra zona junto com um daqui: o passo, que só fecha com os
  dois, vai para as sobras (A Noble Brew: a Tear of Tilloa de Duskwood e a Musquash Root dos
  Wetlands travavam o meio de Duskwood 30-35).
- **Seta que não sai do lugar.** Goal sem `|q` (`talk`, `kill`) não conclui, e com `goto` prendia a
  seta nele: A Dark Threat Looms nunca chegava à Crocolisk Tear, Marla's Grave nunca recebia a seta.
  O `kill` do mob que dá o item leva o `|q` do item; o resto vai sem seta. O `python
  tools/router.py` confere em todos os guias de leveling.
- **Objetivo com vários alvos** sai um goal por alvo no mesmo passo, cada um com a sua seta: NPCs de
  conversa na ordem do texto (Exploring the Alliance: Randal, Magni, Mekkatorque, Tyrande), e, em
  mais de um lugar, objetivo só de itens, só de objetos ou só de mobs, na ordem do vizinho mais
  perto a partir de onde o jogador está (The Warsong Reports cruzava Ashenvale duas vezes na ordem
  do texto; The Coast Isn't Clear apontava só os murlocs do norte); o verbo de cada mob segue a
  regra do passo de um alvo, e alvo marcador ("Credit") fica no passo de um alvo só. O índice `|q N/i` é a posição no
  banco, a ordem do servidor — reordenada pelo cache do cliente (`wdb.json`) quando ele tem a quest
  (Storm, Earth, and Fire); o último goal espera a quest inteira, e depois de um NPC da outra facção
  (Desperate Times) também, porque ali a posição no cliente pode mudar. A conta de cada item sai do
  texto ("1 Shiny Bauble and 3 Nightcrawlers"). Ouvir quem dá a quest (Blood Tithe) é uma linha sem
  `|q` no passo do aceite. Objetivo de objeto é `click` (Marla's Grave, as torres). Objetivo
  misturado (criatura + item) fica com o primeiro alvo e a nota: lá a ordem no cliente não se sabe.
- **Explorar um lugar** (The Fargodeep Mine, The Forgotten Pools, escoltas): o `triggerEnd` do
  QuestieDB (o import agora o guarda) dá o ponto, e o passo é a nota da quest mais um `goto` com o
  nome do gatilho na dica, que conclui ao chegar — não depende do cliente listar o objetivo. Ponto
  dentro de instância (-1,-1) ou em cima de quem recebe (Ak'Zeloth) não conta — a não ser de escolta.
  Escolta e evento que começa no aceite ("Escort", "Protect", "Keep Muglash safe", com ou sem
  objetivo de matar) vêm logo depois do aceite e por último no hub (Free From the Hold saía da
  fortaleza antes de Guns of Northwatch; Protect Kanati mandava pular da prancha no meio), e a que
  termina em quem recebe é entregue ali (The Sleeper Has Awakened, em Maestra's Post). Quest sem
  objetivo e sem ponto (Falling With Style, eventos) leva a nota do que fazer no passo da entrega.
- **Entrega numa zona que um guia mais adiante visita espera por ele.** Se o guia não vai lá por
  outra quest (nem para pegar esta), nenhum guia do meio pede a quest, ela não é de classe e o guia
  de lá começa no máximo 4 níveis acima dela (a entrega não fica cinza), a entrega vai para o
  primeiro guia da cadeia — o seguinte também — que pega, entrega ou faz quest naquela zona, capital
  incluída (It's a Secret to Everybody e The New Springs, de Un'Goro, são entregues no guia de
  Felwood; Prayer to Elune, de Searing Gorge, em Darnassus durante Tanaris 44-50; Journey to
  Sentinel Hill no guia de Westfall). O guia de lá a recebe com `haveq` — na capital do começo, junto
  com as quests de lá —, quem depende dela ali leva `completed` (o elfo noturno chega a Elwynn 21-28
  sem passar por Redridge), e a XP conta lá. O `generate_all` para se uma adiada não sair no destino.
  A da zona onde o guia seguinte começa fica no fim deste (Flight to Auberdine). A visita conta
  também a entrega que o guia faz lá e não adia, e a decisão roda de novo até parar de mudar: sem
  isso Darkshore atravessava o mar por The Powers Below, e Stonetalon ia a Ironforge e Stormwind por
  três entregas logo antes de Duskwood 21-28 começar em Stormwind. Noutro continente basta o guia de
  lá não começar acima do topo deste: entregar agora custa o mar e dá a mesma XP.
- **E fica fora:** quem entrega sem spawn no banco (Buying Friendship: Gelkis — a entrega saía sem
  seta); entrega ou objetivo numa zona cuja parte mais fácil está 10+ níveis acima da quest (Of Mice
  and Milk, nível 15, entregava ao Nesingwary entre tigres de 30; classe e a ilha têm transporte);
  falar com NPCs em duas zonas que não são capital (o Mechanical Yeti de Everlook a Gadgetzan e
  Un'Goro); item de objetivo noutro continente (Warsong Supplies ia a Booty Bay); de capital a
  capital do outro continente (Assisting Arch Druid Runetotem: Undercity → Thunder Bluff por 470 de
  XP no meio de Blasted Lands); as Valor Tokens da Argent Dawn (They Call Me "The Rooster" e as
  Mantles of the Dawn) e os Core of Elements de The Elemental Equation, que estão no guia de
  reputação; as amostras de Fuely (A Sample of Slime, ...and a Batch of Ooze), de Undercity com
  objetivo em Felwood e Un'Goro — breadcrumb de capital para outro continente; item que só se
  fabrica, se colhe com profissão ou se compra no leilão: sem mob, objeto nem vendedor com spawn
  (para item de ofício, baú de saque aleatório — Battered Chest, Dented Footlocker — não conta: a
  Silver Bar de Lore for a Price mandava a um baú qualquer de Redridge; tecido cai de humanoide e o
  banco não lista: Linen Cloth não tem lugar, a dica diz "cai de humanoides", e não é de profissão)
  e sem ser recompensa de um pré-requisito dela (Chained Essence of Eranikus vem de The Essence of
  Eranikus), com nível de item acima de 1 e sem ser item de quest (Moonsteel Broadsword, Frost Oil,
  a Thorium Bar de That's Asking A Lot) — ou que só sai de veio de minério, seja qual for (Lesser
  Bloodstone Ore, Incendicite Ore). Quem depende dela fica para quem a fez (`completed`), também
  quando ela entraria como pré-req de outra (Gyro... What? espera Coolant Heads Prevail). Nível de
  item 1 é o que a própria quest faz e fica: Pamela's Doll, montada dos pedaços (a seta vai a eles,
  "Combine Pamela's Doll's Head…"), Resonating Skull, Thunder Applejack. Fica fora também a
  reputação contra Booty Bay (os Bloodsail de Avast Ye, Admiral!: o jogador perde o voo e os
  vendedores de Booty Bay, Gadgetzan, Ratchet e Everlook); a quest que começa por item de mob raro,
  que espera o spawn (Blackmoss the Fetid, Silithid Harvester; no leveling, também o raro elite de
  mundo aberto, Aean Swiftriver; o elite de masmorra fica no guia especial: Scarshield
  Quartermaster, da sintonização de Blackwing Lair); a que pede item ou morte que o banco não tem
  nem o nome acha (as de reputação dos centauros de Desolace no Forever: Mountain of Bones, Outing
  Outcasts; My Little Friends; Stalk With The Earthmother do xamã orc e troll; Khan Jehn, que o
  texto escreve "Khan Jhen", vai pela tabela, e Outcast Necromancers acha o NPC pelo nome) — trazer
  o item que a própria quest dá no aceite (`sourceItem`: "Bring a Timberling Seed") é entrega e
  fica; a sem texto nenhum e com item que o banco não sabe de onde vem (as A Sealed Crate); Arena
  Master (o baú do evento de PvP da arena de Gurubashi); e quest cinza (10+ níveis abaixo de quem
  chega) de que nada depende, sem ser de classe (Journey to Astranaar, 20, mandava de Theramore a
  Astranaar no 35).
- **As sobras vão por lugar.** O que fica para o fim do guia (entrega na capital, objetivo noutra
  zona) segue o que dá para fazer na zona onde o jogador está, do mais perto; acabada a zona, a
  ação mais cedo na ordem das cadeias, no mesmo continente antes; no mesmo lugar, entrega antes de
  pegar. Em ondas, o fim de
  Un'Goro ia Darnassus, Feralas, Darnassus, Winterspring...; trocas de zona nos guias: 647 no
  `main`, 289 agora.
- **A saída da ilha vai com o guia dela.** A quest só de Skyborne que quem recebe a última de
  Zephras dá (Welcome to Azeroth: Denaaris em Dalaran, Alaana em Mulgore) e a cadeia que segue
  (Exploring the Alliance/Horde) fecham o guia da ilha. A da Horda estava em Mulgore 4-10, que o
  Skyborne não segue, e Journey to the Crossroads nunca abria.
- **Tarefa sem objetivo no banco** ("Free 6 Webbed Victims", "Heal 5 Injured Deathguard"): o alvo
  sai do nome no texto ou de `OBJETIVO_MANUAL`; sem alvo, o passo é `note` + `get … |q`, que o addon
  conclui quando o cliente marca a quest completa; a seta vai ao NPC que mora no lugar do texto
  (`OBJETIVO_LUGAR`).
- **Pré-requisito em ciclo** (a própria quest, ou a versão dela de outra raça — "Call of Earth" 1516
  pedia `[1516, 1519, 92466]`) é retirado no import.
- **Skyborne** são as raças 95 (Aliança) e 96 (Horda), máscaras `2^32` e `2^33` (enum do QuestieDB,
  não `2^(id-1)`). Máscara só com esses bits — um ou os dois — sai `only Skyborne`. O token em inglês
  ainda não é público: o `Guide.lua` reconhece a raça pelo id, e o guia inicial dela é Zephras Isle.
  Zona inicial com duas faixas começa pela mais baixa.

## Números (QuestieDB 1.0.6, `QuestV2` do 70245)

| | |
|---|---|
| Guias | 194 (86 de leveling, 108 especiais) |
| Quests distintas em guia | 3710 |
| Quests novas do Forever em guia | **532 de 993** |
| — fora: entrega de Craftsman's Writ | 150 |
| — fora: começam por item ou giver sem posição | 145 |
| — fora: exigem profissão | 86 |
| — fora: outro (entrega sem spawn, zona 10+ níveis acima, item só de profissão...) | 51 |
| — fora: evento/repetível/campo de batalha | 29 |
| `validate_guides.py` — ocorrências | **0** (antes da revisão: 10 bloqueios, 244 pré-req ausentes) |
| Cadeia `next` de cada zona inicial — accept que trava | **0** nos 8 caminhos, toda raça×classe |
| `guide_integrity.py` — passo sem coordenada | 79: item de quest que o banco não sabe de onde vem (páginas de Green Hills of Stranglethorn, Stolen Weapon), sem seta em vez da de quem deu a quest; material de profissão e tecido saem sem seta de propósito, com a dica, e não contam |

`gen_forever.py` imprime essa conta a cada rodada.

## As zonas novas

| zona | areaID / uiMapID | nível | no QuestieDB 1.0.6 |
|---|---|---|---|
| Zephras Isle | 16593 / 2521 | 1-12 | zona inicial da raça nova; **guia nas duas facções** |
| Riverglades | 16591 / 2548 | 36-44 | 181 NPCs com spawn, **nenhuma quest** — fora do beta |
| Mount Hyjal | 616 / 2482 | — | NPCs, nenhuma quest |
| Shen'dralas | 16651 / 2652 | 38-43 | 19 quests; 6 no guia de Desolace da Aliança (1 também no da Horda); 12 sem quem dá posicionado |
| Darkspear Islands | 16606 / 2524 | 30-60 | **Battleground 15v15**; as quests dela ficam fora do leveling |
| City of Dalaran | 16544 / — | 33 | masmorra nova (entrada em Alterac); guia de masmorra |
| Excavation Site: Wetlands | 16732 / — | 28-31 | masmorra nova (entrada em Wetlands); guia de masmorra |
| Ruins of Lordaeron | 16611 / — | 21-22 | masmorra nova; guia de masmorra da Horda |
| The Hall of Thanes | 16919 / — | 15-16 | masmorra nova; guia de masmorra da Aliança |

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
python tools/gen_trainers.py                    # + títulos do cache do cliente (Cache/WDB; LODESTAR_WDB)
python tools/gen_travel.py                      # voos, barcos, zepelins, bonde, serviços
python tools/gen_terrain.py                     # caminho a pé: terreno do CASC local (casc.py)
python tools/gen_subzones.py <pasta do QuestieDB>
python tools/gen_forever.py
python tools/validate_guides.py
python tools/check_special.py                  # masmorras e sintonizações, por raça x classe
python tools/router.py                          # zonas iniciais (#57, #59)
luajit tools/forever-guides.lua
```

Sem argumento, a pasta do QuestieDB é a vizinha do Lodestar (`AddOns/QuestieDB`). O `QuestV2` de
cada build é baixado do wago uma vez e fica em `tools/build/`; build que não existe devolve 404 em
vez de cair em outro. `generate_all.py` e `gen_special.py` refazem os diretórios de guia do zero.

## Em aberto

- **Riverglades e Hyjal.** O QuestieDB 1.0.6 tem os NPCs, não as quests. Entram quando ele tiver —
  ou quando o `/ls scan` colher no lançamento. Em Shen'dralas, 12 das 19 quests esperam quem as dá.
- **`QuestV2` do 70338.** O wago devolvia 503 quando o build entrou; ao voltar, subir `FOREVER` em
  `tools/import_forever.py` e rodar o "Regerar" (as tabelas de voo vêm do mesmo build).
- **Masmorra nova sem mapa.** O QuestieDB não posiciona nada dentro de City of Dalaran, Excavation
  Site, Ruins of Lordaeron e Hall of Thanes: o guia delas lista as quests, mas o chefe sai sem seta,
  e item sem fonte conhecida aponta para quem dá a quest (Fel Infused Blossom → Stormwind). As da
  Aliança em Ruins of Lordaeron começam por item sem fonte e ficam sem guia.
- **Quest de profissão.** Fica fora porque o DSL não tem condição de profissão; com uma (`skill(171)`),
  as "Camping 101" e as entregas de Craftsman's Writ podiam entrar para quem tem a profissão.
- **Pegar quest de capital no começo de um guia de várias raças.** The Barrens 12-20 da Horda
  começava por Thunder Bluff (The Barrens Oases) e Orgrimmar: natural para quem vem de cada uma,
  desvio para quem vem da outra. O "fale com" de capital nesse nível agora é só da raça da capital e
  do Skyborne (`only not Orc not Undead not Troll`); a quest com objetivo segue para todos. Quest
  entre continentes (Thousand Needles → Booty Bay) fica fora.
- **A chegada do Skyborne a Dalaran (Alterac) e o portal para Stormwind** estão no QuestieDB 1.0.5 e
  1.0.6 (Denaaris Stargale e o Skyborne Portal to Stormwind no mesmo ponto) e agora no guia da ilha;
  conferir em jogo que o navio deixa lá.
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
