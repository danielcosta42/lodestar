"""Decodifica os caches WDB do cliente (Cache/WDB/<locale>) para JSON.

O cliente grava ali o que o SERVIDOR mandou: título, objetivos, descrição e —
o que nenhuma API de addon expõe — o ID e a quantidade de cada alvo de objetivo
(criatura/objeto/item). No WoW: Forever esse é o único canal de dados: os DB2
só trazem o ID da quest e o SavedVariables não persiste.

Saída no mesmo formato que o import_forever.py/router.py já consomem:
  {"quests": {id: {...}}, "npcs": {id: {...}}, "objects": {id: {...}}}

    python tools/wdb.py [pasta-do-WDB] [-o saida.json]
    python tools/wdb.py --demo        # autoteste contra os caches locais

Formato do arquivo (verificado no build 69913, enUS):
  cabeçalho de 24 bytes: magic(4, ao contrário), build, locale(4, ao contrário),
  3 uint32; depois registros `id uint32 | tamanho uint32 | payload`, até id ou
  tamanho zerado.
"""
import json
import os
import struct
import sys

CABECALHO = 24
# magic gravado ao contrário: WQST/WMOB/WGOB
TIPOS = {b"TSQW": "quests", b"BOMW": "npcs", b"BOGW": "objects"}

# ---------------------------------------------------------------------------
# quest: offsets fixos do payload (build 69913)
# ---------------------------------------------------------------------------
Q_NIVEL = 8             # questLevel  (745=8, 96605=6: confere)
Q_NIVEL_MIN = 16        # nível mínimo p/ pegar; <= questLevel nos 23 registros
Q_ZONA = 24             # zoneOrSort: >0 = área, <0 = categoria (QuestSort)
Q_PROXIMA = 36          # nextInChain (356->99156, 772->773, 405->357...)
Q_SPELLS = 64           # quantos QuestCompleteDisplaySpell (12 bytes cada)
Q_RACAS = 440           # AllowableRaces, uint64
Q_N_OBJETIVOS = 436
Q_OBJETIVOS = 488       # início dos objetivos, deslocado por Q_SPELLS
# tamanhos (em bits) das 9 strings gravadas no fim do registro, nesta ordem:
# título, texto do objetivo, descrição, descrição de área, 4 de retrato, log.
Q_BITS_TEXTO = (9, 12, 12, 9, 10, 8, 10, 8, 11)
# QuestObjective.Type -> campo do schema. Os demais tipos (3=falar, 14=critério,
# 15=barra de progresso...) ficam só em "objectives": o roteador não sabe usá-los.
OBJ_CAMPO = {0: "objCreatures", 1: "objItems", 2: "objObjects"}

# bits de raça do cliente moderno 1..11 = os mesmos do RACE_BIT do router.py
MASCARA_RACA = 0x7FF
HORDA = 2 | 16 | 32 | 128 | 256 | 512          # Orc Undead Tauren Troll Gobl BElf
ALIANCA = 1 | 4 | 8 | 64 | 1024                # Human Dwarf NElf Gnome Draenei

# npc: nome com `uint32 em +4` bytes (contando o \0) a partir de +15
NPC_TAM, NPC_NOME = 4, 15
# gameobject: type uint32, displayID uint32, depois os nomes terminados em \0
OBJ_NOME = 8

AQUI = os.path.dirname(os.path.abspath(__file__))
# .../<cliente>/Interface/AddOns/Lodestar/tools -> .../<cliente>/Cache/WDB
PADRAO = os.path.normpath(os.path.join(AQUI, "..", "..", "..", "..", "Cache", "WDB"))
SAIDA = os.path.join(AQUI, "build", "wdb.json")
DEMO = r"E:\World of Warcraft\_classic_beta_\Cache\WDB\enUS"


# ---------------------------------------------------------------------------
# framing (igual nos três caches)
# ---------------------------------------------------------------------------
def registros(dados):
    """Gera (id, payload) de cada registro do arquivo."""
    pos = CABECALHO
    while pos + 8 <= len(dados):
        ident, tam = struct.unpack_from("<II", dados, pos)
        if not ident or not tam or pos + 8 + tam > len(dados):
            break
        yield ident, dados[pos + 8:pos + 8 + tam]
        pos += 8 + tam


def le_bits(p, pos, larguras):
    """Lê campos de bits MSB-first a partir do byte `pos` (ByteBuffer do WoW)."""
    valores, bit = [], 0
    for w in larguras:
        v = 0
        for _ in range(w):
            v = (v << 1) | ((p[pos + (bit >> 3)] >> (7 - (bit & 7))) & 1)
            bit += 1
        valores.append(v)
    return valores


# ---------------------------------------------------------------------------
# quest
# ---------------------------------------------------------------------------
def objetivos(p, pos, quantos):
    """(lista de objetivos, offset onde a lista acaba).

    Cada objetivo tem 41 bytes fixos — id(4) tipo(4) índice(1) alvo(4) qtd(4) e
    mais 4 uint32 que não decodifiquei (flags; um deles é 32 em todo registro) —
    seguidos de 4 bytes por efeito visual, do tamanho da descrição (8 bits + 1
    de padding = 2 bytes) e da descrição.
    """
    saida = []
    for _ in range(quantos):
        tipo = struct.unpack_from("<i", p, pos + 4)[0]
        alvo, qtd = struct.unpack_from("<ii", p, pos + 9)
        fim = pos + 41 + 4 * struct.unpack_from("<i", p, pos + 33)[0]
        n = p[fim]
        saida.append({"type": tipo, "id": alvo, "amount": qtd,
                      "text": p[fim + 2:fim + 2 + n].decode("utf-8", "replace")})
        pos = fim + 2 + n
    return saida, pos


def parse_quest(p):
    """Um registro do questcache -> entrada no formato do import_forever.py."""
    n = struct.unpack_from("<i", p, Q_N_OBJETIVOS)[0]
    inicio = Q_OBJETIVOS + 12 * struct.unpack_from("<i", p, Q_SPELLS)[0]
    objs, fim = objetivos(p, inicio, n)

    tam = le_bits(p, fim, Q_BITS_TEXTO)
    corpo = fim + 12                       # 89 bits de tamanhos -> 12 bytes
    if sum(tam) != len(p) - corpo:
        # o parse dos objetivos tem que cair exatamente no bloco de textos;
        # se não caiu, o layout mudou e qualquer campo daqui seria lixo.
        raise ValueError("textos não fecham (%d != %d)" % (sum(tam), len(p) - corpo))
    textos, o = [], corpo
    for t in tam:
        textos.append(p[o:o + t].decode("utf-8", "replace"))
        o += t

    racas = struct.unpack_from("<Q", p, Q_RACAS)[0] & MASCARA_RACA
    faccao = "AH"
    if racas and not racas & ALIANCA:
        faccao = "H"
    elif racas and not racas & HORDA:
        faccao = "A"
    proxima = struct.unpack_from("<i", p, Q_PROXIMA)[0]

    entrada = {
        "name": textos[0] or None,
        "reqLevel": struct.unpack_from("<i", p, Q_NIVEL_MIN)[0],
        "questLevel": struct.unpack_from("<i", p, Q_NIVEL)[0],
        # só emite a máscara quando é uma raça única: é assim que o router a lê.
        "races": racas if bin(racas).count("1") == 1 else 0,
        "classes": 0,
        "faction": faccao,
        # ponytail: o WDB não traz giver/ender nem coordenada — o cliente só
        # cacheia a quest, não quem a entrega. Estes campos ficam vazios de
        # propósito; quem preenche é o Questie/Wowhead ou um scan no jogo.
        "startNpcs": [], "startObjects": [], "startItems": [],
        "endNpcs": [], "endObjects": [],
        "preSingle": [], "preGroup": [], "exclusiveTo": [],
        "nextInChain": proxima or None,
        "zoneOrSort": struct.unpack_from("<i", p, Q_ZONA)[0],
        # ponytail: specialFlags do Questie é campo do emulador, não do cliente.
        # O Flags do pacote (offset 100) é outra coisa; deixar 0 é o seguro.
        "specialFlags": 0,
        "objCreatures": [], "objObjects": [], "objItems": [],
        "objText": [t for t in [textos[1]] + [o["text"] for o in objs] if t],
        "repReward": [],
        "details": textos[2],              # o que o NPC fala ao oferecer
        "objectives": objs,                # alvo + quantidade, por objetivo
    }
    for obj in objs:
        campo = OBJ_CAMPO.get(obj["type"])
        if campo and obj["id"] not in entrada[campo]:
            entrada[campo].append(obj["id"])
    return entrada


def parse_npc(p):
    n = struct.unpack_from("<I", p, NPC_TAM)[0]
    return p[NPC_NOME:NPC_NOME + max(0, n - 1)].decode("utf-8", "replace")


def parse_objeto(p):
    return p[OBJ_NOME:p.find(b"\0", OBJ_NOME)].decode("utf-8", "replace")


def entrada_alvo(nome):
    """Catálogo de NPC/objeto no formato que o router.py espera (sem spawn:
    o cache não tem coordenada nenhuma)."""
    return {"name": nome or None, "spawns": {}, "zoneID": 0,
            "questStarts": [], "questEnds": [], "faction": None}


# ---------------------------------------------------------------------------
# pasta inteira
# ---------------------------------------------------------------------------
def decodifica(pasta):
    """Lê todo .wdb da pasta (ou da subpasta de locale) e devolve o JSON."""
    arquivos = [os.path.join(pasta, f) for f in sorted(os.listdir(pasta))
                if f.lower().endswith(".wdb")]
    if not arquivos:                        # WDB/ com subpastas de locale
        for sub in sorted(os.listdir(pasta)):
            p = os.path.join(pasta, sub)
            if os.path.isdir(p):
                arquivos += [os.path.join(p, f) for f in sorted(os.listdir(p))
                             if f.lower().endswith(".wdb")]
    saida = {"quests": {}, "npcs": {}, "objects": {}}
    falhas = []
    for caminho in arquivos:
        with open(caminho, "rb") as fh:
            dados = fh.read()
        tipo = TIPOS.get(dados[:4])         # npccache/pagetext/petition: ignora
        if not tipo or len(dados) < CABECALHO:
            continue
        for ident, p in registros(dados):
            try:
                if tipo == "quests":
                    saida["quests"][str(ident)] = parse_quest(p)
                elif tipo == "npcs":
                    saida["npcs"][str(ident)] = entrada_alvo(parse_npc(p))
                else:
                    saida["objects"][str(ident)] = entrada_alvo(parse_objeto(p))
            except Exception as e:
                falhas.append("%s %s: %s" % (tipo, ident, e))
    saida["_falhas"] = falhas
    return saida


# ---------------------------------------------------------------------------
# autoteste: roda contra os caches reais, com valores conferidos no jogo
# ---------------------------------------------------------------------------
def demo(pasta=DEMO):
    d = decodifica(pasta)
    q, npcs, objs = d["quests"], d["npcs"], d["objects"]
    assert not d["_falhas"], d["_falhas"]

    a = q["745"]                                    # Sharing the Land
    assert a["name"] == "Sharing the Land", a["name"]
    assert a["questLevel"] == 8, a["questLevel"]
    assert a["zoneOrSort"] == 215, a["zoneOrSort"]  # Mulgore
    assert a["objCreatures"] == [2949, 2950, 2951], a["objCreatures"]
    assert [o["amount"] for o in a["objectives"]] == [10, 8, 5], a["objectives"]
    assert a["objText"][0].startswith("Kill 10 Palemane Tanners"), a["objText"]

    b = q["746"]                                    # Dwarven Digging
    assert b["name"] == "Dwarven Digging", b["name"]
    assert len(b["objectives"]) == 1 and b["objItems"] == [4703], b["objectives"]
    assert b["objectives"][0]["amount"] == 5, b["objectives"]
    assert b["details"].startswith("There are dwarves preparing"), b["details"]

    c = q["96605"]                                  # The Great Outdoors
    assert c["name"] == "The Great Outdoors", c["name"]
    assert c["questLevel"] == 6 and len(c["objectives"]) == 2, c

    assert npcs["2949"]["name"] == "Palemane Tanner", npcs["2949"]
    assert objs["3656"]["name"] == "Bonfire", objs["3656"]
    assert all(e["name"] for e in npcs.values()), "npc sem nome"
    assert all(e["name"] for e in objs.values()), "objeto sem nome"

    print("ok: %d quests, %d npcs, %d objetos" % (len(q), len(npcs), len(objs)))
    print("    745 alvos:", [(o["id"], o["amount"]) for o in a["objectives"]])
    return d


def main(argv):
    if "--demo" in argv:
        demo()
        return 0
    pasta, saida = PADRAO, SAIDA
    resto = [a for a in argv if a != "--demo"]
    if "-o" in resto:
        i = resto.index("-o")
        saida = resto[i + 1]
        resto = resto[:i] + resto[i + 2:]
    if resto:
        pasta = resto[0]
    if not os.path.isdir(pasta):
        print("pasta do WDB não encontrada:", pasta)
        return 1
    d = decodifica(pasta)
    os.makedirs(os.path.dirname(os.path.abspath(saida)), exist_ok=True)
    with open(saida, "w", encoding="utf-8") as fh:
        json.dump(d, fh, ensure_ascii=False)
    print("gravado em", os.path.normpath(saida))
    print("  quests:", len(d["quests"]), "| npcs:", len(d["npcs"]),
          "| objetos:", len(d["objects"]), "| falhas:", len(d["_falhas"]))
    for f in d["_falhas"][:10]:
        print("   !", f)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
