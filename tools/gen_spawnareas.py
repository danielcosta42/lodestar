"""Gera SpawnAreas.lua (issue #121): as áreas onde nasce o que cada objetivo de quest pede — o mob de `objCreatures`,
o objeto de `objObjects` e quem deixa cair (NPC ou objeto) o item de `objItems` —, para o mapa-múndi desenhar a mancha
de cada área (como o cliente de hoje) e a seta ir de uma área para a próxima.

Fonte: o banco do Forever que o import_forever.py montou (tools/build/forever/quests.json, npcs.json, objects.json,
items.json e zones.json, do QuestieDB). Por objetivo e por zona, os pontos de nascimento viram áreas por ligação
simples (dois pontos a até LIGA unidades do mapa ficam juntos); área mais larga que LARGA se parte ao meio pelo eixo
mais comprido, até caber. Sai o que é nascimento perdido: a zona com menos que ZONA dos pontos da que mais tem, e a
área com menos que RALA dos pontos da maior da zona dela (por zona: a seta fica na zona do passo). Cada área leva o
ponto de nascimento mais perto do meio (o alvo da seta: um lugar onde o mob nasce de verdade, nunca o meio de um lago)
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


def areas(pts):
    """Pontos de uma zona -> [(cx, cy, n, contorno)], da área com mais pontos para a com menos."""
    out = []
    for g in liga(pts):
        for sub in parte([pts[i] for i in g]):
            mx = sum(p[0] for p in sub) / len(sub)
            my = sum(p[1] for p in sub) / len(sub)
            alvo = min(sub, key=lambda p: (p[0] - mx) ** 2 + (p[1] - my) ** 2)
            h = simplifica(casco(sub))
            out.append((alvo[0], alvo[1], len(sub), h))
    out.sort(key=lambda a: -a[2])
    return out


def filtra(lista):
    """As áreas de uma zona: sai a rala perto da maior dela; no máximo AREAS. Por zona, não pelo objetivo inteiro: a
    seta fica na zona do passo, e o drop que cai muito numa zona e pouco em outra ainda tem área nesta."""
    if not lista:
        return lista
    maior = max(a[2] for a in lista)
    minimo = 1 if maior <= 2 else max(2, math.ceil(RALA * maior))
    return sorted((a for a in lista if a[2] >= minimo), key=lambda a: -a[2])[:AREAS]


# ── do banco às áreas ────────────────────────────────────────────────────────
def guias():
    """As quests dos guias e os `kill X##npc |q quest` (npc, quest) de cada um."""
    sys.path.insert(0, HERE)
    from gen_questlevels import guide_ids
    mata = set()
    for base, _, files in os.walk(os.path.join(ROOT, "Guides")):
        for f in files:
            if f.endswith(".lua"):
                with open(os.path.join(base, f), encoding="utf-8") as h:
                    for m in re.finditer(r"^\s*kill\s+[^#\n|]*##(\d+)[^\n]*?\|q (\d+)", h.read(), re.M):
                        mata.add((int(m.group(1)), int(m.group(2))))
    return guide_ids(), mata


def gera(so_guias=False):
    quests, npcs, objs, itens, zonas = (carrega(n) for n in
                                        ("quests.json", "npcs.json", "objects.json", "items.json", "zones.json"))
    ids_guia, mata = guias()
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

    def pontos(tabela, ids, porzona):
        for i in ids:
            for area, lista in ((tabela.get(str(i)) or {}).get("spawns") or {}).items():
                z = zona(area)
                if z is None:
                    continue
                for x, y in lista or []:
                    if x < 0 or y < 0:
                        continue          # o "dentro da masmorra, sem coordenada" do QuestieDB (-1, -1)
                    porzona.setdefault(z, set()).add((round(x, 1), round(y, 1)))

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
        return n, o

    def objetivo(tipo, i):
        porzona = {}
        if tipo == "c":
            pontos(npcs, [i], porzona)
        elif tipo == "o":
            pontos(objs, [i], porzona)
        else:
            n, o = fontes(i)
            pontos(npcs, n, porzona)
            pontos(objs, o, porzona)
        # zona com poucos nascimentos perto da que tem mais (menos que ZONA deles) sai: é dado perdido
        maior = max((len(p) for p in porzona.values()), default=0)
        lista = []
        for z in sorted(porzona):
            if len(porzona[z]) >= ZONA * maior:
                lista += [(z, a) for a in filtra(areas(sorted(porzona[z])))]
        # da maior área para a menor (a ordem que o Lua usa sem a posição do jogador)
        return sorted(lista, key=lambda t: -t[1][2])[:TOTAL]

    fim = {}
    for qid, q in quests.items():
        qid = int(qid)
        if so_guias and qid not in ids_guia:
            continue
        objetivos = ([("c", i) for i in q.get("objCreatures") or []] + [("o", i) for i in q.get("objObjects") or []]
                     + [("i", i) for i in q.get("objItems") or []])
        if not objetivos:
            continue
        lista = [(t, i, objetivo(t, i)) for t, i in objetivos]
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
