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

from router import CAPITAIS, FORA_DO_LEVELING, VANILLA_RACES, ZONA_MAE, Router, continente, load_data, esc

GUIDE_ROOT = os.path.join(os.path.dirname(__file__), "..", "Guides", "Leveling")

# Capitais de facção: são hubs, não zonas de leveling — fora da cadeia.
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
# A cadeia é uma só por facção, os guias dos dois continentes intercalados por nível. Por
# continente (até a #59) o morto-vivo ia de Hillsbrad 22-28 a Hillsbrad 32-39 no nível 23
# — o conteúdo de 28-32 da Horda é de Kalimdor — e a cadeia não dava XP para chegar ao 60
# (o jogador simulado terminava no ~50, com mil aceites acima do nível). Ela só troca de
# continente quando o próximo guia daqui passa FICA_NIVEIS do próximo de lá: com 0 eram
# 16-20 travessias por cadeia; com 3, 7-9 e o mesmo nível; com 5, os aceites cinza voltam.
FICA_NIVEIS = 3


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
                return ZONA_MAE.get(int(area), int(area))     # Shen'dralas é de Desolace
    for iid in q["startItems"]:
        src = router.item_source(iid)
        if src and src[3] and str(int(src[3][0])) in router.zones:
            return ZONA_MAE.get(int(src[3][0]), int(src[3][0]))
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
    # A saída da ilha vai com o guia dela: quest só de Skyborne que quem recebe a última de
    # lá dá (Welcome to Azeroth, de Denaaris em Dalaran), a cadeia que segue (Exploring the
    # Alliance) e o que depende dela (Journey to Sentinel Hill, pega de Bolvar na hora, não
    # depois de ir e voltar de Sentinel Hill). Sem ela nenhum guia tinha a 94947, e o resto
    # nunca abria.
    def so_skyborne(q):
        return bool(q["races"]) and not q["races"] & VANILLA_RACES
    for i, z in enumerate(zones):
        if z["area"] not in ISOLADAS:
            continue
        enders = {n for q in router.select(z["area"], faction, level_max).values() for n in q["endNpcs"]}
        fila = [int(k) for k, q in router.quests.items()
                if so_skyborne(q) and set(q["startNpcs"]) & enders and router.de_leveling(q, faction, level_max)]
        while fila:
            k = fila.pop()
            q = router.quests.get(str(k))
            if q and so_skyborne(q) and k not in cap_assign[i] and router.de_leveling(q, faction, level_max):
                cap_assign[i].add(k)
                fila += [q["nextInChain"]] if q["nextInChain"] else []
                fila += [int(d) for d, qd in router.quests.items() if k in qd["preSingle"] + qd["preGroup"]]
    ilha = set().union(*(cap_assign[i] for i in list(cap_assign)))
    entre_continentes = 0
    for qid, q in router.quests.items():
        if int(qid) in ilha:
            continue
        ql = q["questLevel"] or 0
        if not (1 <= ql <= level_max) or not router.de_leveling(q, faction, level_max):
            continue
        caps, in_zone = set(), False
        # objeto também: o Sealed Crate de Stormwind continua The Legend of Stalvan
        for npc in [router.npc(n) for n in q["startNpcs"]] + [router.obj(o) for o in q["startObjects"]]:
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
            # onde ela se resolve manda no continente
            it = router._info({int(qid): q}, -1)[int(qid)]
            areas = {int(p[0]) for p in (it["ec"], it["oc"], it["ic"])
                     if p and int(p[0]) not in CAPITAIS[faction]}
            destino = {continente(a, faction) for a in areas}
            # breadcrumb entre continentes ("Reclaimers' Business in Desolace", de
            # Ironforge) abria o guia de Desolace mandando quem está em Kalimdor a
            # Ironforge: a trilha é por continente e não passa na capital do outro
            # e de capital a capital do outro lado (Assisting Arch Druid Runetotem, de Undercity a
            # Thunder Bluff: ida e volta de zepelim por 470 de XP no meio de Blasted Lands)
            capital_la = {continente(int(it["ec"][0]), faction)} - {continente(c, faction) for c in caps} \
                if it["ec"] and int(it["ec"][0]) in CAPITAIS[faction] and not areas and not q["classes"] else set()
            if destino and not destino & {continente(c, faction) for c in caps} or capital_la:
                entre_continentes += 1
                continue
            cont = destino or {continente(c, faction) for c in caps}
            # e a zona: "Feralas: A History", de Darnassus, vai no guia de Feralas
            # (pega na capital antes de ir) — não num "Teldrassil 48-55" de recados.
            # Continente antes da faixa, sempre: "Hidden Enemies", do Thrall, abria o
            # guia de Silverpine mandando o jogador de Brill a Orgrimmar
            tgt = min(alvos, key=lambda i: (continente(zones[i]["area"], faction) not in cont,
                                            not (zones[i]["area"] in areas
                                                 and zones[i]["lo"] - 5 <= ql <= zones[i]["hi"] + 5),
                                            0 if zones[i]["lo"] <= ql <= zones[i]["hi"] else 1,
                                            0 if zones[i]["area"] in casa else 1,
                                            abs(zones[i]["median"] - ql)))
            cap_assign[tgt].add(int(qid))            # por guia: a zona pode ter duas faixas
    print("  [%s] breadcrumbs de capital entre continentes fora: %d" % (faction, entre_continentes))

    def gerar(i, used, next_key=None, travel=None, title="?", fixas=None, lo=None,
              adiar_zonas=None, adiar_fixo=None, herdadas=None):
        """`used`: o que os guias gerados antes já levam — fica de fora daqui, e o
        pré-requisito que está lá conta como feito. `lo`: o nível de baixo das quests que
        o guia leva (o da descoberta, a zona inteira, punha Tanaris 53-60 a começar no 56)."""
        z = zones[i]
        de, ate = z["band"]
        inicial = z["area"] in INICIAIS and z["primeira"]

        def na_faixa(q):
            ql = q["questLevel"] or 0
            return (ql <= 0 and z["primeira"]) or de <= ql <= ate
        fora = {qid for qid, q in router.select(z["area"], faction, level_max).items()
                if not na_faixa(q)}
        if z["area"] not in ISOLADAS:    # a saída da ilha é dela: Mulgore 4-10 levava a 95350
            fora |= ilha
        return router.generate_zone(
            z["area"], faction, title, level_max,
            next_key=next_key, exclude=used | fora, travel_to=travel,
            include=cap_assign.get(i, set()) - used, fp=not inicial,
            feitas=used, nivel_inicial=1 if inicial else max(1, (lo or z["lo"]) - 1), fixas=fixas,
            adiar_zonas=adiar_zonas, adiar_fixo=adiar_fixo, herdadas=herdadas)

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
        # da zona inteira (Tirisfal 10-13 começa em Brill, não em Deathknell) — o
        # primeiro que vale para todos: o de uma classe só mandava os outros à toa
        primeiro = next((m for bloco in text.split("\nstep\n") if "\n  only " not in "\n" + bloco
                         for m in [re.search(r"\|goto ([^|\n]+?) ([\d.]+),([\d.]+)", bloco)] if m), None)
        feitos.append({"i": i, "z": z, "lo": lo, "hi": hi, "med": med, "titulo": titulo,
                       "key": guide_key(faction, titulo), "qids": set(qids),
                       "entrada": (primeiro.group(1), primeiro.group(2), primeiro.group(3))
                       if primeiro else z["entry"]})
    feitos.sort(key=lambda f: (f["med"], f["lo"], f["i"]))

    # A cadeia passa por todos os guias da facção, os dos dois continentes intercalados
    # por nível (`intercalada`, FICA_NIVEIS) — nenhum guia fica sem quem aponte para ele.
    # Zona inicial de cada raça e a ilha só entram como começo de cadeia: dela, o
    # primeiro guia do próprio continente que serve. Cada continente guarda a própria
    # trilha (a realocação abaixo anda nela).
    def comeco(f):
        return f["z"]["area"] in ISOLADAS or (f["z"]["area"] in INICIAIS and f["z"]["primeira"])
    trilha = defaultdict(list)
    for f in feitos:
        if not comeco(f):
            trilha[continente(f["z"]["area"], faction)].append(f)

    def intercalada():
        """As trilhas dos continentes numa só, na ordem de nível, sem mexer na ordem de
        cada uma (a realocação conta com ela); fica no continente enquanto o próximo
        de lá não passar FICA_NIVEIS do próximo do outro lado."""
        pos = {c: 0 for c in trilha}
        out, cont = [], None
        while any(pos[c] < len(gs) for c, gs in trilha.items()):
            vivos = [c for c, gs in trilha.items() if pos[c] < len(gs)]
            melhor = min(vivos, key=lambda c: (trilha[c][pos[c]]["med"], trilha[c][pos[c]]["lo"]))
            if cont in vivos and trilha[cont][pos[cont]]["med"] <= trilha[melhor][pos[melhor]]["med"] + FICA_NIVEIS:
                melhor = cont
            out.append(trilha[melhor][pos[melhor]])
            pos[melhor] += 1
            cont = melhor
        return out

    def proximo(f):
        vivos = [g for g in ordem if any(g in gs for gs in trilha.values())]
        if f in vivos:
            k = vivos.index(f)
            return vivos[k + 1] if k + 1 < len(vivos) else None
        lista = trilha[continente(f["z"]["area"], faction)]
        return next((g for g in lista if g["med"] >= f["hi"]), lista[0] if lista else None)

    # Cadeia que atravessa zonas (The Defias Brotherhood: Westfall -> Redridge ->
    # Westfall): a quest cujo pré-req fica num guia MAIS ADIANTE da trilha vai para
    # ele, no bloco final ("volte a Sentinel Hill"). No guia de origem ela ficaria
    # escondida atrás de `completed()` e a cadeia sumia. Zona inicial vem antes de
    # tudo. Pré-req noutro continente, mais adiante na cadeia: o primeiro guia daqui
    # depois dele (Devils in Westfall pede a de Stonetalon; antes ficava só com a
    # condição, que fechada nunca abria).
    ordem = intercalada()
    gidx = {f["i"]: n for n, f in enumerate(ordem)}
    guia_de = {q: f["i"] for f in feitos for q in f["qids"]}
    origem = dict(guia_de)
    while True:
        pos = {f["i"]: (cont, n) for cont, fs in trilha.items() for n, f in enumerate(fs)}
        for f in feitos:
            pos.setdefault(f["i"], (continente(f["z"]["area"], faction), -1))
        # Nível: quest que pede mais que o teto do guia vai para o guia seguinte da
        # trilha que o alcança. "Call of Water" (20) num Westfall 12-18 travava no
        # NPC, que não a oferece a quem chega com 18. Sem +1: com a folga do portão, quem
        # chegava no topo pulava The Algaz Gauntlet (19) no fim de Loch Modan 11-18, e a
        # cadeia de Menethil sumia.
        # O teto é o do título final (o que o guia leva agora), até nada mais mudar.
        subiu = True
        while subiu:
            subiu = False
            leva = defaultdict(set)
            for q, i in guia_de.items():
                leva[i].add(q)
            teto = {f["i"]: (faixa_do_guia(router, leva[f["i"]]) or (0, f["hi"], 0))[1] for f in feitos}
            for q, i in list(guia_de.items()):
                req = router.nivel_pedido(q, router.quests[str(q)])   # a de grupo, pelo nível dela
                if i not in teto or req <= teto[i]:
                    continue
                cont, n = pos[i]
                adiante = [g for g in trilha.get(cont, []) if pos[g["i"]][1] > n]
                # quando só o nível de grupo passa do teto, só outra faixa da mesma zona: Gnogaine
                # (elite, 27) ia de Dun Morogh 13-26 para Duskwood 21-28, uma viagem por quest de
                # grupo; sem faixa da zona adiante que comece perto dela, fica opcional pelo nível
                # (Tharil'zun, 25, não vai a Redridge 54-60: lá é cinza)
                if (router.quests[str(q)].get("reqLevel") or 0) <= teto[i]:
                    adiante = [g for g in adiante if g["z"]["area"] == zones[i]["area"]
                               and teto[g["i"]] >= req and g["lo"] <= req + 4]
                if adiante:
                    guia_de[q] = next((g for g in adiante if teto[g["i"]] >= req), adiante[-1])["i"]
                    subiu = True
        mudou = True
        while mudou:                  # só anda para a frente na trilha: termina
            mudou = False
            for q, i in list(guia_de.items()):
                qq = router.quests[str(q)]
                precisa = [guia_de[p] for p in qq["preGroup"] if p in guia_de]
                opcoes = [guia_de[p] for p in qq["preSingle"] if p in guia_de]
                if opcoes:
                    precisa.append(min(opcoes, key=lambda j: gidx.get(j, -1)))   # a primeira na cadeia
                fora = [j for j in precisa if pos[j][0] != pos[i][0]
                        and gidx.get(j, -1) > gidx.get(i, -1)]
                precisa = [j for j in precisa if pos[j][0] == pos[i][0] and pos[j][1] > pos[i][1]]
                if precisa:
                    guia_de[q] = max(precisa, key=lambda j: pos[j][1])
                    mudou = True
                elif fora:               # pré-req noutro continente, mais adiante na cadeia:
                    depois = max(gidx[j] for j in fora)   # o primeiro guia daqui depois dele
                    alvo = next((g for g in ordem[depois + 1:] if pos.get(g["i"], (None,))[0] == pos[i][0]
                                 and any(g in gs for gs in trilha.values())), None)
                    if alvo and gidx[alvo["i"]] > gidx.get(i, -1):   # zona inicial não está em `ordem`
                        guia_de[q] = alvo["i"]
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
    # Duas vezes: a viagem do fim de um guia vai ao primeiro passo do seguinte, e esse
    # passo só se sabe no texto final dele (Hinterlands 43-48 começa em Stormwind, não
    # na entrada da zona que a passada 1 viu — o jogador voava a Aerie Peak e voltava).
    def primeiro_passo(text):
        m = next((m for bloco in text.split("\nstep\n") if "\n  only " not in "\n" + bloco
                  for m in [re.search(r"\|goto ([^|\n]+?) ([\d.]+),([\d.]+)", bloco)] if m), None)
        return (m.group(1), m.group(2), m.group(3)) if m else None

    # Entrega numa zona que um guia mais adiante visita espera por ele (It's a Secret to
    # Everybody, de Un'Goro, ia a Winterspring e voltava; Journey to Sentinel Hill é do guia de
    # Westfall, que começa em Stormwind): o primeiro guia da cadeia — o seguinte também — que
    # pega, entrega ou faz alguma quest naquela zona, até 5 níveis acima deste (Messenger to
    # Darkshire, de nível 18, esperava o Redridge 54-60), se nada nos guias do meio pede a quest.
    def pede(qs):
        return {p for q in qs for p in router.quests[str(q)]["preSingle"] + router.quests[str(q)]["preGroup"]}

    def visita(g, ficam=None):
        """As zonas onde o guia pega ou faz quest (a área dele e o resto). Entrega só conta a que
        a rodada anterior viu ficar no guia (`ficam`): na primeira ela mesma podia ser adiada, e o
        guia ia lá só pela herdada (Mazen's Behest levava Badlands 37-43 a Blasted Lands por uma
        entrega que Hinterlands também adiava). Sem ela, Duskwood 21-28 não "ia" a Ironforge e
        Darkshore atravessava o mar por The Powers Below."""
        info = router._info({q: router.quests[str(q)] for q in conj[g] if router.para_todos(router.quests[str(q)])},
                            zones[g]["area"])   # quest de classe ou raça não leva todo mundo lá
        return {zones[g]["area"]} | {int(p[0]) for it in info.values() for p in (it["gc"], it["oc"]) if p} \
            | {int(it["ec"][0]) for q, it in info.items() if it["ec"] and ficam is not None and q in ficam}

    zonas_de = {f["i"]: visita(f["i"]) for f in feitos}

    def mais_adiante(i):
        """{zona: (guia, quests pedidas pelos guias do meio)} na cadeia depois deste."""
        out, vistos, meio, g = {}, {i}, set(), seguinte[i]
        while g and g["i"] not in vistos and g["lo"] <= por_i[i]["hi"] + 5:
            vistos.add(g["i"])
            for a in zonas_de[g["i"]] - {zones[i]["area"]} - set(out):
                out[a] = (g["i"], set(meio))
            meio |= pede(conj[g["i"]])
            g = seguinte[g["i"]]
        return out
    adiante = {f["i"]: mais_adiante(f["i"]) for f in feitos}
    adiou = {}                      # guia -> {quest: área}: decidido na rodada 1, repetido depois

    entrada = {f["i"]: f["entrada"] for f in feitos}
    # Rodadas que decidem o que adia, de novo até parar de mudar (no máximo 5), cada uma com as
    # herdadas e as entregas que ficaram em cada guia na anterior: o guia que já vai a Ratchet por
    # uma herdada entrega a dele lá; Stonetalon adiava as próprias de Ironforge e ia lá só pela
    # The Powers Below que Darkshore lhe mandara. Depois, uma com as herdadas para o primeiro
    # passo de cada guia, e a que escreve.
    decide, fase, rodada, antes = True, None, 0, None
    while True:
        rodada += 1
        if decide and rodada > 1:     # a visita com as entregas que ficaram na rodada anterior
            zonas_de = {f["i"]: visita(f["i"], conj[f["i"]] - set(adiou.get(f["i"], {}))) for f in feitos}
            adiante = {f["i"]: mais_adiante(f["i"]) for f in feitos}
        escreve = fase == "escreve"
        used, files, perdidas = set(), [], 0
        herd = defaultdict(set)
        for i, d in adiou.items():
            for q, a in d.items():
                herd[adiante[i][a][0]].add(q)
        for i, z in enumerate(zones):
            f = por_i.get(i)
            if not f:
                continue
            nxt = seguinte[i]
            text, n, qids = gerar(i, used, nxt["key"] if nxt else None,
                                  entrada[nxt["i"]] if nxt else None, f["titulo"], fixas=conj[i], lo=f["lo"],
                                  adiar_zonas={a: (b, por_i[g]["lo"]) for a, (g, b) in adiante[i].items()}
                                  if decide else None,
                                  adiar_fixo=set(adiou.get(i, {})) if not decide else None, herdadas=herd[i])
            if not text:              # a cadeia aponta para ele
                sys.exit("guia vazio na passada 2: %s" % f["titulo"])
            perdidas += len(conj[i] - set(qids))
            used.update(qids)
            if decide:
                adiou[i] = dict(router.adiou)
            elif herd[i] - set(int(x) for x in re.findall(r"turnin [^#\n]+##(\d+)", text)):
                sys.exit("entrega adiada sem lugar em %s: %s" % (f["titulo"], sorted(herd[i])))
            if not escreve:
                entrada[i] = primeiro_passo(text) or entrada[i]
                continue
            path = os.path.join(out_dir, fname_for(f["titulo"]))
            with open(path, "w", encoding="utf-8") as fh:
                fh.write(text)
            files.append("%s/%s" % (fac_dir, os.path.basename(path)))
            print("  [%s] %-34s lvl~%2d  quests=%d" % (faction, f["titulo"], f["med"], n))
        if escreve:
            break
        if decide:
            if adiou == antes or rodada >= 5:
                decide, fase = False, "primeiro"
                print("  [%s] adiamentos decididos em %d rodadas%s" % (
                    faction, rodada, "" if adiou == antes else " (sem estabilizar)"))
            antes = {i: dict(d) for i, d in adiou.items()}
        else:
            fase = "escreve"
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
