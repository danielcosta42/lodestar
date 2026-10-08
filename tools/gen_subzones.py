"""Gera ../SubZones.lua: subzona(areaID) -> zona-pai(areaID), do QuestieDB do Forever.
Permite resolver a zona da Pedra de Lar (GetBindLocation) via C_Map.GetAreaInfo.

    python gen_subzones.py [pasta do QuestieDB]"""
import os
import sys

from parse_lua import parse_db
from questiedb import PADRAO, ZONAS

SRC = os.path.join(sys.argv[1] if len(sys.argv) > 1 else PADRAO, ZONAS, "subZoneToParentZone.lua")
OUT = os.path.join(os.path.dirname(__file__), "..", "SubZones.lua")

main = parse_db(SRC, "ZoneDB.private.subZoneToParentZone")
override = parse_db(SRC, "ZoneDB.private.subZoneToParentZoneOverride")
merged = dict(main)
merged.update(override)   # override vence (como no Questie)

lines = ["-- AUTO-GERADO (gen_subzones.py). Subzona(areaID) -> zona-pai(areaID). Fonte: QuestieDB do Forever.",
         "local ADDON, ns = ...", "if not ns then return end", "ns.subZoneToParent = {"]
for sub in sorted(merged, key=int):
    parent = merged[sub]
    if isinstance(parent, int) and parent > 0:
        lines.append("\t[%d]=%d," % (sub, parent))
lines.append("}")

with open(OUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(lines) + "\n")
print("gerado:", OUT, "|", len(merged), "subzonas")
