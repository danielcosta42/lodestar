"""Gera DungeonData.lua (specs/lodestar-3): as masmorras e raides, os chefes e o loot de cada chefe.

Fontes:
- o roteiro abaixo (fatos do jogo: nome, mapa da instância, zona e faixa de níveis, a entrada aproximada e os
  nomes dos chefes, na ordem em que se chega neles) — a entrada exata o addon aprende quando o jogador entra;
- o banco do pfQuest (MIT, https://github.com/shagu/pfQuest): o id de cada chefe pelo nome (db/enUS/units.lua) e o
  que ele deixa cair, com a chance (db/items.lua, campo "U").

O addon filtra no jogo o que é equipável (GetItemInfoInstant) e lê os status do próprio item.

    python3 tools/gen_dungeons.py <pasta do pfQuest>
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "..", "DungeonData.lua")
MIN_CHANCE = 4.0          # % — abaixo disso não é "o loot do chefe", é sorte
MAX_PER_BOSS = 14

# chave (= a do guia de masmorra "Dungeons/<Facção>/<chave>"), instância, zona da entrada, entrada (x, y),
# níveis, raide, chefes
DUNGEONS = [
    ("Ragefire Chasm", 389, "Orgrimmar", (52.8, 49.0), (13, 18), False,
     ["Oggleflint", "Taragaman the Hungerer", "Jergosh the Invoker", "Bazzalan"]),
    ("Wailing Caverns", 43, "The Barrens", (46.0, 36.4), (17, 24), False,
     ["Lady Anacondra", "Lord Cobrahn", "Kresh", "Lord Pythas", "Skum", "Lord Serpentis",
      "Verdan the Everliving", "Mutanus the Devourer"]),
    ("The Deadmines", 36, "Westfall", (42.6, 71.8), (17, 26), False,
     ["Rhahk'Zor", "Miner Johnson", "Sneed's Shredder", "Sneed", "Gilnid", "Mr. Smite", "Captain Greenskin",
      "Edwin VanCleef", "Cookie"]),
    ("Shadowfang Keep", 33, "Silverpine Forest", (44.8, 67.8), (22, 30), False,
     ["Rethilgore", "Razorclaw the Butcher", "Baron Silverlaine", "Commander Springvale", "Odo the Blindwatcher",
      "Fenrus the Devourer", "Wolf Master Nandos", "Archmage Arugal"]),
    ("Blackfathom Deeps", 48, "Ashenvale", (14.2, 14.3), (24, 32), False,
     ["Ghamoo-ra", "Lady Sarevess", "Gelihast", "Lorgus Jett", "Baron Aquanis", "Twilight Lord Kelris",
      "Old Serra'kis", "Aku'mai"]),
    ("The Stockade", 34, "Stormwind City", (40.5, 55.4), (24, 32), False,
     ["Targorr the Dread", "Kam Deepfury", "Hamhock", "Bazil Thredd", "Dextren Ward", "Bruegal Ironknuckle"]),
    ("Gnomeregan", 90, "Dun Morogh", (24.4, 39.8), (29, 38), False,
     ["Grubbis", "Viscous Fallout", "Electrocutioner 6000", "Crowd Pummeler 9-60", "Dark Iron Ambassador",
      "Mekgineer Thermaplugg"]),
    ("Razorfen Kraul", 47, "The Barrens", (42.3, 89.9), (29, 38), False,
     ["Roogug", "Aggem Thorncurse", "Death Speaker Jargba", "Overlord Ramtusk", "Agathelos the Raging",
      "Blind Hunter", "Charlga Razorflank", "Earthcaller Halmgar"]),
    ("Scarlet Monastery", 189, "Tirisfal Glades", (82.6, 33.8), (30, 45), False,
     ["Interrogator Vishas", "Bloodmage Thalnos", "Houndmaster Loksey", "Arcanist Doan", "Herod",
      "High Inquisitor Fairbanks", "Scarlet Commander Mograine", "High Inquisitor Whitemane"]),
    ("Razorfen Downs", 129, "The Barrens", (49.0, 93.9), (37, 46), False,
     ["Tuten'kash", "Mordresh Fire Eye", "Glutton", "Ragglesnout", "Amnennar the Coldbringer"]),
    ("Uldaman", 70, "Badlands", (42.9, 13.6), (41, 51), False,
     ["Revelosh", "Baelog", "Ironaya", "Obsidian Sentinel", "Ancient Stone Keeper", "Galgann Firehammer",
      "Grimlok", "Archaedas"]),
    ("Zul'Farrak", 209, "Tanaris", (38.7, 20.0), (44, 54), False,
     ["Antu'sul", "Theka the Martyr", "Witch Doctor Zum'rah", "Nekrum Gutchewer", "Shadowpriest Sezz'ziz",
      "Sergeant Bly", "Hydromancer Velratha", "Gahz'rilla", "Chief Ukorz Sandscalp", "Ruuzlu"]),
    ("Maraudon", 349, "Desolace", (29.1, 62.5), (46, 55), False,
     ["Noxxion", "Razorlash", "Lord Vyletongue", "Celebras the Cursed", "Landslide", "Tinkerer Gizlock",
      "Rotgrip", "Princess Theradras"]),
    ("The Temple of Atal'Hakkar", 109, "Swamp of Sorrows", (69.6, 53.7), (50, 60), False,
     ["Atal'alarion", "Dreamscythe", "Weaver", "Jammal'an the Prophet", "Ogom the Wretched", "Morphaz",
      "Hazzas", "Shade of Eranikus", "Avatar of Hakkar"]),
    ("Blackrock Depths", 230, "Searing Gorge", (34.8, 85.3), (52, 60), False,
     ["Lord Roccor", "High Interrogator Gerstahn", "Houndmaster Grebmar", "Bael'Gar", "Lord Incendius",
      "Fineous Darkvire", "General Angerforge", "Golem Lord Argelmach", "Hurley Blackbreath", "Phalanx",
      "Ribbly Screwspigot", "Plugger Spazzring", "Ambassador Flamelash", "Magmus",
      "Emperor Dagran Thaurissan"]),
    ("Blackrock Spire", 229, "Burning Steppes", (29.4, 38.3), (55, 60), False,
     ["Highlord Omokk", "Shadow Hunter Vosh'gajin", "War Master Voone", "Mother Smolderweb", "Urok Doomhowl",
      "Quartermaster Zigris", "Halycon", "Gizrul the Slavener", "Overlord Wyrmthalak", "Pyroguard Emberseer",
      "Solakar Flamewreath", "Warchief Rend Blackhand", "The Beast", "General Drakkisath"]),
    ("Dire Maul", 429, "Feralas", (58.9, 44.9), (56, 60), False,
     ["Lethtendris", "Hydrospawn", "Zevrim Thornhoof", "Alzzin the Wildshaper", "Tendris Warpwood",
      "Illyanna Ravenoak", "Magister Kalendris", "Immol'thar", "Prince Tortheldrin", "Guard Mol'dar",
      "Stomper Kreeg", "Guard Fengus", "Guard Slip'kik", "Captain Kromcrush", "Cho'Rush the Observer",
      "King Gordok"]),
    ("Scholomance", 289, "Western Plaguelands", (69.7, 73.2), (58, 60), False,
     ["Kirtonos the Herald", "Jandice Barov", "Rattlegore", "Marduk Blackpool", "Vectus", "Ras Frostwhisper",
      "Instructor Malicia", "Doctor Theolen Krastinov", "Lorekeeper Polkelt", "The Ravenian",
      "Lord Alexei Barov", "Lady Illucia Barov", "Darkmaster Gandling"]),
    ("Stratholme", 329, "Eastern Plaguelands", (30.8, 14.4), (58, 60), False,
     ["The Unforgiven", "Timmy the Cruel", "Malor the Zealous", "Cannon Master Willey", "Archivist Galford",
      "Balnazzar", "Magistrate Barthilas", "Nerub'enkan", "Baroness Anastari", "Maleki the Pallid",
      "Ramstein the Gorger", "Baron Rivendare"]),
    ("Molten Core", 409, "Burning Steppes", (29.4, 38.3), (60, 60), True,
     ["Lucifron", "Magmadar", "Gehennas", "Garr", "Shazzrah", "Baron Geddon", "Golemagg the Incinerator",
      "Sulfuron Harbinger", "Majordomo Executus", "Ragnaros"]),
    ("Onyxia's Lair", 249, "Dustwallow Marsh", (52.5, 76.4), (60, 60), True, ["Onyxia"]),
    ("Blackwing Lair", 469, "Burning Steppes", (29.4, 38.3), (60, 60), True,
     ["Razorgore the Untamed", "Vaelastrasz the Corrupt", "Broodlord Lashlayer", "Firemaw", "Ebonroc", "Flamegor",
      "Chromaggus", "Nefarian"]),
    ("Zul'Gurub", 309, "Stranglethorn Vale", (53.9, 17.6), (60, 60), True,
     ["High Priestess Jeklik", "High Priest Venoxis", "High Priestess Mar'li", "Bloodlord Mandokir", "Gri'lek",
      "Hazza'rah", "Renataki", "Wushoolay", "Gahz'ranka", "High Priest Thekal", "High Priestess Arlokk",
      "Jin'do the Hexxer", "Hakkar"]),
    ("Ruins of Ahn'Qiraj", 509, "Silithus", (28.6, 92.4), (60, 60), True,
     ["Kurinnaxx", "General Rajaxx", "Moam", "Buru the Gorger", "Ayamiss the Hunter", "Ossirian the Unscarred"]),
    ("Temple of Ahn'Qiraj", 531, "Silithus", (28.6, 92.4), (60, 60), True,
     ["The Prophet Skeram", "Battleguard Sartura", "Fankriss the Unyielding", "Princess Huhuran", "Viscidus",
      "Emperor Vek'lor", "Emperor Vek'nilash", "Ouro", "C'Thun"]),
    ("Naxxramas", 533, "Eastern Plaguelands", (39.9, 25.9), (60, 60), True,
     ["Anub'Rekhan", "Grand Widow Faerlina", "Maexxna", "Noth the Plaguebringer", "Heigan the Unclean",
      "Loatheb", "Instructor Razuvious", "Gothik the Harvester", "Patchwerk", "Grobbulus", "Gluth", "Thaddius",
      "Sapphiron", "Kel'Thuzad"]),
]


def read(path):
    with open(path, encoding="utf-8") as f:
        return f.read()


def unit_names(db):
    """db/enUS/units.lua: [id] = "Nome" -> {nome: [ids]}."""
    out = {}
    for m in re.finditer(r'\[(\d+)\] = "((?:[^"\\]|\\.)*)"', read(os.path.join(db, "enUS", "units.lua"))):
        name = m.group(2).replace("\\'", "'").replace('\\"', '"')
        out.setdefault(name, []).append(int(m.group(1)))
    return out


def entries(path):
    """Os blocos de primeiro nível de um arquivo do pfQuest: {id: texto do bloco}. Linha a linha: `[17] = {},`
    (vazio) não pode engolir os blocos seguintes."""
    out, cur, buf = {}, None, []
    for line in read(path).split("\n"):
        m = re.match(r"^  \[(\d+)\] = \{(\})?,?\s*$", line)
        if m and cur is None:
            if m.group(2):
                out[int(m.group(1))] = ""
            else:
                cur, buf = int(m.group(1)), []
        elif cur is not None and re.match(r"^  \},?\s*$", line):
            out[cur] = "\n".join(buf)
            cur = None
        elif cur is not None:
            buf.append(line)
    return out


def table_field(body, key):
    m = re.search(r'\["%s"\] = \{(.*?)\n    \}' % key, body, re.S)
    return [(int(a), float(b)) for a, b in re.findall(r'\[(\d+)\] = ([\d.]+)', m.group(1))] if m else []


def drops(db):
    """O que cada unidade deixa cair: {unit: [(item, chance)]}. db/items.lua dá a chance direto ("U") ou por uma
    tabela de referência ("R" -> db/refloot.lua, que diz quais unidades usam a tabela)."""
    refs = {ref: table_field(body, "U") for ref, body in entries(os.path.join(db, "refloot.lua")).items()}
    out = {}
    for item, body in entries(os.path.join(db, "items.lua")).items():
        for unit, chance in table_field(body, "U"):
            out.setdefault(unit, []).append((item, chance))
        for ref, chance in table_field(body, "R"):
            for unit, share in refs.get(ref, []):
                out.setdefault(unit, []).append((item, chance * min(1.0, share)))
    return out


def lua_str(s):
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"') + '"'


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    db = os.path.join(sys.argv[1], "db")
    names, loot = unit_names(db), drops(db)
    lines = ["-- AUTO-GERADO (tools/gen_dungeons.py). Masmorras, chefes e o loot de cada um.",
             "-- Chefes e loot: pfQuest (MIT, github.com/shagu/pfQuest). Roteiro, faixas e entradas: tools/gen_dungeons.py.",
             "local ADDON, ns = ...", "if not ns then return end", "ns.dungeonData = {"]
    missing = []
    for key, inst, zone, door, (lo, hi), raid, bosses in DUNGEONS:
        lines.append("\t{ key = %s, instance = %d, zone = %s, x = %.1f, y = %.1f, lo = %d, hi = %d, raid = %s, bosses = {"
                     % (lua_str(key), inst, lua_str(zone), door[0], door[1], lo, hi, "true" if raid else "false"))
        for b in bosses:
            ids = names.get(b, [])
            # o mesmo nome em mais de um id (versões do mesmo chefe): fica o que mais deixa cair
            best = max(ids, key=lambda i: len([1 for _, c in loot.get(i, []) if c >= MIN_CHANCE]), default=None)
            items = sorted((it for it in loot.get(best, []) if it[1] >= MIN_CHANCE), key=lambda t: -t[1])[:MAX_PER_BOSS]
            if best is None:
                missing.append(b)
            body = ", ".join("{ %d, %g }" % (i, round(c, 1)) for i, c in items)
            lines.append("\t\t{ name = %s, npc = %s, loot = { %s } }," % (lua_str(b), best if best else "nil", body))
        lines.append("\t} },")
    lines.append("}")
    with open(OUT, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print("ok: %d masmorras; chefes sem id no pfQuest: %s" % (len(DUNGEONS), ", ".join(missing) or "nenhum"))


if __name__ == "__main__":
    main()
