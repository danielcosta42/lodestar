"""
Fase 2 — Driver: gera o 1-60 completo do Forever (Aliança + Horda) a partir do JSON.

- Descobre as zonas de leveling de cada facção (áreas onde questgivers spawnam,
  com quests suficientes e nível mediano dentro da faixa).
- Ordena as zonas por nível mediano das quests e encadeia via `next`.
- Evita quest duplicada entre zonas (exclude acumulado por facção).
- Escreve Guides/Leveling/<Fac>/<Zona>.lua e um Leveling.xml que carrega tudo.
  O diretório de cada facção é refeito do zero: o título traz a faixa de nível,
  então guia que mudou de faixa mudaria de arquivo e o antigo ficaria órfão.

Uso: python generate_all.py [levelMax=60] [minQuests=6]
"""
import os
import re
import sys
from collections import defaultdict

from router import FORA_DO_LEVELING, VANILLA_RACES, Router, load_data, esc, is_placeholder

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
# Capital -> a zona onde ela fica. Quest de capital vai, entre os guias cuja faixa
# serve, para o da zona de casa — e não para a zona inicial de outra raça que só
# tenha a mediana mais parecida (era assim que Ironforge caía em Elwynn).
CAPITAL_HOME = {1519: 12, 1537: 1, 1657: 141, 1637: 14, 1638: 215, 1497: 85}
# Ilha da raça nova (Forever): quem está lá não vai a capital nenhuma até sair dela.
ISOLADAS = {16593}  # Zephras Isle

# Área que não é zona de leveling, nem recebe quest de capital: campo de batalha,
# e mapa sintético de continente — onde o banco põe NPC de divisa, como o Bodley
# na entrada de Blackrock Mountain (as quests dele são de masmorra).
NAO_E_ZONA = {
    2597,  # Alterac Valley
    3277,  # Warsong Gulch
    3358,  # Arathi Basin
    16606, # Darkspear Islands (Forever, 15v15)
    10073, # Kalimdor - the continent map
    10074, # Eastern Kingdoms - the continent map
    10089, # Azeroth - the world map
}

# Buraco de níveis sem quest que separa duas levas da mesma zona. O Forever pôs
# conteúdo de 55-60 em Tirisfal e de 52-60 em Moonglade: num guia só, o jogador
# de nível 5 seria mandado para quest de nível 55 no meio do caminho.
BAND_GAP = 10


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


def bands(levels, min_quests):
    """Níveis (ordenados) -> grupos, cortando onde há BAND_GAP níveis sem quest.
    Grupo com menos de `min_quests` não vira guia sozinho: cola no vizinho."""
    grupos = [[levels[0]]]
    for lv in levels[1:]:
        if lv - grupos[-1][-1] >= BAND_GAP:
            grupos.append([lv])
        else:
            grupos[-1].append(lv)
    while len(grupos) > 1:
        i = next((i for i, g in enumerate(grupos) if len(g) < min_quests), None)
        if i is None:
            break
        j = i - 1 if i > 0 else 1
        a, b = min(i, j), max(i, j)
        grupos[a:b + 1] = [grupos[a] + grupos[b]]
    return grupos


def discover_zones(router, faction, level_max, min_quests):
    """area -> {count, levels[], sA, sH}; filtra território inimigo."""
    fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}
    per_area = defaultdict(lambda: {"count": 0, "levels": [], "faixa": [], "sA": 0, "sH": 0})
    for qid, q in router.quests.items():
        if q["specialFlags"] and (q["specialFlags"] & 1):
            continue
        if q["zoneOrSort"] in FORA_DO_LEVELING:
            continue
        ql = q["questLevel"] or 0
        if ql > level_max:
            continue
        area = _giver_area(router, q)
        if area is None or " - Dungeon" in router.zones[str(area)]["name"]:
            continue                  # quest de masmorra tem guia próprio (gen_special)
        # contagem estrita p/ detectar território inimigo (independe de fac_ok)
        if q["faction"] == "A":
            per_area[area]["sA"] += 1
        elif q["faction"] == "H":
            per_area[area]["sH"] += 1
        if q["faction"] in fac_ok:
            per_area[area]["count"] += 1
            per_area[area]["levels"].append(ql)
            # quest de classe ou só de Skyborne conta para a zona ser rota, mas não
            # decide a faixa: as de druida em Moonglade inventavam um "Moonglade
            # (10-20)" no meio da cadeia de todo mundo
            if not q["classes"] and not (q["races"] and not q["races"] & VANILLA_RACES):
                per_area[area]["faixa"].append(ql)

    zones = []
    for area, d in per_area.items():
        if area in SKIP_AREAS or area in NAO_E_ZONA or d["count"] < min_quests:
            continue
        # vazamento: zona dominada pela facção oposta (poucas quests próprias)
        if faction == "A" and d["sH"] > d["sA"] and d["sA"] < 3:
            continue
        if faction == "H" and d["sA"] > d["sH"] and d["sH"] < 3:
            continue
        levels = (sorted(l for l in d["faixa"] if l > 0)
                  or sorted(l for l in d["levels"] if l > 0))
        if not levels:
            continue
        grupos = bands(levels, min_quests)
        for n, g in enumerate(grupos):
            zones.append({
                "area": area, "name": router.zones[str(area)]["name"],
                "count": len(g), "median": pct(g, 0.5), "lo": pct(g, 0.15), "hi": pct(g, 0.85),
                # faixas disjuntas e sem buraco: cada leva vai do próprio início até
                # antes da seguinte (quest sem nível vai com a primeira); abaixo da
                # primeira, só até BAND_GAP níveis — mais que isso o jogador da faixa
                # já passou da quest
                "band": (g[0] - BAND_GAP if n == 0 else g[0],
                         grupos[n + 1][0] - 1 if n + 1 < len(grupos) else 999),
                "primeira": n == 0,
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
    for velho in os.listdir(out_dir):
        if velho.endswith(".lua"):
            os.remove(os.path.join(out_dir, velho))

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
        if q["zoneOrSort"] in FORA_DO_LEVELING or q.get("reqSkill"):
            continue
        caps, in_zone = set(), False
        for n in q["startNpcs"]:
            npc = router.npc(n)
            if not npc:
                continue
            for a in npc.get("spawns", {}):
                if int(a) in SKIP_AREAS:
                    caps.add(int(a))
                elif int(a) in zone_areas:
                    in_zone = True
        alvos = [z for z in zones if z["area"] not in ISOLADAS]
        if caps and not in_zone and alvos:
            casa = {CAPITAL_HOME.get(c) for c in caps}
            tgt = min(alvos, key=lambda z: (0 if z["lo"] <= ql <= z["hi"] else 1,
                                            0 if z["area"] in casa else 1,
                                            abs(z["median"] - ql)))
            cap_assign[tgt["key"]].add(int(qid))     # por guia: a zona pode ter duas faixas

    used = set()
    files = []
    for i, z in enumerate(zones):
        # a cadeia não passa pela ilha da raça nova: só quem nasce lá vai para lá
        nxt = next((n for n in zones[i + 1:] if n["area"] not in ISOLADAS), None)
        next_key = nxt["key"] if nxt else None
        travel = nxt["entry"] if nxt else None
        de, ate = z["band"]

        def na_faixa(q):
            ql = q["questLevel"] or 0
            return (ql <= 0 and z["primeira"]) or de <= ql <= ate
        fora = {qid for qid, q in router.select(z["area"], faction, level_max).items()
                if not na_faixa(q)}
        text, n, qids = router.generate_zone(
            z["area"], faction, z["title"], level_max,
            next_key=next_key, exclude=used | fora, travel_to=travel,
            include=cap_assign.get(z["key"], set()) - used)
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
            if (f not in all_files and f not in extra
                    and os.path.exists(os.path.join(GUIDE_ROOT, f))):
                extra.append(f)
    lines = ['<Ui xmlns="http://www.blizzard.com/wow/ui/">']
    for rel in all_files + extra:
        lines.append('    <Script file="%s"/>' % rel)
    lines.append("</Ui>")
    with open(path, "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines) + "\n")
    print("manifest: %s (%d gerados + %d preservados)" % (path, len(all_files), len(extra)))


def main():
    level_max = int(sys.argv[1]) if len(sys.argv) > 1 else 60
    min_quests = int(sys.argv[2]) if len(sys.argv) > 2 else 6
    data = load_data()
    all_files = []
    for faction in ("A", "H"):
        print("=== %s ===" % ("Alliance" if faction == "A" else "Horde"))
        all_files += gen_faction(Router(data, faction), faction, level_max, min_quests)
    write_xml(all_files)


if __name__ == "__main__":
    main()
