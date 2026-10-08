"""
gen_prereq.py — índice compacto de PRÉ-REQUISITOS (do banco Questie) p/ o addon
resolver, em runtime, quando uma quest está travada por prereq de OUTRO guia
(ex.: daily de Ogri'la exige a liberação em Reputation/Ogri'la).

Saída: ns.questPre[qid] = { p1, p2, ... }  (só quests dos guias + fecho).
+ OVERRIDES: dependências que o banco NÃO codifica (ex.: a daily 11023 exige a
  "Bombing Run" 11010, mas o banco marca 0 prereq p/ a daily).
"""
import json, os, re, glob
from router import BUILD as B
Q = json.load(open(os.path.join(B, "quests.json"), encoding="utf-8"))
N = json.load(open(os.path.join(B, "npcs.json"), encoding="utf-8"))
Z = json.load(open(os.path.join(B, "zones.json"), encoding="utf-8"))
HERE = os.path.dirname(os.path.abspath(__file__))
GD = os.path.join(HERE, "..", "Guides")

def giver_coord(qid):
    """(zoneName, x, y) do 1º giver com spawn — p/ a seta 'onde pegar' o prereq."""
    q = Q.get(str(qid))
    if not q:
        return None
    for nid in (q.get("startNpcs") or []):
        npc = N.get(str(nid))
        for zid, pts in ((npc.get("spawns") or {}) if npc else {}).items():
            z = Z.get(str(zid))
            if z and z.get("name") and pts and len(pts[0]) >= 2:
                return (z["name"], round(pts[0][0], 1), round(pts[0][1], 1))
    return None

# Dependências ausentes no banco (qid -> [gate quests]). Dailies/eventos/desbloqueios
# que só aparecem após uma quest one-time. Reusa os PREREQ_OVERRIDES do router (mesma
# fonte que a ORDENAÇÃO usa) para o detour avisar exatamente o que o guia ordena.
from router import PREREQ_OVERRIDES
OVERRIDES = {11023: [11010]}   # daily (ordenada via nextInChain no router; aqui p/ o detour)
for _q, _g in PREREQ_OVERRIDES.items():
    OVERRIDES.setdefault(_q, []).append(_g)

def pre(qid):
    q = Q.get(str(qid))
    return (q.get("preGroup") or []) + (q.get("preSingle") or []) if q else []

# quests referenciadas nos guias
refd = set()
for f in glob.glob(os.path.join(GD, "**", "*.lua"), recursive=True):
    for m in re.finditer(r"##(\d+)", open(f, encoding="utf-8").read()):
        refd.add(int(m.group(1)))

# fecho de prereq (inclui os overrides)
closure, stack = set(), list(refd)
while stack:
    c = stack.pop()
    for p in pre(c) + OVERRIDES.get(c, []):
        if p not in closure and p not in refd:
            closure.add(p); stack.append(p)
universe = refd | closure

idx = {}
for qid in sorted(universe):
    ps = list(dict.fromkeys(pre(qid) + OVERRIDES.get(qid, [])))   # únicos, ordem estável
    if ps:
        idx[qid] = ps

# PORTÕES DE CADEIA DURA: quest Q cujo prereq p tem p.nextInChain == Q (o banco
# encadeia p -> Q explicitamente). É um gate REAL (não breadcrumb): o NPC não
# oferece Q sem p feito. Guardamos p (o nome de p vem da API em runtime). Serve
# de fallback do detour quando p não é ensinado por nenhum guia.
gate = {}
for qid in sorted(refd):
    q = Q.get(str(qid))
    if not q:
        continue
    for p in (q.get("preSingle") or []):
        pq = Q.get(str(p))
        if pq and pq.get("nextInChain") == qid:
            gate[qid] = p
            break

L = ["--=============================================================================",
     "-- PrereqData — pré-requisitos de quest (GERADO do banco Questie) + overrides.",
     "-- ns.questPre[qid]   = { prereqQuestIDs }  — desbloqueio via outro guia (aba).",
     "-- ns.questChainGate[qid] = p  — gate de cadeia dura (p.nextInChain==qid); avisa",
     "--   'faça p antes' mesmo quando nenhum guia ensina p.",
     "-- ns.questGiver[qid] = {zoneName,x,y}  — giver do prereq, p/ a seta 'onde pegar'.",
     "--=============================================================================",
     "local ADDON, ns = ...",
     "ns.questPre = {"]
for qid, ps in idx.items():
    L.append("\t[%d]={%s}," % (qid, ",".join(map(str, ps))))
L.append("}")
L.append("ns.questChainGate = {")
for qid, p in sorted(gate.items()):
    L.append("\t[%d]=%d," % (qid, p))
L.append("}")

# givers dos prereqs (valores de questPre + questChainGate): a seta "onde pegar".
giver_ids = set(gate.values())
for ps in idx.values():
    giver_ids.update(ps)
givers = {}
for qid in sorted(giver_ids):
    gc = giver_coord(qid)
    if gc:
        givers[qid] = gc
L.append("ns.questGiver = {")
for qid, (z, x, y) in sorted(givers.items()):
    L.append('\t[%d]={"%s",%s,%s},' % (qid, z.replace("\\", "\\\\").replace('"', '\\"'), x, y))
L.append("}")

open(os.path.join(HERE, "..", "PrereqData.lua"), "w", encoding="utf-8").write("\n".join(L) + "\n")
print("PrereqData.lua:", len(idx), "prereqs,", len(gate), "gates,", len(givers), "givers,",
      os.path.getsize(os.path.join(HERE, "..", "PrereqData.lua")) // 1024, "KB")
