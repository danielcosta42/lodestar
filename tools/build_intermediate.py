"""
Fase 2 — Ingestão: DBs do Questie -> JSON intermediário limpo.

Lê quests/npcs/objects do banco do Questie (TBC = superset p/ Anniversary),
mais o mapa de zonas (areaId -> nome, uiMapId), e escreve:
    build/quests.json, build/npcs.json, build/objects.json, build/zones.json

Uso:
    python build_intermediate.py "<...>/Questie/Database"
"""
import json
import os
import re
import sys
from parse_lua import parse_db

# ---- máscaras de raça (WoW clássico/TBC) -----------------------------------
RACE = dict(Human=1, Orc=2, Dwarf=4, NightElf=8, Undead=16, Tauren=32,
            Gnome=64, Troll=128, Goblin=256, BloodElf=512, Draenei=1024)
ALLIANCE_MASK = RACE["Human"] | RACE["Dwarf"] | RACE["NightElf"] | RACE["Gnome"] | RACE["Draenei"]
HORDE_MASK = RACE["Orc"] | RACE["Undead"] | RACE["Tauren"] | RACE["Troll"] | RACE["BloodElf"]


def faction_of(mask):
    if not mask or mask == 0:
        return "AH"
    a = bool(mask & ALLIANCE_MASK)
    h = bool(mask & HORDE_MASK)
    if a and not h:
        return "A"
    if h and not a:
        return "H"
    return "AH"


# ---- helpers p/ extrair ids de tabelas Lua parseadas -----------------------
def int_values(tbl):
    """Lista de inteiros diretos numa tabela {1:id, 2:id, ...} (ignora None)."""
    if not isinstance(tbl, dict):
        return []
    return [v for v in tbl.values() if isinstance(v, int)]


def first_of_each(tbl):
    """Para {1:{1:id,...}, 2:{1:id,...}} -> [id, id] (1º elemento de cada sub)."""
    if not isinstance(tbl, dict):
        return []
    out = []
    for v in tbl.values():
        if isinstance(v, dict):
            first = v.get(1)
            if isinstance(first, int):
                out.append(first)
        elif isinstance(v, int):
            out.append(v)
    return out


def spawns_of(tbl):
    """{[zoneID]={{x,y},...}} -> {zoneID: [[x,y],...]}"""
    out = {}
    if not isinstance(tbl, dict):
        return out
    for zone, coords in tbl.items():
        if not isinstance(coords, dict):
            continue
        pts = []
        for c in coords.values():
            if isinstance(c, dict) and 1 in c and 2 in c:
                pts.append([c[1], c[2]])
        if pts:
            out[int(zone)] = pts
    return out


# ---- builders --------------------------------------------------------------
def build_quests(raw):
    quests = {}
    for qid, q in raw.items():
        started = q.get(2) or {}
        finished = q.get(3) or {}
        objectives = q.get(10) or {}
        quests[qid] = {
            "name": q.get(1),
            "reqLevel": q.get(4) or 0,
            "questLevel": q.get(5) or 0,
            "races": q.get(6) or 0,
            "classes": q.get(7) or 0,
            "faction": faction_of(q.get(6)),
            "startNpcs": int_values(started.get(1)),
            "startObjects": int_values(started.get(2)),
            "startItems": int_values(started.get(3)),
            "endNpcs": int_values(finished.get(1)),
            "endObjects": int_values(finished.get(2)),
            "preSingle": int_values(q.get(13)) + ([q[13]] if isinstance(q.get(13), int) else []),
            "preGroup": int_values(q.get(12)),
            "exclusiveTo": int_values(q.get(16)),
            "nextInChain": q.get(22) if isinstance(q.get(22), int) else None,
            "zoneOrSort": q.get(17) or 0,
            "specialFlags": q.get(24) or 0,
            "objCreatures": first_of_each(objectives.get(1)),
            "objObjects": first_of_each(objectives.get(2)),
            "objItems": first_of_each(objectives.get(3)),
            "objText": [t for t in (q.get(8) or {}).values() if isinstance(t, str)],
            "repReward": [[o.get(1), o.get(2)] for o in (q.get(26) or {}).values()
                          if isinstance(o, dict) and isinstance(o.get(1), int)],
        }
    return quests


def build_npcs(raw):
    npcs = {}
    for nid, n in raw.items():
        sp = spawns_of(n.get(7))
        npcs[nid] = {
            "name": n.get(1),
            "minLevel": n.get(4) or 0,
            "maxLevel": n.get(5) or 0,
            "rank": n.get(6) or 0,        # 0=normal 1=elite 2=rare-elite 3=worldboss 4=rare
            "spawns": sp,
            "zoneID": n.get(9),
            "faction": n.get(13),  # "A"/"H"/"AH"/None
            "questStarts": int_values(n.get(10)),
            "questEnds": int_values(n.get(11)),
            "npcFlags": n.get(15) or 0,   # bitmask: 8192 = mestre de voo
            "subName": n.get(14),         # ex: "Warrior Trainer"
        }
    return npcs


def build_objects(raw):
    objs = {}
    for oid, o in raw.items():
        objs[oid] = {
            "name": o.get(1),
            "spawns": spawns_of(o.get(4)),
            "zoneID": o.get(5),
            "questStarts": int_values(o.get(2)),
            "questEnds": int_values(o.get(3)),
        }
    return objs


ZONE_LINE = re.compile(r"\[(\d+)\]\s*=\s*(\d+),\s*--\s*(.+?)\s*$")


def build_zones(db_dir):
    path = os.path.join(db_dir, "Zones", "data", "areaIdToUiMapId.lua")
    zones = {}
    with open(path, encoding="utf-8") as fh:
        for line in fh:
            m = ZONE_LINE.search(line)
            if m:
                area, uimap, name = int(m.group(1)), int(m.group(2)), m.group(3)
                zones[area] = {"uiMapId": uimap, "name": name}
    return zones


def main():
    db_dir = sys.argv[1]
    out_dir = os.path.join(os.path.dirname(__file__), "build")
    os.makedirs(out_dir, exist_ok=True)

    def load(sub, var):
        return parse_db(os.path.join(db_dir, sub), var)

    print("parseando quests...")
    quests = build_quests(load("TBC/tbcQuestDB.lua", "QuestieDB.questData"))
    print("parseando npcs...")
    npcs = build_npcs(load("TBC/tbcNpcDB.lua", "QuestieDB.npcData"))
    print("parseando objects...")
    objects = build_objects(load("TBC/tbcObjectDB.lua", "QuestieDB.objectData"))
    print("mapeando zonas...")
    zones = build_zones(db_dir)

    for name, data in (("quests", quests), ("npcs", npcs),
                       ("objects", objects), ("zones", zones)):
        # chaves inteiras -> string para JSON
        path = os.path.join(out_dir, f"{name}.json")
        with open(path, "w", encoding="utf-8") as fh:
            json.dump({str(k): v for k, v in data.items()}, fh, ensure_ascii=False)
        print(f"  {name}.json: {len(data)} entradas")

    # ---- verificação: quest 7 deve resolver McBride em Elwynn --------------
    print("\n--- verificação (quest 7 Kobold Camp Cleanup) ---")
    q7 = quests[7]
    print("faction:", q7["faction"], "| reqLevel:", q7["reqLevel"],
          "| preSingle:", q7["preSingle"])
    starter = q7["startNpcs"][0]
    npc = npcs[starter]
    print(f"starter NPC {starter}: {npc['name']} spawns={npc['spawns']}")
    print("objetivo (creature):", q7["objCreatures"], "->",
          npcs.get(q7["objCreatures"][0], {}).get("name"))
    print("zoneOrSort:", q7["zoneOrSort"], "->", zones.get(q7["zoneOrSort"], {}).get("name"))


if __name__ == "__main__":
    main()
