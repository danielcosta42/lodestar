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
from collections import Counter, defaultdict

from router import CAPITAIS, FORA_DO_LEVELING, VANILLA_RACES, Router, continente, load_data, esc

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
# Zonas onde alguma raça nasce: o guia delas não abre mandando ao mestre de voo
# (o de Elwynn fica em Goldshire, longe de Northshire), e a cadeia de outra raça
# não passa por elas — quem termina Teldrassil segue para Darkshore, não Elwynn.
INICIAIS = {12, 1, 141, 14, 215, 85, 16593}

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
# Largura máxima de uma passada contínua: a de uma zona inicial (1-12). Acima
# disso a zona vira duas passadas, como Stranglethorn 30-41 e 42-50.
BAND_WIDTH = 12


def pct(sorted_vals, p):
    if not sorted_vals:
        return 0
    i = min(len(sorted_vals) - 1, int(p * (len(sorted_vals) - 1)))
    return sorted_vals[i]


def _giver_area(router, q):
    """Primeira área (com nome) onde a quest começa: o NPC que a dá, o objeto que
    se clica (os Syndicate Documents de Alterac) ou a fonte do item que a inicia."""
    fontes = [router.npc(n) for n in q["startNpcs"]] + [router.obj(o) for o in q["startObjects"]]
    for e in fontes:
        for area in (e or {}).get("spawns", {}):
            if str(int(area)) in router.zones:
                return int(area)
    for iid in q["startItems"]:
        src = router.item_source(iid)
        if src and src[3] and str(int(src[3][0])) in router.zones:
            return int(src[3][0])
    return None


def bands(levels, min_quests):
    """Níveis (ordenados) -> grupos, cortando onde há BAND_GAP níveis sem quest e
    em passadas de BAND_WIDTH níveis quando a leva é contínua mas larga (Stranglethorn
    vai do 30 ao 60: num guia só, a quest de 45 caía para quem tem 35).

    Grupo pequeno não vira guia sozinho:
      * menos de 2x`min_quests`, colado ao vizinho mais próximo: junta, se a passada
        não passar de BAND_WIDTH+3 níveis (as sete quests de nível 13 no fim de
        Zephras Isle são o fim da ilha, não uma passada própria);
      * menos de `min_quests` e a BAND_GAP níveis de um grupo de verdade: fica de
        fora (três quests de nível 60 em The Barrens não são rota);
      * menos de `min_quests` no resto dos casos: junta (os dois grupinhos de
        Alterac da Aliança viram um guia)."""
    grupos = [[levels[0]]]
    for lv in levels[1:]:
        largo = lv - grupos[-1][0] >= BAND_WIDTH and len(grupos[-1]) >= min_quests
        if lv - grupos[-1][-1] >= BAND_GAP or largo:
            grupos.append([lv])
        else:
            grupos[-1].append(lv)

    def vao(a, b):
        return grupos[b][0] - grupos[a][-1]

    while len(grupos) > 1:
        acao = None
        for i, g in enumerate(grupos):
            if len(g) >= 2 * min_quests:
                continue
            vizinhos = [j for j in (i - 1, i + 1) if 0 <= j < len(grupos)]
            j = min(vizinhos, key=lambda j: vao(min(i, j), max(i, j)))
            a, b = min(i, j), max(i, j)
            longe = vao(a, b) >= BAND_GAP
            if len(g) < min_quests and longe and len(grupos[j]) >= min_quests:
                acao = ("fora", i, a, b)
            elif len(g) < min_quests or (not longe and grupos[b][-1] - grupos[a][0] <= BAND_WIDTH + 3):
                acao = ("junta", i, a, b)
            if acao:
                break
        if not acao:
            break
        tipo, i, a, b = acao
        if tipo == "fora":
            del grupos[i]
        else:
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
        # contagem estrita p/ detectar território inimigo (independe de fac_ok), com
        # as quests de masmorra: sem elas, Western Plaguelands parecia da Aliança
        if q["faction"] == "A":
            per_area[area]["sA"] += 1
        elif q["faction"] == "H":
            per_area[area]["sH"] += 1
        if router.em_masmorra(q):     # objetivo dentro de masmorra: guia de Dungeons
            continue
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
        # vazamento: zona dominada pela facção oposta (poucas quests próprias) e sem
        # neutras que superem as dela — Azshara é da Horda, mas as neutras dela
        # (Kim'jael, Loramus) são rota da Aliança também
        proprias, inimigas = (d["sA"], d["sH"]) if faction == "A" else (d["sH"], d["sA"])
        if inimigas > proprias and proprias < 3 and d["count"] - proprias < max(min_quests, inimigas):
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
                # primeira e acima da última, só até BAND_GAP níveis — além disso é o
                # grupinho isolado que `bands` deixou de fora
                "band": (g[0] - BAND_GAP if n == 0 else g[0],
                         grupos[n + 1][0] - 1 if n + 1 < len(grupos) else g[-1] + BAND_GAP - 1),
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

    for z in zones:
        z["entry"] = router.zone_entry(z["area"], faction, level_max)

    # -- quests de CAPITAL diluídas por nível --------------------------------
    # Quest cujo giver spawna numa capital (SKIP_AREAS) e em NENHUMA zona de
    # leveling normal cai no guia cuja faixa [lo,hi] contém o nível dela (mediana
    # mais próxima como desempate). O `exclude` acumulado evita duplicar.
    zone_areas = {z["area"] for z in zones}
    cap_assign = defaultdict(set)
    for qid, q in router.quests.items():
        ql = q["questLevel"] or 0
        if not (1 <= ql <= level_max) or not router.de_leveling(q, faction, level_max):
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
        alvos = [i for i, z in enumerate(zones) if z["area"] not in ISOLADAS]
        if caps and not in_zone and alvos:
            casa = {CAPITAL_HOME.get(c) for c in caps}
            # onde ela se resolve manda no continente: "Brother Anton", de Stormwind
            # para Desolace, vai no guia de Kalimdor (no de Duskwood seria cortada)
            it = router._info({int(qid): q}, -1)[int(qid)]
            areas = {int(p[0]) for p in (it["ec"], it["oc"], it["ic"])
                     if p and int(p[0]) not in CAPITAIS[faction]}
            destino = {continente(a, faction) for a in areas}
            cont = destino or {continente(c, faction) for c in caps}
            # e a zona: "Feralas: A History", de Darnassus, vai no guia de Feralas
            # (pega na capital antes de ir) — não num "Teldrassil 48-55" de recados
            tgt = min(alvos, key=lambda i: (bool(destino) and continente(zones[i]["area"], faction) not in cont,
                                            not (zones[i]["area"] in areas
                                                 and zones[i]["lo"] - 5 <= ql <= zones[i]["hi"] + 5),
                                            0 if zones[i]["lo"] <= ql <= zones[i]["hi"] else 1,
                                            0 if zones[i]["area"] in casa else 1,
                                            0 if continente(zones[i]["area"], faction) in cont else 1,
                                            abs(zones[i]["median"] - ql)))
            cap_assign[tgt].add(int(qid))            # por guia: a zona pode ter duas faixas

    def gerar(i, used, next_key=None, travel=None, title="?", fixas=None):
        """`used`: o que os guias gerados antes já levam — fica de fora daqui, e o
        pré-requisito que está lá conta como feito."""
        z = zones[i]
        de, ate = z["band"]
        inicial = z["area"] in INICIAIS and z["primeira"]

        def na_faixa(q):
            ql = q["questLevel"] or 0
            return (ql <= 0 and z["primeira"]) or de <= ql <= ate
        fora = {qid for qid, q in router.select(z["area"], faction, level_max).items()
                if not na_faixa(q)}
        return router.generate_zone(
            z["area"], faction, title, level_max,
            next_key=next_key, exclude=used | fora, travel_to=travel,
            include=cap_assign.get(i, set()) - used, fp=not inicial,
            feitas=used, nivel_inicial=1 if inicial else max(1, z["lo"] - 1), fixas=fixas)

    # Passada 1: o que cada guia leva. Título e faixa saem daí, não da descoberta:
    # um grupinho de nível 60 que a descoberta colou na zona (as de Onyxia em
    # Dustwallow) fazia "35-60" de um guia que para no 51 — e a cadeia, montada
    # pela faixa da descoberta, ia de Tanaris 45-50 para um Dustwallow só de 60.
    used, feitos = set(), []
    for i, z in enumerate(zones):
        text, n, qids = gerar(i, used)
        if not text or n == 0:
            continue
        used.update(qids)
        lo, hi, med = faixa_do_guia(router, qids) or (z["lo"], z["hi"], z["median"])
        titulo = "%s (%d-%d)" % (z["name"], lo, hi)
        if any(f["titulo"] == titulo for f in feitos):
            titulo = "%s (%d-%d)" % (z["name"], z["lo"], z["hi"])
        # a viagem do guia anterior leva ao primeiro passo deste, não à "entrada"
        # da zona inteira (Tirisfal 10-13 começa em Brill, não em Deathknell)
        primeiro = re.search(r"\|goto ([^|\n]+?) ([\d.]+),([\d.]+)", text)
        feitos.append({"i": i, "z": z, "lo": lo, "hi": hi, "med": med, "titulo": titulo,
                       "key": guide_key(faction, titulo), "qids": set(qids),
                       "entrada": (primeiro.group(1), primeiro.group(2), primeiro.group(3))
                       if primeiro else z["entry"]})
    feitos.sort(key=lambda f: (f["med"], f["lo"], f["i"]))

    # A cadeia é um caminho por continente que passa por todos os guias dele, em
    # ordem de nível — nenhum guia fica sem quem aponte para ele. Zona inicial de
    # cada raça e a ilha só entram como começo de cadeia; no fim do continente, a
    # cadeia atravessa para o primeiro guia do outro que ainda serve.
    def comeco(f):
        return f["z"]["area"] in ISOLADAS or (f["z"]["area"] in INICIAIS and f["z"]["primeira"])
    trilha = defaultdict(list)
    for f in feitos:
        if not comeco(f):
            trilha[continente(f["z"]["area"], faction)].append(f)

    def fim(c):                       # quando a trilha do continente acaba
        return (trilha[c][-1]["med"], c) if trilha[c] else (0, c)

    def proximo(f):
        cont = continente(f["z"]["area"], faction)
        lista = trilha[cont]
        if f in lista:
            k = lista.index(f)
            if k + 1 < len(lista):
                return lista[k + 1]
            # só atravessa quem acaba antes: com as duas trilhas terminando no 60,
            # "ir para o outro" valia dos dois lados e a cadeia virava um laço
            outro = [g for c, gs in trilha.items() if c != cont and fim(c) > fim(cont)
                     for g in gs if g["med"] >= f["med"]]
            return outro[0] if outro else None
        return next((g for g in lista if g["med"] >= f["hi"]), lista[0] if lista else None)

    # Cadeia que atravessa zonas (The Defias Brotherhood: Westfall -> Redridge ->
    # Westfall): a quest cujo pré-req fica num guia MAIS ADIANTE da trilha vai para
    # ele, no bloco final ("volte a Sentinel Hill"). No guia de origem ela ficaria
    # escondida atrás de `completed()` e a cadeia sumia. Zona inicial vem antes de
    # tudo; pré-req noutro continente fica só com a condição.
    guia_de = {q: f["i"] for f in feitos for q in f["qids"]}
    origem = dict(guia_de)
    while True:
        pos = {f["i"]: (cont, n) for cont, fs in trilha.items() for n, f in enumerate(fs)}
        for f in feitos:
            pos.setdefault(f["i"], (continente(f["z"]["area"], faction), -1))
        mudou = True
        while mudou:                  # só anda para a frente na trilha: termina
            mudou = False
            for q, i in list(guia_de.items()):
                qq = router.quests[str(q)]
                precisa = [guia_de[p] for p in qq["preGroup"] if p in guia_de]
                opcoes = [guia_de[p] for p in qq["preSingle"] if p in guia_de]
                if opcoes:
                    precisa.append(min(opcoes, key=lambda j: pos[j][1]))
                precisa = [j for j in precisa if pos[j][0] == pos[i][0] and pos[j][1] > pos[i][1]]
                if precisa:
                    guia_de[q] = max(precisa, key=lambda j: pos[j][1])
                    mudou = True
        # guia que a realocação esvaziou (Thousand Needles 44-44 ficava com uma
        # quest) se dissolve no vizinho da trilha — outra faixa da mesma zona antes
        tamanho = Counter(guia_de.values())
        f = next((f for fs in trilha.values() for f in fs if tamanho[f["i"]] < min_quests), None)
        if not f:
            break
        lista = trilha[pos[f["i"]][0]]
        k = lista.index(f)
        resto = lista[:k] + lista[k + 1:]
        if not resto:
            break
        alvo = min(resto, key=lambda g: (g["z"]["area"] != f["z"]["area"],
                                         abs(lista.index(g) - k), lista.index(g) > k))
        for q, i in guia_de.items():
            if i == f["i"]:
                guia_de[q] = alvo["i"]
        lista.remove(f)
        feitos.remove(f)
        print("  [%s] %s dissolvido em %s" % (faction, f["titulo"], alvo["titulo"]))

    print("  [%s] realocadas para guia mais adiante: %d"
          % (faction, sum(guia_de[q] != origem[q] for q in guia_de)))
    conj = defaultdict(set)
    for q, i in guia_de.items():
        conj[i].add(q)
    # o título acompanha o que o guia leva depois da realocação
    titulos = set()
    for f in feitos:
        f["lo"], f["hi"], f["med"] = faixa_do_guia(router, conj[f["i"]]) or (f["lo"], f["hi"], f["med"])
        f["titulo"] = "%s (%d-%d)" % (f["z"]["name"], f["lo"], f["hi"])
        if f["titulo"] in titulos:
            f["titulo"] = "%s (%d-%d)" % (f["z"]["name"], f["z"]["lo"], f["z"]["hi"])
        titulos.add(f["titulo"])
        f["key"] = guide_key(faction, f["titulo"])
    seguinte = {f["i"]: proximo(f) for f in feitos}
    por_i = {f["i"]: f for f in feitos}

    # Passada 2: o texto final, com a cadeia, a viagem e exatamente o que foi atribuído.
    used, files, perdidas = set(), [], 0
    for i, z in enumerate(zones):
        f = por_i.get(i)
        if not f:
            continue
        nxt = seguinte[i]
        text, n, qids = gerar(i, used, nxt["key"] if nxt else None,
                              nxt["entrada"] if nxt else None, f["titulo"], fixas=conj[i])
        if not text:                  # a cadeia aponta para ele
            sys.exit("guia vazio na passada 2: %s" % f["titulo"])
        perdidas += len(conj[i] - set(qids))
        used.update(qids)
        path = os.path.join(out_dir, fname_for(f["titulo"]))
        with open(path, "w", encoding="utf-8") as fh:
            fh.write(text)
        files.append("%s/%s" % (fac_dir, os.path.basename(path)))
        print("  [%s] %-34s lvl~%2d  quests=%d" % (faction, f["titulo"], f["med"], n))
    print("  [%s] atribuídas que a passada final tirou (exclusivas, sem giver): %d" % (faction, perdidas))
    return files


def faixa_do_guia(router, qids):
    """(lo, hi, mediana) das quests que o guia leva: percentis 15, 85 e 50, como na
    descoberta, sem quest de classe ou só de Skyborne quando houver outras."""
    qs = [router.quests[str(i)] for i in qids if str(i) in router.quests]
    todos = sorted(q["questLevel"] for q in qs if (q["questLevel"] or 0) > 0)
    rota = sorted(q["questLevel"] for q in qs if (q["questLevel"] or 0) > 0 and not q["classes"]
                  and not (q["races"] and not q["races"] & VANILLA_RACES))
    lv = rota or todos
    return (pct(lv, 0.15), pct(lv, 0.85), pct(lv, 0.5)) if lv else None


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
