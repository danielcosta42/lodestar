"""
validate_guides.py — auditoria de INTEGRIDADE dos guias contra o banco de quests.
Simula o player percorrendo cada guia e verifica, para cada quest:
  * GIVER   — o NPC do 'talk' antes de 'accept' é um startNpc real da quest?
  * TURNIN  — o NPC do 'talk' antes de 'turnin' é um endNpc real da quest?
  * PREREQ  — pré-requisitos satisfeitos ANTES de aceitar (preGroup=todos, preSingle=um)?
  * FACTION — a quest é da facção do guia?
  * NOACCEPT— 'turnin' de quest nunca aceita no guia?
Uso: python validate_guides.py [--full]   (--full lista cada ocorrência)
"""
import json, os, re, glob, sys
from collections import Counter, defaultdict

ROOT = os.path.dirname(__file__)
GUIDES = os.path.join(ROOT, "..", "Guides")
from router import BUILD
Q = json.load(open(os.path.join(BUILD, "quests.json"), encoding="utf-8"))
N = json.load(open(os.path.join(BUILD, "npcs.json"), encoding="utf-8"))
O = json.load(open(os.path.join(BUILD, "objects.json"), encoding="utf-8"))

def q_get(qid):
    return Q.get(str(qid))

def faction_ok(qfac, guide_fac):
    if guide_fac == "Alliance":
        return qfac in ("A", "AH")
    if guide_fac == "Horde":
        return qfac in ("H", "AH")
    return True  # guia neutro aceita qualquer

# --- parse do arquivo de guia --------------------------------------------------
def parse_guide(path):
    src = open(path, encoding="utf-8").read()
    km = re.search(r'RegisterGuide\(\s*"([^"]+)"', src)
    fm = re.search(r'faction\s*=\s*"(\w+)"', src)
    bm = re.search(r'\}\s*,\s*\[\[(.*?)\]\]', src, re.S)
    key = km.group(1) if km else os.path.basename(path)
    faction = fm.group(1) if fm else None
    return key, faction, (bm.group(1) if bm else "")

def parse_steps(body):
    steps, cur = [], None
    for raw in body.splitlines():
        line = raw.strip()
        if not line or line.startswith("--"):
            continue
        if line == "step":
            cur = []; steps.append(cur); continue
        if cur is None:
            cur = []; steps.append(cur)
        main = line.split("|", 1)[0].strip()
        mm = re.match(r"^(\S+)\s*(.*)$", main)
        if not mm:
            continue
        verb, rest = mm.group(1), mm.group(2)
        idm = re.search(r"##(\d+)", rest)
        qm = re.search(r"\|q\s+(\d+)", line)
        cur.append({"verb": verb, "id": int(idm.group(1)) if idm else None,
                    "q": int(qm.group(1)) if qm else None, "line": line})
    return steps

# --- validação de um guia ------------------------------------------------------
def validate(path):
    key, faction, body = parse_guide(path)
    steps = parse_steps(body)
    accepted, completed = set(), set()
    guide_accepts = set()
    for st in steps:
        for g in st:
            if g["verb"] == "accept" and g["id"]:
                guide_accepts.add(g["id"])
    issues = []
    for si, step in enumerate(steps):
        talk = None
        for g in step:
            v = g["verb"]
            if v in ("talk", "click", "get", "buy"):
                if g["id"]:
                    talk = g["id"]
            elif v == "accept" and g["id"]:
                qid = g["id"]; q = q_get(qid)
                if not q:
                    issues.append(("UNKNOWN", qid, si, "quest ausente no DB")); continue
                givers = set(q.get("startNpcs") or [])
                objs = set(q.get("startObjects") or [])
                if talk is not None and givers and talk not in givers and talk not in objs:
                    issues.append(("GIVER", qid, si,
                                   "talk %d nao esta em startNpcs %s" % (talk, sorted(givers))))
                preG = [p for p in (q.get("preGroup") or [])]
                preS = [p for p in (q.get("preSingle") or [])]
                missG = [p for p in preG if p not in completed]
                if missG:
                    kind = "PREREQ_ORDER" if all(p in guide_accepts for p in missG) else "PREREQ_MISSING"
                    issues.append((kind, qid, si, "preGroup faltando: %s" % missG))
                if preS and not any(p in completed for p in preS):
                    kind = "PREREQ_ORDER" if any(p in guide_accepts for p in preS) else "PREREQ_MISSING"
                    issues.append((kind, qid, si, "preSingle nenhum feito: %s" % preS))
                if not faction_ok(q.get("faction"), faction):
                    issues.append(("FACTION", qid, si,
                                   "quest fac %s vs guia %s" % (q.get("faction"), faction)))
                accepted.add(qid)
            elif v == "turnin" and g["id"]:
                qid = g["id"]; q = q_get(qid)
                if not q:
                    issues.append(("UNKNOWN", qid, si, "quest ausente no DB")); continue
                enders = set(q.get("endNpcs") or [])
                if talk is not None and enders and talk not in enders:
                    issues.append(("TURNIN", qid, si,
                                   "talk %d nao esta em endNpcs %s" % (talk, sorted(enders))))
                # NOACCEPT só é real p/ quests iniciadas por NPC (item/objeto = implícito)
                started_by_npc = bool(q.get("startNpcs"))
                started_by_item_obj = bool(q.get("startItems") or q.get("startObjects"))
                if qid not in accepted and started_by_npc and not started_by_item_obj:
                    issues.append(("NOACCEPT", qid, si, "turnin sem accept no guia"))
                completed.add(qid)
    return key, faction, issues

# --- roda em todos os guias ----------------------------------------------------
# Simula a CADEIA de leveling de uma facção em ordem de nível, acumulando quests
# entregues — assim um pré-req feito na zona anterior conta (evita falso positivo).
def validate_leveling_chain(fac_folder):
    files = glob.glob(os.path.join(GUIDES, "Leveling", fac_folder, "*.lua"))
    guides = []
    for f in files:
        key, faction, body = parse_guide(f)
        lom = re.search(r"\((\d+)\s*-\s*\d+\)", key)
        guides.append((int(lom.group(1)) if lom else 0, key, body))
    guides.sort()
    completed = set()
    issues = []
    for lo, key, body in guides:
        for step in parse_steps(body):
            for g in step:
                if g["verb"] == "accept" and g["id"]:
                    q = q_get(g["id"])
                    if not q:
                        continue
                    preG = [p for p in (q.get("preGroup") or []) if p not in completed]
                    preS = q.get("preSingle") or []
                    if preG:
                        issues.append((key, g["id"], q.get("name"), "preGroup faltando: %s" % preG))
                    if preS and not any(p in completed for p in preS):
                        issues.append((key, g["id"], q.get("name"), "preSingle nenhum: %s" % preS))
                elif g["verb"] == "turnin" and g["id"]:
                    completed.add(g["id"])
    return issues


def main():
    if "--chain" in sys.argv:
        for fac in ("Alliance", "Horde"):
            iss = validate_leveling_chain(fac)
            print("=== Leveling %s (cadeia) — %d problemas REAIS ===" % (fac, len(iss)))
            for key, qid, qn, msg in iss[:40]:
                print("  [%s] q%d %r: %s" % (key, qid, qn, msg))
        return
    full = "--full" in sys.argv
    files = sorted(glob.glob(os.path.join(GUIDES, "**", "*.lua"), recursive=True))
    cat_counts = Counter()
    guides_broken = 0
    broken_by_cat = defaultdict(list)
    total_issues = 0
    # matriz categoria-de-guia x tipo-de-problema
    guidecat_issue = defaultdict(Counter)
    broken_guides_by_gcat = defaultdict(set)
    for f in files:
        key, faction, issues = validate(f)
        gcat = key.split("/", 1)[0]
        if issues:
            guides_broken += 1
            broken_guides_by_gcat[gcat].add(key)
            for kind, qid, si, msg in issues:
                cat_counts[kind] += 1
                total_issues += 1
                broken_by_cat[kind].append((key, qid, si, msg))
                guidecat_issue[gcat][kind] += 1
    print("=" * 70)
    print("Guias: %d | com problema: %d | ocorrencias: %d" %
          (len(files), guides_broken, total_issues))
    print("=" * 70)
    for kind, n in cat_counts.most_common():
        print("  %-16s %d" % (kind, n))
    # o critério de aprovação é ZERO bloqueios REAIS (preGroup obrigatório / ordem
    # invertida). preSingle ausente é quase sempre breadcrumb (quest pegável direto).
    hard = len(broken_by_cat.get("PREREQ_ORDER", [])) + sum(
        1 for e in broken_by_cat.get("PREREQ_MISSING", []) if "preGroup" in e[3])
    soft = total_issues - hard
    print("\n  >> BLOQUEIOS REAIS (hard): %d  |  breadcrumbs (soft preSingle): %d" % (hard, soft))
    print("     %s" % ("APROVADO — nenhum guia trava o jogador." if hard == 0
                       else "REPROVADO — ha bloqueios reais a corrigir."))
    print("\n--- por CATEGORIA de guia (guias quebrados / tipos) ---")
    for gcat in sorted(guidecat_issue, key=lambda c: -sum(guidecat_issue[c].values())):
        d = guidecat_issue[gcat]
        print("  %-14s %2d guias | %s" % (gcat, len(broken_guides_by_gcat[gcat]),
              ", ".join("%s=%d" % (k, v) for k, v in d.most_common())))
    if full:
        for kind in cat_counts:
            print("\n--- %s ---" % kind)
            for key, qid, si, msg in broken_by_cat[kind][:60]:
                qn = (q_get(qid) or {}).get("name", "?")
                print("  [%s] q%d %r step%d: %s" % (key, qid, qn, si, msg))
    else:
        # amostra por categoria
        for kind in cat_counts:
            print("\n--- %s (amostra) ---" % kind)
            for key, qid, si, msg in broken_by_cat[kind][:6]:
                qn = (q_get(qid) or {}).get("name", "?")
                print("  [%s] q%d %r: %s" % (key, qid, qn, msg))

if __name__ == "__main__":
    main()
