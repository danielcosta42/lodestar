"""Funde o que se colheu do Forever no formato que o roteador já consome.

Entrada:
  build/{quests,npcs,objects,zones}.json   base atual (Questie, vanilla/TBC)
  build/forever_quests.json                Wowhead (fetch_forever.py)
  build/scan.json                          cliente do beta (import_scan.py), se houver

Saída: build/forever/{quests,npcs,objects,zones,items}.json — a mesma base, menos
o que o Forever não tem, mais o que só ele tem. O roteador roda em cima disso
apontando `router.BUILD` para essa pasta.

    python import_forever.py
"""
import csv
import io
import json
import os

HERE = os.path.dirname(os.path.abspath(__file__))
BUILD = os.path.join(HERE, "build")
OUT = os.path.join(BUILD, "forever")

FACCAO = {1: "A", 2: "H", 3: "AH"}
TIPO_NPC, TIPO_OBJETO = 1, 2


def carrega(nome, padrao=None):
    caminho = os.path.join(BUILD, "%s.json" % nome)
    if not os.path.exists(caminho):
        return padrao if padrao is not None else {}
    return json.load(open(caminho, encoding="utf-8"))


def quest_ids(build):
    raw = open(os.path.join(BUILD, "QuestV2-%s.csv" % build), encoding="utf-8").read()
    return {int(r[0]) for r in csv.reader(io.StringIO(raw)) if r and r[0].isdigit()}


def ponto_vira_entrada(alvo, ponto, zona):
    """Garante o NPC/objeto no catálogo e acrescenta o ponto onde ele aparece."""
    ident = str(ponto["id"])
    ent = alvo.get(ident)
    if not ent:
        ent = {"name": ponto.get("name"), "spawns": {}, "zoneID": zona,
               "questStarts": [], "questEnds": [], "faction": None}
        if alvo is not None:
            alvo[ident] = ent
    ent.setdefault("spawns", {})
    pontos = ent["spawns"].setdefault(str(zona), [])
    coord = [round(ponto["x"], 2), round(ponto["y"], 2)]
    if coord not in pontos:
        pontos.append(coord)
    if not ent.get("name"):
        ent["name"] = ponto.get("name")
    return ent


def main():
    quests, npcs = carrega("quests"), carrega("npcs")
    objetos, zonas = carrega("objects"), carrega("zones")
    itens = carrega("items")
    wowhead = carrega("forever_quests")
    scan = carrega("scan")

    # 1. tira o que o Forever não tem
    forever, anniv = quest_ids("1.60.1.69893"), quest_ids("2.5.6.69795")
    sumiram = anniv - forever
    for qid in list(quests):
        if int(qid) in sumiram:
            del quests[qid]

    # 2. põe o que só o Forever tem
    novas, sem_ponto = 0, 0
    for qid, q in wowhead.items():
        zona = q.get("category") or 0
        entrada = {
            "name": q.get("name"),
            "reqLevel": q.get("reqlevel") or 0,
            "questLevel": q.get("level") or 0,
            "races": 0, "classes": 0,
            "faction": FACCAO.get(q.get("side"), "AH"),
            "startNpcs": [], "startObjects": [], "startItems": [],
            "endNpcs": [], "endObjects": [],
            "preSingle": [], "preGroup": [], "exclusiveTo": [],
            "nextInChain": None,
            "zoneOrSort": zona,
            "specialFlags": 0,
            "objCreatures": [], "objObjects": [], "objItems": [],
            "objText": [q["objText"]] if q.get("objText") else [],
            "repReward": [],
        }
        pontos = q.get("points") or []
        if not pontos:
            sem_ponto += 1
        for p in pontos:
            if not p.get("id"):
                continue
            zona_ponto = p.get("zone") or zona
            alvo = npcs if p.get("type") == TIPO_NPC else objetos
            ponto_vira_entrada(alvo, p, zona_ponto)
            campo = {
                ("start", TIPO_NPC): "startNpcs", ("start", TIPO_OBJETO): "startObjects",
                ("end", TIPO_NPC): "endNpcs", ("end", TIPO_OBJETO): "endObjects",
            }.get((p.get("point"), p.get("type")))
            if not campo:                      # sourcerequirement e afins: é objetivo
                campo = "objCreatures" if p.get("type") == TIPO_NPC else "objObjects"
            if p["id"] not in entrada[campo]:
                entrada[campo].append(p["id"])
        quests[str(qid)] = entrada
        novas += 1

    # 3. o que veio do cliente do beta manda: é o único dado das zonas novas
    do_cliente = 0
    for qid, q in (scan.get("quests") or {}).items():
        entrada = quests.get(str(qid)) or {
            "name": None, "reqLevel": 0, "questLevel": 0, "races": 0, "classes": 0,
            "faction": "AH", "startNpcs": [], "startObjects": [], "startItems": [],
            "endNpcs": [], "endObjects": [], "preSingle": [], "preGroup": [],
            "exclusiveTo": [], "nextInChain": None, "zoneOrSort": 0, "specialFlags": 0,
            "objCreatures": [], "objObjects": [], "objItems": [], "objText": [],
            "repReward": [],
        }
        if q.get("name"):
            entrada["name"] = q["name"]
        if q.get("level"):
            entrada["questLevel"] = q["level"]
        for o in q.get("obj") or []:
            if o.get("text") and o["text"] not in entrada["objText"]:
                entrada["objText"].append(o["text"])
        quests[str(qid)] = entrada
        do_cliente += 1

    for tabela, campo in (("givers", "startNpcs"), ("enders", "endNpcs")):
        for qid, g in (scan.get(tabela) or {}).items():
            entrada = quests.get(str(qid))
            if not (entrada and g.get("npc")):
                continue
            ponto_vira_entrada(npcs, {"id": g["npc"], "name": g.get("name"),
                                      "x": g.get("x") or 0, "y": g.get("y") or 0},
                               g.get("map") or entrada.get("zoneOrSort") or 0)
            if g["npc"] not in entrada[campo]:
                entrada[campo].append(g["npc"])
            if not entrada.get("zoneOrSort") and g.get("map"):
                entrada["zoneOrSort"] = g["map"]

    os.makedirs(OUT, exist_ok=True)
    for nome, dado in (("quests", quests), ("npcs", npcs), ("objects", objetos),
                       ("zones", zonas), ("items", itens)):
        json.dump(dado, open(os.path.join(OUT, "%s.json" % nome), "w", encoding="utf-8"),
                  ensure_ascii=False)
    print("gravado em", os.path.normpath(OUT))
    print("  quests:", len(quests), "| tiradas (não existem no Forever):", len(sumiram))
    print("  vindas do Wowhead:", novas, "(sem nenhum ponto no mapa:", sem_ponto, ")")
    print("  vindas do cliente do beta:", do_cliente)


if __name__ == "__main__":
    main()
