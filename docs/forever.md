# WoW: Forever — o que o Lodestar faz, e por quê

Beta aberto em 2026-09-17, até 2026-10-21; lançamento em **2026-11-04**. Build corrente
**1.60.1.69913** (`wow_classic_beta`, **Interface 16001**, token de TOC `Camelot`). O beta está
capado no nível 30 e sem raides.

O Lodestar é **Forever e só**. O suporte a TBC/Anniversary saiu na v2.0.0: os guias cujo conteúdo
aquele cliente não tem foram deletados, junto com os módulos de atunação e talento de TBC.

- **É a interface de retail sobre conteúdo vanilla.** O cliente reporta `WOW_PROJECT_ID = 1`, igual
  ao retail — a detecção é pela **faixa de interface 16000–16999**, e só.
- **Secret Values ativos**, mas o que é secreto é estado de **combate** (vida, auras, cast, ameaça).
  Nada em quest, gossip, questline ou mapa devolve valor secreto. Identidade de NPC vem limpa aqui —
  colhemos id e nome de quest giver sem problema. Ainda assim perguntamos antes, via
  `C_Secrets.ShouldUnitIdentityBeSecret`, porque a doc gerada marca `UnitGUID`/`UnitName` com
  predicado condicional e a regra pode apertar.

## O problema: o dado não existe em lugar nenhum

O cliente entrega **ids e mais nada**. `QuestV2` no 69913 tem 6.600 linhas, com o schema inteiro
sendo `ID, UniqueBitFlag, UiQuestDetailsThemeID`. `QuestObjective` e `QuestV2CliTask` **não existem
nesse build** (404 no wago — ao contrário do que o README do ForeverGuide afirma). `QuestPOIBlob`
tem 54 linhas e `QuestPOIPoint`, 99. Título, nível, zona, giver e objetivo são **servidor**.

Quantas quests são novas depende da baseline, e é preciso dizer qual:

| baseline | quantas |
|---|---|
| ids ≥ 30000 no `QuestV2` do 69913 | **2.844** |
| ids que o `QuestV2` do Classic Era (1.15.9.69722) não tem | **1.795** |

Este documento usa **2.844**. (A figura "2.824" que circulou antes não é reproduzível de fonte
nenhuma e foi retirada.)

E ninguém resolveu isso: o branch `forever` do QuestieDB tem 4.244 quests com id máximo **9.665** —
zero conteúdo novo. Nada vai ser dataminado até o lançamento, porque não há o que minerar.

## As zonas novas

| zona | areaID / uiMapID | nível | o que se sabe |
|---|---|---|---|
| Zephras Isle | 16593 / 2521 | 1-12 | zona inicial da raça nova (**Skyborne**); é a única alcançável no beta |
| Riverglades | 16591 / 2548 | 36-44 | fora do beta; subzonas nomeadas no `AreaTable` |
| Shen'dralas | 16651 / 2652 | — | fora do beta |
| Darkspear Islands | 16606 / 2524 | 30-60 | **Battleground 15v15**, não zona de quest |

Mount Hyjal (uiMapID 2482) também volta. As subzonas de Riverglades já estão legíveis no
`AreaTable` do build: Farholde Keep, Sunnyglade, Powderfuse Port, Bolder'ok, Twilight's Shroud,
Wheeler's Grange, Eastwind Shore, Terral's Watch e outras.

**O beta não é a janela.** Riverglades é 36-44 e Shen'dralas nem está no beta; o cap é 30. Quem
estiver em campo com coletor ligado no dia 4 de novembro é quem terá o dado.

## De onde vem o dado

Duas fontes, as duas limpas.

**1. `Cache/WDB/*.wdb` — escrito pelo próprio cliente.** `RequestLoadQuestByID` faz o servidor
mandar o registro completo, e o cliente grava em disco. `questcache.wdb`, `creaturecache.wdb` e
`gameobjectcache.wdb` são exatamente o tripé que o roteador consome. Numa sessão curta de teste o
`questcache` tinha **23 quests, 8 delas exclusivas do Forever**, com título, texto de objetivo e
descrição legíveis. Formato: header de 24 bytes, depois `id` + `size` + payload. Lido por
`tools/wdb.py`.

**2. `/ls scan` (`ForeverScan.lua`) — o coletor em jogo.** Para o que o WDB não tem: coordenada.
Pergunta ao servidor por id e, enquanto se joga, guarda quem dá e quem entrega cada quest com id de
NPC e coordenada, os objetivos, e o waypoint que o próprio servidor aponta.

### O bug que obriga o desenho

**SavedVariables não volta no login neste cliente.** A tabela nasce vazia, então o logout sobrescreve
o arquivo com apenas aquela sessão. Reproduzido aqui: uma sessão gravou 7 quests de Mulgore; a
seguinte gravou 13 de Tirisfal e as 7 sumiram.

Por isso `tools/import_scan.py` varre **muitos** arquivos e mescla de forma aditiva, incluindo os
`.bak` que o cliente mantém — e por isso o WDB, que o addon não escreve, é o canal mais confiável
que existe neste cliente.

### O que não raspamos

`tools/fetch_forever.py` existiu e **foi removido**. A ToU da Fanbyte (o "Terms of Use" no rodapé da
Wowhead) proíbe baixar conteúdo por qualquer mecanismo que não seja navegador, e o `robots.txt`
deles bloqueia coletor automático por nome. Não dá pra semear dado aberto com aquilo. Também não
ingerimos o RestedXP: é CC BY-NC-SA, e o share-alike contaminaria tudo que derivasse.

## Regerar num build novo

```
python tools/gen_forever.py <build_forever> <build_anniversary>
python tools/wdb.py <pasta Cache/WDB>
python tools/import_scan.py
python tools/import_forever.py
luajit tools/forever-guides.lua
```

O gerador baixa e guarda cada `QuestV2` em `tools/build/`; build que não existe devolve 404 em vez
de cair em outro. Guia que ficar sem conteúdo é **listado para deleção** — não existe mais lista de
runtime escondendo guia.

## Em aberto

- **Gerar a biblioteca de guias do Forever.** `build/forever/` já roteia (Mulgore saiu com 45 quests
  usando coordenada colhida em jogo), mas os 174 guias que sobreviveram ainda são rota vanilla. Eles
  ficam até haver substituto — apagá-los antes deixaria o addon sem nada.
- **Zephras Isle / Skyborne.** Raça nova (race IDs 95/96, máscaras `4294967296`/`8589934632` — não é
  `2^(id-1)`), zona inicial inteira, e nenhum guia nosso.
- **Zonas novas no `zones.json`.** Zona ausente dali não vira guia nunca. Saem do `AreaTable`/`UiMap`
  do build, que são legíveis.
- **Ids-alvo de objetivo.** Nenhuma API expõe (`GetQuestObjectives` dá texto e tipo, nunca o id). O
  registro do WDB tem — é o que `tools/wdb.py` persegue.
- **Níveis de montaria**, quando o jogo disser quais são. Avisar chutando é pior que calar.
- **`ChehulNet.lua` na VERSION 7 nos quatro addons da família.** A cópia do Lodestar e a do GuildOS
  já pulam GUID secreto; PartyLens e ProfessionHelper ainda não. Corrigir nos quatro e subir para 8
  é trabalho de família, fora deste repositório.
