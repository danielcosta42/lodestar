"""Gera ../SubZones.lua: subzona(areaID) -> zona-pai(areaID), do Questie.
Permite resolver a zona da Pedra de Lar (GetBindLocation) via C_Map.GetAreaInfo."""
import os
from parse_lua import parse_db

SRC = ("e:/World of Warcraft/_anniversary_/Interface/AddOns/Questie/Database/"
       "Zones/data/subZoneToParentZone.lua")
OUT = os.path.join(os.path.dirname(__file__), "..", "SubZones.lua")

main = parse_db(SRC, "ZoneDB.private.subZoneToParentZone")
override = parse_db(SRC, "ZoneDB.private.subZoneToParentZoneOverride")
merged = dict(main)
merged.update(override)   # override vence (como no Questie)

lines = ["-- AUTO-GERADO (gen_subzones.py). Subzona(areaID) -> zona-pai(areaID). Fonte: Questie.",
         "local ADDON, ns = ...", "if not ns then return end", "ns.subZoneToParent = {"]
for sub in sorted(merged, key=int):
    parent = merged[sub]
    if isinstance(parent, int) and parent > 0:
        lines.append("\t[%d]=%d," % (sub, parent))
lines.append("}")

with open(OUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(lines) + "\n")
print("gerado:", OUT, "|", len(merged), "subzonas")
