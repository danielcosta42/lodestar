"""Gera CollectData.lua (issue #94): os colecionáveis do Forever — missões que dão colecionável, os livros da
biblioteca e os pets raros de caçador.

Fonte: tools/data/collect/*.json, fatos levantados de páginas públicas (cada entrada traz as fontes e a confiança),
escritos com as nossas palavras; ids de item e de quest dos livros e alguns pontos vêm dos addons MIT
RXPGuides_LibraryBooks (heyitsmk) e Whatnot (DrKlampz). Nada de addon GPL. Pet sem id ganha o id e os pontos do
RareData.lua (pfQuest, MIT) quando o nome bate.

    python3 tools/gen_collect.py
"""
import json
import os
import re

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, "..")
DATA = os.path.join(HERE, "data", "collect")
OUT = os.path.join(ROOT, "CollectData.lua")
NOTE_MAX = 160


def load(name):
    with open(os.path.join(DATA, name), encoding="utf-8") as f:
        return json.load(f)


def s(v):
    """string Lua"""
    return '"' + str(v).replace("\\", "\\\\").replace('"', '\\"').replace("\n", " ") + '"'


def short(text):
    if not text:
        return None
    text = re.sub(r"\s+", " ", str(text)).strip()
    if len(text) <= NOTE_MAX:
        return text
    cut = text[:NOTE_MAX].rsplit(" ", 1)[0]
    return cut.rstrip(",;:") + "…"


def fields(d):
    parts = []
    for k, v in d.items():
        if v is None:
            continue
        if isinstance(v, bool):
            parts.append("%s = %s" % (k, "true" if v else "false"))
        elif isinstance(v, (int, float)):
            parts.append("%s = %s" % (k, ("%g" % v) if isinstance(v, float) else v))
        elif isinstance(v, str):
            parts.append("%s = %s" % (k, s(v)))
        else:
            parts.append("%s = %s" % (k, v))
    return "{ " + ", ".join(parts) + " }"


def slug(name):
    """id estável pelo nome (a marca salva não pode depender da posição na lista)"""
    return re.sub(r"[^a-z0-9]+", "_", str(name).lower()).strip("_")[:28] or "x"


def rare_index():
    """nome -> (id, zona, pontos) do RareData.lua"""
    out = {}
    path = os.path.join(ROOT, "RareData.lua")
    zone = None
    for line in open(path, encoding="utf-8"):
        m = re.match(r'^\t\["(.+)"\] = \{', line)
        if m:
            zone = m.group(1)
            continue
        m = re.search(r'id = (\d+), name = "((?:[^"\\]|\\.)*)", lvl = "[^"]*", pts = \{ (.*) \} \}', line)
        if m:
            pts = [(float(x), float(y)) for x, y in re.findall(r"\{ ([\d.]+), ([\d.]+) \}", m.group(3))]
            out.setdefault(m.group(2).lower(), (int(m.group(1)), zone, pts))
    return out


def books_lua(b):
    lines = ["\tbooks = {", "\t\tlist = {"]
    for e in b["books"]:
        note = short(e.get("location_note"))
        if e.get("confidence") == "low":
            note = (note + " " if note else "") + "(location unconfirmed)"
        lines.append("\t\t\t" + fields({
            "id": e.get("item_id") or slug(e["name"]), "name": e["name"], "zone": e.get("zone"),
            "x": e.get("x"), "y": e.get("y"), "faction": e.get("faction"), "item": e.get("item_id"),
            "quest": e.get("turnin_quest_id"), "note": note, "low": e.get("confidence") == "low" or None,
        }) + ",")
    lines.append("\t\t},")
    lines.append("\t\tturnin = {")
    for t in b["meta"].get("turnin_npcs", []):
        if t.get("role") == "librarian" and t.get("faction"):
            lines.append("\t\t\t%s = %s," % (t["faction"], fields({
                "name": t["name"], "npc": t.get("npc_id"), "zone": t.get("zone"), "x": t.get("x"), "y": t.get("y"),
                "note": short(t.get("note"))})))
    lines.append("\t\t},")
    lines.append("\t\trewards = {")
    for m in b["meta"].get("milestones", []):
        if not m.get("books"):
            continue                       # contagem em disputa nas fontes: sem número, não vira meta
        lines.append("\t\t\t" + fields({"n": m["books"], "quest": m.get("quest_id"),
                                        "text": short(", ".join(m.get("rewards") or []))}) + ",")
    lines.append("\t\t},")
    lines.append("\t},")
    return lines


def where(c):
    zones = []
    for st in c.get("steps") or []:
        z = st.get("zone")
        if z and z not in zones:
            zones.append(z)
    return " / ".join(zones[:2]) + (" …" if len(zones) > 2 else "")


def quests_lua(q):
    lines = ["\tquests = {"]
    for c in q["collectibles"]:
        steps = c.get("steps") or []
        last = None
        for st in steps:
            if st.get("action") == "turnin" and st.get("quest_id"):
                last = st["quest_id"]
        head = fields({"name": c["name"], "kind": c.get("type"), "item": c.get("reward_item_id"),
                       "faction": c.get("faction"), "lvl": c.get("min_level") or 1, "doneQuest": last,
                       "where": where(c)})
        lines.append("\t\t" + head[:-2] + ", steps = {")
        qname = {x.get("quest_id"): x.get("name") for x in (c.get("quests") or []) if x.get("quest_id")}
        for st in steps:
            act = st.get("action")
            # o id que o verbo usa: quest (aceitar, entregar), item (coletar, usar, comprar), NPC (falar, matar)
            if act in ("accept", "turnin"):
                ident = st.get("quest_id")
            elif act in ("collect", "use", "buy"):
                ident = st.get("item_id")
            elif act in ("talk", "kill"):
                ident = st.get("npc_id")
            elif act == "click":
                ident = st.get("npc_id") or st.get("object_id")     # a marca no NPC (corpo, sapo) segue valendo
            else:
                ident = None
            # aceitar/entregar: o alvo é a quest (a janela diz "Entregue <quest>"); o objeto vai na nota
            target = st.get("target")
            note = st.get("note")
            # "Farmer Saldean (buy Special Chicken Feed)": o nome fica no alvo (o botão de alvo mira por ele)
            m = re.match(r"^(.*?)\s*\((.+)\)\s*$", str(target or ""))
            if m and act in ("talk", "kill"):
                target, extra = m.group(1), m.group(2)
                note = extra + (". " + note if note else "")
            if act in ("accept", "turnin") and qname.get(ident):
                target = qname[ident]
            # sem o que o jogo confirma, vira nota (o passo anda à mão): aceite/entrega sem id, "ir até" sem ponto
            if act in ("accept", "turnin") and not ident:
                act, target = "note", ("Accept: " if act == "accept" else "Turn in: ") + str(target or "")
            elif act == "goto" and (st.get("x") is None or not st.get("zone")):
                act = "note"
            lines.append("\t\t\t" + fields({
                "act": act, "target": target, "id": ident, "zone": st.get("zone"),
                "x": st.get("x"), "y": st.get("y"), "faction": st.get("faction"), "note": short(note),
            }) + ",")
        lines.append("\t\t} },")
    lines.append("\t},")
    return lines


def pets_lua(p):
    rares = rare_index()
    lines = ["\tpets = {"]
    used = set()
    for e in p["pets"]:
        r = rares.get(e["name"].lower())
        pid = e.get("npc_id") or (r and r[0]) or slug(e["name"])
        if pid in used:
            pid = slug(e["name"]) + "_" + slug(e.get("zone") or "")
        used.add(pid)
        pts = [(sp["x"], sp["y"]) for sp in (e.get("spawns") or []) if sp.get("x") is not None]
        zone = e.get("zone")
        if not pts and r and (r[1] == zone or not zone):
            pts, zone = r[2], r[1]
        pts_lua = "{ " + ", ".join("{ %g, %g }" % xy for xy in pts[:6]) + " }"
        f = fields({"id": pid, "name": e["name"], "family": e.get("family"), "lvl": e.get("level"), "zone": zone,
                    "note": short(e.get("notes"))})
        lines.append("\t\t" + f[:-2] + ", pts = " + pts_lua + " },")
    lines.append("\t},")
    return lines


def main():
    b, q, p = load("library_books.json"), load("collectible_quests.json"), load("rare_hunter_pets.json")
    lines = ["-- AUTO-GERADO (tools/gen_collect.py) de tools/data/collect/*.json. Os colecionáveis do Forever: missões,",
             "-- livros da biblioteca, pets raros de caçador. Fontes nos JSON; ids dos addons MIT RXPGuides_LibraryBooks e",
             "-- Whatnot; pontos de pet do pfQuest (MIT) quando o nome bate.",
             "local ADDON, ns = ...", "if not ns then return end", "ns.collectData = {"]
    lines += quests_lua(q) + books_lua(b) + pets_lua(p)
    lines.append("}")
    with open(OUT, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    # zona que o Lodestar não conhece (ZoneData.lua): sem ponto no mapa, sem distância
    known = set(re.findall(r'\["([^"]+)"\]\s*=\s*\d+', open(os.path.join(ROOT, "ZoneData.lua"), encoding="utf-8").read()))
    unknown = sorted(set(re.findall(r'zone = "([^"]+)"', "\n".join(lines))) - known)
    for z in unknown:
        print("aviso: zona fora do ZoneData.lua: %s" % z)
    print("ok: %d missões, %d livros, %d pets" % (len(q["collectibles"]), len(b["books"]), len(p["pets"])))


if __name__ == "__main__":
    main()
