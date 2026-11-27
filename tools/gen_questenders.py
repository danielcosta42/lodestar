"""Gera QuestEnders.lua (issue #118): onde cada quest é entregue — o NPC ou o objeto de entrega (`endNpcs`,
`endObjects`) e os primeiros pontos dele (`spawns`) — para o "Enquanto está aqui" avisar da quest pronta no diário
que o guia não cita, quando o ponto de entrega está perto.

Fonte: o banco do Forever que o import_forever.py montou (tools/build/forever/quests.json, npcs.json, objects.json e
zones.json, do QuestieDB). Até 2 pontos por NPC/objeto e 4 por quest; coordenadas da zona (0-100) com uma casa.

    python3 tools/gen_questenders.py [--demo]
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, "..")
BANCO = os.path.join(HERE, "build", "forever")
OUT = os.path.join(ROOT, "QuestEnders.lua")
POR_ENTREGADOR, POR_QUEST = 2, 4


def carrega(nome):
    with open(os.path.join(BANCO, nome), encoding="utf-8") as h:
        return json.load(h)


def gera():
    quests, npcs, objs, zonas = (carrega(n) for n in ("quests.json", "npcs.json", "objects.json", "zones.json"))
    nomes, indice = [], {}

    def zona(area):
        z = zonas.get(str(area)) or {}
        nome = z.get("name")
        # zona sem mapa no cliente (bonde, salas de masmorra sem uiMapId): o ponto não teria onde cair
        if not nome or not z.get("uiMapId"):
            return None
        if nome not in indice:
            indice[nome] = len(nomes) + 1
            nomes.append(nome)
        return indice[nome]

    fim = {}
    for qid, q in quests.items():
        pts = []
        for tabela, ids in ((npcs, q.get("endNpcs") or []), (objs, q.get("endObjects") or [])):
            for i in ids:
                spawns = (tabela.get(str(i)) or {}).get("spawns") or {}
                n = 0
                for area, lista in spawns.items():
                    z = zona(area)
                    for x, y in lista or []:
                        if z is None or n >= POR_ENTREGADOR or len(pts) >= POR_QUEST:
                            break
                        if x < 0 or y < 0:
                            continue          # o "dentro da masmorra, sem coordenada" do QuestieDB (-1, -1)
                        pts.append((z, round(x, 1), round(y, 1)))
                        n += 1
        if pts:
            fim[int(qid)] = pts
    return nomes, fim


def num(v):
    return ("%.1f" % v).rstrip("0").rstrip(".")


def escreve(nomes, fim):
    linhas = [
        "-- gerado por tools/gen_questenders.py (issue #118) — não editar: rode o gerador",
        "-- ns.questEnd[id da quest] = { zona, x, y [, zona, x, y ...] } (zona = índice em ns.questEndZones)",
        "local _, ns = ...",
        "ns.questEndZones = { " + ", ".join('"%s"' % n.replace('"', '\\"') for n in nomes) + " }",
        "ns.questEnd = {",
    ]
    for qid in sorted(fim):
        linhas.append("[%d]={%s}," % (qid, ",".join("%d,%s,%s" % (z, num(x), num(y)) for z, x, y in fim[qid])))
    linhas.append("}")
    with open(OUT, "w", encoding="utf-8", newline="\n") as h:
        h.write("\n".join(linhas) + "\n")


def demo(nomes, fim):
    # Senior Surveyor Fizzledowser (Gadgetzan, Tanaris 50.2, 27.5) entrega "The Scrimshank Redemption" (10)
    z, x, y = fim[10][0], fim[10][1], fim[10][2]
    assert nomes[z - 1] == "Tanaris" and abs(x - 50.2) < 0.2 and abs(y - 27.5) < 0.2, fim[10]
    assert len(fim) > 5000, len(fim)
    assert all(len(v) % 3 == 0 and len(v) // 3 <= POR_QUEST for v in fim.values())
    assert all(v[i] >= 0 for v in fim.values() for i in range(1, len(v), 3)), "ponto sem coordenada"
    print("demo ok: %d quests, %d zonas" % (len(fim), len(nomes)))


if __name__ == "__main__":
    nomes, fim = gera()
    fim = {q: [c for p in pts for c in p] for q, pts in fim.items()}
    if "--demo" in sys.argv:
        demo(nomes, fim)
    else:
        escreve(nomes, {q: [tuple(v[i:i + 3]) for i in range(0, len(v), 3)] for q, v in fim.items()})
        demo(nomes, fim)
        print("QuestEnders.lua: %d bytes" % os.path.getsize(OUT))
