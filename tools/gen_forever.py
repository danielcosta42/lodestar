"""Gera ../ForeverData.lua: o que dos guias NÃO existe no WoW: Forever.

Fonte: a tabela QuestV2 dos dois builds (wago.tools, presa ao build — build
inexistente devolve 404, não cai em outro). Uma quest só entra na lista quando o
build do Anniversary TEM e o do Forever NÃO TEM: id ausente nas duas tabelas é
ruído de dados e fica de fora, para nunca esconder um passo que funciona.

    python gen_forever.py [build_forever] [build_anniversary]
"""
import csv
import io
import json
import os
import re
import sys
import urllib.request

FOREVER = sys.argv[1] if len(sys.argv) > 1 else "1.60.1.69893"
ANNIV = sys.argv[2] if len(sys.argv) > 2 else "2.5.6.69795"

HERE = os.path.dirname(os.path.abspath(__file__))
GUIDES = os.path.join(HERE, "..", "Guides")
OUT = os.path.join(HERE, "..", "ForeverData.lua")
CACHE = os.path.join(HERE, "build")

# Um guia sai da biblioteca quando quase tudo nele morreu (Outland, Quel'Thalas,
# Azuremyst/Bloodmyst). Abaixo disso é zona vanilla que só perdeu quests soltas
# (Dustwallow perdeu o hub de 2.3, 57%) e continua valendo a pena.
DEAD_RATIO = 0.80

# Zonas iniciais de blood elf e draenei: a tabela de quests não diz que a RAÇA
# não existe (ChrRaces do build do Forever tira o bit de jogável das duas), e
# sobra quest neutra suficiente para o guia passar do corte por proporção.
TBC_RACE_ZONES = ("Eversong", "Ghostlands", "Silvermoon", "Azuremyst", "Bloodmyst", "Exodar")


def quest_ids(build):
    path = os.path.join(CACHE, "QuestV2-%s.csv" % build)
    if os.path.exists(path):
        raw = open(path, encoding="utf-8").read()
    else:
        url = "https://wago.tools/db2/QuestV2/csv?build=" + build
        # wago recusa o User-Agent padrão do urllib (403).
        req = urllib.request.Request(url, headers={"User-Agent": "Lodestar-gen_forever/1.0"})
        raw = urllib.request.urlopen(req, timeout=120).read().decode("utf-8")
        os.makedirs(CACHE, exist_ok=True)
        open(path, "w", encoding="utf-8").write(raw)
    return {int(r[0]) for r in csv.reader(io.StringIO(raw)) if r and r[0].isdigit()}


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

missing, dead = set(), []
for key, ids in guides():
    hit = ids & gone
    if not hit:
        continue
    if any(z in key for z in TBC_RACE_ZONES) or len(hit) / len(ids) >= DEAD_RATIO:
        dead.append(key)
    else:
        missing |= hit          # guia vivo: são os passos dele que somem

lines = [
    "-- AUTO-GERADO (gen_forever.py). O que não existe no WoW: Forever.",
    "-- QuestV2 do build %s contra o do Anniversary %s." % (FOREVER, ANNIV),
    "local ADDON, ns = ...",
    "if not ns then return end",
    "",
    "-- Guias cujo conteúdo é de TBC: saem da biblioteca e do encadeamento.",
    "ns.foreverDeadGuides = {",
]
lines += ['\t["%s"]=true,' % k for k in sorted(dead)]
lines += [
    "}",
    "",
    "-- Quests que o Anniversary tem e o Forever não, dentro de guias que seguem",
    "-- valendo: o passo é pulado em vez de mandar o jogador num NPC mudo.",
    "ns.foreverGoneQuests = {",
]
lines += ["\t[%d]=true," % q for q in sorted(missing)]
lines.append("}")

# Ids que o cliente do Forever tem e nenhum banco público conhece: é o que o
# coletor em jogo (`/ls scan`) pergunta ao servidor, um a um. Como string porque
# só é lida quando alguém manda varrer — não vira 2.400 chaves de tabela à toa.
conhecidos = set()
if os.path.exists(os.path.join(CACHE, "forever_index.json")):
    conhecidos = {int(k) for k in json.load(
        open(os.path.join(CACHE, "forever_index.json"), encoding="utf-8"))}
desconhecidos = sorted(q for q in (forever - anniv) if q not in conhecidos)
lines += [
    "",
    "-- Ids que só o cliente sabe responder (%d), para `/ls scan`." % len(desconhecidos),
    'ns.foreverUnknown = "%s"' % ",".join(str(q) for q in desconhecidos),
]

open(OUT, "w", encoding="utf-8").write("\n".join(lines) + "\n")
print("gerado:", os.path.normpath(OUT))
print("  guias mortos no Forever:", len(dead))
print("  quests removidas em guias vivos:", len(missing))
print("  (quests que o Forever tem e o Anniversary não:", len(forever - anniv), ")")
