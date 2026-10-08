"""Monta o banco do Forever no formato que o roteador já consome.

Entrada:
  QuestieDB_Forever.toc            a base: quests, NPCs, objetos, itens e zonas do
                                   Forever, coordenada já neste cliente (questiedb.py)
  build/scan.json                  o que o cliente do Forever respondeu em jogo
                                   (import_scan.py) — só preenche lacuna da base
  build/QuestV2-<build>.csv        ids de quest dos dois clientes (wago.tools)

NAO consome dado raspado. A ToU da Fanbyte (rodape da Wowhead) so permite
navegador, e o robots.txt deles bloqueia coletor automatico por nome — dataset
que a gente quer que os outros reusem nao pode nascer daquilo. O QuestieDB é
GPL e aberto; o que o servidor responde ao nosso próprio cliente é nosso.

Saída: build/forever/{quests,npcs,objects,zones,items,fonte}.json. O roteador lê
essa pasta (`router.BUILD`).

    python import_forever.py [pasta do QuestieDB]
"""
import csv
import io
import json
import os
import sys
import urllib.request

from import_scan import inverte, para_area
from questiedb import PADRAO, carrega as carrega_questiedb

HERE = os.path.dirname(os.path.abspath(__file__))
BUILD = os.path.join(HERE, "build")
OUT = os.path.join(BUILD, "forever")

FOREVER = "1.60.1.70245"
ANNIV = "2.5.6.69795"


def carrega(nome, padrao=None):
    caminho = os.path.join(BUILD, "%s.json" % nome)
    if not os.path.exists(caminho):
        return padrao if padrao is not None else {}
    return json.load(open(caminho, encoding="utf-8"))


def quest_ids(build):
    """Ids da tabela QuestV2 do build (wago.tools, presa ao build — build que não
    existe devolve 404 em vez de cair em outro). Fica em cache em build/.

    A QuestV2 não lista quest repetível (Earth Sapta, 1463, foi vista em jogo e
    não está nela): ausência aqui não prova que a quest não existe."""
    path = os.path.join(BUILD, "QuestV2-%s.csv" % build)
    if os.path.exists(path):
        raw = open(path, encoding="utf-8").read()
    else:
        url = "https://wago.tools/db2/QuestV2/csv?build=" + build
        # wago recusa o User-Agent padrão do urllib (403).
        req = urllib.request.Request(url, headers={"User-Agent": "Lodestar-gen_forever/1.0"})
        raw = urllib.request.urlopen(req, timeout=120).read().decode("utf-8")
        os.makedirs(BUILD, exist_ok=True)
        open(path, "w", encoding="utf-8").write(raw)
    return {int(r[0]) for r in csv.reader(io.StringIO(raw)) if r and r[0].isdigit()}


def ponto_vira_entrada(alvo, ponto, zona):
    """Garante o NPC/objeto no catálogo e, se a base não sabe onde ele fica, o
    ponto onde o cliente o viu. Base com spawn manda: um segundo ponto quase igual
    (46.88 contra 46.86) só desfocaria o hub."""
    ident = str(ponto["id"])
    ent = alvo.setdefault(ident, {"name": ponto.get("name"), "spawns": {}, "zoneID": zona,
                                  "questStarts": [], "questEnds": [], "faction": None})
    if not ent.get("name"):
        ent["name"] = ponto.get("name")
    if ent.get("spawns"):
        return ent
    ent["spawns"] = {str(zona): [[round(ponto["x"], 2), round(ponto["y"], 2)]]}
    return ent


def main(argv):
    pasta = argv[0] if argv else PADRAO
    banco = carrega_questiedb(pasta)
    quests, npcs, objetos = banco["quests"], banco["npcs"], banco["objects"]
    zonas, itens = banco["zones"], banco["items"]
    scan = carrega("scan")

    # 1. tira o que o Forever não tem: o Anniversary tem e o Forever não. Id
    # ausente nas duas tabelas é quest repetível, não quest removida.
    forever, anniv = quest_ids(FOREVER), quest_ids(ANNIV)
    sumiram = anniv - forever
    tiradas = [qid for qid in quests if int(qid) in sumiram]
    for qid in tiradas:
        del quests[qid]

    # Pré-requisito que é a própria quest, ou uma versão dela que exclui esta
    # (Call of Earth 1516 pede [1516, 1519, 92466]: Durotar, Mulgore e Zephras),
    # é ciclo, não pré-requisito — a ordenação do roteador não fecha com ele.
    ciclos = 0
    for qid, q in quests.items():
        proibidos = {int(qid)} | set(q["exclusiveTo"])
        for campo in ("preSingle", "preGroup"):
            limpo = [p for p in q[campo] if p not in proibidos]
            ciclos += len(q[campo]) - len(limpo)
            q[campo] = limpo

    # 2. o scan do cliente só preenche o que a base não tem: nome e texto da
    # base são enUS e estáveis; o scan pode vir de um cliente ptBR.
    inv = inverte(zonas)
    avisos, sem_area = set(), 0

    def area_do(registro, entrada=None):
        """areaID do registro do scan — o scan grava uiMapID, o roteador indexa
        spawn por areaID (`npcs[id]["spawns"][areaID]`). Chave errada = giver que
        nunca ancora = quest fora de todo guia. O import_scan já traduz; aqui é
        o cinto de segurança para scan.json antigo ou escrito à mão."""
        if registro.get("area"):
            return registro["area"]
        area = para_area(inv, zonas, registro.get("map"), registro.get("zone"), avisos)
        return area or (entrada or {}).get("zoneOrSort") or 0

    do_cliente = 0
    for qid, q in (scan.get("quests") or {}).items():
        if str(qid) in quests:
            continue
        quests[str(qid)] = {
            "name": q.get("name"), "reqLevel": 0, "questLevel": q.get("level") or None,
            "races": 0, "classes": 0, "faction": "AH", "startNpcs": [], "startObjects": [],
            "startItems": [], "endNpcs": [], "endObjects": [], "preSingle": [], "preGroup": [],
            "exclusiveTo": [], "nextInChain": None, "zoneOrSort": 0, "specialFlags": 0,
            "objCreatures": [], "objObjects": [], "objItems": [],
            "objText": [o["text"] for o in q.get("obj") or [] if o.get("text")],
            "repReward": [],
        }
        do_cliente += 1

    for tabela, campo in (("givers", "startNpcs"), ("enders", "endNpcs")):
        for qid, g in (scan.get(tabela) or {}).items():
            entrada = quests.get(str(qid))
            if not (entrada and g.get("npc")):
                continue
            area = area_do(g, entrada)
            if not area:
                sem_area += 1
            ponto_vira_entrada(npcs, {"id": g["npc"], "name": g.get("name"),
                                      "x": g.get("x") or 0, "y": g.get("y") or 0},
                               area)
            if g["npc"] not in entrada[campo]:
                entrada[campo].append(g["npc"])
            if not entrada.get("zoneOrSort") and area:
                entrada["zoneOrSort"] = area

    # 3. waypoints: o próprio servidor aponta o objetivo atual de cada quest do
    # log — é a única coordenada de objetivo para quest que a base não conhece.
    com_wp = 0
    for qid, pontos in (scan.get("waypoints") or {}).items():
        entrada = quests.get(str(qid))
        if not entrada:
            continue
        por_area = {}
        for p in pontos or []:
            area = area_do(p, entrada)
            if not area:
                continue
            coord = [round(p["x"], 2), round(p["y"], 2)]
            if coord not in por_area.setdefault(str(area), []):
                por_area[str(area)].append(coord)
        if not por_area:
            continue
        entrada["objPoints"] = por_area
        com_wp += 1
        if not entrada.get("zoneOrSort"):      # a zona onde o objetivo mais aparece
            entrada["zoneOrSort"] = int(max(por_area, key=lambda a: len(por_area[a])))
    # ponytail: objPoints fica gravado no banco e só serve de zona hoje — teto: o
    # roteador tira coordenada de spawn de NPC/objeto, então um waypoint sozinho
    # não vira |goto. Upgrade: no emit_do do router.py, quando não houver alvo com
    # spawn, emitir o goto a partir de q["objPoints"][area][0].

    fonte = {"questiedb": banco["versao"], "forever": FOREVER, "anniversary": ANNIV}
    os.makedirs(OUT, exist_ok=True)
    for nome, dado in (("quests", quests), ("npcs", npcs), ("objects", objetos),
                       ("zones", zonas), ("items", itens), ("fonte", fonte)):
        with open(os.path.join(OUT, "%s.json" % nome), "w", encoding="utf-8") as fh:
            json.dump(dado, fh, ensure_ascii=False, sort_keys=True)
    novas = sum(1 for q in quests if int(q) >= 30000)
    print("gravado em", os.path.normpath(OUT))
    print("  QuestieDB %s: %d quests (%d novas do Forever) | tiradas (Anniversary tem, "
          "Forever %s não): %d" % (banco["versao"], len(quests), novas, FOREVER, len(tiradas)))
    print("  pré-requisitos em ciclo retirados:", ciclos)
    print("  só o cliente conhecia:", do_cliente, "| com waypoint do servidor:", com_wp)
    if sem_area:
        print("  givers/enders sem areaID (zona fora do zones.json):", sem_area)
    for aviso in sorted(avisos):
        print("  uiMapID ambíguo:", aviso)


if __name__ == "__main__":
    main(sys.argv[1:])
