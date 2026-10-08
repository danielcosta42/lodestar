"""Gera ../TravelData.lua: pontos e rotas de voo, barcos e zepelins, o bonde, os teleportes e os
serviços (estalagem, banco, reparo...), das tabelas do próprio cliente (wago.tools, presas ao
build) e do npcs.json do QuestieDB. Nada vem de outro addon.

    python gen_travel.py          # gera
    python gen_travel.py --demo   # autoverificação

Coordenada de mundo como a do cliente: x = norte, y = oeste, c = continente (0 Reinos do Leste,
1 Kalimdor).
"""
import csv
import io
import json
import math
import os
import sys
import urllib.request

from import_forever import FOREVER
from router import BUILD as BANCO

HERE = os.path.dirname(os.path.abspath(__file__))
CACHE = os.path.join(HERE, "build")
OUT = os.path.join(HERE, "..", "TravelData.lua")

# Velocidades em jardas/s. Os tempos saem de comprimento ÷ velocidade; calibrar com voos e
# viagens reais (a parte D do planejador mede de verdade).
FLIGHT_SPEED = 32.0
SHIP_SPEED = 30.0
WALK_SPEED = 7.0
TOLERANCIA = 20.0           # Douglas-Peucker: o traçado desenhado perde menos que isso

DESCARTE = ("zzOLD", "Programmer", "Quest Path")
CONTINENTES = {"0", "1"}

# Entradas do bonde de Ironforge-Stormwind: gatilhos 2173 e 2175 da tabela AreaTrigger.
TRAM = {"a": {"c": 0, "x": -8346.0, "y": 514.0, "n": "Stormwind City"},
        "b": {"c": 0, "x": -4840.0, "y": -1330.0, "n": "Ironforge"},
        "s": 120}

# Teleportes de classe: o destino é do servidor, então a chegada é o ponto de voo da cidade.
TELEPORTES = [
    (3561, "Stormwind"), (3562, "Ironforge"), (3565, "Rut'theran"),
    (3567, "Orgrimmar"), (3563, "Undercity"), (3566, "Thunder Bluff"),
    (18960, "Moonglade"),
]

# npcFlags (cliente 1.x) -> tipo de serviço
SERVICOS = {4: "vendor", 8: "flight", 128: "inn", 256: "bank", 4096: "auction",
            8192: "stable", 16384: "repair"}


def tabela(nome):
    """Linhas da tabela do build pinado (cache em build/, como a QuestV2)."""
    caminho = os.path.join(CACHE, "%s-%s.csv" % (nome, FOREVER))
    if not os.path.exists(caminho):
        url = "https://wago.tools/db2/%s/csv?build=%s" % (nome, FOREVER)
        req = urllib.request.Request(url, headers={"User-Agent": "Lodestar-gen_forever/1.0"})
        with urllib.request.urlopen(req, timeout=120) as resp:
            raw = resp.read().decode("utf-8")
        os.makedirs(CACHE, exist_ok=True)
        with open(caminho, "w", encoding="utf-8") as fh:
            fh.write(raw)
    with open(caminho, encoding="utf-8") as fh:
        return list(csv.DictReader(io.StringIO(fh.read())))


def faccao(r):
    flags = int(r["Flags"] or 0)
    f = ("A" if flags & 1 else "") + ("H" if flags & 2 else "")
    if not f:
        f = ("A" if r["MountCreatureID_1"] != "0" else "") + ("H" if r["MountCreatureID_0"] != "0" else "")
    return f or None


def zona_do_nome(nome, zonas):
    """'Sentinel Hill, Westfall' -> 'Westfall'; 'Stormwind, Elwynn' -> 'Elwynn Forest'."""
    parte = nome.rsplit(",", 1)[-1].strip()
    if parte in zonas:
        return parte
    casa = sorted(z for z in zonas if z.startswith(parte))
    return casa[0] if len(casa) == 1 else None


def comprimento(pts):
    return sum(math.hypot(b[0] - a[0], b[1] - a[1]) for a, b in zip(pts, pts[1:]))


def simplifica(pts, tol=TOLERANCIA):
    """Douglas-Peucker sobre [(x, y, ...)], preservando as pontas."""
    if len(pts) < 3:
        return list(pts)
    (ax, ay), (bx, by) = pts[0][:2], pts[-1][:2]
    dx, dy = bx - ax, by - ay
    base = math.hypot(dx, dy) or 1e-9
    pior, idx = 0.0, 0
    for i in range(1, len(pts) - 1):
        px, py = pts[i][:2]
        d = abs(dy * px - dx * py + bx * ay - by * ax) / base
        if d > pior:
            pior, idx = d, i
    if pior <= tol:
        return [pts[0], pts[-1]]
    return simplifica(pts[:idx + 1], tol)[:-1] + simplifica(pts[idx:], tol)


def construir():
    zonas_json = json.load(open(os.path.join(BANCO, "zones.json"), encoding="utf-8"))
    zonas = {v["name"] for v in zonas_json.values() if v.get("name")}
    N = tabela("TaxiNodes")
    P = tabela("TaxiPath")
    porpath = {}
    for r in tabela("TaxiPathNode"):
        porpath.setdefault(r["PathID"], []).append(r)
    for v in porpath.values():
        v.sort(key=lambda r: int(r["NodeIndex"]))

    usados = {p["FromTaxiNode"] for p in P} | {p["ToTaxiNode"] for p in P}
    nodes = {}
    for r in N:
        f = faccao(r)
        if r["ID"] not in usados or r["Name_lang"].startswith(DESCARTE) or not f \
                or r["ContinentID"] not in CONTINENTES:
            continue
        nodes[int(r["ID"])] = {"n": r["Name_lang"], "c": int(r["ContinentID"]),
                               "x": round(float(r["Pos_0"]), 1), "y": round(float(r["Pos_1"]), 1),
                               "f": f, "z": zona_do_nome(r["Name_lang"], zonas)}

    flights = {}
    for p in P:
        a, b = int(p["FromTaxiNode"]), int(p["ToTaxiNode"])
        pts = [(float(r["Loc_0"]), float(r["Loc_1"])) for r in porpath.get(p["ID"], [])]
        if a in nodes and b in nodes and len(pts) >= 2:
            flights.setdefault(a, {})[b] = {
                "s": round(comprimento(pts) / FLIGHT_SPEED),
                "p": [(round(x, 1), round(y, 1)) for x, y in simplifica(pts)],
            }

    ships = []
    for pid, rows in porpath.items():
        if any(r["ContinentID"] not in CONTINENTES for r in rows):
            continue                      # Dalaran (2991) e afins: não liga mundo aberto
        paradas, vistos = [], []
        for i, r in enumerate(rows):
            if int(r["Delay"] or 0) <= 0:
                continue
            x, y = float(r["Loc_0"]), float(r["Loc_1"])
            if any(c == r["ContinentID"] and math.hypot(x - vx, y - vy) < 60 for c, vx, vy in vistos):
                continue                  # Feathermoon passa duas vezes pelo mesmo cais
            vistos.append((r["ContinentID"], x, y))
            paradas.append((i, r))
        if len(paradas) < 2:
            continue                      # Naxxramas: uma parada só
        zep = any(float(r["Loc_2"]) > 30 for _, r in paradas)
        pts = [(float(r["Loc_0"]), float(r["Loc_1"]), int(r["ContinentID"])) for r in rows]

        def trecho(i, j):
            seg = pts[i:j + 1] if j > i else pts[i:] + pts[:j + 1]
            # troca de continente no meio do trajeto é salto de coordenada, não distância
            return sum(math.hypot(b[0] - a[0], b[1] - a[1]) for a, b in zip(seg, seg[1:]) if a[2] == b[2])
        legs = [round(trecho(paradas[k][0], paradas[(k + 1) % len(paradas)][0]) / SHIP_SPEED)
                for k in range(len(paradas))]
        ciclo = sum(legs) + sum(int(r["Delay"]) for _, r in paradas)
        ships.append({
            "k": "zeppelin" if zep else "boat",
            "w": round(ciclo / 2),
            "stops": [{"c": int(r["ContinentID"]), "x": round(float(r["Loc_0"]), 1),
                       "y": round(float(r["Loc_1"]), 1)} for _, r in paradas],
            "s": legs,
            "p": [(round(x, 1), round(y, 1), c) for x, y, c in simplifica(pts)],
        })

    teleports = []
    for spell, prefixo in TELEPORTES:
        n = next((i for i, v in nodes.items() if v["n"].startswith(prefixo)), None)
        if n:
            teleports.append({"spell": spell, "node": n})

    npcs = json.load(open(os.path.join(BANCO, "npcs.json"), encoding="utf-8"))
    services = {k: [] for k in SERVICOS.values()}
    for nid, v in npcs.items():
        flags, fac, spawns = v.get("npcFlags") or 0, v.get("faction"), v.get("spawns") or {}
        if fac not in ("A", "H", "AH") or not spawns:
            continue
        area = next(iter(spawns))
        zona = (zonas_json.get(area) or {}).get("name")
        if not zona or not spawns[area]:
            continue
        x, y = spawns[area][0]
        for bit, kind in SERVICOS.items():
            if flags & bit:
                services[kind].append({"id": int(nid), "n": v["name"], "zone": zona,
                                       "x": round(x, 2), "y": round(y, 2), "f": fac,
                                       "sub": v.get("subName") or ""})
    for lista in services.values():
        lista.sort(key=lambda s: (s["zone"], s["id"]))
    return {"nodes": nodes, "flights": flights, "ships": ships, "tram": TRAM,
            "teleports": teleports, "services": services}


def lua_str(s):
    return '"%s"' % s.replace("\\", "\\\\").replace('"', '\\"')


def lua(d):
    L = ["-- AUTO-GERADO (gen_travel.py) das tabelas do cliente %s (wago.tools) e do QuestieDB." % FOREVER,
         "-- Coordenada de mundo: x = norte, y = oeste, c = continente.",
         "local ADDON, ns = ...", "if not ns then return end",
         "ns.travel = {",
         "\tFLIGHT_SPEED = %s, SHIP_SPEED = %s, WALK_SPEED = %s," % (FLIGHT_SPEED, SHIP_SPEED, WALK_SPEED),
         "\tnodes = {"]
    for i, v in sorted(d["nodes"].items()):
        L.append("\t\t[%d] = { n = %s, c = %d, x = %s, y = %s, f = %s, z = %s }," % (
            i, lua_str(v["n"]), v["c"], v["x"], v["y"], lua_str(v["f"]),
            lua_str(v["z"]) if v["z"] else "nil"))
    L += ["\t},", "\tflights = {"]
    for a, destinos in sorted(d["flights"].items()):
        L.append("\t\t[%d] = {" % a)
        for b, f in sorted(destinos.items()):
            L.append("\t\t\t[%d] = { s = %d, p = { %s } }," % (
                b, f["s"], ", ".join("%s, %s" % xy for xy in f["p"])))
        L.append("\t\t},")
    L += ["\t},", "\tships = {"]
    for s in d["ships"]:
        L.append("\t\t{ k = %s, w = %d, s = { %s }, stops = { %s }, p = { %s } }," % (
            lua_str(s["k"]), s["w"], ", ".join(map(str, s["s"])),
            ", ".join("{ c = %d, x = %s, y = %s }" % (p["c"], p["x"], p["y"]) for p in s["stops"]),
            ", ".join("%s, %s, %d" % p for p in s["p"])))
    t = d["tram"]
    L += ["\t},",
          "\ttram = { s = %d, a = { c = %d, x = %s, y = %s }, b = { c = %d, x = %s, y = %s } }," % (
              t["s"], t["a"]["c"], t["a"]["x"], t["a"]["y"], t["b"]["c"], t["b"]["x"], t["b"]["y"]),
          "\tteleports = { %s }," % ", ".join(
              "{ spell = %d, node = %d }" % (t["spell"], t["node"]) for t in d["teleports"]),
          "\tservices = {"]
    for kind, lista in sorted(d["services"].items()):
        L.append("\t\t%s = {" % kind)
        for s in lista:
            L.append("\t\t\t{ id = %d, n = %s, zone = %s, x = %s, y = %s, f = %s, sub = %s }," % (
                s["id"], lua_str(s["n"]), lua_str(s["zone"]), s["x"], s["y"], lua_str(s["f"]),
                lua_str(s["sub"])))
        L.append("\t\t},")
    L += ["\t},", "}"]
    return "\n".join(L) + "\n"


def demo(d):
    nodes = d["nodes"]
    for fac in "AH":
        n = sum(1 for v in nodes.values() if fac in v["f"])
        assert n >= 30, "poucos voos da facção %s: %d" % (fac, n)
    for a, destinos in d["flights"].items():
        for b in destinos:
            assert a in nodes and b in nodes, "rota de voo com ponta descartada: %s-%s" % (a, b)
    assert not [v["n"] for v in nodes.values() if v["n"].startswith(("zzOLD", "Programmer", "Quest Path"))]
    assert all(len(s["stops"]) >= 2 for s in d["ships"]), "transporte com menos de duas paradas"

    # cais conhecidos, em coordenada de mundo (as torres de zepelim não são ponto de voo)
    cais = {"Booty Bay": (0, -14278, 583), "Ratchet": (1, -1006, -3842),
            "Orgrimmar": (1, 1340, -4645), "Undercity": (0, 2062, 264)}

    def perto(nome, s):
        c, x, y = cais[nome]
        return any(p["c"] == c and (p["x"] - x) ** 2 + (p["y"] - y) ** 2 < 150 ** 2 for p in s["stops"])
    bb = [s for s in d["ships"] if perto("Booty Bay", s) and perto("Ratchet", s)]
    assert bb and bb[0]["k"] == "boat", "Booty Bay-Ratchet deveria ser barco"
    zep = [s for s in d["ships"] if perto("Orgrimmar", s) and perto("Undercity", s)]
    assert zep and zep[0]["k"] == "zeppelin", "Orgrimmar-Undercity deveria ser zepelim"
    for kind, lista in d["services"].items():
        assert lista, "serviço sem ninguém: %s" % kind
        assert all(s["zone"] and s["x"] is not None for s in lista), kind
    assert d["tram"]["a"] and d["tram"]["b"]
    print("ok: %d voos, %d rotas, %d transportes, serviços %s" % (
        len(nodes), sum(len(v) for v in d["flights"].values()), len(d["ships"]),
        {k: len(v) for k, v in d["services"].items()}))


if __name__ == "__main__":
    dados = construir()
    if "--demo" in sys.argv:
        demo(dados)
    else:
        demo(dados)
        with open(OUT, "w", encoding="utf-8", newline="\n") as fh:
            fh.write(lua(dados))
        print("gerado:", os.path.normpath(OUT), "(%d KB)" % (os.path.getsize(OUT) // 1024))
