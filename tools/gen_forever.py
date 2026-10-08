"""Gera ../ForeverData.lua: o que dos guias NÃO existe no WoW: Forever, e o que
nenhum banco conhece.

Fonte: a tabela QuestV2 dos dois builds (wago.tools, presa ao build — build
inexistente devolve 404, não cai em outro) e o banco que o import_forever.py
montou (build/forever/). Uma quest só conta como removida quando o build do
Anniversary TEM e o do Forever NÃO TEM: id ausente nas duas tabelas é quest
repetível (a QuestV2 não as lista), e escondê-la esconderia um passo que funciona.

    python gen_forever.py [build_forever] [build_anniversary]
"""
import json
import os
import re
import sys

import import_forever
from import_forever import quest_ids
from router import BUILD

FOREVER = sys.argv[1] if len(sys.argv) > 1 else import_forever.FOREVER
ANNIV = sys.argv[2] if len(sys.argv) > 2 else import_forever.ANNIV

HERE = os.path.dirname(os.path.abspath(__file__))
GUIDES = os.path.join(HERE, "..", "Guides")
OUT = os.path.join(HERE, "..", "ForeverData.lua")

# Um guia sai da biblioteca quando quase tudo nele morreu. Com a biblioteca
# gerada do banco do Forever não deve sobrar nenhum; o corte fica de alarme.
DEAD_RATIO = 0.80


QUEST = re.compile(r"^\s*(?:accept|turnin)\s+.*?##(\d+)", re.M)
KEY = re.compile(r'RegisterGuide\(\s*"([^"]+)"')


def guides():
    """(chave do guia, ids de quest) para cada arquivo de guia."""
    for dirpath, _, names in os.walk(GUIDES):
        for name in sorted(names):
            if not name.endswith(".lua"):
                continue
            txt = open(os.path.join(dirpath, name), encoding="utf-8", errors="replace").read()
            key = KEY.search(txt)
            if key:
                yield key.group(1), {int(m.group(1)) for m in QUEST.finditer(txt)}


forever, anniv = quest_ids(FOREVER), quest_ids(ANNIV)
gone = anniv - forever
banco = {int(q) for q in json.load(open(os.path.join(BUILD, "quests.json"), encoding="utf-8"))}
fonte = json.load(open(os.path.join(BUILD, "fonte.json"), encoding="utf-8"))

missing, dead = set(), []
for key, ids in guides():
    hit = ids & gone
    if not hit:
        continue
    if len(hit) / len(ids) >= DEAD_RATIO:
        dead.append(key)
    else:
        missing |= hit          # guia vivo: são os passos dele que somem

lines = [
    "-- AUTO-GERADO (gen_forever.py). O que o WoW: Forever não tem, e o que só ele sabe.",
    "--",
    "-- Os guias saem do QuestieDB %s (o banco do Forever); o que sobra aqui são" % fonte["questiedb"],
    "-- as quests que algum guia ainda cite e aquele cliente não tenha, mais os ids",
    "-- que nenhum banco conhece e só o servidor sabe responder.",
    "-- QuestV2 do build %s contra o do Anniversary %s." % (FOREVER, ANNIV),
    "local ADDON, ns = ...",
    "if not ns then return end",
    "",
    "-- Quests que o Anniversary tem e o Forever não, dentro de guias que seguem",
    "-- valendo: o passo é pulado em vez de mandar o jogador num NPC mudo.",
    "ns.foreverGoneQuests = {",
]
lines += ["\t[%d]=true," % q for q in sorted(missing)]
lines.append("}")

# Ids que o cliente do Forever tem e o banco não conhece: é o que o coletor em
# jogo (`/ls scan`) pergunta ao servidor, um a um. Como string porque só é lida
# quando alguém manda varrer — não vira 1.700 chaves de tabela à toa.
#
# Não desconta o que a Wowhead sabe: raspar o site é contra a ToU deles (só
# navegador) e o robots.txt bloqueia coletor automático por nome — não dá pra
# semear dado aberto com aquilo. O que o servidor responde a `/ls scan`, e o que
# o cliente escreve em Cache/WDB, é nosso e é limpo.
#
# Abaixo de 30000 é id vanilla que o Questie descartou de propósito (quest não
# usada — são 217, a começar pelo 1): perguntar por elas é requisição jogada fora.
desconhecidos = sorted(q for q in forever - banco if q >= 30000)
lines += [
    "",
    "-- Ids do Forever que nenhum banco conhece (%d), para `/ls scan`." % len(desconhecidos),
    'ns.foreverUnknown = "%s"' % ",".join(str(q) for q in desconhecidos),
]

open(OUT, "w", encoding="utf-8").write("\n".join(lines) + "\n")
print("gerado:", os.path.normpath(OUT))
print("  guias sem conteudo no Forever (DELETE estes arquivos):", len(dead))
for k in sorted(dead):
    print("    ", k)
print("  quests removidas em guias vivos:", len(missing))
print("  ids do Forever que nenhum banco conhece:", len(desconhecidos))


def cobertura():
    """Das quests que só o Forever tem e o banco conhece, quantas viraram passo
    de guia — e, das que não viraram, por quê."""
    from router import FORA_DO_LEVELING, is_craft_quest, load_data
    d = load_data()
    em_guia = set().union(*(ids for _, ids in guides()))
    npcs, objs = d["npcs"], d["objects"]

    def motivo(q):
        if is_craft_quest(q["name"]):
            return "entrega de Craftsman's Writ"
        if q.get("reqSkill"):
            return "exige profissão"
        if q["zoneOrSort"] in FORA_DO_LEVELING or (q["specialFlags"] or 0) & 3:
            return "evento/repetível/campo de batalha"
        if not any((npcs.get(str(n)) or {}).get("spawns") for n in q["startNpcs"]) and \
                not any((objs.get(str(o)) or {}).get("spawns") for o in q["startObjects"]):
            return "começa por item ou giver sem posição"
        return "outro"

    novas = {int(k): q for k, q in d["quests"].items() if int(k) >= 30000}
    fora = {}
    for qid, q in novas.items():
        if qid not in em_guia:
            fora.setdefault(motivo(q), []).append(qid)
    print("  quests novas do Forever em guia: %d de %d" % (len(novas) - sum(map(len, fora.values())),
                                                         len(novas)))
    for m, ids in sorted(fora.items(), key=lambda kv: -len(kv[1])):
        print("    fora — %-38s %4d  (ex.: %s)" % (m, len(ids), ", ".join(map(str, sorted(ids)[:4]))))


cobertura()
