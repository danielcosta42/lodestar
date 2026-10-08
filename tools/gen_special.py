"""
Fase 4 — Gera guias de Masmorras, Attunements e Eventos a partir do JSON.
Escreve Guides/{Dungeons,Attunements,Events}/** e Guides/Special.xml.

Uso: python gen_special.py
"""
import json
import os
from collections import defaultdict

from router import Router, load_data, esc, is_placeholder

GUIDE_ROOT = os.path.join(os.path.dirname(__file__), "..", "Guides")
# Refeitas do zero a cada rodada: o Special.xml é reescrito inteiro, então guia
# que o banco novo não gera mais ficaria no disco sem ninguém carregar.
CATEGORIAS = ("Dungeons", "Attunements", "Class", "Reputation", "Dailies", "Events")

# Attunements curados: (nome, facção A/H/N, seeds, modo). O chain-walk expande
# os pré-requisitos automaticamente.
ATTUNEMENTS = [
    # seeds = quest FINAL da cadeia; walk_chain volta pelos pré-req. Se semear no
    # meio, a cauda (fragmentos etc.) fica de fora — foi o bug de Kara/Onyxia-H.
    ("Karazhan",                              "N", [9838, 10296],               "chain"),
    ("Caverns of Time - Black Morass",        "N", [10297],                     "chain"),
    ("Arcatraz Key",                          "N", [10704],                     "chain"),
    ("Molten Core - Attunement to the Core",  "N", [7848],                      "chain"),
    ("Onyxia's Lair (Alliance)",              "A", [6502],                      "chain"),
    ("Onyxia's Lair (Horde)",                 "H", [6602],                      "chain"),
    ("Upper Blackrock Spire - Seal of Ascension", "N", [4743],                  "chain"),
    ("Maraudon - Scepter of Celebras",        "N", [7046],                      "chain"),
    ("Heroic Dungeons - Trial of the Naaru",  "N", [10884, 10885, 10886, 10888], "chain"),
    ("Hyjal Summit - Vials of Eternity",      "N", [10445],                     "chain"),
    ("Black Temple - Cudgel of Kar'desh",     "N", [10901],                     "chain"),
]


# Facções de grind curadas (TBC + Classic) — ID -> nome.
GRIND_FACTIONS = {
    946: "Honor Hold", 947: "Thrallmar", 942: "Cenarion Expedition",
    935: "The Sha'tar", 932: "The Aldor", 934: "The Scryers",
    1011: "Lower City", 989: "Keepers of Time", 933: "The Consortium",
    967: "The Violet Eye", 970: "Sporeggar", 1015: "Netherwing",
    1031: "Sha'tari Skyguard", 1038: "Ogri'la", 1077: "Shattered Sun Offensive",
    529: "Argent Dawn", 576: "Timbermaw Hold", 609: "Cenarion Circle",
    59: "Thorium Brotherhood", 749: "Hydraxian Waterlords", 270: "Zandalar Tribe",
    910: "Brood of Nozdormu", 349: "Ravenholdt",
}


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


def dungeon_quests(Q, N, O, dA):
    def areas_of(ids, tbl):
        a = set()
        for i in ids:
            e = tbl.get(str(i))
            if e:
                for z in e.get("spawns", {}):
                    a.add(int(z))
        return a
    dq = defaultdict(list)
    for qid, q in Q.items():
        areas = areas_of(q["objCreatures"] + q["endNpcs"] + q["startNpcs"], N) \
            | areas_of(q["objObjects"], O)
        for a in areas:
            if a in dA:
                dq[dA[a]].append(int(qid))
                break
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
    r = Router(data)
    Q, N, O, Z = data["quests"], data["npcs"], data["objects"], data["zones"]
    files = []

    def emit(category, faction, title, ids, mode, min_n=1):
        text, n, _ = r.generate_linear(ids, faction, title, category, mode=mode)
        if not text or n < min_n:
            return 0
        path, rel = out_path(category, faction, title)
        with open(path, "w", encoding="utf-8") as fh:
            fh.write(text)
        files.append(rel)
        return n

    # -- Masmorras ----------------------------------------------------------
    print("=== Dungeons ===")
    dA = dungeon_areas(Z)
    dq = dungeon_quests(Q, N, O, dA)
    for name, qids in sorted(dq.items(), key=lambda kv: -len(kv[1])):
        if len(qids) < 3:
            continue
        for fac in ("A", "H"):
            n = emit("Dungeons", fac, name, qids, "phase")
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
    # bitmask WoW = 1<<(classId-1): Sha=64, Mag=128, Wlk=256, Dru=1024 (32=DK, N/A no TBC).
    CLASS_BIT = {1: "Warrior", 2: "Paladin", 4: "Hunter", 8: "Rogue", 16: "Priest",
                 64: "Shaman", 128: "Mage", 256: "Warlock", 1024: "Druid"}
    byc = defaultdict(list)
    for qid, q in Q.items():
        c = q["classes"]
        # single-bit de classe -> guia da classe. SEM filtro de questLevel: quase toda
        # quest de classe tem questLevel=-1 (é gated por classe, não por nível).
        if c in CLASS_BIT and (c & (c - 1)) == 0 and not is_placeholder(q.get("name")):
            byc[CLASS_BIT[c]].append(int(qid))
    for cls, qids in sorted(byc.items()):
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

    # -- Dailies de 70 (repetíveis, nível >= 65) -----------------------------
    print("=== Dailies ===")
    daily_by_zone = defaultdict(list)
    for qid, q in Q.items():
        if not ((q["specialFlags"] or 0) & 1 and (q["questLevel"] or 0) >= 65):
            continue
        for nid in q["startNpcs"]:
            npc = N.get(str(nid))
            if npc and npc.get("spawns"):
                area = int(next(iter(npc["spawns"])))
                if str(area) in Z:
                    daily_by_zone[area].append(int(qid))
                break
    for area, qids in sorted(daily_by_zone.items(), key=lambda kv: -len(kv[1])):
        if len(qids) < 3:
            continue
        zname = Z[str(area)]["name"]
        for fac in ("A", "H"):
            n = emit("Dailies", fac, "%s (Dailies)" % zname, qids, "phase", min_n=3)
            if n:
                print("  [%s] %-24s %d" % (fac, zname, n))

    # -- Eventos (specialFlags bit 2 = requer evento) -----------------------
    print("=== Eventos ===")
    ev_by_zone = defaultdict(list)
    for qid, q in Q.items():
        if not ((q["specialFlags"] or 0) & 2):
            continue
        for nid in q["startNpcs"]:
            npc = N.get(str(nid))
            if npc and npc.get("spawns"):
                area = int(next(iter(npc["spawns"])))
                if str(area) in Z:
                    ev_by_zone[area].append(int(qid))
                break
    for area, qids in sorted(ev_by_zone.items(), key=lambda kv: -len(kv[1])):
        if len(qids) < 6:
            continue
        zname = Z[str(area)]["name"]
        for fac in ("A", "H"):
            n = emit("Events", fac, "%s (Eventos)" % zname, qids, "phase")
            if n:
                print("  [%s] %-28s %d quests" % (fac, zname, n))

    # -- Dailies de PROFISSÃO (Cozinha, Pesca) — guias dedicados ------------
    # (já existiam enfiadas nas dailies de zona; aqui viram guias próprios)
    print("=== Profession Dailies ===")
    PROF_DAILY = {24393: "Cooking", 25580: "Fishing"}   # The Rokk / Old Man Barlo
    for npc_id, prof in PROF_DAILY.items():
        qids = [int(qid) for qid, q in Q.items()
                if (q.get("specialFlags") or 0) & 1 and npc_id in (q.get("startNpcs") or [])]
        if qids:
            n = emit("Dailies", "N", "%s (Dailies)" % prof, qids, "phase", min_n=1)
            if n:
                print("  %-10s %d dailies" % (prof, n))

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
            n = emit("Events", fac, holiday, qids, "phase")
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
