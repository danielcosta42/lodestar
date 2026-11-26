"""Gera RareData.lua (issue #92): os raros do mundo, por zona, com o nível e onde costumam nascer.

Fonte: o banco do pfQuest (MIT, https://github.com/shagu/pfQuest): db/units.lua (rnk "4" = raro, as coordenadas
{x, y, zona, respawn}), db/enUS/units.lua (nome) e db/enUS/zones.lua (nome da zona). Só entram zonas que o Lodestar
conhece (ZoneData.lua); instância fica de fora.

    python3 tools/gen_rares.py <pasta do pfQuest>
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, "..")
OUT = os.path.join(ROOT, "RareData.lua")
MAX_POINTS = 6


def read(path):
    with open(path, encoding="utf-8") as f:
        return f.read()


def names(path):
    out = {}
    for m in re.finditer(r'\[(\d+)\] = "((?:[^"\\]|\\.)*)"', read(path)):
        out[int(m.group(1))] = m.group(2).replace("\\'", "'").replace('\\"', '"')
    return out


def blocks(path):
    """Os blocos de primeiro nível, linha a linha (um `[17] = {},` vazio não engole os seguintes)."""
    out, cur, buf = {}, None, []
    for line in read(path).split("\n"):
        m = re.match(r"^  \[(\d+)\] = \{(\})?,?\s*$", line)
        if m and cur is None:
            if m.group(2):
                out[int(m.group(1))] = ""
            else:
                cur, buf = int(m.group(1)), []
        elif cur is not None and re.match(r"^  \},?\s*$", line):
            out[cur] = "\n".join(buf)
            cur = None
        elif cur is not None:
            buf.append(line)
    return out


def lua_str(s):
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"') + '"'


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    db = os.path.join(sys.argv[1], "db")
    known = set(re.findall(r'\["([^"]+)"\]\s*=\s*\d+', read(os.path.join(ROOT, "ZoneData.lua"))))
    zone_names = names(os.path.join(db, "enUS", "zones.lua"))
    unit_names = names(os.path.join(db, "enUS", "units.lua"))
    by_zone = {}
    for uid, body in blocks(os.path.join(db, "units.lua")).items():
        if '["rnk"] = "4"' not in body:
            continue
        lvl = re.search(r'\["lvl"\] = "([^"]+)"', body)
        pts = {}
        for x, y, z in re.findall(r'\{ ([\d.]+), ([\d.]+), (\d+), \d+ \}', body):
            zone = zone_names.get(int(z))
            if zone in known:
                pts.setdefault(zone, []).append((float(x), float(y)))
        for zone, p in pts.items():
            # espalhados: pega pontos distantes uns dos outros, até MAX_POINTS
            chosen = []
            for pt in p:
                if all((pt[0] - c[0]) ** 2 + (pt[1] - c[1]) ** 2 > 9 for c in chosen):
                    chosen.append(pt)
                if len(chosen) >= MAX_POINTS:
                    break
            by_zone.setdefault(zone, []).append((uid, unit_names.get(uid, "?"), lvl.group(1) if lvl else "?", chosen))
    lines = ["-- AUTO-GERADO (tools/gen_rares.py). Os raros do mundo por zona: id, nome, nível e onde nascem.",
             "-- Fonte: pfQuest (MIT, github.com/shagu/pfQuest).",
             "local ADDON, ns = ...", "if not ns then return end", "ns.rareData = {"]
    total = 0
    for zone in sorted(by_zone):
        lines.append("\t[%s] = {" % lua_str(zone))
        for uid, name, lvl, pts in sorted(by_zone[zone], key=lambda t: t[1]):
            total += 1
            p = ", ".join("{ %.1f, %.1f }" % xy for xy in pts)
            lines.append("\t\t{ id = %d, name = %s, lvl = %s, pts = { %s } }," % (uid, lua_str(name), lua_str(lvl), p))
        lines.append("\t},")
    lines.append("}")
    with open(OUT, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print("ok: %d raros em %d zonas" % (total, len(by_zone)))


if __name__ == "__main__":
    main()
