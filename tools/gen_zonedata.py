"""Gera ../ZoneData.lua: nome-de-zona -> uiMapID (para pins/seta cross-zone)."""
import json
import os

from router import BUILD
OUT = os.path.join(os.path.dirname(__file__), "..", "ZoneData.lua")

zones = json.load(open(os.path.join(BUILD, "zones.json"), encoding="utf-8"))

name_to_uimap = {}
for aid, info in zones.items():
    uim = info.get("uiMapId")
    name = info.get("name")
    if uim and name and uim != 0:
        name_to_uimap.setdefault(name, uim)   # primeiro vence

lines = [
    "-- AUTO-GERADO (gen_zonedata.py). Nome de zona -> uiMapID (WoW: Forever).",
    "local ADDON, ns = ...",
    "if not ns then return end",
    "ns.zoneUiMap = {",
]
for name in sorted(name_to_uimap):
    safe = name.replace("\\", "\\\\").replace('"', '\\"')
    lines.append('\t["%s"] = %d,' % (safe, name_to_uimap[name]))
lines.append("}")

with open(OUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(lines) + "\n")
print("gerado:", OUT, "com", len(name_to_uimap), "zonas")
