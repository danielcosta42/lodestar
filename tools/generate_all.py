"""
Fase 2 — Driver: gera o 1-70 completo (Aliança + Horda) a partir do JSON.

- Descobre as zonas de leveling de cada facção (áreas onde questgivers spawnam,
  com quests suficientes e nível mediano dentro da faixa).
- Ordena as zonas por nível mediano das quests e encadeia via `next`.
- Evita quest duplicada entre zonas (exclude acumulado por facção).
- Escreve Guides/Leveling/<Fac>/<Zona>.lua e um Leveling.xml que carrega tudo.

Uso: python generate_all.py [levelMax=70] [minQuests=6]
"""
import os
import re
import sys
from collections import defaultdict

from router import Router, load_data, esc, is_placeholder

GUIDE_ROOT = os.path.join(os.path.dirname(__file__), "..", "Guides", "Leveling")

# Capitais de facção: são hubs, não zonas de leveling — fora da cadeia.
# (Shattrath 3703 fica: é hub neutro de TBC com quests reais de 65-70.)
SKIP_AREAS = {
    1497,  # Undercity
    1519,  # Stormwind City
    1537,  # Ironforge
    1637,  # Orgrimmar
    1638,  # Thunder Bluff
    1657,  # Darnassus
    3487,  # Silvermoon City
    3557,  # The Exodar
}


def pct(sorted_vals, p):
    if not sorted_vals:
        return 0
    i = min(len(sorted_vals) - 1, int(p * (len(sorted_vals) - 1)))
    return sorted_vals[i]


def _giver_area(router, q):
    """Primeira área (com nome) onde o giver da quest spawna."""
    for n in q["startNpcs"]:
        npc = router.npc(n)
        if not npc:
            continue
        for area in npc.get("spawns", {}):
            if str(int(area)) in router.zones:
                return int(area)
    return None


def discover_zones(router, faction, level_max, min_quests):
    """area -> {count, levels[], sA, sH}; filtra território inimigo."""
    fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}
    per_area = defaultdict(lambda: {"count": 0, "levels": [], "sA": 0, "sH": 0})
    for qid, q in router.quests.items():
        if q["specialFlags"] and (q["specialFlags"] & 1):
            continue
        ql = q["questLevel"] or 0
        if ql > level_max:
            continue
        area = _giver_area(router, q)
        if area is None:
            continue
        # contagem estrita p/ detectar território inimigo (independe de fac_ok)
        if q["faction"] == "A":
            per_area[area]["sA"] += 1
        elif q["faction"] == "H":
            per_area[area]["sH"] += 1
        if q["faction"] in fac_ok:
            per_area[area]["count"] += 1
            per_area[area]["levels"].append(ql)

    zones = []
    for area, d in per_area.items():
        if area in SKIP_AREAS or d["count"] < min_quests:
            continue
        # vazamento: zona dominada pela facção oposta (poucas quests próprias)
        if faction == "A" and d["sH"] > d["sA"] and d["sA"] < 3:
            continue
        if faction == "H" and d["sA"] > d["sH"] and d["sH"] < 3:
            continue
        levels = sorted(l for l in d["levels"] if l > 0)
        if not levels:
            continue
        median = pct(levels, 0.5)
        lo, hi = pct(levels, 0.15), pct(levels, 0.85)
        zones.append({
            "area": area, "name": router.zones[str(area)]["name"],
            "count": d["count"], "median": median, "lo": lo, "hi": hi,
        })
    zones.sort(key=lambda z: (z["median"], z["lo"], -z["count"]))
    return zones


def guide_key(faction, title):
    fac = "Alliance" if faction == "A" else "Horde"
    return "Leveling/%s/%s" % (fac, esc(title))


def fname_for(title):
    return (title.replace(" ", "_").replace("(", "").replace(")", "")
            .replace("/", "-").replace(",", "") + ".lua")


def gen_faction(router, faction, level_max, min_quests):
    zones = discover_zones(router, faction, level_max, min_quests)
    fac_dir = "Alliance" if faction == "A" else "Horde"
    out_dir = os.path.join(GUIDE_ROOT, fac_dir)
    os.makedirs(out_dir, exist_ok=True)

    # títulos, chaves e entradas (hub inicial) antecipados
    for z in zones:
        z["title"] = "%s (%d-%d)" % (z["name"], z["lo"], z["hi"])
        z["key"] = guide_key(faction, z["title"])
        z["entry"] = router.zone_entry(z["area"], faction, level_max)

    # -- quests de CAPITAL diluídas por nível --------------------------------
    # Quest cujo giver spawna numa capital (SKIP_AREAS) e em NENHUMA zona de
    # leveling normal cai no guia cuja faixa [lo,hi] contém o nível dela (mediana
    # mais próxima como desempate). O `exclude` acumulado evita duplicar.
    zone_areas = {z["area"] for z in zones}
    fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}
    cap_assign = defaultdict(set)
    for qid, q in router.quests.items():
        ql = q["questLevel"] or 0
        if not (1 <= ql <= level_max) or q["faction"] not in fac_ok:
            continue
        if is_placeholder(q["name"]) or (q["specialFlags"] and q["specialFlags"] & 3):
            continue
        in_cap = in_zone = False
        for n in q["startNpcs"]:
            npc = router.npc(n)
            if not npc:
                continue
            for a in npc.get("spawns", {}):
                if int(a) in SKIP_AREAS:
                    in_cap = True
                elif int(a) in zone_areas:
                    in_zone = True
        if in_cap and not in_zone and zones:
            tgt = min(zones, key=lambda z: (0 if z["lo"] <= ql <= z["hi"] else 1,
                                            abs(z["median"] - ql)))
            cap_assign[tgt["area"]].add(int(qid))

    used = set()
    files = []
    for i, z in enumerate(zones):
        nxt = zones[i + 1] if i + 1 < len(zones) else None
        next_key = nxt["key"] if nxt else None
        travel = nxt["entry"] if nxt else None
        text, n, qids = router.generate_zone(
            z["area"], faction, z["title"], level_max,
            next_key=next_key, exclude=used, travel_to=travel,
            include=cap_assign.get(z["area"], set()) - used)
        if not text or n == 0:
            continue
        used.update(qids)
        path = os.path.join(out_dir, fname_for(z["title"]))
        with open(path, "w", encoding="utf-8") as fh:
            fh.write(text)
        files.append("%s/%s" % (fac_dir, os.path.basename(path)))
        print("  [%s] %-34s lvl~%2d  quests=%d" % (faction, z["title"], z["median"], n))
    return files


def write_xml(all_files):
    """XML que o .toc carrega uma vez; paths relativos ao próprio XML.
    PRESERVA includes que não geramos aqui (ex.: Raid_Ready_Boosted, gerado por
    gen_raidready.py) — senão a regeneração do leveling os apagaria do manifesto."""
    path = os.path.join(GUIDE_ROOT, "Leveling.xml")
    extra = []
    if os.path.exists(path):
        existing = open(path, encoding="utf-8").read()
        for m in re.finditer(r'file="([^"]+)"', existing):
            f = m.group(1)
            if f not in all_files and f not in extra:
                extra.append(f)
    lines = ['<Ui xmlns="http://www.blizzard.com/wow/ui/">']
    for rel in all_files + extra:
        lines.append('    <Script file="%s"/>' % rel)
    lines.append("</Ui>")
    with open(path, "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines) + "\n")
    print("manifest: %s (%d gerados + %d preservados)" % (path, len(all_files), len(extra)))


def main():
    level_max = int(sys.argv[1]) if len(sys.argv) > 1 else 70
    min_quests = int(sys.argv[2]) if len(sys.argv) > 2 else 6
    router = Router(load_data())
    all_files = []
    for faction in ("A", "H"):
        print("=== %s ===" % ("Alliance" if faction == "A" else "Horde"))
        all_files += gen_faction(router, faction, level_max, min_quests)
    write_xml(all_files)


if __name__ == "__main__":
    main()
