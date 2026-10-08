"""
Fase 4 — Gera guias de Masmorras, Attunements, Classe, Reputação e Eventos a partir do JSON.
Escreve Guides/{Dungeons,Attunements,Events}/** e Guides/Special.xml.

Uso: python gen_special.py
"""
import os
from collections import defaultdict

from router import Router, load_data, is_placeholder

GUIDE_ROOT = os.path.join(os.path.dirname(__file__), "..", "Guides")
# Refeitas do zero a cada rodada: o Special.xml é reescrito inteiro, então guia
# que o banco novo não gera mais ficaria no disco sem ninguém carregar.
CATEGORIAS = ("Dungeons", "Attunements", "Class", "Reputation", "Events")
# Feriados (zoneOrSort): têm guia próprio em Events e ficam fora de masmorra,
# reputação e classe. Não há mais "Eventos por zona": o bit 2 de specialFlags é
# escolta/script, não feriado — aqueles guias eram leveling misturado.
FERIADOS = {-22, -284, -364, -365, -366, -368, -369}

# Attunements curados: (nome, facção A/H/N, seeds, modo). O chain-walk expande
# os pré-requisitos automaticamente.
ATTUNEMENTS = [
    ("Molten Core - Attunement to the Core",  "N", [7848],                      "chain"),
    ("Onyxia's Lair (Alliance)",              "A", [6502],                      "chain"),
    ("Onyxia's Lair (Horde)",                 "H", [6602],                      "chain"),
    ("Upper Blackrock Spire - Seal of Ascension", "N", [4743],                  "chain"),
    ("Maraudon - Scepter of Celebras",        "N", [7046],                      "chain"),
    ("Blackwing Lair - Blackhand's Command",  "N", [7761],                      "chain"),
    # as três variantes por reputação (Honrado/Reverenciado/Exaltado): a Angela só
    # oferece a do nível do jogador, e o passo das outras é pulado no NPC
    ("Naxxramas - The Dread Citadel",         "N", [9121, 9122, 9123],          "tiers"),
    # abertura de Ahn'Qiraj: as pontas da cadeia (a terceira, The Hand of the Righteous, é repetível)
    ("Ahn'Qiraj - Scepter of the Shifting Sands", "N", [8743, 8745],            "chain"),
    # set de masmorra 2 (T0.5): Saving the Best for Last de cada classe
    ("Dungeon Set 2 (Alliance)",              "A", list(range(8999, 9015)),     "chain"),
    ("Dungeon Set 2 (Horde)",                 "H", list(range(8999, 9015)),     "chain"),
]


# Facções de grind curadas — ID -> nome.
GRIND_FACTIONS = {
    529: "Argent Dawn", 576: "Timbermaw Hold", 609: "Cenarion Circle",
    59: "Thorium Brotherhood", 749: "Hydraxian Waterlords", 270: "Zandalar Tribe",
    910: "Brood of Nozdormu", 349: "Ravenholdt",
}

# Raide: a quest de classe é troca de token por peça de set (os de T3, as capas de AQ,
# Paragons of Power) — o passo só conclui com drop de vários chefes, e o guia parava
# nele. Fica a cadeia de classe que começa por item do raid (The Ancient Leaf).
RAIDS = {"Molten Core", "Onyxia's Lair", "Blackwing Lair", "Zul'Gurub", "Ruins of Ahn'Qiraj",
         "Temple of Ahn'Qiraj", "Naxxramas"}


def por_item(Q, q):
    """A cadeia da quest começa por item (The Ancient Leaf, a forja de Quel'Serrar):
    é cadeia de classe de verdade, não troca de token."""
    return any(Q[str(x)]["startItems"] for x in walk_chain(Q, [q]) if str(x) in Q)


def troca_de_raide(Q, name, q):
    v = Q[str(q)]
    return name in RAIDS and v["classes"] and not por_item(Q, q)


def walk_chain(Q, seeds):
    seen, stack = set(), [str(s) for s in seeds]
    while stack:
        q = stack.pop()
        if q in seen or q not in Q:
            continue
        seen.add(q)
        for p in Q[q]["preSingle"] + Q[q]["preGroup"]:
            stack.append(str(p))
    return [int(x) for x in seen]


def dungeon_areas(Z):
    dA = {}
    for aid, info in Z.items():
        n = info["name"]
        if "- Dungeon" in n or "- Raid" in n:
            parent = n.split(" - Dungeon")[0].split(" - Raid")[0]
            dA[int(aid)] = parent
    return dA


def dungeon_quests(r, dA):
    """Quest de masmorra é a que o leveling deixa de fora por isso (`em_masmorra`):
    objetivo, fonte do item ou quem recebe só dentro da instância — a masmorra é a
    da área do objetivo. Conta também a do próprio zoneOrSort da masmorra e a que
    começa por item que cai lá dentro (The Glowing Shard, do Mutanus). Fonte de
    minério, erva ou baú espalhada pelo mapa não classifica mais nada (a Jade do
    Tin Vein mandava "Items of Power" para Deadmines)."""
    dq = defaultdict(list)
    for qid, q in r.quests.items():
        areas = set()
        if r.em_masmorra(q):
            areas = r._areas(q["objCreatures"] + q["endNpcs"], r.npc) | r._areas(q["objObjects"], r.obj)
            for iid in q["objItems"]:
                it = r.items.get(str(iid)) or {}
                areas |= r._areas(it.get("npc") or [], r.npc) | r._areas(it.get("obj") or [], r.obj)
        if q["zoneOrSort"] in dA:
            areas.add(q["zoneOrSort"])
        for iid in q["startItems"]:
            src = r.item_source(iid)
            if src and src[3] and int(src[3][0]) in dA:
                areas.add(int(src[3][0]))
        dung = next((dA[a] for a in sorted(int(a) for a in areas) if a in dA), None)
        if dung:
            dq[dung].append(int(qid))
    return dq


def fname(title):
    return (title.replace(" ", "_").replace("(", "").replace(")", "")
            .replace("/", "-").replace(",", "").replace("'", "").replace(":", "") + ".lua")


def out_path(category, faction, title):
    fac = {"A": "Alliance", "H": "Horde"}.get(faction)
    parts = [GUIDE_ROOT, category] + ([fac] if fac else [])
    d = os.path.join(*parts)
    os.makedirs(d, exist_ok=True)
    rel = "/".join([category] + ([fac] if fac else []) + [fname(title)])
    return os.path.join(d, fname(title)), rel


def main():
    for cat in CATEGORIAS:
        for raiz, _, nomes in os.walk(os.path.join(GUIDE_ROOT, cat)):
            for nome in nomes:
                if nome.endswith(".lua"):
                    os.remove(os.path.join(raiz, nome))
    data = load_data()
    # um roteador por lado: quest das duas facções fica com quem dá/recebe do lado amigo
    routers = {f: Router(data, f) for f in ("A", "H", "N")}
    Q, Z = data["quests"], data["zones"]
    files = []

    def emit(category, faction, title, ids, mode, min_n=1, exclude=()):
        if category != "Events":           # feriado tem guia próprio, não entra em masmorra/reputação
            ids = [i for i in ids if Q[str(i)]["zoneOrSort"] not in FERIADOS]
        text, n, _ = routers[faction].generate_linear(ids, faction, title, category, mode=mode,
                                                      exclude=exclude)
        if not text or n < min_n:
            return 0
        path, rel = out_path(category, faction, title)
        with open(path, "w", encoding="utf-8") as fh:
            fh.write(text)
        files.append(rel)
        return n

    # -- Masmorras ----------------------------------------------------------
    # Fora do guia da masmorra: repetível (troca de reputação/token, não conclui numa
    # corrida), troca de peça de classe no raide, e o que já tem guia de sintonização.
    print("=== Dungeons ===")
    dA = dungeon_areas(Z)
    dq = dungeon_quests(routers["N"], dA)
    sintonia = {q for _, _, seeds, _ in ATTUNEMENTS for q in walk_chain(Q, seeds)}
    repetivel = {int(k) for k, v in Q.items() if (v.get("specialFlags") or 0) & 1}
    for name, qids in sorted(dq.items(), key=lambda kv: -len(kv[1])):
        qids = [q for q in qids if q not in sintonia and not troca_de_raide(Q, name, q)]
        # repetível que abre uma cadeia (What Is Going On?, a escolta da princesa; The
        # Medallion of Faith, o Aurius) fica: a quest seguinte a pede
        precisa = {p for q in qids if q not in repetivel for p in walk_chain(Q, [q]) if p in repetivel}
        qids = [q for q in qids if q not in repetivel or q in precisa]
        if len(qids) < (1 if name in RAIDS else 3):    # raide: a da cabeça do chefe já vale
            continue
        for fac in ("A", "H"):
            n = emit("Dungeons", fac, name, qids, "phase", exclude=sintonia | (repetivel - precisa))
            if n:
                print("  [%s] %-28s %d quests" % (fac, name, n))

    # -- Attunements --------------------------------------------------------
    print("=== Attunements ===")
    for name, fac, seeds, mode in ATTUNEMENTS:
        ids = walk_chain(Q, seeds)
        n = emit("Attunements", fac, name, ids, mode)
        print("  [%s] %-42s %s quests" % (fac, name, n or 0))

    # -- Quests de classe ---------------------------------------------------
    print("=== Class ===")
    # bitmask WoW = 1<<(classId-1): Sha=64, Mag=128, Wlk=256, Dru=1024.
    CLASS_BIT = {1: "Warrior", 2: "Paladin", 4: "Hunter", 8: "Rogue", 16: "Priest",
                 64: "Shaman", 128: "Mage", 256: "Warlock", 1024: "Druid"}
    byc = defaultdict(list)
    for qid, q in Q.items():
        c = q["classes"]
        # single-bit de classe -> guia da classe. SEM filtro de questLevel: quase toda
        # quest de classe tem questLevel=-1 (é gated por classe, não por nível).
        if c in CLASS_BIT and (c & (c - 1)) == 0 and not is_placeholder(q.get("name")):
            byc[CLASS_BIT[c]].append(int(qid))
    trocas = {q for name, qs in dq.items() for q in qs if troca_de_raide(Q, name, q)}
    for cls, qids in sorted(byc.items()):
        qids = [q for q in qids if q not in trocas]
        for fac in ("A", "H"):
            n = emit("Class", fac, cls, qids, "chain")
            if n:
                print("  [%s] %-10s %d quests" % (fac, cls, n))

    # -- Reputação ----------------------------------------------------------
    print("=== Reputation ===")
    rep = defaultdict(list)
    for qid, q in Q.items():
        for pair in q.get("repReward", []):
            fid = pair[0]
            if fid in GRIND_FACTIONS:
                rep[fid].append(int(qid))
    for fid, qids in sorted(rep.items(), key=lambda kv: -len(kv[1])):
        if len(qids) < 4:
            continue
        name = GRIND_FACTIONS[fid]
        for fac in ("A", "H"):
            n = emit("Reputation", fac, name, qids, "chain", min_n=3)
            if n:
                print("  [%s] %-28s %d quests" % (fac, name, n))

    # -- Eventos SAZONAIS (holidays) — por holiday, não por zona ------------
    # sorts dedicados são limpos; o -22 ("Seasonal") é um balde misto -> split
    # por palavra-chave nas holidays grandes.
    print("=== Seasonal Events ===")
    HOLIDAY_SORT = {-366: "Lunar Festival", -369: "Midsummer Fire Festival",
                    -370: "Brewfest", -364: "Darkmoon Faire"}
    HOLIDAY_KW = [
        ("Feast of Winter Veil", ["winter", "present", "gift", "greatfather", "smokywood",
            "gumdrop", "nougat", "marzipan", "clucking", "reason for the season", "new year",
            "hero of the day", "power of pine", "mean one", "wonderland", "metzen", "stolen",
            "treats", "ravenholdt", "p'tang"]),
        ("Hallow's End", ["wickerman", "pumpkin", "candy", "headless", "horseman", "hallow",
            "sinister", "southshore", "stop the fires", "trick", "shade of"]),
        ("Love is in the Air", ["perfume", "cologne", "adoration", "dearest", "romantic",
            "pledge", "dangerous love", "fras siabi", "glow"]),
        ("Children's Week", ["orphan", "piglet", "spooky", "jaina", "cairne", "ride to",
            "call on", "warden of"]),
        ("Noblegarden", ["noblegarden", "chocolate", "spring flower", "colored egg"]),
    ]
    holiday_q = defaultdict(list)
    for qid, q in Q.items():
        zs = q.get("zoneOrSort")
        holiday = HOLIDAY_SORT.get(zs)
        if not holiday and zs == -22:
            nl = (q.get("name") or "").lower()
            for name, kws in HOLIDAY_KW:
                if any(k in nl for k in kws):
                    holiday = name
                    break
        if holiday:
            holiday_q[holiday].append(int(qid))
    for holiday, qids in sorted(holiday_q.items(), key=lambda kv: -len(kv[1])):
        if len(qids) < 3:
            continue
        for fac in ("A", "H"):
            n = emit("Events", fac, holiday, qids, "chain")
            if n:
                print("  [%s] %-28s %d quests" % (fac, holiday, n))

    # -- manifest -----------------------------------------------------------
    lines = ['<Ui xmlns="http://www.blizzard.com/wow/ui/">']
    for rel in files:
        lines.append('    <Script file="%s"/>' % rel)
    lines.append("</Ui>")
    with open(os.path.join(GUIDE_ROOT, "Special.xml"), "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines) + "\n")
    print("\nSpecial.xml: %d guias" % len(files))


if __name__ == "__main__":
    main()
