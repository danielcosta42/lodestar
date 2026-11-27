"""Gera SpawnAreas.lua (issue #121): as áreas onde nasce o que cada objetivo de quest pede — o mob de `objCreatures`,
o objeto de `objObjects` e quem deixa cair (NPC ou objeto) o item de `objItems` —, para o mapa-múndi desenhar a mancha
de cada área (como o cliente de hoje) e a seta ir de uma área para a próxima.

Fonte: o banco do Forever que o import_forever.py montou (tools/build/forever/quests.json, npcs.json, objects.json,
items.json e zones.json, do QuestieDB). Por objetivo e por zona, os pontos de nascimento viram áreas por ligação
simples (dois pontos a até LIGA unidades do mapa ficam juntos); área mais larga que LARGA se parte ao meio pelo eixo
mais comprido, até caber. Sai o que é nascimento perdido: a zona com menos que ZONA dos pontos da que mais tem, e a
área com menos que RALA dos pontos da maior da zona dela, para cada mob ou objeto que nasce nela (por zona: a seta fica
na zona do passo; por fonte: o mob nomeado de um ponto só fica perto dos 30 do outro). Cada área leva o ponto de
nascimento mais perto do meio (o alvo da seta: um lugar onde o mob nasce de verdade, nunca o meio de um lago)
e o contorno convexo simplificado a até CANTOS pontos. Coordenadas da zona (0-100), de 0.1 em 0.1.

Entram todas as quests com objetivo no banco (não só as que os guias citam): o issue #122 lista os objetivos de
qualquer quest do diário que nascem perto. `--guias` gera só as dos guias (para medir).

    python3 tools/gen_spawnareas.py [--demo] [--guias]

Formato (SpawnAreas.lua):
    ns.spawnZones = { "Elwynn Forest", ... }
    ns.spawnQuest[id da quest] = { objetivo 1, objetivo 2, ..., a = { [id do NPC] = índice do objetivo } }
    objetivo = "<tipo><id>[;área][;área...]"
        tipo c (mob), o (objeto) ou i (item); a ordem é a do QuestieDB (mobs, objetos, itens), a mesma do diário.
        área = números de 2 letras em base 36 ("00".."zz", 0-1295), colados: zona (índice em ns.spawnZones), o
        ponto-alvo cx, cy, n pontos de nascimento e o contorno x1 y1 x2 y2...; coordenada x10 (45.2 -> 452 -> "ck").
        Em decimal o arquivo ficava perto do dobro. Sem contorno: a área é um ponto só.
        Objetivo sem área nenhuma (item de vendedor, que cai de qualquer mob) fica só com o tipo e o id: o índice dos
        seguintes não muda.
    a = o mob que o guia manda matar (`kill X##id |q quest`) que não é objetivo, mas deixa cair o item de um: aponta
        o objetivo do item.
"""
import json
import math
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, "..")
BANCO = os.path.join(HERE, "build", "forever")
OUT = os.path.join(ROOT, "SpawnAreas.lua")

LIGA = 6.0            # unidades do mapa (0-100) entre dois nascimentos da mesma área
LARGA = 22.0          # área mais larga que isso se parte
RALA = 0.08           # área com menos que isso dos pontos da maior do objetivo sai (nascimento perdido)
CANTOS = 10           # pontos do contorno, no máximo
AREAS = 12            # áreas por objetivo em cada zona, no máximo (as maiores)
ZONA = 0.10           # zona com menos que isso dos nascimentos da zona que mais tem sai (do objetivo)
TOTAL = 30            # áreas por objetivo, no máximo
DROPA = 40            # item que cai de mais mobs que isso cai de qualquer um: sem área
OBJETOS = 6           # item que sai de mais tipos de objeto que isso (baús espalhados): os objetos não entram
# zonas onde o guia não anda: masmorra, campo de batalha, mapa de continente
FORA = ("Alterac Valley", "Warsong Gulch", "Arathi Basin", "Deeprun Tram")


def carrega(nome):
    with open(os.path.join(BANCO, nome), encoding="utf-8") as h:
        return json.load(h)


# ── geometria (pura) ─────────────────────────────────────────────────────────
def liga(pts, d=LIGA):
    """Grupos por ligação simples: índices dos pontos de cada grupo (grade de lado d, união-busca)."""
    pai = list(range(len(pts)))

    def raiz(i):
        while pai[i] != i:
            pai[i] = pai[pai[i]]
            i = pai[i]
        return i

    grade = {}
    for i, (x, y) in enumerate(pts):
        grade.setdefault((int(x // d), int(y // d)), []).append(i)
    d2 = d * d
    for (gx, gy), lista in grade.items():
        for ox in (-1, 0, 1):
            for oy in (-1, 0, 1):
                outra = grade.get((gx + ox, gy + oy))
                if not outra:
                    continue
                for i in lista:
                    for j in outra:
                        if i < j and (pts[i][0] - pts[j][0]) ** 2 + (pts[i][1] - pts[j][1]) ** 2 <= d2:
                            a, b = raiz(i), raiz(j)
                            if a != b:
                                pai[a] = b
    grupos = {}
    for i in range(len(pts)):
        grupos.setdefault(raiz(i), []).append(i)
    return [sorted(g) for g in grupos.values()]


def parte(pts, larga=LARGA):
    """Grupo mais largo que `larga` (na direção mais comprida) se parte na mediana dela, até caber."""
    if len(pts) < 2:
        return [pts]
    mx = sum(p[0] for p in pts) / len(pts)
    my = sum(p[1] for p in pts) / len(pts)
    sxx = sum((p[0] - mx) ** 2 for p in pts)
    syy = sum((p[1] - my) ** 2 for p in pts)
    sxy = sum((p[0] - mx) * (p[1] - my) for p in pts)
    ang = 0.5 * math.atan2(2 * sxy, sxx - syy)          # o eixo principal
    ux, uy = math.cos(ang), math.sin(ang)
    proj = sorted(((p[0] - mx) * ux + (p[1] - my) * uy, i) for i, p in enumerate(pts))
    if proj[-1][0] - proj[0][0] <= larga:
        return [pts]
    meio = len(proj) // 2
    a = [pts[i] for _, i in proj[:meio]]
    b = [pts[i] for _, i in proj[meio:]]
    return parte(a, larga) + parte(b, larga)


def casco(pts):
    """Contorno convexo (cadeia monótona), no sentido anti-horário; 1 ou 2 pontos voltam como vieram."""
    p = sorted(set(pts))
    if len(p) <= 2:
        return p

    def cruz(o, a, b):
        return (a[0] - o[0]) * (b[1] - o[1]) - (a[1] - o[1]) * (b[0] - o[0])

    baixo, cima = [], []
    for q in p:
        while len(baixo) >= 2 and cruz(baixo[-2], baixo[-1], q) <= 0:
            baixo.pop()
        baixo.append(q)
    for q in reversed(p):
        while len(cima) >= 2 and cruz(cima[-2], cima[-1], q) <= 0:
            cima.pop()
        cima.append(q)
    return baixo[:-1] + cima[:-1]


def simplifica(h, n=CANTOS):
    """Tira o canto que menos área leva (Visvalingam) até sobrar `n`: o contorno segue convexo, por dentro."""
    h = list(h)
    while len(h) > n:
        menor, k = None, 0
        for i in range(len(h)):
            a, b, c = h[i - 1], h[i], h[(i + 1) % len(h)]
            area = abs((b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0]))
            if menor is None or area < menor:
                menor, k = area, i
        h.pop(k)
    return h


def distancia(h, x, y):
    """Do ponto ao contorno convexo `h` (0 dentro), nas unidades do mapa (a mesma conta do SA.PolyDist do Lua)."""
    if len(h) == 1:
        return math.hypot(h[0][0] - x, h[0][1] - y)
    pos = neg = False
    melhor = float("inf")
    for k in range(len(h)):
        (ax, ay), (bx, by) = h[k], h[(k + 1) % len(h)]
        cr = (bx - ax) * (y - ay) - (by - ay) * (x - ax)
        pos, neg = pos or cr > 1e-9, neg or cr < -1e-9
        dx, dy = bx - ax, by - ay
        L = dx * dx + dy * dy
        t = max(0.0, min(1.0, ((x - ax) * dx + (y - ay) * dy) / L)) if L else 0.0
        melhor = min(melhor, math.hypot(ax + t * dx - x, ay + t * dy - y))
    return 0.0 if len(h) >= 3 and not (pos and neg) else melhor


def areas(pts, todos=None):
    """Pontos de uma zona -> [(cx, cy, n, contorno)], da área com mais pontos para a com menos; com `todos`, a área
    leva também os pontos dela (o filtro sabe se ela tem todos os nascimentos de uma fonte)."""
    out = []
    for g in liga(pts):
        for sub in parte([pts[i] for i in g]):
            mx = sum(p[0] for p in sub) / len(sub)
            my = sum(p[1] for p in sub) / len(sub)
            alvo = min(sub, key=lambda p: (p[0] - mx) ** 2 + (p[1] - my) ** 2)
            h = simplifica(casco(sub))
            out.append((alvo[0], alvo[1], len(sub), h) + ((frozenset(sub),) if todos is not None else ()))
    out.sort(key=lambda a: -a[2])
    return out


def minimo(maior):
    """Os nascimentos que uma área precisa ter, perto da maior (`maior`): 1-2 na maior, tudo fica."""
    return 1 if maior <= 2 else max(2, math.ceil(RALA * maior))


def filtra(lista, conta=None, inteira=lambda a: False, teto=AREAS):
    """As áreas de uma zona: sai a rala perto da maior dela; no máximo `teto`. Por zona, não pelo objetivo inteiro: a
    seta fica na zona do passo, e o drop que cai muito numa zona e pouco em outra ainda tem área nesta. E por fonte
    (`conta(a)` -> {fonte: nascimentos dela na área}): a área fica se é rala para nenhuma das fontes dela — o mob
    nomeado de um ponto só não some perto dos 30 do outro mob que deixa cair o mesmo item. A que tem todos os
    nascimentos de uma fonte (`inteira`) passa na frente no teto."""
    if not lista:
        return lista
    if conta is None:
        m = minimo(max(a[2] for a in lista))
        boa = [a for a in lista if a[2] >= m]
    else:
        maior = {}
        for a in lista:
            for f, n in conta(a).items():
                maior[f] = max(maior.get(f, 0), n)
        boa = [a for a in lista if any(n >= minimo(maior[f]) for f, n in conta(a).items())]
    fica = sorted(boa, key=lambda a: (not inteira(a), -a[2]))
    return sorted(fica[:teto], key=lambda a: -a[2])


# ── do banco às áreas ────────────────────────────────────────────────────────
def guias():
    """As quests dos guias, os `kill X##npc |q quest` (npc, quest) de cada um e as zonas dos `|goto` de cada quest
    (`|q quest ... |goto Zona x,y`: a zona do passo fica mesmo com poucos nascimentos)."""
    sys.path.insert(0, HERE)
    from gen_questlevels import guide_ids
    mata, onde = set(), {}
    for base, _, files in os.walk(os.path.join(ROOT, "Guides")):
        for f in files:
            if f.endswith(".lua"):
                with open(os.path.join(base, f), encoding="utf-8") as h:
                    texto = h.read()
                for m in re.finditer(r"^\s*kill\s+[^#\n|]*##(\d+)[^\n]*?\|q (\d+)", texto, re.M):
                    mata.add((int(m.group(1)), int(m.group(2))))
                for linha in texto.split("\n"):
                    q = re.search(r"\|q (\d+)", linha)
                    z = re.search(r"\|goto ([^|]*?)\s+[\d.]+\s*,\s*[\d.]+", linha)
                    if q and z:
                        onde.setdefault(int(q.group(1)), set()).add(z.group(1).strip())
    return guide_ids(), mata, onde


def gera(so_guias=False):
    quests, npcs, objs, itens, zonas = (carrega(n) for n in
                                        ("quests.json", "npcs.json", "objects.json", "items.json", "zones.json"))
    ids_guia, mata, onde = guias()
    nomes, indice = [], {}

    def zona(area):
        z = zonas.get(str(area)) or {}
        nome = z.get("name")
        # zona sem mapa no cliente (bonde, salas sem uiMapId), masmorra, campo de batalha, continente: fora
        if not nome or not z.get("uiMapId") or " - " in nome or nome in FORA:
            return None
        if nome not in indice:
            indice[nome] = len(nomes) + 1
            nomes.append(nome)
        return indice[nome]

    def fora(area):
        """zona onde o guia não anda (masmorra, campo de batalha, continente, sem mapa): True"""
        z = zonas.get(str(area)) or {}
        nome = z.get("name")
        return not nome or not z.get("uiMapId") or " - " in nome or nome in FORA

    def fontes(item):
        """NPCs e objetos que deixam cair o item (e os das partes, se ele se monta delas)."""
        e = itens.get(str(item)) or {}
        if len(e.get("npc") or []) > DROPA or (e.get("vendor") and e.get("class") != 12):
            return [], []      # cai de qualquer um, ou se compra: o mapa não ajuda
        n, o = list(e.get("npc") or []), list(e.get("obj") or [])
        for p in e.get("partes") or []:
            pe = itens.get(str(p)) or {}
            n += pe.get("npc") or []
            o += pe.get("obj") or []
        # baú, erva e veio (o objeto que dá item de ofício: Linen Cloth de 10 baús, Gold Bar, Star Ruby, Liferoot) e o
        # item que sai de muitos tipos de objeto: o objeto não ajuda; sobra o mob, se houver
        if e.get("class") == 7 or len(o) > OBJETOS:
            o = []
        return n, o

    def objetivo(qid, tipo, i):
        if tipo == "c":
            lista_f = [(npcs, i)]
        elif tipo == "o":
            lista_f = [(objs, i)]
        else:
            n, o = fontes(i)
            lista_f = [(npcs, x) for x in n] + [(objs, x) for x in o]
        porzona = {}                # zona (índice) -> {ponto: {fontes}}
        conta = {}                  # nome da zona (as de fora também) -> nascimentos, o -1,-1 de masmorra incluído
        todos = {}                  # fonte -> {(zona, ponto)}: todos os nascimentos dela no mapa
        so_fora, no_mapa, n_fora, n_mapa = set(), set(), 0, 0
        for k, (tabela, sid) in enumerate(lista_f):
            fonte = (id(tabela), sid)
            for area, pts in ((tabela.get(str(sid)) or {}).get("spawns") or {}).items():
                nome = (zonas.get(str(area)) or {}).get("name") or str(area)
                for x, y in pts or []:
                    conta[nome] = conta.get(nome, 0) + 1
                    if fora(area) or x < 0 or y < 0:     # masmorra, ou o "-1,-1" de dentro dela
                        n_fora += 1
                        so_fora.add(fonte)
                        continue
                    z = zona(area)
                    p = (round(x, 1), round(y, 1))
                    porzona.setdefault(z, {}).setdefault(p, set()).add(fonte)
                    todos.setdefault(fonte, set()).add((z, p))
                    n_mapa += 1
                    no_mapa.add(fonte)
        # o objetivo de masmorra (mais fontes só lá dentro que no mapa, e mais nascimentos lá): o que sobra fora é
        # resto perdido (Fetish of Hakkar: 1 no pântano, 17 no templo)
        if len(so_fora - no_mapa) > len(no_mapa) and n_fora >= n_mapa:
            return []
        # zona com poucos nascimentos perto da que tem mais — as de masmorra contam — sai: é dado perdido. A zona de
        # um `|goto` do guia para a quest fica (Elemental Air: os Dust Devils de Westfall, poucos perto de Barrens).
        maior = max(conta.values(), default=0)
        lista = []
        for z in sorted(porzona):
            nome = nomes[z - 1]
            if conta.get(nome, 0) < ZONA * maior and nome not in onde.get(qid, ()):
                continue
            pts = porzona[z]

            def conta_(a, pts=pts):
                out = {}
                for p in a[4]:
                    for f in pts[p]:
                        out[f] = out.get(f, 0) + 1
                return out

            def inteira(a, z=z, pts=pts):
                dentro = {(z, p) for p in a[4]}
                return any(todos[f] <= dentro for p in a[4] for f in pts[p])

            lista += [(z, a[:4], inteira(a)) for a in filtra(areas(sorted(pts), todos), conta_, inteira)]
        # no teto, a área inteira de uma fonte passa na frente; depois, da maior área para a menor
        lista = sorted(lista, key=lambda t: (not t[2], -t[1][2]))[:TOTAL]
        return [(z, a) for z, a, _ in sorted(lista, key=lambda t: -t[1][2])]

    fim = {}
    for qid, q in quests.items():
        qid = int(qid)
        if so_guias and qid not in ids_guia:
            continue
        objetivos = ([("c", i) for i in q.get("objCreatures") or []] + [("o", i) for i in q.get("objObjects") or []]
                     + [("i", i) for i in q.get("objItems") or []])
        if not objetivos:
            continue
        lista = [(t, i, objetivo(qid, t, i)) for t, i in objetivos]
        if not any(a for _, _, a in lista):
            continue
        # o mob do guia que não é objetivo mas deixa cair o item de um
        alias = {}
        for npc, mq in mata:
            if mq != qid or any(t == "c" and i == npc for t, i, _ in lista):
                continue
            for k, (t, i, a) in enumerate(lista):
                if t == "i" and a and npc in fontes(i)[0]:
                    alias[npc] = k + 1
                    break
        fim[qid] = (lista, alias)
    return nomes, fim


# ── o arquivo ────────────────────────────────────────────────────────────────
B36 = "0123456789abcdefghijklmnopqrstuvwxyz"


def b36(v):
    """0-1295 em 2 letras de base 36 (o tonumber(s, 36) do Lua lê de volta)."""
    v = max(0, min(36 * 36 - 1, int(v)))
    return B36[v // 36] + B36[v % 36]


def coord(v):
    return b36(round(v * 10))


def texto(t, i, lista):
    partes = ["%s%d" % (t, i)]
    for z, (cx, cy, n, h) in lista:
        s = b36(z) + coord(cx) + coord(cy) + b36(n)
        if not (len(h) == 1 and h[0] == (cx, cy)):
            s += "".join(coord(x) + coord(y) for x, y in h)
        partes.append(s)
    return ";".join(partes)


def le(s):
    """O inverso de texto (para a conferência): (tipo, id, [(zona, cx, cy, n, contorno)])."""
    partes = s.split(";")
    t, i = partes[0][0], int(partes[0][1:])
    out = []
    for a in partes[1:]:
        v = [int(a[k:k + 2], 36) for k in range(0, len(a), 2)]
        h = [(v[k] / 10, v[k + 1] / 10) for k in range(4, len(v), 2)] or [(v[1] / 10, v[2] / 10)]
        out.append((v[0], v[1] / 10, v[2] / 10, v[3], h))
    return t, i, out


LINHA = 120           # o luacheck do repositório: linha de até 120


def quebra(s):
    """O texto de um objetivo em linhas de até LINHA: "cabeça;área" .. ";área" (o Lua emenda ao carregar)."""
    partes = s.split(";")
    linhas, cur = [], '"' + partes[0]
    for a in partes[1:]:
        if len(cur) + len(a) + 3 > LINHA - 2:
            linhas.append(cur + '"')
            cur = '\t..";' + a
        else:
            cur += ";" + a
    linhas.append(cur + '",')
    return linhas


def escreve(nomes, fim, out=OUT):
    zonas, cur = [], "\t"
    for n in nomes:
        z = '"%s", ' % n.replace('"', '\\"')
        if len(cur) + len(z) > LINHA:
            zonas.append(cur.rstrip())
            cur = "\t"
        cur += z
    zonas.append(cur.rstrip())
    linhas = [
        "-- gerado por tools/gen_spawnareas.py (issue #121) — não editar: rode o gerador",
        "-- ns.spawnQuest[quest] = { \"<c|o|i><id>;<área>;...\", ..., a = { [npc] = objetivo } }; área = números de",
        "-- 2 letras em base 36: zona, cx, cy, n, contorno x1 y1 ... (coordenada x10)",
        "-- (formato no cabeçalho do gerador; quem lê é o SpawnMap.lua)",
        "local _, ns = ...",
        "ns.spawnZones = {",
    ] + zonas + ["}", "ns.spawnQuest = {"]
    for qid in sorted(fim):
        lista, alias = fim[qid]
        campos = ['"%s"' % texto(t, i, a) for t, i, a in lista]
        if alias:
            campos.append("a={%s}" % ",".join("[%d]=%d" % (n, k) for n, k in sorted(alias.items())))
        uma = "[%d]={%s}," % (qid, ",".join(campos))
        if len(uma) <= LINHA:
            linhas.append(uma)
            continue
        # não cabe: um objetivo por linha, e o objetivo comprido em pedaços
        linhas.append("[%d]={" % qid)
        for t, i, a in lista:
            linhas += quebra(texto(t, i, a))
        if alias:
            linhas.append(campos[-1] + ",")
        linhas.append("},")
    linhas.append("}")
    with open(out, "w", encoding="utf-8", newline="\n") as h:
        h.write("\n".join(linhas) + "\n")


# ── conferência ──────────────────────────────────────────────────────────────
def demo(nomes, fim):
    # geometria
    g = liga([(0, 0), (5, 0), (10, 0), (40, 40)])
    assert sorted(len(x) for x in g) == [1, 3], g
    assert len(parte([(x, 50) for x in range(0, 60, 2)])) >= 3, "faixa de 58 unidades se parte"
    h = casco([(0, 0), (10, 0), (10, 10), (0, 10), (5, 5), (5, 0)])
    assert sorted(h) == [(0, 0), (0, 10), (10, 0), (10, 10)], h
    circ = [(50 + 10 * math.cos(a / 20 * 2 * math.pi), 50 + 10 * math.sin(a / 20 * 2 * math.pi)) for a in range(20)]
    assert len(simplifica(casco(circ))) == CANTOS
    quad = [(0, 0), (10, 0), (10, 10), (0, 10)]
    assert distancia(quad, 5, 5) == 0 and abs(distancia(quad, 13, 14) - 5) < 1e-9 and distancia([(1, 1)], 4, 5) == 5
    assert distancia(list(reversed(quad)), 5, 5) == 0, "o sentido do contorno não importa"
    # a área que tem todos os nascimentos de uma fonte não sai, mesmo rala
    so = [(1, 1, 30, [(1, 1)]), (50, 50, 1, [(50, 50)])]
    assert len(filtra(so)) == 1, "uma fonte: a rala sai"
    assert len(filtra(so, lambda a: {"comum": 30} if a[2] == 30 else {"nomeado": 1})) == 2, "a rala de outra fonte fica"
    assert len(filtra(so, lambda a: {"comum": a[2]})) == 1, "a rala da mesma fonte sai"
    assert filtra(so, lambda a: {a[2]: a[2]}, lambda a: a[2] == 1, teto=1)[0][2] == 1, "no teto, a inteira passa na frente"

    def area_de(q, k=0):
        return fim[q][0][k]

    # Kobold Camp Cleanup (7): Kobold Vermin (6) nasce no Echo Ridge Mine, Elwynn Forest, perto de 48-50, 33-37
    t, i, lista = area_de(7)
    assert t == "c" and i == 6 and lista, fim[7]
    z, (cx, cy, n, hull) = lista[0]
    assert nomes[z - 1] == "Elwynn Forest" and 44 < cx < 54 and 28 < cy < 42 and n >= 10, lista[0]
    assert 3 <= len(hull) <= CANTOS
    # Wolves Across the Border (33): Tough Wolf Meat (750) cai dos lobos de Elwynn (Young Wolf, Timber Wolf) e dos
    # de Dun Morogh (Ragged Young Wolf...): áreas nas duas zonas
    t, i, lista = area_de(33)
    zs = {nomes[z - 1] for z, _ in lista}
    assert t == "i" and i == 750 and len(lista) >= 2 and {"Elwynn Forest", "Dun Morogh"} <= zs, fim[33]
    # The Summoning (1713): Whirlwind Heart (6894) só do Cyclonian (6239), Alterac Mountains 80.3, 62.1 — um ponto
    t, i, lista = area_de(1713)
    assert t == "i" and len(lista) == 1, fim[1713]
    z, (cx, cy, n, hull) = lista[0]
    assert nomes[z - 1] == "Alterac Mountains" and abs(cx - 80.3) < 0.2 and abs(cy - 62.1) < 0.2 and n == 1
    assert fim[1713][1].get(6239) == 1, "o guia manda matar o Cyclonian: aponta o objetivo do Whirlwind Heart"
    # Cyclonian (1712): três itens na ordem do banco — Liferoot (3357) é o 1, Bloodscalp Tusk (3901) o 2
    if 1712 in fim:
        assert [i for _, i, _ in fim[1712][0]][:2] == [3357, 3901], fim[1712][0]
    # The People's Militia (14): o Defias Highwayman do guia (Moonbrook, 48.14,77.25) cai dentro da área grande dele
    t, i, lista = area_de(14)
    perto = min(lista, key=lambda za: distancia(za[1][3], 48.14, 77.25))
    assert t == "c" and i == 122 and distancia(perto[1][3], 48.14, 77.25) == 0 and perto[1][2] >= 20, lista
    # Gor'tesh the Brute Lord (3824): a cabeça cai do Gor'tesh (um nascimento só, onde o guia manda) e do Grubbub
    # (3): a área do Gor'tesh fica, mesmo menor que a rala
    t, i, lista = area_de(3824)
    assert any(abs(a[0] - 39.3) < 0.2 and abs(a[1] - 55.3) < 0.2 and a[2] == 1 for _, a in lista), lista
    # Gathering Materials (1921): Linen Cloth sai de baús (item de ofício): sem área; o Charged Rift Gem, das caixas
    assert not area_de(1921, 0)[2] and area_de(1921, 1)[2], fim[1921]
    # The Temple of Atal'Hakkar (1445): o Fetish of Hakkar cai dentro do templo; o 1 de fora (pântano) não vira área
    assert 1445 not in fim or not any(l for _, _, l in fim[1445][0]), fim.get(1445)
    # Insane Druids (1012): três mobs, um objetivo cada, na ordem
    assert [i for _, i, _ in fim[1012][0]] == [3940, 3941, 3942]
    assert all(len(h) <= CANTOS for v in fim.values() for _, _, l in v[0] for _, (_, _, _, h) in l)
    assert all(len(l) <= TOTAL and all(sum(1 for z, _ in l if z == zz) <= AREAS for zz, _ in l)
               for v in fim.values() for _, _, l in v[0])
    assert len(fim) > 1500, len(fim)
    # o texto do arquivo volta igual
    for q in (7, 33, 1713):
        for t, i, lista in fim[q][0]:
            t2, i2, back = le(texto(t, i, lista))
            assert (t2, i2) == (t, i) and len(back) == len(lista)
            for (z, (cx, cy, n, h)), (z2, cx2, cy2, n2, h2) in zip(lista, back):
                assert z == z2 and abs(cx - cx2) < 0.06 and abs(cy - cy2) < 0.06 and n == min(n2, 1295)
                assert len(h2) == len(h) and all(abs(a[0] - b[0]) < 0.06 and abs(a[1] - b[1]) < 0.06
                                                 for a, b in zip(h, h2))
    print("demo ok: %d quests, %d objetivos, %d áreas, %d zonas" % (
        len(fim), sum(len(v[0]) for v in fim.values()),
        sum(len(l) for v in fim.values() for _, _, l in v[0]), len(nomes)))


if __name__ == "__main__":
    so_guias = "--guias" in sys.argv
    nomes, fim = gera(so_guias)
    if "--demo" in sys.argv:
        demo(nomes, fim)
    else:
        escreve(nomes, fim)
        demo(nomes, fim)
        print("SpawnAreas.lua: %d bytes" % os.path.getsize(OUT))
