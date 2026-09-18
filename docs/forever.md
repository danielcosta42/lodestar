# WoW: Forever — o que muda para o Lodestar

Beta aberto em 2026-09-17 (`wow_classic_beta`, build **1.60.1.69893**, **Interface 16001**), até
2026-10-21; lançamento em 2026-11-04. O beta está capado no nível 30 e sem raids.

O levantamento do cliente — interface, Secret Values, APIs que sumiram, flavor no CurseForge — está
em `GuildOS/docs/forever/README.md` e não é repetido aqui. O que importa para um addon de guias:

- **É a interface de retail sobre conteúdo vanilla.** Game type `camelot`; nem `classic` nem
  `mainline`, então os shims de Classic não carregam.
- **Secret Values ativos.** Identidade de unidade restrita e chat em lockdown chegam como valor
  secreto: comparar, formatar ou fatiar estoura.
- **Nada do executável que o Lodestar chama sumiu.** Os 275 globais que o addon usa foram conferidos
  contra `WowB.exe` e `WowClassic.exe`: só `GetNumTalentTabs`, `GetNumTalents`, `GetQuestLogIndexByID`,
  `IsQuestComplete` e `UnitCharacterPoints` não estão no do Forever, e os quatro últimos já tinham
  caminho alternativo. **O que quebra aqui é conteúdo, não API.**

## As quests

Diff da tabela `QuestV2` dos dois builds (wago.tools, presa ao build). Uma quest só conta como
removida quando o Anniversary **tem** e o Forever **não tem**; id ausente nas duas tabelas é ruído
e fica de fora, para nunca esconder um passo que funciona.

| | |
|---|---|
| Quests citadas pelos guias | 5.344 |
| Removidas no Forever | 1.759 |
| — em guias que o cliente perdeu inteiros (Outland, Quel'Thalas, Azuremyst/Bloodmyst) | 1.379 |
| — soltas, dentro de rotas que seguem valendo | **380** |
| Quests que só o Forever tem (conteúdo novo) | **2.824** |

Em número de arquivos: **106 guias dos 280 não têm conteúdo no Forever**, sendo 24 de leveling (todo
o Outland, mais Deadwind Pass, Ilha de Quel'Danas e as zonas iniciais de blood elf e draenei — o
`ChrRaces` do build tira o bit de jogável das duas raças).

As rotas 1-60 das oito raças vanilla sobrevivem quase inteiras: das 380 quests soltas, a maior parte
é conteúdo que a Blizzard adicionou **depois** do vanilla e o Forever não herdou — o hub de Dustwallow
Marsh do 2.3 (81 quests entre os dois guias da zona) responde por boa parte. O resto é disperso:
Ashenvale 9, Barrens 7, Tirisfal 7, Redridge 6, e caudas de 1 a 5 em outras zonas.

## O que o addon faz hoje

- `Compat.lua` decide o cliente pelo número de interface (o Forever não expõe `WOW_PROJECT_ID`
  próprio nem API de detecção) e concentra Secret Values, leitura de GUID e o hook de tooltip.
- `ForeverData.lua` (gerado) lista os guias sem conteúdo e as quests removidas. No Forever, guia sem
  conteúdo não aparece na biblioteca, não é escolhido pelo autopilot, é **pulado no encadeamento** e
  não é oferecido pelo painel de raides.
- **O passo sai inteiro, não só o goal da quest.** Um passo é pelo que ele serve: tirar só o `accept`
  de "falar com o NPC / pegar a quest / ir até a coordenada" deixaria um `talk` sem coordenada que
  nunca completa — e o avanço automático pararia ali, que é justamente o que isto evita. O passo só
  fica se sobrar algo que se conclua sozinho (um `ding`, um `collect` com conta própria, um `goto`).
  Nos 280 guias isso tira **8,5% dos passos** (35.739 no Anniversary) e **zero** passos sem saída
  sobram nos dois clientes. O guia que fica sem passo nenhum não abre: avisa e não vira aba.
- O array cru de passos (de onde o `Prereq` colhe cadeias para outros guias) nunca é mutado — o passo
  que muda é copiado. Sem isso a injeção passaria a depender da ordem em que os guias foram abertos,
  e índice de passo e goal marcado são salvos por nome: mudariam de sessão para sessão.
- Nível máximo vem do cliente (70 no Anniversary; o que o Forever disser — 30 no beta).
- Avisos de montaria só no Anniversary: os níveis do Forever ainda não são públicos e chutar é pior
  que calar.
- Painel de talentos fica quieto no Forever (lá é `C_ClassTalents`/`C_Traits`, e as builds do addon
  são de TBC).

No Anniversary nada muda: as duas listas ficam desligadas e os guias são os mesmos de sempre.

## Em aberto

- **As 2.824 quests novas não têm rota.** Nome, objetivo e coordenada delas não estão em DB2 (são do
  servidor) e o Questie, de onde o gerador tira os dados, ainda não cobre o Forever. É trabalho de
  conteúdo com o jogo aberto, não de código.
- Níveis de montaria e leitura de talentos, quando o jogo disser quais são.
- O corte por proporção (`DEAD_RATIO`, 80%) é heurística; as duas zonas iniciais de TBC entram por
  uma lista explícita porque a tabela de quests não sabe que a raça não existe.
- **`ChehulNet.lua` continua na VERSION 7 nos quatro addons da família.** A cópia do Lodestar e a do
  GuildOS já pulam GUID secreto; PartyLens e ProfessionHelper ainda não. O version-guard reusa a
  primeira instância carregada com versão ≥ 7, então hoje quem ganha é a pasta que ordena antes
  (GuildOS/Lodestar) — por sorte, a corrigida. Corrigir nos quatro e subir para 8 é trabalho de
  família, fora deste repositório.

## Regerar num build novo

```
python tools/gen_forever.py <build_forever> <build_anniversary>
luajit tools/forever-guides.lua
```

O gerador baixa e guarda cada `QuestV2` em `tools/build/`; build que não existe devolve 404 em vez
de cair em outro. O teste roda os arquivos de verdade sob os dois clientes stubados.
