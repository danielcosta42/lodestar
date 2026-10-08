"""
guide_integrity.py — INTEGRIDADE ESTRUTURAL e QUALIDADE DE FLUXO dos guias.
Complementa validate_guides.py (bloqueios) e audit.py (nomes/coords/alvos):

INTEGRIDADE (correção):
  DANGLING  — quest ACEITA em algum guia mas NUNCA entregue em lugar nenhum
              (e a quest TEM NPC de entrega no banco) -> jogador carrega quest morta.
  ORPHAN    — quest ENTREGUE mas nunca ACEITA antes (em nenhum guia) -> passo quebrado.
  QNOACC    — objetivo '|q qid' de uma quest que nenhum guia ACEITA -> passo nunca completa.
  EMPTY     — 'step' sem nenhum goal.
  NOGOTO    — passo de kill/collect/talk/accept/turnin sem NENHUMA coordenada (sem seta).
QUALIDADE (fluxo):
  INSTLOC   — goto -1,-1 (instância) num guia de mundo aberto (leveling/rep/daily).
  JUMP      — salto grande de coordenada entre passos consecutivos da MESMA zona (backtrack).
  THIN      — guia com pouquíssimos passos (falha de geração?).
Uso: python guide_integrity.py [--json out.json] [--full]
"""
import json, os, re, glob, sys, math
from collections import defaultdict

ROOT = os.path.dirname(__file__)
GUIDES = os.path.join(ROOT, "..", "Guides")
Q = json.load(open(os.path.join(ROOT, "build", "quests.json"), encoding="utf-8"))

def q_get(qid): return Q.get(str(qid))
def qname(qid): return (q_get(qid) or {}).get("name") or "?"
def has_ender(qid):
    q = q_get(qid)
    return bool(q and (q.get("endNpcs") or q.get("endObjects")))

GUIDE_RE = re.compile(r'RegisterGuide\(\s*"([^"]+)"')
FAC_RE   = re.compile(r'faction\s*=\s*"(\w+)"')
BODY_RE  = re.compile(r'\}\s*,\s*\[\[(.*?)\]\]', re.S)
VERB_RE  = re.compile(r'^\s*(accept|turnin|kill|collect|talk|click|use|buy|get|fpath|home|ding|goto|note|run)\b')
GOTO_RE  = re.compile(r"\|goto\s+(?:([A-Za-z][\w' :\-]*?)\s+)?(-?\d+\.?\d*)\s*,\s*(-?\d+\.?\d*)")
QID_RE   = re.compile(r'\|q\s+(\d+)')
ACC_RE   = re.compile(r'^\s*accept\s+.+?##(\d+)')
TURN_RE  = re.compile(r'^\s*turnin\s+.+?##(\d+)')

TRACKABLE = {"kill", "collect", "talk", "accept", "turnin", "click", "use"}

def parse(path):
    src = open(path, encoding="utf-8").read()
    km = GUIDE_RE.search(src); fm = FAC_RE.search(src); bm = BODY_RE.search(src)
    key = km.group(1) if km else os.path.basename(path)
    fac = fm.group(1) if fm else None
    body = bm.group(1) if bm else ""
    steps, cur = [], None
    for line in body.splitlines():
        s = line.strip()
        if s == "step":
            cur = []; steps.append(cur); continue
        if s == "" or s.startswith("--"):
            continue
        if s.startswith("|"):
            continue                     # linha só de modificadores (anexa ao goal anterior)
        if cur is None:
            cur = []; steps.append(cur)
        v = VERB_RE.match(line)
        g = {"verb": v.group(1) if v else "note", "line": s}
        gt = GOTO_RE.search(line)
        if gt:
            g["zone"] = (gt.group(1) or "").strip() or None
            g["x"] = float(gt.group(2)); g["y"] = float(gt.group(3))
        qm = QID_RE.search(line)
        if qm: g["q"] = int(qm.group(1))
        a = ACC_RE.match(line);  t = TURN_RE.match(line)
        if a: g["accept"] = int(a.group(1))
        if t: g["turnin"] = int(t.group(1))
        cur.append(g)
    return key, fac, steps

def is_world_guide(key):
    return key.startswith(("Leveling", "Reputation", "Dailies", "Events"))

def main():
    out_json = None; full = False
    for i, a in enumerate(sys.argv[1:]):
        if a == "--json": out_json = sys.argv[i + 2]
        if a == "--full": full = True

    guides = []
    for f in sorted(glob.glob(os.path.join(GUIDES, "**", "*.lua"), recursive=True)):
        if os.path.basename(f) == "Sample.lua": continue
        guides.append(parse(f))

    accepts, turnins, qgoals = set(), set(), set()
    for key, fac, steps in guides:
        for st in steps:
            for g in st:
                if g.get("accept"): accepts.add(g["accept"])
                if g.get("turnin"): turnins.add(g["turnin"])
                if g.get("q"): qgoals.add(g["q"])

    issues = []
    def add(kind, guide, msg, sev="MED"):
        issues.append({"kind": kind, "guide": guide, "msg": msg, "sev": sev})

    # ---- INTEGRIDADE global ----
    for qid in sorted(accepts - turnins):
        if has_ender(qid):        # tem NPC de entrega mas nunca é entregue em guia nenhum
            add("DANGLING", "*", "aceita mas nunca entregue: q%d %s" % (qid, qname(qid)), "HIGH")
    for qid in sorted(turnins - accepts):
        add("ORPHAN", "*", "entregue mas nunca aceita: q%d %s" % (qid, qname(qid)), "HIGH")
    for qid in sorted(qgoals - accepts):
        add("QNOACC", "*", "objetivo |q de quest nunca aceita: q%d %s" % (qid, qname(qid)), "MED")

    # ---- ESTRUTURA / QUALIDADE por guia ----
    for key, fac, steps in guides:
        world = is_world_guide(key)
        last = None  # (zone,x,y) do último goto
        for si, st in enumerate(steps, 1):
            if not st:
                add("EMPTY", key, "step %d vazio (sem goals)" % si); continue
            for g in st:
                v = g["verb"]
                has_goto = "x" in g
                # NOGOTO: alvo rastreável sem coordenada nenhuma
                if v in TRACKABLE and not has_goto:
                    # talk/turnin às vezes herdam o local do accept anterior; só marca kill/collect/accept
                    if v in ("kill", "collect", "accept"):
                        add("NOGOTO", key, "s%d: %s sem |goto (%s)" % (si, v, g["line"][:48]), "LOW")
                if has_goto:
                    if g["x"] == -1 and g["y"] == -1:
                        if world:
                            add("INSTLOC", key, "s%d: goto instância (-1,-1) em guia de mundo: %s"
                                % (si, g["line"][:48]), "LOW")
                    else:
                        z = g.get("zone")
                        if last and last[0] and z and last[0] == z:
                            d = math.hypot(g["x"] - last[1], g["y"] - last[2])
                            if d > 55:
                                add("JUMP", key, "s%d: salto de %.0f na mesma zona (%s -> %.0f,%.0f)"
                                    % (si, d, last[0], g["x"], g["y"]), "LOW")
                        last = (z or (last[0] if last else None), g["x"], g["y"])
        if len([s for s in steps if s]) < 3:
            add("THIN", key, "só %d passos (geração pobre?)" % len([s for s in steps if s]), "MED")

    # resumo
    bykind = defaultdict(int); bysev = defaultdict(int)
    for x in issues: bykind[x["kind"]] += 1; bysev[x["sev"]] += 1
    print("Total:", len(issues), "| por tipo:", dict(sorted(bykind.items())), "| sev:", dict(bysev))
    for k in ["DANGLING", "ORPHAN", "QNOACC", "EMPTY", "THIN", "NOGOTO", "INSTLOC", "JUMP"]:
        rows = [x for x in issues if x["kind"] == k]
        if not rows: continue
        print("\n--- %s (%d) ---" % (k, len(rows)))
        for x in (rows if full else rows[:20]):
            g = "" if x["guide"] == "*" else "[" + x["guide"].split("/")[-1] + "] "
            print("  " + g + x["msg"])
        if not full and len(rows) > 20:
            print("  ... +%d" % (len(rows) - 20))

    if out_json:
        json.dump(issues, open(out_json, "w", encoding="utf-8"), ensure_ascii=False, indent=0)
        print("\nJSON ->", out_json, "(%d)" % len(issues))

if __name__ == "__main__":
    main()
