"""Lê o QuestieDB do Forever e devolve o banco no formato do roteador.

O QuestieDB (o addon que o Questie 12 exige) guarda o banco inteiro como
metadado do próprio .toc, em modo "baked":

    ## X-Quest-IDS: <base64 de zlib de CBOR>    lista de ids
    ## X-Quest-7-S: <base64 de CBOR>             campos escalares + "p", a máscara
                                                 de quais campos-tabela existem
    ## X-Quest-7-2: <base64 de CBOR>             um campo-tabela (startedBy)
    ## X-Npc-844-8: ~9~                          valor longo: 9 partes, -1 a -9,
                                                 concatenadas antes do base64

O número do campo é o índice do Questie (questKeys/npcKeys/...), o mesmo que o
build_intermediate.py já entende — os builders dele servem sem mudança, desde
que tabela Lua chegue como dict 1-based, que é o que `lua()` entrega.

As coordenadas já estão no sistema do Forever. Conferido contra o scan em jogo,
Zarlman Two-Moons em Mulgore: 46.88/61.19 aqui, 46.86/61.13 no cliente, e
47.76/57.53 no banco do Anniversary. Não reprojetar.

    python questiedb.py --demo [pasta do QuestieDB]
"""
import base64
import json
import os
import re
import struct
import sys
import zlib

from build_intermediate import build_npcs, build_objects, build_quests

HERE = os.path.dirname(os.path.abspath(__file__))
# O QuestieDB fica ao lado do Lodestar, na pasta AddOns do cliente do Forever.
PADRAO = os.path.join(HERE, "..", "..", "QuestieDB")
TOC = "QuestieDB_Forever.toc"
ZONAS = os.path.join("support", "Forever", "Zones")

LINHA = re.compile(r"## (X-[^:]+): (.*)")
CHAVE = re.compile(r"X-(Quest|Npc|Object|Item)-(\d+)-(\d+|S)")
ZONA = re.compile(r"^\s*\[(\d+)\]\s*=\s*(\d+),\s*--\s*(.+?)\s*$")
MASMORRA = re.compile(r'^\s*\[(\d+)\]\s*=\s*\{"([^"]+)",\s*(nil|\{[\d,\s]*\})')
# Áreas sintéticas do override, que o arquivo do Forever só descreve em comentário.
# Spawn de NPC de divisa vem no mapa do continente (Overmaster Pyron, 10074): sem
# nome, o passo sairia "goto Zone10074" e a seta não acharia o mapa. Os nomes são
# os do banco do Anniversary, os mesmos que o ZoneData.lua sempre teve.
SINTETICAS = {10073: "Kalimdor - the continent map", 10074: "Eastern Kingdoms - the continent map",
              10089: "Azeroth - the world map", 2257: "Deeprun Tram", 2917: "Hall of Legends",
              2918: "Champions' Hall"}


def cbor(b, i=0):
    """(valor, próximo índice). Só o que o C_EncodingUtil.SerializeCBOR emite.
    String Lua é byte string (tipo 2) — sai como texto UTF-8."""
    ib = b[i]
    tipo, info = ib >> 5, ib & 31
    i += 1
    if tipo == 7:
        if info in (20, 21):
            return info == 21, i
        if info in (25, 26, 27):
            fmt = {25: ">e", 26: ">f", 27: ">d"}[info]
            n = struct.calcsize(fmt)
            return struct.unpack(fmt, b[i:i + n])[0], i + n
        if info == 24:                             # valor simples de 1 byte
            return None, i + 1
        return None, i                             # null, undefined, simples sem significado
    if info < 24:
        n = info
    elif info == 31:
        n = None                                   # tamanho indefinido
    else:
        tam = 1 << (info - 24)
        n = int.from_bytes(b[i:i + tam], "big")
        i += tam
    if tipo == 0:
        return n, i
    if tipo == 1:
        return -1 - n, i
    if tipo in (2, 3):
        if n is None:                              # string em pedaços, até o 0xFF
            partes = []
            while b[i] != 0xFF:
                parte, i = cbor(b, i)
                partes.append(parte)
            return "".join(partes), i + 1
        return b[i:i + n].decode("utf-8", "replace"), i + n
    if tipo == 6:                                  # tag: o valor é o que importa
        return cbor(b, i)
    if tipo not in (4, 5):
        raise ValueError("CBOR tipo %d no byte %d" % (tipo, i - 1))
    out = [] if tipo == 4 else {}
    # conta pares, não len(out): true e 1 são chaves distintas em Lua e a mesma no dict
    lidos = 0
    while (b[i] != 0xFF) if n is None else (lidos < n):
        v, i = cbor(b, i)
        if tipo == 4:
            out.append(v)
        else:
            out[v], i = cbor(b, i)
        lidos += 1
    return out, (i + 1 if n is None else i)


def lua(v):
    """Tabela Lua do jeito que o parse_lua devolve: dict 1-based, sem buraco."""
    if isinstance(v, list):
        return {k + 1: lua(x) for k, x in enumerate(v) if x is not None}
    if isinstance(v, dict):
        return {k: lua(x) for k, x in v.items() if x is not None}
    return v


def le_toc(caminho):
    """As chaves X- do metadado, mais a versão do QuestieDB em "Version"."""
    meta = {}
    with open(caminho, encoding="utf-8") as fh:
        for linha in fh:
            m = LINHA.match(linha)
            if m:
                meta[m.group(1)] = m.group(2).rstrip("\r\n")
            elif linha.startswith("## Version:"):
                meta["Version"] = linha.split(":", 1)[1].strip()
    return meta


def bruto(meta, chave):
    """Os bytes guardados na chave, juntando as partes de um valor longo (~N~)."""
    v = meta.get(chave)
    if v is None:
        return None
    if v.startswith("~"):
        v = "".join(meta["%s-%d" % (chave, j)] for j in range(1, int(v.strip("~")) + 1))
    return base64.b64decode(v)


def valor(meta, chave):
    b = bruto(meta, chave)
    return None if b is None else cbor(b)[0]


def entidades(meta):
    """{"Quest": {id: {campo: valor}}, "Npc": ..., ...} — linha escalar mais os
    campos-tabela que a máscara "p" diz que existem."""
    tabelas = {}
    for chave in meta:
        m = CHAVE.fullmatch(chave)                 # parte de valor longo tem 4 traços: fica fora
        if m and m.group(3) != "S":
            tabelas.setdefault((m.group(1), int(m.group(2))), []).append(int(m.group(3)))
    out = {}
    for ent in ("Quest", "Npc", "Object", "Item"):
        ids = cbor(zlib.decompress(bruto(meta, "X-%s-IDS" % ent)))[0]
        linhas = out[ent] = {}
        for i in ids:
            row = lua(valor(meta, "X-%s-%d-S" % (ent, i)) or {})
            presenca = row.pop("p", 0)
            for campo in tabelas.get((ent, i), ()):
                if presenca >> (campo - 1) & 1:
                    row[campo] = lua(valor(meta, "X-%s-%d-%d" % (ent, i, campo)))
            linhas[i] = row
    return out


def zonas(pasta):
    """areaID -> {uiMapId, name}, do próprio QuestieDB do Forever.

    Zona de topo vem do areaIdToUiMapId ("-- Zephras Isle"); subzona ("-- Thendal
    Grove -> Zephras Isle") fica de fora — spawn é indexado pela zona-pai, e o
    SubZones.lua resolve o resto. Masmorra está no override sem nome
    ("Referenced dungeon area"): o nome vem do dungeons.lua, com o sufixo
    " - Dungeon" que o gen_special usa para reconhecê-la."""
    base = os.path.join(pasta, ZONAS)
    with open(os.path.join(base, "areaIdToUiMapId.lua"), encoding="utf-8") as fh:
        texto = fh.read()
    with open(os.path.join(base, "dungeons.lua"), encoding="utf-8") as fh:
        masmorras = fh.read().splitlines()
    override, principal = texto.split("ZoneDB.private.areaIdToUiMapId =")
    uimap, nomes = {}, {}
    for parte, e_override in ((principal, False), (override, True)):
        for linha in parte.splitlines():
            m = ZONA.match(linha)
            if not m or int(m.group(1)) == 0:
                continue
            area, nome = int(m.group(1)), m.group(3)
            uimap[area] = int(m.group(2))          # override vence (como no Questie)
            if not e_override and " -> " not in nome and not nome.startswith("Not Used"):
                nomes[area] = nome
    # Id alternativo que cai no mapa de uma zona de topo é subzona a céu aberto
    # (Gnomeregan 133 = New Tinkertown, em Dun Morogh): não é a masmorra.
    abertos = {uimap[a] for a in nomes} - {0}
    for linha in masmorras:
        m = MASMORRA.match(linha)
        if not m:
            continue
        nome = m.group(2) + " - Dungeon"
        for area in [int(m.group(1))] + [int(a) for a in re.findall(r"\d+", m.group(3))]:
            if uimap.get(area) and uimap[area] not in abertos:
                nomes.setdefault(area, nome)
    for area, nome in SINTETICAS.items():
        if area in uimap:
            nomes[area] = nome
    return {a: {"uiMapId": uimap[a], "name": n} for a, n in nomes.items()}


def itens(raw, quests):
    """De onde vem cada item que alguma quest pede ou que começa uma quest."""
    def ids(v):
        return [x for x in (v.values() if isinstance(v, dict) else []) if isinstance(x, int)]
    precisa = set()
    for q in quests.values():
        precisa.update(q["objItems"])
        precisa.update(q["startItems"])
    out = {}
    for iid in sorted(precisa):
        it = raw.get(iid)
        if not it:
            continue
        e = {"name": it.get(1)}
        npc, obj, ven = ids(it.get(2)), ids(it.get(3)), ids(it.get(14))
        if npc:
            e["npc"] = npc[:3]
        if obj:
            e["obj"] = obj[:3]
        if ven:
            e["vendor"] = ven[:2]
        out[iid] = e
    return out


def carrega(pasta=PADRAO):
    """O banco no formato intermediário: quests, npcs, objects, items, zones,
    com chave string (como o JSON que o roteador lê) e a versão do QuestieDB."""
    meta = le_toc(os.path.join(pasta, TOC))
    raw = entidades(meta)
    quests = build_quests(raw["Quest"])
    banco = {
        "quests": quests,
        "npcs": build_npcs(raw["Npc"]),
        "objects": build_objects(raw["Object"]),
        "items": itens(raw["Item"], quests),
        "zones": zonas(pasta),
    }
    banco["versao"] = meta.get("Version", "?")
    # Ida e volta pelo JSON: chave vira string em todos os níveis, como no
    # arquivo que o roteador lê (spawn de zona 215 é "215", não 215).
    return json.loads(json.dumps(banco))


def demo(pasta=PADRAO):
    # CBOR com bytes conhecidos: {1: "ab", "p": 3} e [1, nil, -2, 1.5]
    assert cbor(bytes.fromhex("a201426162417003"))[0] == {1: "ab", "p": 3}
    assert lua(cbor(bytes.fromhex("8401f621f93e00"))[0]) == {1: 1, 3: -2, 4: 1.5}
    # true e 1 colidem no dict: o mapa de 2 pares não pode ler além do fim
    assert cbor(bytes.fromhex("a2f56161016162")) == ({True: "b"}, 7)
    # string em pedaços (5f ... ff), inteiro de 4 bytes, negativo de 1 byte, float32
    assert cbor(bytes.fromhex("5f41614162ff"))[0] == "ab"
    assert cbor(bytes.fromhex("1a00030d40"))[0] == 200000 and cbor(bytes.fromhex("3818"))[0] == -25
    assert cbor(bytes.fromhex("fa3fc00000"))[0] == 1.5

    b = carrega(pasta)
    q, npcs, zonas_ = b["quests"], b["npcs"], b["zones"]

    k = q["7"]                                        # Kobold Camp Cleanup
    assert k["name"] == "Kobold Camp Cleanup", k["name"]
    assert k["startNpcs"] == [197] and k["endNpcs"] == [197], k
    assert k["objCreatures"] == [6] and k["preSingle"] == [783], k
    assert k["faction"] == "A" and k["zoneOrSort"] == 9, k     # Northshire Valley
    assert npcs["197"]["spawns"] == {"12": [[48.92, 41.61]]}, npcs["197"]

    w = q["94489"]                                    # The Wounds of Betrayal
    assert w["zoneOrSort"] == 16593 and w["startNpcs"] == [257944], w
    assert w["faction"] == "AH", w["faction"]         # raças 0: as duas facções

    s = q["92514"]                                    # Welcome to Shen'dar Village
    assert s["faction"] == "H", s["faction"]          # Horda + Skyborne da Horda (2^33)

    assert zonas_["16593"] == {"uiMapId": 2521, "name": "Zephras Isle"}, zonas_["16593"]
    assert zonas_["2017"]["name"] == "Stratholme - Dungeon", zonas_["2017"]
    assert "16622" not in zonas_, "subzona virou zona"
    assert zonas_["10074"] == {"uiMapId": 1415, "name": "Eastern Kingdoms - the continent map"}
    sem_nome = [i for i, e in npcs.items() if (e["questStarts"] or e["questEnds"]) and not e["name"]]
    assert not sem_nome, "npc de quest sem nome: %s" % sem_nome[:5]

    novas = [i for i in q if int(i) >= 30000]
    print("ok: QuestieDB %s — %d quests (%d novas), %d npcs, %d objetos, %d itens, %d zonas"
          % (b["versao"], len(q), len(novas), len(npcs), len(b["objects"]), len(b["items"]),
             len(zonas_)))
    return b


if __name__ == "__main__":
    args = [a for a in sys.argv[1:] if a != "--demo"]
    demo(args[0] if args else PADRAO)
