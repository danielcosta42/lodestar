"""Confere os guias de masmorra e sintonização (Guides/Dungeons, Guides/Attunements).

Para cada guia e cada raça x classe da facção, anda pelos passos respeitando o `only`
(como o addon faz) e acusa:
  - aceite impossível: facção, raça, classe, pré-requisito não entregue, exclusiva feita;
  - entrega de quest que não está no diário;
  - quest repetível (troca de reputação/token: o passo não conclui numa corrida);
  - em raid, troca de peça de classe (token de set) — fica a cadeia que começa por item;
  - quest de sintonização repetida no guia da masmorra;
  - "kill" num NPC amigo para lootar o item que inicia a quest.

Uso: python tools/check_special.py   (sai com 1 se achar algo)
"""
import glob
import os
import re
import sys

sys.path.insert(0, os.path.dirname(__file__))
from gen_special import RAIDS  # noqa: E402
from router import CLASS_BIT, load_data, npc_amigo  # noqa: E402

RAIZ = os.path.join(os.path.dirname(__file__), "..", "Guides")
RACAS = {"Alliance": {"Human": 1, "Dwarf": 4, "NightElf": 8, "Gnome": 64, "Skyborne": 1 << 32},
         "Horde": {"Orc": 2, "Undead": 16, "Tauren": 32, "Troll": 128, "Skyborne": 1 << 33}}
CLASSES = {n: b for b, n in CLASS_BIT.items()}
TODAS_RACAS = {n for r in RACAS.values() for n in r}

REG = re.compile(r'RegisterGuide\("([^"]+)"')
ID = re.compile(r"##(\d+)")


def passos(texto):
    corpo = texto.split("[[", 1)[1].rsplit("]]", 1)[0]
    out = []
    for bloco in corpo.split("\nstep")[1:]:
        only = None
        goals = []
        for linha in bloco.splitlines():
            linha = linha.strip()
            if linha.startswith("only "):
                only = linha[5:]
            m = ID.search(linha)
            verbo = linha.split(" ", 1)[0] if linha else ""
            if m and verbo in ("accept", "turnin", "kill", "talk", "click", "use"):
                goals.append((verbo, int(m.group(1)), linha))
        out.append((only, goals))
    return out


def avalia(cond, st):
    """Mesma regra do Guide.lua: E de tokens; `completed(a,b)` = qualquer um."""
    if not cond:
        return True
    toks = cond.split()
    i = 0
    while i < len(toks):
        neg = toks[i] == "not"
        if neg:
            i += 1
        t = toks[i]
        m = re.match(r"(completed|haveq)\(([\d,]+)\)", t)
        if m:
            ids = [int(x) for x in m.group(2).split(",")]
            fonte = st["turned"] if m.group(1) == "completed" else st["inlog"]
            ok = any(x in fonte for x in ids)
        elif t in CLASSES:
            ok = st["cls"] == t
        elif t in TODAS_RACAS:
            ok = st["race"] == t
        else:
            ok = True                                  # token que este verificador não modela
        if ok == neg:
            return False
        i += 1
    return True


def pode_aceitar(q, qid, st):
    lado = "A" if st["fac"] == "Alliance" else "H"
    if lado not in q["faction"]:
        return "facção"
    if q["races"] and not q["races"] & RACAS[st["fac"]][st["race"]]:
        return "raça"
    if q["classes"] and not q["classes"] & CLASSES[st["cls"]]:
        return "classe"
    if not all(p in st["turned"] for p in q["preGroup"]):
        return "preGroup %s" % q["preGroup"]
    if q["preSingle"] and not any(p in st["turned"] for p in q["preSingle"]):
        return "preSingle %s" % q["preSingle"]
    if any(x in st["turned"] or x in st["inlog"] for x in q["exclusiveTo"] if x != qid):
        return "exclusiva"
    return None


def main():
    data = load_data()
    Q, N = data["quests"], data["npcs"]
    probs = []
    sinton = {}
    guias = []
    for cat in ("Attunements", "Dungeons"):
        for f in sorted(glob.glob(os.path.join(RAIZ, cat, "**", "*.lua"), recursive=True)):
            texto = open(f, encoding="utf-8").read()
            chave = REG.search(texto).group(1)
            ps = passos(texto)
            guias.append((cat, chave, ps))
            if cat == "Attunements":
                for _, goals in ps:
                    for v, qid, _ in goals:
                        if v == "accept":
                            sinton.setdefault(qid, chave)
    for cat, chave, ps in guias:
        fac = "Horde" if "/Horde/" in chave else "Alliance"
        nome = chave.rsplit("/", 1)[-1]
        for _, goals in ps:
            for v, qid, linha in goals:
                q = Q.get(str(qid)) or {}
                if v == "accept" and (q.get("specialFlags") or 0) & 1:
                    probs.append("%s: repetível %d %s" % (chave, qid, q.get("name")))
                if v == "accept" and cat == "Dungeons" and nome in RAIDS and q.get("classes") \
                        and not q.get("startItems"):
                    probs.append("%s: troca de classe no raid %d %s" % (chave, qid, q.get("name")))
                if v == "accept" and cat == "Dungeons" and qid in sinton:
                    probs.append("%s: %d também em %s" % (chave, qid, sinton[qid]))
                if v == "kill" and "it starts the quest" in linha and npc_amigo(N.get(str(qid))):
                    probs.append("%s: 'kill' em NPC amigo %d" % (chave, qid))
        facs = [fac] if ("/Horde/" in chave or "/Alliance/" in chave) else ["Alliance", "Horde"]
        for f2 in facs:
            for race in RACAS[f2]:
                for cls in CLASSES:
                    st = {"fac": f2, "race": race, "cls": cls, "turned": set(), "inlog": set()}
                    for only, goals in ps:
                        if not avalia(only, st):
                            continue
                        for v, qid, _ in goals:
                            q = Q.get(str(qid))
                            if not q:
                                continue
                            if v == "accept":
                                why = pode_aceitar(q, qid, st)
                                if why:
                                    probs.append("%s [%s %s]: aceite impossível %d (%s)" % (chave, race, cls, qid, why))
                                else:
                                    st["inlog"].add(qid)
                            elif v == "turnin":
                                if qid not in st["inlog"]:
                                    probs.append("%s [%s %s]: entrega fora do diário %d" % (chave, race, cls, qid))
                                st["inlog"].discard(qid)
                                st["turned"].add(qid)
    # um aviso por (guia, problema), não um por combinação
    vistos = []
    for p in probs:
        k = re.sub(r" \[[^\]]+\]", "", p)
        if k not in vistos:
            vistos.append(k)
    for p in vistos:
        print(p)
    print("%d guias; %d problemas" % (len(guias), len(vistos)))
    return 1 if vistos else 0


if __name__ == "__main__":
    sys.exit(main())
