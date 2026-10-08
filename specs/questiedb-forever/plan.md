# Plano — Rotas do Forever a partir do QuestieDB

- **Spec:** `specs/questiedb-forever/spec.md` · **Data:** 2026-10-07

## Abordagem

O roteador já consome um JSON intermediário (`quests/npcs/objects/items/zones.json`). Em vez de
ensinar o roteador um banco novo, um leitor transforma o QuestieDB nesse mesmo JSON e o resto do
pipeline roda como está, apontado para `tools/build/forever/`.

```
QuestieDB_Forever.toc ──questiedb.py──┐
build/scan.json (jogo) ───────────────┴─import_forever.py─► build/forever/*.json
                                                             │
        generate_all.py · gen_special.py · gen_prereq.py ◄───┤
        gen_zonedata.py · gen_trainers.py · gen_subzones.py  │
        gen_forever.py ◄──────────────────────────────────────┘
```

## Decisões

- **Ler o `.toc` direto, sem rodar Lua.** Cada valor é base64 de CBOR (o cabeçalho de ids é zlib);
  um decodificador CBOR de ~40 linhas evita dependência nova (P4: o mínimo que funciona). As
  tabelas Lua viram dict 1-based para reaproveitar os builders do `build_intermediate.py` sem
  tocar neles.
- **Coordenada sem projeção.** Conferido: os spawns do QuestieDB do Forever já estão no sistema
  deste cliente (Mulgore 46.88/61.19 contra 46.86/61.13 do scan; o Anniversary dá 47.76/57.53).
  O `EraToForever` do próprio QuestieDB é para dado de Era, não para este.
- **Remoção = Anniversary tem e Forever não**, o mesmo critério do `gen_forever.py`. O `QuestV2`
  não lista quests repetíveis, então "ausente no Forever" sozinho esconderia passo bom.
- **Zonas do próprio QuestieDB** (`areaIdToUiMapId` + `dungeons.lua` do Forever): entram Zephras
  Isle, Riverglades, Shen'dralas e Hyjal, e saem as de Outland do `ZoneData.lua`.
- **Skyborne pelo id da raça** (95/96, terceiro retorno de `UnitRace`), não pelo token em inglês,
  que ainda não é público. Máscaras: 2^32 = Aliança, 2^33 = Horda (enum do QuestieDB).
- **Regerar limpa o diretório.** O `write_xml` preservava include órfão de guia que mudou de
  título; agora só preserva arquivo que existe.
- **O gerador passa a ser versionado** (exceções no `.gitignore`): sem ele, quem revisa não
  reproduz os guias. Continua fora do pacote (`.pkgmeta` ignora `tools`).

## Testes (P2)

- `python tools/questiedb.py --demo`: CBOR com bytes conhecidos + campos de quest/NPC/zona reais.
- `luajit tools/forever-guides.lua`: condição `Skyborne` e guia inicial por id de raça.
- `python tools/validate_guides.py` / `guide_integrity.py` sobre os guias regerados.

## Rollout

Release normal (release-please). Volta atrás com revert do PR: os guias são arquivos gerados.
