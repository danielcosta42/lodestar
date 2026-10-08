"""Gera ../Trainers.lua: treinadores de CLASSE e de PROFISSÃO (nome, coord, zona)."""
import json
import os
import re
from collections import defaultdict

from router import BUILD
from wdb import titulos
OUT = os.path.join(os.path.dirname(__file__), "..", "Trainers.lua")

N = json.load(open(os.path.join(BUILD, "npcs.json"), encoding="utf-8"))
Z = json.load(open(os.path.join(BUILD, "zones.json"), encoding="utf-8"))

CLASSES = ["Warrior", "Paladin", "Hunter", "Rogue", "Priest", "Shaman", "Mage", "Warlock", "Druid"]
PROFS = ["Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Herbalism",
         "Jewelcrafting", "Leatherworking", "Mining", "Skinning", "Tailoring",
         "Cooking", "First Aid", "Fishing"]
CAPITALS = {"Stormwind City", "Ironforge", "Darnassus", "The Exodar",
            "Orgrimmar", "Thunder Bluff", "Undercity", "Silvermoon City", "Shattrath City"}
FAC_MAP = {"A": ["Alliance"], "H": ["Horde"], "AH": ["Alliance", "Horde"]}

# O banco do Forever não marca os treinadores novos (subName vazio: o paladino da Horda, os
# instrutores júnior de profissão), mas o cache do cliente guarda o título que o servidor mandou.
# Pasta: LODESTAR_WDB, senão a do cliente do Forever ao lado deste (.../World of Warcraft/).
WDB = os.environ.get("LODESTAR_WDB") or os.path.normpath(os.path.join(
    os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "..", "..", "_classic_beta_", "Cache", "WDB"))
PT = {"Guerreiros": "Warrior", "Paladinos": "Paladin", "Caçadores": "Hunter", "Ladinos": "Rogue",
      "Sacerdotes": "Priest", "Xamãs": "Shaman", "Magos": "Mage", "Bruxos": "Warlock", "Druidas": "Druid",
      "Alquimia": "Alchemy", "Ferraria": "Blacksmithing", "Encantamento": "Enchanting",
      "Engenharia": "Engineering", "Herborismo": "Herbalism", "Joalheria": "Jewelcrafting",
      "Couraria": "Leatherworking", "Mineração": "Mining", "Esfolamento": "Skinning",
      "Alfaiataria": "Tailoring", "Culinária": "Cooking", "Primeiros Socorros": "First Aid", "Pesca": "Fishing"}


def chave_titulo(t):
    """Título do cliente (en ou pt) -> chave de classe/profissão ("Paladin", "Mining") ou None."""
    m = re.match(r"(?:Junior )?(.+) Trainer$", t or "")     # "Junior Mining Trainer" (cliente en)
    if m and m.group(1) in CLASSES + PROFS:
        return m.group(1)
    m = re.match(r"(?:Treinamento de|Instrutora? (?:Júnior )?de) (.+)$", t or "")
    return PT.get(m.group(1)) if m else None


TITULOS = titulos(WDB)


def build(keys, upper):
    data = defaultdict(lambda: defaultdict(list))
    for nid, n in N.items():
        sub = n.get("subName") or ""
        if not sub and chave_titulo(TITULOS.get(int(nid))):
            sub = chave_titulo(TITULOS[int(nid)]) + " Trainer"
        facs = FAC_MAP.get(n.get("faction"))
        if not facs:
            continue
        for k in keys:
            if sub != k + " Trainer":
                continue
            spawns = n.get("spawns") or {}
            if not spawns:
                break
            area = int(next(iter(spawns)))
            zname = Z.get(str(area), {}).get("name")
            pts = spawns.get(str(area))
            if not (zname and pts):
                break
            x, y = pts[0]
            entry = {"n": n["name"], "id": int(nid), "zone": zname,
                     "x": round(x, 2), "y": round(y, 2), "cap": zname in CAPITALS}
            kk = k.upper() if upper else k
            for f in facs:
                data[kk][f].append(entry)
            break
    for k in data:
        for f in data[k]:
            data[k][f].sort(key=lambda t: (not t["cap"], t["zone"]))
    return data


def esc(s):
    return (s or "").replace("\\", "\\\\").replace('"', '\\"')


def emit_table(lines, varname, data):
    lines.append("ns.%s = {" % varname)
    for k in sorted(data):
        lines.append('\t["%s"] = {' % esc(k))
        for fac in ("Alliance", "Horde"):
            tl = data[k].get(fac)
            if not tl:
                continue
            lines.append('\t\t["%s"] = {' % fac)
            for t in tl:
                lines.append('\t\t\t{ n="%s", id=%d, zone="%s", x=%s, y=%s },'
                             % (esc(t["n"]), t["id"], esc(t["zone"]), t["x"], t["y"]))
            lines.append("\t\t},")
        lines.append("\t},")
    lines.append("}")


cls = build(CLASSES, upper=True)
prof = build(PROFS, upper=False)

# NPCs amigáveis, com posição, que o banco deixou sem título: o `/ls scan` pergunta cada um ao
# servidor, a resposta (nome e título) fica no cache do cliente, e a próxima rodada daqui os lê.
CANDIDATOS = sorted(int(i) for i, n in N.items()
                    if FAC_MAP.get(n.get("faction")) and n.get("spawns") and not n.get("subName"))


def demo():
    assert chave_titulo("Paladin Trainer") == "Paladin"
    assert chave_titulo("Treinamento de Paladinos") == "Paladin"
    assert chave_titulo("Treinamento de Primeiros Socorros") == "First Aid"
    assert chave_titulo("Instrutor Júnior de Mineração") == "Mining"
    assert chave_titulo("Instrutora Júnior de Herborismo") == "Herbalism"
    assert chave_titulo("Junior Mining Trainer") == "Mining"          # cliente em inglês
    assert chave_titulo("Mestre de Estábulo") is None and chave_titulo(None) is None
    assert 246152 in CANDIDATOS and 2131 not in CANDIDATOS, "sem título no banco entra; com título, não"
    if TITULOS:                     # cache do cliente presente: o paladino da Horda aparece
        nomes = {t["n"] for t in cls["PALADIN"].get("Horde", [])}
        assert "Shari Stilwell" in nomes, nomes


demo()

lines = ["-- AUTO-GERADO (gen_trainers.py). Treinadores de classe e profissão.",
         "local ADDON, ns = ...", "if not ns then return end"]
emit_table(lines, "classTrainers", cls)
emit_table(lines, "profTrainers", prof)
lines.append("-- sem título no banco: o /ls scan pergunta ao servidor (ForeverScan.lua)")
lines.append('ns.trainerCandidates = "%s"' % " ".join(map(str, CANDIDATOS)))

with open(OUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(lines) + "\n")

ct = sum(len(cls[c][f]) for c in cls for f in cls[c])
pt = sum(len(prof[p][f]) for p in prof for f in prof[p])
print("gerado:", OUT, "|", ct, "treinadores de classe,", pt, "de profissão,", len(CANDIDATOS), "a perguntar")
