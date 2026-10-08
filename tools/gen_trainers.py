"""Gera ../Trainers.lua: treinadores de CLASSE e de PROFISSÃO (nome, coord, zona)."""
import json
import os
from collections import defaultdict

from router import BUILD
OUT = os.path.join(os.path.dirname(__file__), "..", "Trainers.lua")

N = json.load(open(os.path.join(BUILD, "npcs.json"), encoding="utf-8"))
Z = json.load(open(os.path.join(BUILD, "zones.json"), encoding="utf-8"))

CLASSES = ["Warrior", "Paladin", "Hunter", "Rogue", "Priest", "Shaman", "Mage", "Warlock", "Druid"]
PROFS = ["Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism",
         "Jewelcrafting", "Leatherworking", "Mining", "Skinning", "Tailoring",
         "Cooking", "First Aid", "Fishing"]
CAPITALS = {"Stormwind City", "Ironforge", "Darnassus", "The Exodar",
            "Orgrimmar", "Thunder Bluff", "Undercity", "Silvermoon City", "Shattrath City"}
FAC_MAP = {"A": ["Alliance"], "H": ["Horde"], "AH": ["Alliance", "Horde"]}


def build(keys, upper):
    data = defaultdict(lambda: defaultdict(list))
    for nid, n in N.items():
        sub = n.get("subName") or ""
        facs = FAC_MAP.get(n.get("faction"))
        if not facs:
            continue
        for k in keys:
            if sub != k + " Trainer":
                continue
            spawns = n.get("spawns") or {}
            if not spawns:
                break
            area = int(next(iter(spawns)))
            zname = Z.get(str(area), {}).get("name")
            pts = spawns.get(str(area))
            if not (zname and pts):
                break
            x, y = pts[0]
            entry = {"n": n["name"], "id": int(nid), "zone": zname,
                     "x": round(x, 2), "y": round(y, 2), "cap": zname in CAPITALS}
            kk = k.upper() if upper else k
            for f in facs:
                data[kk][f].append(entry)
            break
    for k in data:
        for f in data[k]:
            data[k][f].sort(key=lambda t: (not t["cap"], t["zone"]))
    return data


def esc(s):
    return (s or "").replace("\\", "\\\\").replace('"', '\\"')


def emit_table(lines, varname, data):
    lines.append("ns.%s = {" % varname)
    for k in sorted(data):
        lines.append('\t["%s"] = {' % esc(k))
        for fac in ("Alliance", "Horde"):
            tl = data[k].get(fac)
            if not tl:
                continue
            lines.append('\t\t["%s"] = {' % fac)
            for t in tl:
                lines.append('\t\t\t{ n="%s", id=%d, zone="%s", x=%s, y=%s },'
                             % (esc(t["n"]), t["id"], esc(t["zone"]), t["x"], t["y"]))
            lines.append("\t\t},")
        lines.append("\t},")
    lines.append("}")


cls = build(CLASSES, upper=True)
prof = build(PROFS, upper=False)

lines = ["-- AUTO-GERADO (gen_trainers.py). Treinadores de classe e profissão.",
         "local ADDON, ns = ...", "if not ns then return end"]
emit_table(lines, "classTrainers", cls)
emit_table(lines, "profTrainers", prof)

with open(OUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(lines) + "\n")

ct = sum(len(cls[c][f]) for c in cls for f in cls[c])
pt = sum(len(prof[p][f]) for p in prof for f in prof[p])
print("gerado:", OUT, "|", ct, "treinadores de classe,", pt, "de profissão")
