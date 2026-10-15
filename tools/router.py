"""
Fase 2 — Roteador v1 (hub-batched). JSON intermediário -> DSL do Lodestar.

Modelo:
  - HUBS: aglomera os NPCs de pegar/entregar (as "cidades") por proximidade.
  - Cada quest é atribuída a baldes: hub-do-giver, hub-do-objetivo, hub-do-ender.
  - Percorre os hubs por vizinho-mais-próximo e, em passes, em cada hub:
        entrega (ender aqui + objetivo feito) -> pega (pré-reqs ok) -> faz (objetivo aqui)
    Isso intercala pegar/fazer/entregar e minimiza backtracking.
  - Coords cross-zone (ender/objetivo fora da zona) usam o nome real da zona.

Exposto: generate_zone(data, area, faction, title, level_max) -> (texto_dsl, n_quests)
"""
import json
import os
import hashlib
import re
from collections import defaultdict

# O banco do Forever (import_forever.py). O Lodestar é Forever e só; a pasta
# build/ de cima é o Questie do Anniversary, de onde vinham as rotas antigas.
BUILD = os.path.join(os.path.dirname(os.path.abspath(__file__)), "build", "forever")

# quests placeholder/deprecadas do banco: nunca entram num guia (o NPC não as oferece).
# Colchetes case-insensitive; prefixos "OLD "/"BETA " só em CAIXA ALTA (não pega nomes
# legítimos como "Old Man Barlo"). "BETA " marca quests de teste sem giver no banco.
_PLACEHOLDER_CI = re.compile(r"\[not used\]|\[unused\]|\[ph\]|\[nyi\]|\[deprecated\]", re.I)
_PLACEHOLDER_CS = re.compile(r"^(OLD|BETA)\s")
def is_placeholder(name):
    return bool(name and (_PLACEHOLDER_CI.search(name) or _PLACEHOLDER_CS.search(name)))

# nomes de "gatilho" internos (crédito de quest) — feios de exibir; usa o nome da
# quest no lugar. Ex.: "Banishing Crystal Bunny 02", "... Quest Trigger", "[DND]",
# "Quest Doodad", "<TXT> ... Doodad".
_MARKER = re.compile(r"\bbunny\b|credit|trigger|\bdnd\b|\bph\b|\bmarker\b|doodad|<txt>", re.I)
def is_marker(name):
    return bool(name and _MARKER.search(name))

# Quests de FABRICAÇÃO (craft-and-deliver): o item de objetivo é feito na profissão,
# não lootado. Apontar a seta pro mob que 'dropa' o item (item comum) é enganoso —
# o passo deve dizer "fabrique X". Ex.: "Craftsman's Writ - Major Mana Potion".
_CRAFT = re.compile(r"^Craftsman's Writ\b")
def is_craft_quest(name):
    return bool(name and _CRAFT.match(name))

# contagem do objetivo ("gather 5 Apexis Shards" -> "5"), extraída do objText.
_OBJCNT = re.compile(
    r"\b(?:gather(?:ing)?|bring|collect(?:ing)?|obtain|acquire|retrieve|find|slay|kill|"
    r"destroy|deliver|wrangle|capture|tag|douse|subdue|need|use)\s+(?:up to\s+)?(\d+)\b", re.I)
def obj_count(objtext):
    ot = (objtext[0] if objtext else "") or ""
    m = _OBJCNT.search(ot)
    return m.group(1) if m else None

# quest de USAR item na CRIATURA (rede/salve/etc.) — o verbo certo é "use", não "kill".
_USEQ = re.compile(
    r"\b(wrangle|capture|subdue|tame|snag|ensnare|douse|tag|scare|mark)\b|"
    r"\buse\s+(?:the\s+|your\s+|a\s+)?[\w' ]{2,28}?\s+on\b", re.I)
# se o texto MANDA MATAR, a criatura é kill e o "use ... on" é num objeto à parte
# (ex.: "Kill Zuluhed... Use the Key on the Chains") — não marcar a criatura como "use".
_KILLQ = re.compile(r"\b(kill|slay|slaughter|destroy|defeat|assassinate|eliminate|hunt|bounty)\b", re.I)
def is_use_quest(objtext):
    ot = (objtext[0] if objtext else "") or ""
    if _KILLQ.search(ot):
        return False
    return bool(_USEQ.search(ot))

# Pré-requisitos que o BANCO NÃO codifica (0 preGroup/preSingle) mas o jogo exige —
# geralmente um desbloqueio de área. Alimenta a ORDENAÇÃO (topo) e o DETOUR (questPre).
# Ex.: as quests do acampamento de Ogri'la (Kronk/Khatie/Chu'a'lor) só abrem depois de
# "Ogre Heaven" (11009), o passo que te torna ogro honorário e abre Ogri'la.
PREREQ_OVERRIDES = {
    11026: 11009,   # Banish the Demons (Kronk)          -> Ogre Heaven
    11065: 11009,   # Wrangle Some Aether Rays! (Khatie) -> Ogre Heaven
    11091: 11009,   # A Special Thank You (Chu'a'lor)    -> Ogre Heaven
}

RACE_BIT = {1: "Human", 2: "Orc", 4: "Dwarf", 8: "NightElf", 16: "Undead",
            32: "Tauren", 64: "Gnome", 128: "Troll", 512: "BloodElf", 1024: "Draenei"}
# Forever: Skyborne são duas raças, uma por facção (bits 32 e 33). Máscara só com
# esses bits — um deles ou os dois — é quest de Skyborne; a facção já sai da
# máscara, e o Guide.lua reconhece "Skyborne" pelo id da raça (95/96).
VANILLA_RACES = (1 << 32) - 1
TODAS_RACAS = VANILLA_RACES | 1 << 32 | 1 << 33        # com as duas Skyborne
# bitmask de classe do WoW = 1<<(classId-1): Sha=64, Mag=128, Wlk=256, Dru=1024.
CLASS_BIT = {1: "Warrior", 2: "Paladin", 4: "Hunter", 8: "Rogue", 16: "Priest",
             64: "Shaman", 128: "Mage", 256: "Warlock", 1024: "Druid"}

HUB_MERGE_DIST = 6.0    # % da zona: pontos mais próximos que isso viram um hub

# zoneOrSort que não é rota de leveling: feriado/evento (-22 Seasonal, -284, -364
# Darkmoon, -365 guerra de AQ, -366, -368, -369), reputação e lendária de fim de
# jogo (-367, -344, -1), profissão (-24, -101, -121, -181, -182, -201, -264, -304,
# -324) e campo de batalha (AV 2597, WSG 3277, AB 3358, Darkspear Islands 16606, o
# 15v15 do Forever). Têm guia próprio no gen_special ou nenhum. Classe (-61, -141...)
# fica — sai com `only <Classe>` —, e o Camping do Forever (-666) também: é o
# tutorial da zona inicial.
FORA_DO_LEVELING = {-22, -284, -364, -365, -366, -367, -368, -369, -344, -1,
                    -24, -101, -121, -181, -182, -201, -264, -304, -324,
                    2597, 3277, 3358, 16606}
# entregar marca de campo de batalha ou doar pano é reputação, não rota: Concerted
# Efforts fazia do Alterac da Aliança um guia "34-60"; as Mantles of the Dawn pedem
# Argent Dawn Valor Token, que ninguém tem subindo de nível
# Cartel Steamwheedle (Booty Bay, Gadgetzan, Ratchet, Everlook): quest que tira reputação dele é
# dos Bloodsail (Dressing the Part, Avast Ye, Admiral!) — mata o Baron Revilgaz em Booty Bay
CARTEL = {21, 369, 470, 577}
# (e os 30 Core of Elements de The Elemental Equation, reputação com a Argent Dawn)
SO_REPUTACAO = {20558, 20559, 20560, 2592, 4306, 4338, 14047, 12844, 22527}

# Continente de cada zona (areaID): o que não está em Kalimdor é Reinos do Leste,
# menos a ilha da raça nova, que é de cada facção — o Skyborne da Aliança sai pelo
# portal para Stormwind, o da Horda vai para Orgrimmar.
KALIMDOR = {14, 215, 17, 141, 148, 331, 406, 405, 357, 400, 440, 490, 1377, 361, 618, 16,
            493, 15, 1637, 1638, 1657, 616, 16651, 10073,
            2917,                                           # Hall of Legends (Orgrimmar)
            718, 491, 1717, 722, 719, 10020, 10021, 2100, 10000, 1176, 2159, 2437,   # masmorras
            2557, 10022, 10023, 10024, 10025, 10026, 10027, 3428, 3429}
ZEPHRAS = 16593
CAPITAIS = {"A": {1519, 1537, 1657, 2918}, "H": {1637, 1638, 1497, 2917},
            "N": {1519, 1537, 1657, 1637, 1638, 1497}}


def continente(area, faction):
    area = int(area)
    if area == ZEPHRAS:
        return "EK" if faction == "A" else "K"
    return "K" if area in KALIMDOR else "EK"


# ---------------------------------------------------------------------------
# Carga
# ---------------------------------------------------------------------------
DIARIO = 18                  # missões no diário, com folga para as de classe


def load_data():
    d = {}
    for name in ("quests", "npcs", "objects", "zones"):
        with open(os.path.join(BUILD, f"{name}.json"), encoding="utf-8") as fh:
            d[name] = json.load(fh)
    for name in ("items", "xp"):            # fonte dos objItems; XP de quest (opcionais)
        p = os.path.join(BUILD, "%s.json" % name)
        d[name] = json.load(open(p, encoding="utf-8")) if os.path.exists(p) else {}
    return d


# XP para passar de cada nível (1 -> 2 é o primeiro), a tabela do vanilla.
XP_NIVEL = [400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8800, 10100, 11400, 12900,
            14400, 16000, 17700, 19400, 21300, 23200, 25200, 27300, 29400, 31700, 34000, 36400,
            38900, 41400, 44300, 47400, 50800, 54500, 58600, 62800, 67100, 71600, 76100, 80800,
            85700, 90700, 95800, 101000, 106300, 111800, 117500, 123200, 129100, 135100, 141200,
            147500, 153900, 160400, 167100, 173900, 180800, 187900, 195000, 202300, 209800]
CURVA_NIVEL = 0.7      # a fração entregue do guia sobe em curva (#57); o nível é o maior entre ela e a XP
PESO_SO_PEGAR = 1.2    # hub que só tem quest nova conta 1,2x a distância: termina antes de pegar mais
LV_ACIMA = 2           # quest até 2 níveis acima do estimado (laranja); +3 é vermelho — Encroachment
                       # mandava ao Battleguard de nível 9-10 quem tinha 7
XP_FOLGA = 0.5         # o nível pela XP vale meio a menos: a conta é aproximada (quest nova sem XP no
                       # banco, mobs pelo texto); sem a folga, Lazy Peons e Brill saíam no "!" cinza
ROLLOUT_LARGURA = 2    # candidatos mais perto que a rota simula até acabar o trabalho que se sabe
ENTRADA_QUESTS = 6     # o `ding` da entrada do guia vai até o reqLevel das 6 primeiras quests
FONTE_MUNDO = 20       # spawns fora de instância para a fonte do mundo aberto valer mais que a de dentro: a entrada
                       # de Gnomeregan tem 9-16 (fica na masmorra); Deviate Hide 55, Dentrium 152 (mundo aberto)
# a contagem do objetivo: número seguido de palavra que não é preposição ("Kill 10 Mottled
# Boars"); "Pages 1, 4, 6 and 8 of" não conta
_CONTA = re.compile(r"\b(\d+)\s+(?!(?:of|and|or|to|in|at|from|for|the|more|times?|yards?)\b)[A-Za-z]", re.I)


def xp_quest(qid, q, xp, itens=None):
    """XP de entregar e dos mobs do objetivo. A de entrega é a do QuestieDB (`xp.json`);
    a quest nova do Forever, que não tem, segue a mediana do dado (~60·nível^1,1), um
    terço sem objetivo. Mob: `45 + 5·nível` cada, pela contagem do texto (1 sem número: o
    alvo nomeado, "Bring Vejrek's Head"); item, 1,5 mob por peça, só se cai de NPC (de
    objeto não se mata nada). Sem os mobs do caminho nem as quests de classe: por baixo."""
    ql = max(q.get("questLevel") or q.get("reqLevel") or 1, 1)
    tem_obj = bool(q["objCreatures"] or q["objItems"] or q["objObjects"])
    base = (xp.get(str(qid)) or [None, None])[1]
    if base is None:
        base = 60 * ql ** 1.1 * (1 if tem_obj else 0.35)
    de_mob = q["objItems"] and any(((itens or {}).get(str(i)) or {}).get("npc") for i in q["objItems"])
    mobs = 0
    if q["objCreatures"] or de_mob:
        n = sum(int(c) for c in _CONTA.findall(" ".join(q["objText"])) if int(c) <= 40) or 1
        mobs = n * (1 if q["objCreatures"] else 1.5)
    return base + mobs * (45 + 5 * ql)


def nivel_por_xp(ini, xp):
    """Nível (com fração) de quem entra no guia no nível `ini` e ganha `xp`."""
    lv = max(int(ini), 1)
    while lv < 60 and xp >= XP_NIVEL[lv - 1]:
        xp -= XP_NIVEL[lv - 1]
        lv += 1
    return lv + (xp / XP_NIVEL[lv - 1] if lv < 60 else 0)


# ---------------------------------------------------------------------------
# helpers de coord
# ---------------------------------------------------------------------------
def npc_amigo(npc):
    """NPC com quem se fala: `faction` só diz quem interage (a tartaruga neutra tem);
    amigo é quem também tem gossip ou dá/recebe quest (Demitrian, Itharius)."""
    npc = npc or {}
    return bool(npc.get("faction") and ((npc.get("npcFlags") or 0) & 1
                                        or npc.get("questStarts") or npc.get("questEnds")))


# Tarefa com contagem no texto e nenhum objetivo no QuestieDB (8 nos guias, #59). O alvo
# sai do nome no texto; esta tabela é para o nome que não bate com o do NPC.
OBJETIVO_MANUAL = {
    98389: 271961,   # A Light in the Darkness: "Free 6 Webbed Victims" -> Webbed Forsaken
    2969: 7997,      # Freedom for All Creatures: as do cercado, não o Sprite Darter solto (5278)
    93128: 5601,     # Khan Jehn: o texto escreve "slay Khan Jhen"
}
# O item do objetivo vem de um NPC que o banco não liga à quest: o passo de fazer manda a ele
# antes do objetivo, e é lá que a rota conta o objetivo. Sem isso, Marla's Last Wish ia direto à
# lápide sem os restos, o fragmento de Araj saía sem o Araj (elite de 61), e as amostras de
# Fuely caíam em Badlands e Tirisfal — com o lugar certo (Felwood e Un'Goro) elas saem do
# leveling: são de Undercity, e breadcrumb de capital para outro continente fica fora.
OBJETIVO_ANTES = {
    6395: 1919,      # Marla's Last Wish: "Bring Samuel Fipps' Remains" -> Samuel Fipps
    105: 1852,       # Alas, Andorhal (Horda): Araj's Phylactery aparece quando Araj the Summoner morre
    211: 1852,       # Alas, Andorhal (Aliança)
    8481: 15623,     # The Root of All Evil: Xandivious (elite de 62, invocado: sem spawn, a seta é a do lugar)
    4293: 7092,      # Corrupted Felwood Samples: a amostra crua é dos limos de Felwood (testa em Undercity)
    4294: 6559,      # Pure Un'Goro Samples: a dos limos de Un'Goro
}
# Zona nova do Forever dentro de outra: as quests dela vão no guia da mãe. Shen'dralas (o Valley of
# Bones, ao sul de Desolace) virava guia próprio quando tinha 6 quests e sumia quando tinha menos
# (na Horda, Ravaging Ravagers e Khan Jehn não iam a guia nenhum)
ZONA_MAE = {16651: 405}
# Fora do leveling por nome: Arena Master começa no baú do evento de PvP da arena de Gurubashi
FORA_QUESTS = {7810}
# e as "Legacy Reward" (brinde de conta: sem texto nem objetivo, só para quem tem direito)
FORA_NOME = re.compile(r"^Legacy Reward:")
# Veio de minério: só quem tem Mining colhe
VEIO = re.compile(r"\b(Vein|Deposit)$")
# Baú de saque aleatório (Battered Chest, Dented Footlocker, Kolkar's Booty): para item de ofício não
# é fonte — a Silver Bar de Lore for a Price mandava a um baú qualquer de Redridge
BAU = re.compile(r"\b(Chest|Footlocker|Strongbox|Booty|Treasure|Trunk)$")
# Tecido cai de quase todo humanoide, e o QuestieDB não lista esses mobs: só os baús ficavam, e The
# Tome of Divinity (paladino) e Gathering Materials (mago) saíam como de profissão
TECIDO = {"Linen Cloth", "Wool Cloth", "Silk Cloth", "Mageweave Cloth", "Runecloth"}
# Tarefa sem alvo no banco: o NPC que mora no lugar do texto dá a seta do passo `get |q`.
OBJETIVO_LUGAR = {
    76156: 2979,     # "Venture Company mine southeast of Thunder Bluff": Venture Co. Supervisor
    76160: 2964,     # "Windfury Cones north of Thunder Bluff": Windfury Sorceress
    98221: 1036,     # "Attack Plans in the Angerfang Encampment": Dragonmaw Centurion
    99108: 10721,    # "duels or Novice Warriors": Novice Warrior
    8481: 10738,     # The Root of All Evil: a tocha na boca da caverna do High Chief Winterfall
                     # (o Xandivious é invocado lá e não tem spawn no banco)
}
_TAREFA = re.compile(r"\b(free|kill|slay|collect|gather|destroy|rescue|burn|use|place|plant|"
                     r"light|search|investigate|defeat|cleanse|capture|heal)\b", re.I)
_ALVO = re.compile(r"\b\d+\s+([A-Z][\w'-]*(?:\s+[A-Z][\w'-]*)*)")


def tarefa_sem_alvo(q):
    t = " ".join(q["objText"])
    return not (q["objCreatures"] or q["objItems"] or q["objObjects"]) \
        and bool(re.search(r"\b\d+\b", t) and _TAREFA.search(t))


# Trabalho que o texto pede e o banco não tem: trazer, comprar ou pescar item contado ou indefinido
# ("bring 1 Necromantic Garb", "Buy or catch a Raw Brilliant Smallfish"), matar alguém pelo nome,
# usar alguma coisa e voltar a quem deu ("Use the detonator")
_TRABALHO = re.compile(r"(?i:\b(?:bring|return|collect|gather|obtain|recover|retrieve|buy|catch))\s+(?:\d+|an?)\s+"
                       r"([A-Z][\w'-]*(?:\s+[A-Z][\w'-]*)*)|(?i:\b(?:slay|kill|defeat))\s+(?!\d)[A-Z]")
_USA = re.compile(r"(?i:\buse)\s+the\s")
# o item que se entrega em "Deliver the Eye of the Tempest to Bath'rah..."
_ENTREGA = re.compile(r"(?i:\b(?:deliver|bring|take|return))\s+the\s+(.+?)\s+to\b")
# o alvo pelo nome em "slay Outcast Necromancers" (sem contagem)
_MATA = re.compile(r"(?i:\b(?:slay|kill|defeat))\s+(?!\d)([A-Z][\w'-]*(?:\s+[A-Z][\w'-]*)*)")


def trabalho_sem_lugar(q, dado=""):
    """Quest que pede item ou morte que o banco não tem (as de reputação dos centauros de
    Desolace no Forever: Mountain of Bones, Outing Outcasts...): o guia aceitava e mandava
    entregar no passo seguinte, sem ter para onde apontar. Chega aqui depois de o `Router` tentar
    o alvo pelo nome (Outcast Necromancers acha o NPC e fica). Fica também a tarefa contada
    ("collect 5 Seaforium Mining Charges": o passo dela com a seta de `OBJETIVO_LUGAR`) e a entrega
    do item que a própria quest dá no aceite (`dado`, o nome do `sourceItem`: "Bring a Timberling
    Seed to..."); Facing the Truth dá a Garb e pede também um Accursed Skull, e sai."""
    t = " ".join(q["objText"])
    if q["objCreatures"] or q["objItems"] or q["objObjects"] or gatilho(q) or tarefa_sem_alvo(q):
        return False
    if any(not (m.group(1) and dado and m.group(1).lower().startswith(dado.lower()))
           for m in _TRABALHO.finditer(t)):
        return True
    # usar algo (dado ou não) num lugar que o banco não tem e voltar a quem deu: Heed My Call do xamã da
    # Horda ("Use the Twisted Totems to put an end to the quilboar ritual"; a da Aliança tem o lugar)
    return bool(_USA.search(t) and set(q["startNpcs"]) & set(q["endNpcs"]))


def gatilho(q):
    """Quest de lugar (explorar, escoltar: o `triggerEnd`) sem outro objetivo: o lugar. Ponto
    dentro de instância (-1,-1: Jail Break!, Willix) não serve de `goto`: fica sem lugar."""
    t = None if q["objCreatures"] or q["objItems"] or q["objObjects"] else q.get("trigger")
    return t if t and any(p != [-1, -1] for ps in t[1].values() for p in ps) else None


# ("Guard Thomas wants you to..." é nome, não escolta: Find the Lost Guards)
_ESCOLTA = re.compile(r"^\s*(Escort|Protect|Defend|Guard(?! [A-Z])|Lead|Accompany|Keep [\w' ]+ safe)\b")


def escolta(q):
    """Escolta e evento começam no aceite e falham se o jogador sai: o passo vai logo depois do
    aceite (Protect Kanati Greycloud tem objetivo de matar os assassinos; Vorsha the Lasher,
    "Keep Muglash safe")."""
    return any(_ESCOLTA.match(t or "") for t in ((q.get("trigger") or [""])[0], (q["objText"] or [""])[0]))


# ("five minutes", "1 hour", "timer runs out", "before the stone expires": Scalding Mornbrew,
# The Newest Member of the Family, Call of Fire, The Demon Seed)
_TEMPO = re.compile(r"time limit|time(?:r)? runs out|\bbefore\b[^.]{0,40}\bexpires\b"
                    r"|\b(?:\d+|an?|one|two|three|four|five|six|seven|eight|nine|ten|fifteen|twenty|thirty|"
                    r"forty|forty-five|sixty)\s+(?:minutes?|hours?)\b", re.I)


def com_tempo(q):
    """Quest com tempo ("within 12 minutes", "before the time limit is up"): falha se esperar —
    A Hunter's Challenge tinha a ida a Thelsamar e à escavação no meio."""
    return bool(_TEMPO.search(" ".join(q["objText"])))


def na_hora(q):
    """Feita logo depois do aceite, e aceita por último no lugar: escolta e quest com tempo."""
    return escolta(q) or com_tempo(q)


def perto_primeiro(alvos, inicio):
    """[(k, spawn)] na ordem do vizinho mais perto a partir de `inicio` (zona, [x,y]); o que não
    tem ponto, ou fica noutra zona, entra quando não sobra nada perto, na ordem dada."""
    resto, out, cur = list(alvos), [], inicio
    while resto:
        aqui = [a for a in resto if a[1] and cur and int(a[1][0]) == int(cur[0]) and a[1][1] != [-1, -1]]
        a = min(aqui, key=lambda a: dist2(a[1][1], cur[1])) if aqui else resto[0]
        resto.remove(a)
        out.append(a)
        cur = a[1] if a[1] and a[1][1] != [-1, -1] else cur
    return out


def manda_matar(texto, alvo):
    """O objetivo manda matar este alvo. Se o texto cita o nome dele, decide a frase do nome:
    o "kill her" de Mother's Milk é a aranha, não o Ragged John que dá a quest; "Slay 7 ...,
    then report to Hyusaa Quickbreeze" não manda matar o Hyusaa. Sem o nome, NPC com quem se
    fala não se mata, e o resto se mata se o texto mandar."""
    nome = alvo["name"].lower()
    frases = [f for f in re.split(r"(?<=[.;!?])\s+|,\s*then\s+", texto) if nome in f.lower()]
    if frases:
        return any(_KILLQ.search(f) for f in frases)
    return not npc_amigo(alvo) and bool(_KILLQ.search(texto))


def acima_da(npc, ql):
    """Níveis que o mob passa da quest (0 se não passa, ou sem nível da quest)."""
    if not ql:
        return 0
    return max(0, round(((npc.get("minLevel") or ql) + (npc.get("maxLevel") or ql)) / 2 - ql))


def conta_do(textos, nome):
    """A conta de um item no texto de vários ("1 Shiny Bauble and 3 Nightcrawlers"): a string do
    número, ou None. Cada palavra pode vir no plural ("10 Vials of Hatefury Blood")."""
    raiz = nome[:-1] if nome.endswith("s") else nome
    padrao = r"\s+".join(re.escape(w) + r"(?:e?s)?" for w in raiz.split())
    m = re.search(r"\b(\d+)\s+%s" % padrao, " ".join(textos), re.I)
    return m.group(1) if m else None


def cobre(a, b):
    """O público da quest `a` (raças e classes; 0 = todas) contém o da `b`."""
    return all(not a[k] or (b[k] and b[k] & a[k] == b[k]) for k in ("races", "classes"))


def antes_ok(grupos, feitas):
    """Os grupos do `_antes`: de cada um, basta uma entregue."""
    return all(any(p in feitas for p in g) for g in grupos)


def dist2(a, b):
    return (a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2


def single_bit(mask):
    return bool(mask) and (mask & (mask - 1)) == 0


# As raças jogáveis de cada facção no Forever. Quest de algumas delas (anão e
# gnomo) sai como "not Human not NightElf not Skyborne": o `only` é um E de tokens.
RACAS = {"A": {1: "Human", 4: "Dwarf", 8: "NightElf", 64: "Gnome", 1 << 32: "Skyborne"},
         "H": {2: "Orc", 16: "Undead", 32: "Tauren", 128: "Troll", 1 << 33: "Skyborne"}}
# tokens de `only` que restringem o passo a alguns personagens (classe e raça)
PUBLICOS = set(CLASS_BIT.values()) | {n for r in RACAS.values() for n in r.values()}

# zona inicial -> raças que nascem nela
RACA_DA_ZONA = {12: 1, 1: 4 | 64, 141: 8, 14: 2 | 128, 215: 32, 85: 16, ZEPHRAS: (1 << 32) | (1 << 33)}
# capital -> raças da casa: só desempata variantes exclusivas (Devourer of Souls em
# Orgrimmar e em Undercity); quest de capital sem irmã segue aberta a todos.
# ponytail: Skyborne fica com Stormwind/Orgrimmar; par sem uma delas o deixa sem
# variante — mapear a capital do Skyborne se o Forever disser qual é
RACA_DA_CAPITAL = {1519: 1 | 1 << 32, 1537: 4 | 64, 1657: 8, 1637: 2 | 128 | 1 << 33, 1497: 16, 1638: 32}


def only_cond(q, faction=None):
    conds = []
    races = q["races"]
    if single_bit(races) and races in RACE_BIT:
        conds.append(RACE_BIT[races])
    elif races and not races & VANILLA_RACES:
        conds.append("Skyborne")
    elif races and faction in RACAS:
        lado = RACAS[faction]
        tem = [b for b in lado if races & b]
        if len(tem) == 1:
            conds.append(lado[tem[0]])
        elif 1 < len(tem) < len(lado):
            conds += ["not " + lado[b] for b in lado if not races & b]
    cls = q["classes"]
    if single_bit(cls) and cls in CLASS_BIT:
        conds.append(CLASS_BIT[cls])
    elif cls and 0 < sum(1 for b in CLASS_BIT if cls & b) < len(CLASS_BIT):
        # várias classes (A Gently Shaken Gift: guerreiro, paladino, caçador, ladino)
        conds += ["not " + CLASS_BIT[b] for b in CLASS_BIT if not cls & b]
    return " ".join(conds + sorted(set(q.get("portao") or ()) - set(conds)))


def esc(name):
    return (name or "").replace("]", "").replace("|", "").strip()


class Router:
    def __init__(self, data, faction=None):
        self.faction = faction
        self.npcs = data["npcs"]
        self.quests = data["quests"]
        if faction in ("A", "H"):
            self.quests = {k: self._lado(q, faction) for k, q in self.quests.items()}
        self.objects = data["objects"]
        self.zones = data["zones"]
        self.items = data.get("items") or {}
        self.xp = data.get("xp") or {}
        # índice nome->npc (com spawn) p/ o fallback de fonte de item por nome
        self._npc_by_name = {}
        self._npc_por_sobrenome = {}
        self._area_por_nome = {v.get("name"): int(k) for k, v in self.zones.items()}
        for nid, n in self.npcs.items():
            nm = n.get("name")
            if nm and n.get("spawns"):
                self._npc_by_name.setdefault(nm.lower(), int(nid))
                self._npc_por_sobrenome.setdefault(nm.lower().split()[-1], []).append(int(nid))
        # Gatilho no ponto de quem recebe não é lugar à parte: Ak'Zeloth ("Speak with Ak'Zeloth")
        # traz "Destroy the Demon Seed" em cima dele, e o passo mostrava a quest seguinte. A
        # escolta fica: ela termina em quem recebe (Free From the Hold), e é o gatilho que a põe
        # logo depois do aceite
        for k, q in self.quests.items():
            t = q.get("trigger")
            if t and not (_ESCOLTA.match(t[0] or "") or _ESCOLTA.match((q["objText"] or [""])[0])) \
                    and any(str(z) in t[1] and any(dist2(p, c) < 1 for p in t[1][str(z)] for c in pts)
                         for e in q["endNpcs"] for z, pts in ((self.npc(e) or {}).get("spawns") or {}).items()):
                self.quests[k] = dict(q, trigger=None)
        for k, q in self.quests.items():
            if int(k) in FORA_QUESTS or FORA_NOME.match(q["name"] or ""):
                self.quests[k] = dict(q, fora=True)
        # Tarefa sem objetivo no banco: o alvo pelo nome no texto ("slay 6 Undead
        # Ravagers", "slay Outcast Necromancers"), ou da tabela; sem ele, o passo de fazer
        # espera a quest (`_emissores`) — ou a quest sai (`trabalho_sem_lugar`)
        for k, q in self.quests.items():
            if tarefa_sem_alvo(q) or int(k) in OBJETIVO_MANUAL or trabalho_sem_lugar(q, self.dado(q)):
                texto = " ".join(q["objText"])
                m = _ALVO.search(texto) if tarefa_sem_alvo(q) or int(k) in OBJETIVO_MANUAL else _MATA.search(texto)
                nome = m.group(1).lower() if m else ""
                n = OBJETIVO_MANUAL.get(int(k)) or self._npc_by_name.get(nome) \
                    or self._npc_by_name.get(nome[:-1] if nome.endswith("s") else None)
                if n:
                    self.quests[k] = dict(q, objCreatures=[n], objDoTexto=True)
        # Entregar um item que só outra quest dá, sem pré-requisito no banco: "Deliver the Eye of the
        # Tempest" (The Tempest's Weapons, do xamã) só depois de Heed My Call, que traz o olho — no guia
        # de classe vinha antes dela
        por_item = defaultdict(set)
        for k, q in self.quests.items():
            for i in q["objItems"]:
                nm = (self.items.get(str(i)) or {}).get("name")
                if nm:
                    por_item[nm.lower()].add(int(k))
        for k, q in self.quests.items():
            if q["preSingle"] or q["preGroup"] or q["objItems"] or q["objCreatures"] or q["objObjects"] \
                    or q.get("sourceItem"):
                continue
            m = _ENTREGA.search(" ".join(q["objText"]))
            ys = {y for y in (por_item.get(m.group(1).lower(), set()) if m else ()) if y != int(k)
                  and (q["races"] or ~0) & (self.quests[str(y)]["races"] or ~0)}
            if len(ys) == 1:
                self.quests[k] = dict(q, preSingle=sorted(ys))
        # A mesma quest de classe dada por dois NPCs (Storm, Earth, and Fire do xamã: Veyric em Arathi
        # e Prate Cloudseer em Thousand Needles, os mesmos 20 totens) é uma ou outra
        mesma = defaultdict(list)
        for k, q in self.quests.items():
            if q["classes"] and q["objItems"]:
                mesma[(q["name"], q["classes"], frozenset(q["objItems"]))].append(k)
        for ks in mesma.values():
            for a in ks:
                outras = [int(b) for b in ks if b != a and int(b) not in self.quests[a]["exclusiveTo"]
                          and (self.quests[a]["races"] or ~0) & (self.quests[b]["races"] or ~0)]
                if outras:
                    self.quests[a] = dict(self.quests[a], exclusiveTo=self.quests[a]["exclusiveTo"] + outras)
        # Raide no caminho solo: alvo chefe de raide (os de A Humble Offering e The Calling, em
        # Silithus) ou elite acima do nível máximo ("a full assault on Nathanos Blightcaller", 62)
        for k, q in self.quests.items():
            if any((self.npc(n) or {}).get("rank") == 3 or ((self.npc(n) or {}).get("rank") in (1, 2)
                    and ((self.npc(n) or {}).get("minLevel") or 0) >= 62) for n in self.alvos(int(k), q)):
                self.quests[k] = dict(q, fora=True)
        # e o que só abre depois dela (Ascension..., depois de Axtroz, elite de 62; The Brokering of
        # Peace, depois de The Root of All Evil)
        def fora(p):
            return (self.quests.get(str(p)) or {}).get("fora")
        mudou = True
        while mudou:
            mudou = False
            for k, q in self.quests.items():
                if not q.get("fora") and (any(fora(p) for p in q["preGroup"])
                                          or (q["preSingle"] and all(fora(p) for p in q["preSingle"]))):
                    self.quests[k] = dict(q, fora=True)
                    mudou = True

    def _lado(self, q, faction):
        """Quest das duas facções lista quem dá/recebe dos dois lados (The Hunter's
        Charm: Holt Thunderhorn em Thunder Bluff e Dorion em Darnassus). No guia de
        uma facção fica só quem não é da outra — o que as correções por facção do
        QuestieDB fazem em Lua, aqui pelo `friendlyToFaction` do próprio NPC."""
        inimigo = "H" if faction == "A" else "A"
        out = None
        for campo in ("startNpcs", "endNpcs"):
            amigos = [n for n in q[campo] if (self.npc(n) or {}).get("faction") != inimigo]
            if amigos and len(amigos) < len(q[campo]):
                out = out or dict(q)
                out[campo] = amigos
        return out or q

    def item_source(self, iid, area=-1, ql=0):
        """De onde o item de objetivo vem: (kind, id, nome, spawn) ou None.
        Fonte que nasce em `area` (a zona do guia) vem antes de qualquer outra — o
        Murloc Eye de Silverpine não pode apontar para os Wetlands. Depois:
          1) o nó que tem o nome do item (Bloodpetal Sprout é colhido no chão).
          2) mob COMUM (rank normal) até 4 níveis acima da quest: alvo direto e confiável.
          3) senão: OBJETO/nó/baú — fonte inequívoca e sempre presente.
          4) VENDEDOR do continente, contra elite/rare/boss ou mob 5+ acima.
          5) o elite/rare/worldboss; vendedor de outro continente.
          6) Fallback: item 'X's ...' -> NPC 'X' (baú de mob nomeado, ex.: Maggoc).
        Entre criaturas de mesma confiabilidade, a que não passa do nível `ql` da quest
        (Small Egg em Zephras: os Hippogryph de nível 6-7, não o Shadowgale Ursera de 11),
        e então a 1ª da lista (estável). Tecido (`TECIDO`) não tem lugar: cai de humanoide."""
        it = self.items.get(str(iid))
        if not it or it.get("name") in TECIDO:
            return None

        def longe(sp):
            return 0 if area == -1 or (sp and int(sp[0]) == area) else 1

        instancia = self._instancia
        # Com todas as fontes do item (antes o import guardava 3), um mob comum de dentro da
        # masmorra ganhava dos elites de fora dela: o mundo aberto vence, de qualquer rank — se
        # for fonte de verdade (FONTE_MUNDO): os mobs da boca de Gnomeregan não são. (Deviate
        # Hides, que o caso de antes deixava no leveling, é de masmorra pelo `em_masmorra`: fora de
        # Wailing Caverns só há os Deviate elites.)
        fora = self._spawns_fora(it)

        def dentro(sp):
            return int(fora >= FONTE_MUNDO and bool(sp) and instancia(sp[0]))
        best_npc = None                       # (fora da zona, instância, penalty, acima, id, nome, spawn)
        for nid in (it.get("npc") or []):
            ent = self.npc(nid)
            sp = self.best_spawn(ent, area) if ent else None
            if not sp:
                continue
            if self.faction in ("A", "H") and npc_amigo(ent) and self.faction not in ent["faction"]:
                continue                       # NPC amigo só da outra facção
            rank = ent.get("rank") or 0
            penalty = 2 if rank in (3, 4) else (1 if rank in (1, 2) else 0)
            cand = (longe(sp), dentro(sp), penalty, acima_da(ent, ql), nid, ent["name"], sp)
            if best_npc is None or cand[:4] < best_npc[:4]:
                best_npc = cand
        obj = None
        nome = (it.get("name") or "").lower()
        for oid in (it.get("obj") or []):
            ent = self.obj(oid)
            sp = self.best_spawn(ent, area) if ent else None
            if sp and (obj is None or (longe(sp), dentro(sp)) < obj[:2]):
                obj = (longe(sp), dentro(sp), oid, ent["name"], sp)
        # vendedor: o da zona, senão o do mesmo continente (Soothing Spices tem em
        # Theramore; o primeiro da lista ficava em Duskwood)
        vendas = []
        for vid in (it.get("vendor") or []):
            ent = self.npc(vid)
            if ent and self.faction in ("A", "H") and ent.get("faction") and self.faction not in ent["faction"]:
                continue                       # vendedor da outra facção (Green Firework, Dun Morogh)
            sp = self.best_spawn(ent, area) if ent else None
            if sp:
                vendas.append(((longe(sp), area != -1 and continente(sp[0], "A") != continente(area, "A")),
                               vid, ent["name"], sp))
        venda = min(vendas, key=lambda v: v[0]) if vendas else None
        # O nó da zona que É o item (Bloodpetal Sprout, Well Stone) vence o mob: com todas as
        # fontes, o Ravasaur que derruba um broto ganhava das 75 plantas de Un'Goro. Sem zona
        # (guia especial) não: o Earthroot de Teldrassil ia para The Barrens, que tem mais nós
        if obj and area != -1 and not obj[0] and nome == obj[3].lower():
            return ("collect",) + obj[2:]
        if best_npc and best_npc[2] == 0 and best_npc[3] < 5 and (not obj or best_npc[:2] <= obj[:2]):
            return ("kill",) + best_npc[4:]      # mob comum -> alvo direto
        if obj and (not best_npc or obj[:2] <= best_npc[:2]):
            return ("collect",) + obj[2:]        # sem mob comum por perto -> nó/objeto
        # o elite, o raro ou o mob 5+ níveis acima perde para a loja do continente: Fishin'
        # Time mandava matar o Foreman Thistlenettle (elite, nível 20) por Nightcrawlers
        if venda and not venda[0][1] and (not best_npc or best_npc[2] or best_npc[3] >= 5):
            return ("buy",) + venda[1:]
        if best_npc:                           # sobrou o elite/rare/boss
            return ("kill",) + best_npc[4:]
        if venda:
            return ("buy",) + venda[1:]
        for p in it.get("partes") or []:     # montado: a seta vai aos pedaços (Pamela's Doll's Head)
            src = self.item_source(p, area, ql)
            if src:
                return src
        m = re.match(r"^(.+?)'s ", it.get("name") or "")
        if m:
            # o nome inteiro, ou o último nome de quem nasce na zona do guia ("Dillinger's Report":
            # Deathguard Dillinger, em Tirisfal) — de fora dela o sobrenome achava chefe de masmorra
            nome = m.group(1).lower()
            cands = [self._npc_by_name[nome]] if nome in self._npc_by_name else \
                [n for n in self._npc_por_sobrenome.get(nome, []) if str(area) in self.npc(n)["spawns"]]
            if cands:
                nid = cands[0]
                return ("kill", nid, self.npc(nid)["name"], self.best_spawn(self.npc(nid), area))
        return None

    def dono(self, iid, src):
        """Quem dá o item, quando a seta não vai a um mob: sem fonte com spawn, os NPCs da
        lista; com o baú que aparece depois da luta, o NPC cujo nome o item ou o baú cita
        (Essence of Xandivious, Xandivious' Demon Bag: o Xandivious, elite de 62)."""
        npcs = (self.items.get(str(iid)) or {}).get("npc") or []
        if src is None:
            return npcs
        if src[0] != "collect":
            return []
        nomes = ((self.items.get(str(iid)) or {}).get("name", "") + " " + src[2]).lower()
        return [n for n in npcs if (self.npc(n) or {}).get("name", "~").lower() in nomes]

    def source_names(self, iid, limit=3, area=-1, ql=0):
        """Nomes das fontes do item p/ o tip 'Dropa de: A, B, C'. As que nascem na zona
        do guia primeiro (Boar Intestines em Loch Modan: Mountain Boar, não o Goretusk de
        Westfall; a Well Stone de Mulgore, não o Razorlash de Maraudon), mobs comuns antes
        de rare/boss e os do nível da quest antes, depois nós/objetos. Dedup, cap em `limit`."""
        it = self.items.get(str(iid)) or {}
        scored = []
        for n in (it.get("npc") or []):
            e = self.npc(n)
            if e and e.get("name"):
                rank = e.get("rank") or 0
                pen = 2 if rank in (3, 4) else (1 if rank == 2 else 0)
                scored.append((str(area) not in (e.get("spawns") or {}), pen, acima_da(e, ql), e["name"]))
        for o in (it.get("obj") or []):
            e = self.obj(o)
            # (baú de saque aleatório não é fonte de item de ofício: "cai de Battered Chest" no Linen Cloth)
            if e and e.get("name") and not (it.get("class", 12) != 12 and BAU.search(e["name"])):
                scored.append((str(area) not in (e.get("spawns") or {}), 3, 0, e["name"]))
        scored.sort(key=lambda t: t[:3])
        names = []
        for t in scored:
            if t[0] and not scored[0][0]:      # há fonte na zona: as de fora não entram
                break
            if t[-1] not in names:
                names.append(t[-1])
        return names[:limit]

    def _goto_str(self, sp):
        if not sp:
            return ""
        a, c = sp
        return " |goto %s %s,%s" % (self.zone_name(a), c[0], c[1])

    def _item_step(self, iid, q, qid, fallback_sp, area=-1, idx=None):
        """Passo enriquecido de coletar item (estilo Zygor). Formas:
          A)  matar mob nomeado cujo baú/objeto aparece após a morte
              (via_name + objeto):        kill + click + collect
          A') item 'X's ...' de matar X, sem objeto:  kill + collect
          B)  drop DIRETO de elite/rare/boss (group_tag != ''): kill |elite + collect
          -)  resto (objeto estático / vendor / mob comum): collect/buy + tip
        Suprime tip {dropsfrom} circular (fonte == nome do item)."""
        item = self.items.get(str(iid)) or {}
        iname = item.get("name") or q["name"]
        ql = q.get("questLevel") or 0
        src = self.item_source(iid, area, ql)
        # a conta do item pelo nome ("1 Shiny Bauble and 3 Nightcrawlers": 3), senão o número do texto
        cnt = conta_do(q["objText"], iname) or (obj_count(q["objText"]) if len(q["objItems"]) == 1 else None)
        cstr = (cnt + " ") if cnt else ""
        qid = "%d/%d" % (qid, idx) if idx else str(qid)   # `idx`: o objetivo, entre vários itens

        def dica():
            """'Cai de': a fonte que a seta aponta primeiro, e as outras da zona dela (no guia
            especial a zona é a da fonte: Falrin's Vendetta citava os chefes de Blackrock
            Spire com a seta em Feralas). Sem o nome do próprio item (circular)."""
            longe_ = src and src[0] != "buy" and src[3]
            if item.get("partes") and not (item.get("npc") or item.get("obj") or item.get("vendor")):
                return " |tip Combine %s." % ", ".join(self.items[str(p)]["name"] for p in item["partes"])
            if iname in TECIDO:              # sem lugar: cai de humanoide
                return " |tip {dropsfrom}humanoids"
            if not src and item.get("class", 12) != 12:
                return " |tip Crafted or bought."   # sem fonte usável (Arcanite Bar, Bolt of Runecloth)
            if src and src[0] == "collect" and src[2].strip().lower() == iname.strip().lower():
                return ""                    # o nó é o item (Bloodpetal Sprout): não "cai de" Stegodon
            names = self.source_names(iid, area=int(src[3][0]) if longe_ else area, ql=ql)
            if longe_:
                names = [src[2]] + [n for n in names if n != src[2]]
            names = [n for n in names if n.strip().lower() != iname.strip().lower()][:3]
            return (" |tip {dropsfrom}" + ", ".join(names)) if names else ""

        # --- item obtido MATANDO um mob (baú-após-kill, ou drop direto de elite) ---
        if src and src[0] == "kill":
            nid, mob = src[1], src[2]
            via_name = nid not in (item.get("npc") or [])   # resolvido pelo NOME ("X's...") -> baú/named
            tag = self.group_tag(nid, ql)                   # ' |elite'/' |raid'/'' (gated por nível)
            sp = src[3]
            # dentro de instância é grupo, seja qual for o rank do mob (com todas as fontes,
            # o mob comum de Maraudon vence o elite, e o passo perdia o |elite)
            zona = (self.zones.get(str(sp[0])) or {}).get("name", "") if sp else ""
            if not tag and zona.endswith(" - Raid"):
                tag = " |raid"
            elif not tag and zona.endswith(" - Dungeon"):
                tag = " |elite"
            world = bool(sp) and not (sp[1][0] == -1 and sp[1][1] == -1)
            if via_name and world and npc_amigo(self.npc(nid)):   # o relatório do Dillinger: pedir
                return "  talk %s##%d\n  collect %s%s##%d |q %s%s" % (
                    esc(mob), nid, cstr, esc(iname), iid, qid, self._goto_str(sp))
            if (via_name or tag) and world:
                # MUNDO ABERTO: trio kill (+click) + collect; goto nas DUAS linhas
                # (cada goal mantém waypoint -> não vira NOGOTO; coord real -> não INSTLOC).
                goto = self._goto_str(sp)
                # o `kill` leva o `|q` do item: sem ele não concluía e prendia a seta no mob
                # (A Dark Threat Looms nunca chegava à Crocolisk Tear)
                lines = ["  kill %s##%d |q %s%s%s" % (esc(mob), nid, qid, goto, tag)]
                objs = item.get("obj") or []
                if via_name and objs:                       # baú/objeto que aparece após a morte
                    ob = self.obj(objs[0])
                    if ob and ob.get("name") and not is_marker(ob["name"]):
                        lines.append("  click %s##%d |tip {spawnsafter}%s"
                                     % (esc(ob["name"]), objs[0], esc(mob)))
                lines.append("  collect %s%s##%d |q %s%s" % (cstr, esc(iname), iid, qid, goto))
                return "\n".join(lines)
            if tag:
                # DENTRO DE INSTÂNCIA (goto -1,-1): sem linha kill redundante (não há
                # coord de mundo) — só marca grupo/raide no collect; mob fica no tip.
                return "  collect %s%s##%d |q %s%s%s%s" % (
                    cstr, esc(iname), iid, qid, self._goto_str(sp or fallback_sp), tag, dica())

        # --- caminho normal: objeto estático / vendor / mob comum ---
        sp = src[3] if src else fallback_sp
        # o dono do item sem spawn ou do baú (o Xandivious é invocado): o rank avisa o grupo
        tag = next((t for n in self.dono(iid, src) for t in [self.group_tag(n, ql)] if t), "")
        verb = "buy" if (src and src[0] == "buy") else "collect"
        linha = ""
        if verb == "buy":                    # quem vende, pelo nome — sem seta: o goal sem `|q`
            linha = "  talk %s##%d\n" % (esc(src[2]), src[1])   # não conclui e prenderia a seta
            if not (self.npc(src[1]) or {}).get("npcFlags", 0) & 4:
                verb = "collect"             # não é vendedor: entrega o item (Warsong Scout)
        return linha + "  %s %s%s##%d |q %s%s%s%s" % (verb, cstr, esc(iname), iid, qid, self._goto_str(sp), tag,
                                                     "" if linha else dica())


    @staticmethod
    def _tira(sel, fora):
        """Tira de `sel` as quests de `fora` e, em cascata, as que dependem delas
        (preGroup com uma delas, ou preSingle só com elas). Devolve o que saiu."""
        fora = {q for q in fora if q in sel}
        mudou = bool(fora)
        while mudou:
            mudou = False
            for qid, q in sel.items():
                if qid in fora:
                    continue
                pre_s = [p for p in q["preSingle"] if p in sel]
                if any(p in fora for p in q["preGroup"]) or (pre_s and all(p in fora for p in pre_s)):
                    fora.add(qid)
                    mudou = True
        for qid in fora:
            del sel[qid]
        return fora

    @staticmethod
    def _exclusivas(sel, chave, faction=None):
        """O que sai das mutuamente exclusivas (A lista B E B lista A): a de menor
        `chave` fica, e a outra perde as raças que a primeira já cobre — sai só se não
        sobrar raça. Call of Fire de Durotar (orc/troll) e de Orgrimmar (todas): a de
        Orgrimmar fica só para o Skyborne; com as duas para o orc, a segunda nunca
        entraria no log e o guia travava. Classe diferente não se cruza (montaria do
        Paladino e do Bruxo). Exclusiva de um lado só é breadcrumb (Senir's
        Observations some depois de Frostmane Hold): as duas ficam, e `_antes` põe a
        breadcrumb antes. Estreita `sel` no lugar; devolve o que sai. O resto conta só
        as raças do lado do guia (Mantles of the Dawn neutra, depois da da Aliança, não
        sobra para a Horda no guia da Aliança)."""
        lado = sum(RACAS[faction]) if faction in RACAS else TODAS_RACAS
        tirar = set()
        for qid in sorted(sel, key=chave):
            if qid in tirar:
                continue
            q = sel[qid]
            for x in q["exclusiveTo"]:
                if x not in sel or x == qid or x in tirar or qid not in sel[x]["exclusiveTo"]:
                    continue
                cq, cx = q["classes"] or ~0, sel[x]["classes"] or ~0
                if cx & ~cq:                 # a outra serve a classe que esta não serve
                    continue
                resto = (sel[x]["races"] or TODAS_RACAS) & ~(q["races"] or TODAS_RACAS)
                if not resto & lado:
                    tirar.add(x)
                elif resto != (sel[x]["races"] or TODAS_RACAS):
                    sel[x] = dict(sel[x], races=resto)
        return tirar

    def _portoes(self, sel, faction=None):
        """{quest: condições do passo}. Pré-requisito que vem de fora do guia (outra
        zona, masmorra, classe) vira `completed(p)`: o passo só aparece para quem já o
        entregou, em vez de travar num NPC que não abre a quest. Quest exclusiva com
        outra (exclusiveTo) leva `not completed(x) not haveq(x)`: Call of Fire de
        Durotar e a de Orgrimmar (em The Barrens, o guia seguinte) — feita uma, a
        outra some em vez de travar; breadcrumb some depois da quest que a fecha.
        Quem depende dela dentro do guia herda tudo, menos o que fala dela mesma.
        Classe e raça também: A Supernatural Device abre com a An Earnest Proposition
        de qualquer classe — menos paladino, que a Horda do Forever tem e o banco
        não — então o passo é `not Paladin`, e o que vem depois dele herda."""
        memo = {}
        fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}
        todas_cls = sum(CLASS_BIT)
        todas_rac = sum(RACAS[faction]) if faction in RACAS else 0

        def mascaras(q):
            return q["classes"] or todas_cls, (q["races"] & todas_rac) or todas_rac

        def estreita(q, qid):
            """Classes e raças que conseguem a quest, pelo que as opções abrem."""
            cls, rac = mascaras(self.quests.get(str(qid)) or q)
            if q["preSingle"]:
                mc = mr = 0
                for p in q["preSingle"]:
                    pq = self.quests.get(str(p))
                    if pq and faction and pq["faction"] not in fac_ok:
                        continue                     # da outra facção: não abre nada
                    c, r = mascaras(pq) if p in sel and pq else (todas_cls, todas_rac)
                    mc, mr = mc | c, mr | r
                cls, rac = cls & mc, rac & mr
            for p in q["preGroup"]:
                pq = self.quests.get(str(p))
                if p in sel and pq:
                    c, r = mascaras(pq)
                    cls, rac = cls & c, rac & r
            return cls, rac

        def portao(qid, pilha):
            if qid in memo:
                return memo[qid]
            if qid in pilha:                 # ciclo no banco
                return frozenset()
            q, pilha = sel[qid], pilha | {qid}
            out = {"not %s(%d)" % (f, x) for x in q["exclusiveTo"] if x != qid
                   for f in ("completed", "haveq")}
            (cls, rac), (cls0, rac0) = estreita(q, qid), mascaras(self.quests.get(str(qid)) or q)
            if cls and cls != cls0:
                out |= {"not " + n for b, n in CLASS_BIT.items() if cls0 & b and not cls & b}
            if rac and rac != rac0 and faction in RACAS:
                out |= {"not " + n for b, n in RACAS[faction].items() if rac0 & b and not rac & b}
            for p in q["preGroup"]:
                out |= portao(p, pilha) if p in sel else {"completed(%d)" % p}
            dentro = [p for p in q["preSingle"] if p in sel]
            if dentro:
                # basta uma das opções: a negação só vale se for de todas — a de
                # Call of Earth 1516 nega a 1519, e a 1520 (depois de qualquer uma)
                # sumia para o tauren que fez a 1519
                gs = [portao(p, pilha) for p in dentro]
                out |= frozenset.intersection(*gs)
                out |= {t for t in min(gs, key=len) if not t.startswith("not ")}
            elif q["preSingle"]:
                out.add("completed(%s)" % ",".join(map(str, q["preSingle"])))
            # nunca nega a si mesma nem um dos próprios pré-requisitos (a opção feita
            # noutro guia também abre a quest)
            out -= {"not %s(%d)" % (f, x) for x in [qid] + q["preSingle"] + q["preGroup"]
                    for f in ("completed", "haveq")}
            memo[qid] = frozenset(out)
            return memo[qid]
        return {qid: portao(qid, frozenset()) for qid in sel}

    @staticmethod
    def _antes(sel):
        """{quest: grupos do que tem de ser entregue antes dela — basta uma de cada grupo}
        além do pré-req do banco: a breadcrumb (fecha quando a quest entra no log) e, para
        quest sem pré-req, a anterior pelo nextInChain (a que dá o item que a inicia).
        Várias anteriores são caminhos alternativos quando servem ao mesmo público:
        Cutting Teeth vem de Your Place In The World (no vale) ou de The New Horde (em
        Orgrimmar), e esperar as duas a jogava para o fim de Durotar. Variante de público
        diferente é de outro jogador: a dependente espera a de cada um (a Call of Fire de
        cada zona inicial no guia de classe, depois que a raça da zona a estreita)."""
        antes, cadeia = defaultdict(list), defaultdict(list)
        for b, q in sel.items():
            for x in q["exclusiveTo"]:
                if x in sel and b not in sel[x]["exclusiveTo"]:
                    antes[x].append((b,))
            x = q.get("nextInChain")
            if x in sel and not any(p in sel for p in sel[x]["preSingle"] + sel[x]["preGroup"]):
                cadeia[x].append(b)
        for x, ps in cadeia.items():
            for b in ps:
                antes[x].append(tuple(p for p in ps if cobre(sel[p], sel[b])))
        return antes

    def _areas(self, ids, tabela):
        out = set()
        for i in ids:
            out |= set(((tabela(i) or {}).get("spawns") or {}))
        return out

    def _instancia(self, z):
        return (self.zones.get(str(z)) or {}).get("name", "").endswith((" - Dungeon", " - Raid"))

    def nivel_zona(self, z):
        """O nível da parte mais fácil da zona: percentil 15 dos mobs hostis comuns que nascem
        nela (Stranglethorn 32, Westfall 11); 0 se a zona tem menos de 30 spawns deles."""
        if not hasattr(self, "_nivel_zona"):
            lv = defaultdict(list)
            for n in self.npcs.values():
                if n.get("faction") or (n.get("rank") or 0) or not n.get("maxLevel"):
                    continue
                m = ((n.get("minLevel") or n["maxLevel"]) + n["maxLevel"]) / 2
                for zz, pts in (n.get("spawns") or {}).items():
                    lv[int(zz)] += [m] * len(pts)
            self._nivel_zona = {zz: sorted(v)[len(v) * 15 // 100] for zz, v in lv.items() if len(v) >= 30}
        return self._nivel_zona.get(int(z), 0)

    def _spawns_fora(self, it):
        """Spawns das fontes do item fora de masmorra e raide."""
        return sum(len(c) for ids, tab in ((it.get("npc") or [], self.npc), (it.get("obj") or [], self.obj))
                   for i in ids for z, c in ((tab(i) or {}).get("spawns") or {}).items() if not self._instancia(z))

    def em_masmorra(self, q):
        """Quest cujo objetivo, ou quem a recebe, só existe dentro de masmorra ou
        raide (a cabeça do VanCleef, os passos de Stratholme). No guia de leveling
        ela trava o passo até o grupo entrar lá; o lugar dela é o guia da masmorra."""
        alvo = self._areas(q["objCreatures"], self.npc) | self._areas(q["objObjects"], self.obj)
        for iid in q["objItems"]:
            it = self.items.get(str(iid)) or {}
            alvo |= self._areas(it.get("npc") or [], self.npc) | self._areas(it.get("obj") or [], self.obj)
        def dentro(areas):
            return bool(areas) and all(" - Dungeon" in (self.zones.get(str(a)) or {}).get("name", "")
                                       for a in areas)
        # o alvo que o passo apontaria: a fonte do item que o roteador escolhe pode
        # ser a de dentro da masmorra mesmo havendo outra fora (Mosh'aru Tablet)
        rota = set()
        for iid in q["objItems"][:1]:
            src = self.item_source(iid)
            if src and src[3]:
                rota.add(src[3][0])
        fim = self._areas(q["endNpcs"], self.npc)
        # um objetivo que só existe lá dentro basta, mesmo com o resto de fora: Vyletongue Corruption
        # (o frasco se enche no poço da entrada, os Noxxious Scion estão em Maraudon), Fire Hardened
        # Mail (o Vial of Phlogiston é do Roogug, em Razorfen Kraul)
        so_dentro = [self._areas([c], self.npc) for c in q["objCreatures"]] + [
            self._areas((self.items.get(str(i)) or {}).get("npc") or [], self.npc)
            | self._areas((self.items.get(str(i)) or {}).get("obj") or [], self.obj) for i in q["objItems"]]
        if dentro(alvo) or dentro(rota) or dentro(fim) or any(dentro(a) for a in so_dentro):
            return True
        # Classificada na masmorra e sem nada posicionado fora — o alvo, ou quem recebe se
        # não há objetivo — é de masmorra. Na masmorra nova do Forever, sem mapa (City of
        # Dalaran, Ruins of Lordaeron...), o QuestieDB não posiciona nada lá dentro e às
        # vezes nem lista o objetivo ("Bring the Titan Relic", Earthen Echo): ali basta o
        # objetivo não estar posicionado fora; quem recebe fora é só o fim da cadeia.
        zona = self.zones.get(str(q["zoneOrSort"])) or {}
        if " - Dungeon" not in zona.get("name", ""):
            return False
        objetivo = q["objCreatures"] or q["objObjects"] or q["objItems"]
        # sem objetivo no banco, o texto que manda à masmorra (Destruction in Deadmines: "the forge
        # hidden in the Deadmines"; A Bijou for Zanza: "found in Zul'Gurub")
        nome = zona["name"].replace(" - Dungeon", "")
        if not objetivo and re.sub(r"^The ", "", nome) in " ".join(q["objText"]):
            return True
        # o QuestieDB põe os elites da masmorra também no mapa de fora (os de Scarlet Monastery em
        # Tirisfal): alvo que fora dela é só elite é da masmorra (Hearts of Zeal); Red Silk Bandanas
        # tem os Defias comuns de Westfall
        mobs = list(q["objCreatures"]) + [n for i in q["objItems"] for n in (self.items.get(str(i)) or {}).get("npc") or []]
        objs = [o for i in q["objItems"] for o in (self.items.get(str(i)) or {}).get("obj") or []] + list(q["objObjects"])
        if mobs and not objs and not any(
                not ((self.npc(n) or {}).get("rank") or 0) and not dentro(self._areas([n], self.npc))
                and self._areas([n], self.npc) for n in mobs):
            return True
        return not (alvo | rota if objetivo or not zona.get("uiMapId") else fim)

    def group_tag(self, nid, quest_level):
        """ ' |elite' / ' |raid' se o alvo (NPC) exige grupo/raide, senão ''.
        rank: 1=elite 2=rare-elite -> grupo; 3=worldboss -> raide; 0/4 -> nada.
        Só avisa se o mob está PERTO/ACIMA do nível da quest (um elite cinza,
        muito abaixo, é soloável e não merece aviso)."""
        npc = self.npc(nid)
        if not npc:
            return ""
        rank = npc.get("rank") or 0
        if rank not in (1, 2, 3):
            return ""
        ml = npc.get("maxLevel") or 0
        if quest_level and ml and ml < quest_level - 3:
            return ""
        return " |raid" if rank == 3 else " |elite"

    def zone_name(self, area):
        return self.zones.get(str(area), {}).get("name", f"Zone{area}")

    # melhor spawn de uma entidade: prefere a área-alvo, senão a mais "central"
    # numa zona só. Retorna (area, [x,y]) ou None.
    def best_spawn(self, entity, prefer_area):
        if not entity:
            return None
        spawns = entity.get("spawns", {})
        if not spawns:
            return None
        if str(prefer_area) in spawns:
            pts = spawns[str(prefer_area)]
            return prefer_area, self._centroid(pts)
        # senão: a zona com mais spawns (mais provável de ser "a" casa dele), fora da
        # capital inimiga quando houver outra (o Incubus do bruxo nasce em Undercity,
        # Stormwind e Orgrimmar: a Aliança vai a Stormwind)
        best_area, best_pts = max(spawns.items(),
                                  key=lambda kv: (int(kv[0]) not in self._inimigas, len(kv[1])))
        return int(best_area), self._centroid(best_pts)

    @property
    def _inimigas(self):
        """Capitais da outra facção (nenhuma para o roteador neutro)."""
        return CAPITAIS.get({"A": "H", "H": "A"}.get(self.faction), set())

    @staticmethod
    def _centroid(pts):
        # o spawn REAL mais perto da mediana (robusta a outlier): a mediana de x e a
        # de y, tiradas separadas, podiam cair onde não há mob nenhum (65.94,80.64
        # em Elwynn, longe de qualquer gnoll)
        xs = sorted(p[0] for p in pts)
        ys = sorted(p[1] for p in pts)
        mid = len(pts) // 2
        p = min(pts, key=lambda p: (p[0] - xs[mid]) ** 2 + (p[1] - ys[mid]) ** 2)
        return [round(p[0], 2), round(p[1], 2)]

    def npc(self, nid):
        return self.npcs.get(str(nid))

    def obj(self, oid):
        return self.objects.get(str(oid))

    def falas(self, q):
        """As criaturas do objetivo como (npc, id, índice, verbo), na ordem do texto: um goal
        por NPC (Exploring the Alliance: Randal, Magni, Mekkatorque, Tyrande); a sem facção
        se mata (o chefe de Standing Our Ground). O índice é a posição no banco, que segue a
        do servidor (The People's Militia: Trapper 504 antes de Smuggler 95). NPC da outra
        facção sai (Desperate Times) e, depois dele, a posição no cliente pode mudar: índice
        None, o goal espera a quest inteira."""
        texto, out, pulou = " ".join(q["objText"]).lower(), [], False
        for i, c in enumerate(q["objCreatures"], 1):
            n = self.npc(c)
            if not n or is_marker(n["name"]) or n.get("faction") and self.faction in ("A", "H") \
                    and self.faction not in n["faction"]:
                pulou = True
                continue
            out.append((n, c, None if pulou else i, "talk" if n.get("faction") else "kill"))
        pos = lambda f: texto.find(f[0]["name"].lower()) % (len(texto) + 1)   # sem menção: no fim
        return sorted(out, key=pos)

    def conversa(self, it):
        """Quest de falar (ou usar item) com mais de um NPC, pela regra do verbo do `do`: `falas`."""
        q, alvo = it["q"], it["otarget"]
        if len(q["objCreatures"]) < 2 or it["okind"] != "kill" \
                or not alvo.get("faction") or manda_matar(" ".join(q["objText"]), alvo):
            return []
        return self.falas(q)

    # índice de mestres de voo por área (npcFlags & 8). O 8192 é o do Stable
    # Master: com ele, o passo "ponto de voo" mandava ao tratador de montarias.
    def _fm_index_build(self):
        idx = {}
        for n in self.npcs.values():
            if (n.get("npcFlags") or 0) & 8:
                for z, pts in n.get("spawns", {}).items():
                    idx.setdefault(int(z), []).append((n, pts[0]))
        self._fm_index = idx

    def flight_master_in(self, area, faction):
        if not hasattr(self, "_fm_index"):
            self._fm_index_build()
        want = "A" if faction == "A" else "H"
        for n, coord in self._fm_index.get(area, []):
            fr = n.get("faction") or "AH"
            if want in fr:
                return n, coord
        return None

    def zone_entry(self, area, faction, level_max):
        """(nome, x, y) do hub inicial da zona (giver da quest de menor nível)."""
        sel = self.select(area, faction, level_max)
        if not sel:
            return None
        lowest = min(sel, key=lambda q: sel[q]["questLevel"] or 99)
        giver = next((self.npc(n) for n in sel[lowest]["startNpcs"]
                      if self.npc(n) and str(area) in self.npc(n).get("spawns", {})), None)
        c = self.best_spawn(giver, area)
        if not c:
            return None
        return (self.zone_name(c[0]), c[1][0], c[1][1])

    # -- seleção ------------------------------------------------------------
    def de_leveling(self, q, faction, level_max):
        """A quest é rota de leveling para esta facção? (onde quer que comece)"""
        fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}
        return (q["faction"] in fac_ok
                and not is_placeholder(q["name"])              # [Not Used]/OLD: deprecada
                # repetível sai; o bit 2 é escolta/script, não feriado (feriado sai
                # pelo zoneOrSort)
                and not (q["specialFlags"] or 0) & 1
                # só no nível máximo não é leveling (AQ, Zandalar, T0.5, cabeça de raide)
                and (q.get("reqLevel") or 0) < level_max
                and not (q["questLevel"] is not None and q["questLevel"] < 1)
                and not (q["questLevel"] and q["questLevel"] > level_max)
                and q["zoneOrSort"] not in FORA_DO_LEVELING
                and not self.em_masmorra(q)                     # objetivo dentro de masmorra
                and not q.get("reqSkill")                       # exige profissão
                and not self.de_oficio(q)                       # item que só se fabrica ou compra no leilão
                and not any(f in CARTEL and v < 0 for f, v in q["repReward"])   # contra Booty Bay
                and not trabalho_sem_lugar(q, self.dado(q))     # pede o que o banco não sabe onde está
                and not self.sem_rumo(q)
                and not q.get("fora")                           # FORA_QUESTS
                and not (q["objItems"] and set(q["objItems"]) <= SO_REPUTACAO))

    def dado(self, q):
        """O nome do item que a quest entrega no aceite (`sourceItem`)."""
        return (self.items.get(str(q.get("sourceItem"))) or {}).get("name") or ""

    def sem_rumo(self, q):
        """Sem texto nenhum e com item de objetivo que o banco não sabe de onde vem (as A Sealed
        Crate do Forever): o passo não tem o que dizer nem para onde apontar."""
        return bool(q["objItems"]) and not " ".join(q["objText"]).strip() and not (
            q["objCreatures"] or q["objObjects"] or gatilho(q)) and not any(
            (self.items.get(str(i)) or {}).get(c) for i in q["objItems"]
            for c in ("npc", "obj", "vendor", "partes", "recompensa"))

    def inimigo(self, npc):
        """NPC só da outra facção: com ele não se conversa."""
        outra = {"A": "H", "H": "A"}.get(self.faction)
        return bool(outra) and (npc or {}).get("faction") == outra

    def alvos(self, qid, q, area=-1):
        """Quem se mata pela quest: os mobs do objetivo (NPC amigo não: Kalaran; o da outra facção
        sim: Nathanos Blightcaller para a Aliança) e quem dá o item (o de `OBJETIVO_ANTES` também)."""
        ql = q["questLevel"] or 0
        out = [c for c in q["objCreatures"] if not npc_amigo(self.npc(c)) or self.inimigo(self.npc(c))] \
            + ([OBJETIVO_ANTES[qid]] if qid in OBJETIVO_ANTES else [])
        for iid in q["objItems"]:
            src = self.item_source(iid, area, ql)
            out += [src[1]] if src and src[0] == "kill" else self.dono(iid, src)
        return out

    def nivel_pedido(self, qid, q, area=-1):
        """O nível em que a quest abre no guia: o `reqLevel`, ou o nível dela quando é de grupo
        (alvo elite perto dele: o portão do `opcional`). A realocação e o corte acima do teto
        usam este — pelo `reqLevel`, A Host of Evil ficava em Stonetalon 21-27 atrás de `level>=35`."""
        req = q.get("reqLevel") or 0
        ql = q["questLevel"] or 0
        return max(req, ql) if any(self.group_tag(n, ql) for n in self.alvos(qid, q, area)) else req

    def para_todos(self, q):
        """A quest é de todo personagem da facção (não de uma classe nem de algumas raças)."""
        todas = sum(RACAS.get(self.faction, {}))
        return not q["classes"] and not (q["races"] and todas and q["races"] & todas != todas)

    def de_oficio(self, q):
        """Pede item sem fonte no banco (sem mob, objeto ou vendedor) que não é item de quest
        (classe 12): só se fabrica ou se compra no leilão — Hillman's Cloak, Moonsteel
        Broadsword, Thorium Bar. O guia não leva (como as quests de profissão)."""
        for i in q["objItems"]:
            it = self.items.get(str(i))
            if not it or it.get("name") in TECIDO:
                continue
            # fonte de verdade tem spawn e não é veio de minério (Lesser Bloodstone Ore e Incendicite
            # Ore pedem Mining, sejam ou não item de quest) nem, para item de ofício, baú de saque
            # aleatório (a Silver Bar dos Battered Chest)
            veios = [o for o in it.get("obj") or [] if VEIO.search((self.obj(o) or {}).get("name") or "")]
            baus = [o for o in it.get("obj") or [] if it.get("class", 12) != 12
                    and BAU.search((self.obj(o) or {}).get("name") or "")]
            fontes = [n for n in it.get("npc") or [] if (self.npc(n) or {}).get("spawns")] \
                + [o for o in it.get("obj") or [] if (self.obj(o) or {}).get("spawns") and o not in veios + baus] \
                + [v for v in it.get("vendor") or [] if (self.npc(v) or {}).get("spawns")]
            if veios and not fontes:
                return True
            # a recompensa da anterior é fonte: Chained Essence of Eranikus vem de The Essence of
            # Eranikus (3373) — Elixir of Minor Fortitude, recompensa de quest da Horda, não
            fontes += [r for r in it.get("recompensa") or [] if r in q["preSingle"] + q["preGroup"]]
            # nível de item 1 é o que a própria quest faz: Pamela's Doll (montada), Resonating Skull
            # (o Mystic Crystal converte), Thunder Applejack (recompensa de outra quest)
            if not (fontes or it.get("partes")) and it.get("class", 12) != 12 and it.get("nivel") != 1:
                return True
        return False

    def select(self, area, faction, level_max, exclude=None):
        fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}
        exclude = exclude or set()
        sel = {}
        for qid, q in self.quests.items():
            if int(qid) in exclude or q["faction"] not in fac_ok:
                continue
            if not self.de_leveling(q, faction, level_max):
                continue
            # âncora à zona: giver NPC OU objeto de início que spawna aqui (quest que
            # começa clicando um objeto do mundo — não tem NPC giver).
            anchored = False
            aqui = {str(area)} | {str(s) for s, m in ZONA_MAE.items() if m == area}
            for n in q["startNpcs"]:
                npc = self.npc(n)
                if npc and aqui & set(npc.get("spawns", {})):
                    anchored = True
                    break
            if not anchored:
                for o in q["startObjects"]:
                    ob = self.obj(o)
                    if ob and aqui & set(ob.get("spawns", {})):
                        anchored = True
                        break
            if not anchored:                        # início por ITEM: fonte do item spawna aqui
                for iid in q["startItems"]:
                    src = self.item_source(iid)
                    if src and src[3] and int(src[3][0]) == area:
                        anchored = True
                        break
            if not anchored:
                continue
            sel[int(qid)] = q
        return sel

    # -- clustering de hubs -------------------------------------------------
    def build_hubs(self, sel, area, objetivos=()):
        """Hubs das vilas (quem dá e quem recebe) e, à parte, dos lugares de objetivo
        longe de toda vila: juntos, a cadeia de pontos de objetivo emendava vilas."""
        pts = []
        for qid, q in sel.items():
            for n in q["startNpcs"] + q["endNpcs"]:
                npc = self.npc(n)
                if npc and str(area) in npc.get("spawns", {}):
                    pts.append(self._centroid(npc["spawns"][str(area)]))
        vilas = self._agrupa(pts)
        longe = [p for p in objetivos if all(dist2(p, h) > HUB_MERGE_DIST ** 2 for h in vilas)]
        return vilas + self._agrupa(longe)

    def _agrupa(self, pts):
        # union-find por proximidade
        parent = list(range(len(pts)))

        def find(i):
            while parent[i] != i:
                parent[i] = parent[parent[i]]
                i = parent[i]
            return i

        for i in range(len(pts)):
            for j in range(i + 1, len(pts)):
                if dist2(pts[i], pts[j]) <= HUB_MERGE_DIST ** 2:
                    parent[find(i)] = find(j)
        groups = {}
        for i in range(len(pts)):
            groups.setdefault(find(i), []).append(pts[i])
        return [self._centroid(g) for g in groups.values()]

    @staticmethod
    def nearest_hub(coord, hubs):
        if coord is None or not hubs:
            return None
        return min(range(len(hubs)), key=lambda h: dist2(coord, hubs[h]))

    # -- passos -------------------------------------------------------------
    def _emissores(self, info, steps, area, faction):
        """accept/do/turnin de uma quest, iguais nos dois geradores (zona e linear).
        `area` é a zona do guia (-1 no guia linear): spawn e fonte de item preferem ela."""
        def goto_str(spawn):
            if not spawn:
                return ""
            a, c = spawn
            return " |goto %s %s,%s" % (self.zone_name(a), c[0], c[1])

        def abre(q, extra=None):
            cond = only_cond(q, faction)
            steps.append(("step", " ".join(t for t in (cond, extra) if t)))

        def accept(qid):
            it = info[qid]; q = it["q"]
            if not it["giver"]:
                return False
            abre(q, q.get("cond_aceite"))
            if it.get("giver_kind") == "item":       # quest começa ao LOOTAR o item da fonte
                iv = it.get("item_verb") or "kill"
                amigo = iv == "kill" and npc_amigo(self.npc(it["giver_id"]))
                if amigo:                            # NPC amigo entrega o item (Vessel of Rebirth)
                    steps.append(("  talk %s##%d%s |tip They give you the item that starts the quest." % (
                        esc(it["giver"]["name"]), it["giver_id"], goto_str(it["gc"])), None))
                elif iv == "buy":                    # compra o item: `buy <NPC>` contava o item de
                    iid = it["giver"]["item"]        # id do NPC e nunca concluía; e `buy <item>`
                    # voltava a 0 quando o aceite consome o item — o passo travava. O aceite conclui
                    steps.append(("  talk %s##%d |tip Buy %s: it starts the quest." % (
                        esc(it["giver"]["name"]), it["giver_id"],
                        esc((self.items.get(str(iid)) or {}).get("name") or q["name"])), None))
                else:
                    gt = self.group_tag(it["giver_id"], q["questLevel"] or 0) if iv == "kill" else ""
                    steps.append(("  %s %s##%d%s%s |tip Loot the quest item here — it starts the quest." % (
                        iv, esc(it["giver"]["name"]), it["giver_id"], goto_str(it["gc"]), gt), None))
            elif it.get("giver_kind") == "reward":
                steps.append(("  use %s##%d |tip The previous quest gave you this item — it starts the quest." % (
                    esc(it["giver"]["name"]), it["giver_id"]), None))
            else:
                averb = "click" if it.get("giver_kind") == "object" else "talk"
                steps.append(("  %s %s##%d" % (averb, esc(it["giver"]["name"]), it["giver_id"]), None))
            steps.append(("  accept %s##%d%s" % (esc(q["name"]), qid, goto_str(it["gc"])), None))
            for f in conversa(qid):          # sem `|q`: com o índice errado o aceite travaria
                if no_aceite(it, f):
                    steps.append(("  talk %s##%d |tip Talk again after accepting: it is part of the quest."
                                  % (esc(f[0]["name"]), f[1]), None))
            return True

        def conversa(qid):
            return self.conversa(info[qid])

        def no_aceite(it, f):           # "ouça quem dá a quest" (Blood Tithe): ali mesmo, no aceite
            return f[1] == it["giver_id"] and it.get("giver_kind") == "npc" and f[3] == "talk" \
                and not is_use_quest(it["q"]["objText"])


        def onde_estou(padrao):
            """O último `goto` emitido (onde o jogador está), ou `padrao`: a ordem dos vários alvos
            parte daqui, não de quem deu a quest (Gelkak's Key subia ao norte e voltava ao sul).
            Passo de classe ou raça não conta: a maioria o pula (o do druida Skyborne punha o
            Hyusaa antes dos mobs em Making Our Move)."""
            ultimo, so_alguns = padrao, False
            for t, cond in steps:
                if t == "step":
                    so_alguns = bool(cond and PUBLICOS & set(cond.split()))
                    continue
                m = None if so_alguns else re.search(r"\|goto (.+?) (-?[\d.]+),(-?[\d.]+)", t)
                if m and m.group(1) in self._area_por_nome:
                    ultimo = (self._area_por_nome[m.group(1)], [float(m.group(2)), float(m.group(3))])
            return ultimo

        def do(qid):
            it = info[qid]; q = it["q"]
            objc, obji, objo = q["objCreatures"], q["objItems"], q["objObjects"]
            tarefa = tarefa_sem_alvo(q)
            if not (objc or obji or objo or tarefa or gatilho(q)):
                return                       # sem objetivo (entrega/talk): o turnin já leva lá
            ql = q["questLevel"] or q["reqLevel"] or 0
            # a nota é o "como fazer" (Confront Lorthuna: "Take the portal..."); o nome do gatilho
            # ("Diagnosis Complete") vira dica do `goto`
            nota = (q["objText"] or [""])[0] or (gatilho(q) or [""])[0]
            if qid in OBJETIVO_ANTES:        # o NPC de antes num passo dele: o `kill` sem `|q` não
                # conclui e, com seta, a prendia nele (Marla's Grave nunca recebia a seta); o
                # `goto` até ele conclui ao chegar. Araj the Summoner é elite de 61: o |elite avisa
                pre = self.npc(OBJETIVO_ANTES[qid])
                sp = self.best_spawn(pre, area) or it["oc"]
                abre(q, q.get("cond_resto"))
                if nota:
                    steps.append(("  note " + esc(nota), None))
                steps.append(("  kill %s##%d%s" % (esc(pre["name"]), OBJETIVO_ANTES[qid],
                                                  self.group_tag(OBJETIVO_ANTES[qid], ql)), None))
                if sp:
                    steps.append(("  goto %s %s,%s" % (self.zone_name(sp[0]), sp[1][0], sp[1][1]), None))
            abre(q, q.get("cond_resto"))
            if nota:                         # SEMPRE mostra "como fazer" (o do lugar, se houver:
                steps.append(("  note " + esc(nota), None))   # "Explore the waters of ...")
            if gatilho(q) and it["oc"]:      # chegar lá conclui (The Fargodeep Mine): `goto`, que
                # não depende do cliente listar o objetivo de lugar
                dica_g = gatilho(q)[0]
                steps.append(("  goto %s %s,%s%s" % (self.zone_name(it["oc"][0]), it["oc"][1][0], it["oc"][1][1],
                                                     " |tip " + esc(dica_g) if dica_g and dica_g != nota else ""), None))
                return
            if tarefa:                       # o cliente sabe o objetivo; o passo espera a quest
                steps.append(("  get %s |q %d%s" % (esc(q["name"]), qid, goto_str(it["oc"])), None))
                return
            if is_craft_quest(q["name"]) and obji:     # fabricar item, não lootar
                iname = (self.items.get(str(obji[0])) or {}).get("name") or q["name"]
                steps.append(("  get %s##%d |q %d |tip Craft this (or buy it), then deliver it." %
                              (esc(iname), obji[0], qid), None))
                return
            # Objetivo de vários alvos do mesmo tipo em mais de um lugar (The Warsong Reports:
            # três mensageiros; Set Them Ablaze!: quatro torres; The Coast Isn't Clear: três
            # murlocs): um goal por alvo, cada um com a sua seta, na ordem do vizinho mais perto a
            # partir de quem dá a quest (na ordem do texto, Warsong Reports cruzava Ashenvale duas
            # vezes); `|q N/i` é a posição no banco, e o último espera a quest inteira. Misturado
            # (criatura + item) a ordem no cliente não se sabe: fica o primeiro alvo e a nota.
            # Falar com vários NPCs já saiu acima (`conversa`), na ordem do texto.
            useq = is_use_quest(q["objText"])   # "wrangle/capture/use X on" -> verbo "use"
            if len(obji) > 1 and not objc and not objo:
                alvos = [(k, (self.item_source(i, area, ql) or [None] * 4)[3]) for k, i in enumerate(obji)]
            elif len(objo) > 1 and not objc and not obji:
                alvos = [(k, self.best_spawn(self.obj(o), area)) for k, o in enumerate(objo)]
            elif len(objc) > 1 and not obji and not objo and not conversa(qid) \
                    and all(self.best_spawn(self.npc(c), area) for c in objc):
                # (marcador sem lugar fica no passo de um alvo só; com lugar, é `goto` — as corujas
                # de Eyes of the Sentinels, as torres de Establishing New Outposts)
                alvos = [(k, self.best_spawn(self.npc(c), area)) for k, c in enumerate(objc)]
            else:
                alvos = []
            # (item sem lugar também é alvo à parte: Gathering Materials, do mago, tem o Linen Cloth, que
            # cai de humanoide, e as Dalaran Mana Gems, de Silverpine — o passo só tinha o tecido)
            if len({(int(sp[0]), tuple(sp[1])) for _, sp in alvos if sp and sp[1] != [-1, -1]}) > 1 \
                    or (obji and len(alvos) > 1 and any(sp is None for _, sp in alvos)):
                ordem = perto_primeiro(alvos, onde_estou(it["gc"]))
                for n, (k, sp) in enumerate(ordem):
                    ix = k + 1 if n < len(ordem) - 1 else None
                    qref = "%d/%d" % (qid, ix) if ix else str(qid)
                    if obji:
                        # (o sem lugar fica sem seta: a de quem deu a quest era seta falsa — o Arcanite
                        # Bar da Argent Dawn, o Enchanted Leather de Lhara em Elwynn para a Horda)
                        steps.append((self._item_step(obji[k], q, qid, sp, area, ix), None))
                    elif objo:
                        o = self.obj(objo[k]) or {}
                        steps.append(("  click %s##%d |q %s%s" % (
                            esc(o.get("name") or q["name"]), objo[k], qref, goto_str(sp or it["oc"] or it["gc"])), None))
                    else:
                        c = objc[k]          # o verbo de cada um, pela regra do passo de um alvo
                        n_c = self.npc(c) or {}   # (Hyusaa Quickbreeze, em Making Our Move, é amigo)
                        if is_marker(n_c.get("name") or ""):
                            steps.append(("  goto %s %s,%s |q %s" % (self.zone_name(sp[0]), sp[1][0], sp[1][1], qref),
                                          None))
                            continue
                        fala_c = n_c.get("faction") and not manda_matar(" ".join(q["objText"]), n_c) \
                            and not self.inimigo(n_c)
                        verbo = "use" if useq else ("talk" if fala_c else "kill")
                        steps.append(("  %s %s##%d |q %s%s%s%s" % (
                            verbo, esc((self.npc(c) or {}).get("name") or q["name"]), c, qref, goto_str(sp),
                            self.group_tag(c, ql) if verbo == "kill" else "", " |tip {useit}" if useq else ""), None))
                return
            alvo = it.get("otarget")
            if alvo is None and objc:
                cand = self.npc(objc[0])
                alvo = cand if cand and not is_marker(cand["name"]) else None
                oid, okind, oc = objc[0], "kill", self.best_spawn(alvo, area)
            elif alvo is None and objo and not obji:
                cand = self.obj(objo[0])
                alvo = cand if cand and not is_marker(cand["name"]) else None
                oid, okind, oc = objo[0], "collect", self.best_spawn(alvo, area)
            else:
                oid, okind, oc = it.get("oid"), it.get("okind"), it.get("oc")
                if qid in OBJETIVO_ANTES:    # o `oc` da rota é o NPC de antes; a seta, o objetivo
                    oc = self.best_spawn(alvo, area) or oc   # (a lápide de Marla, não o Fipps)
            if alvo is not None and okind == "kill":
                # NPC amigo não se mata: "Speak with", "Listen to", alimentar, curar —
                # o objetivo é de criatura no banco, o passo é falar com ela. Mas o
                # Forever marca "AH" em mob hostil (Mindless Zombie): texto que manda
                # matar vence o `faction`. Alvo achado pelo texto só se mata se ele mandar
                # ("free the Sprite Darters" não é matar). NPC da outra facção não conversa:
                # "a full assault on Nathanos Blightcaller" é matá-lo (guia da Aliança)
                fala = (alvo.get("faction") or q.get("objDoTexto")) \
                    and not manda_matar(" ".join(q["objText"]), alvo) and not self.inimigo(alvo)
                verb = "use" if useq else ("talk" if fala else "kill")
                gt = self.group_tag(oid, ql) if verb != "talk" else ""
                ut = " |tip {useit}" if useq else ""
                fs = [f for f in conversa(qid) if not no_aceite(it, f)]
                if fs:                   # um goal por NPC; o último espera a quest inteira
                    for k, (n, c, i, v) in enumerate(fs):
                        ix = "/%d" % i if i and k < len(fs) - 1 else ""
                        v = "use" if useq else v
                        steps.append(("  %s %s##%d |q %d%s%s%s%s" % (
                            v, esc(n["name"]), c, qid, ix, goto_str(self.best_spawn(n, area)),
                            self.group_tag(c, ql) if v == "kill" else "", ut), None))
                    return
                steps.append(("  %s %s##%d |q %d%s%s%s" % (verb, esc(alvo["name"]), oid, qid,
                              goto_str(oc), gt, ut), None))
            elif alvo is not None:
                steps.append(("  click %s##%d |q %d%s" % (esc(alvo["name"]), oid, qid, goto_str(oc)), None))
            elif obji:                       # OBJETIVO DE ITEM: "colete N <item>" + fontes no tip
                steps.append((self._item_step(obji[0], q, qid, it["oc"] or it["gc"], area), None))
            else:
                # sem lugar no banco (os poços de Testing the Wells): sem seta — a de quem deu a
                # quest dizia "chegou" com o passo por fazer
                steps.append(("  get %s |q %d" % (esc(q["name"]), qid), None))

        def turnin(qid):
            it = info[qid]; q = it["q"]
            if not (it["ender"] or it["eobj"]):
                return False
            abre(q, q.get("cond_resto"))
            # sem passo de fazer, a entrega diz o que fazer antes: "Jump from the top of the
            # watchtower" (Falling With Style), "Wait for Loramus" — sem isso a entrega travava muda
            if q["objText"] and not (q["objCreatures"] or q["objItems"] or q["objObjects"]
                                     or tarefa_sem_alvo(q) or gatilho(q)):
                steps.append(("  note " + esc(q["objText"][0]), None))
            if it["ender"]:
                steps.append(("  talk %s##%d" % (esc(it["ender"]["name"]), it["ender_id"]), None))
            tip = ""
            if area != -1 and it["ec"] and int(it["ec"][0]) != area:
                tip = " |tip {turninat}%s" % self.zone_name(it["ec"][0])
            steps.append(("  turnin %s##%d%s%s" % (esc(q["name"]), qid, goto_str(it["ec"]), tip), None))
            return True

        return accept, do, turnin

    def _info(self, sel, area):
        """Quem dá, quem recebe e onde fica o objetivo de cada quest. `area` é a
        zona do guia (-1: sem zona): o NPC que nasce nela é preferido."""
        info = {}
        for qid, q in sel.items():
            giver = giver_id = None
            giver_kind = "npc"; item_verb = None; gc_o = None
            for n in q["startNpcs"]:                 # o giver que spawna NA zona primeiro
                cand = self.npc(n)
                if cand and str(area) in cand.get("spawns", {}):
                    giver, giver_id = cand, n
                    break
            if giver is None:                       # início por OBJETO (clicar p/ pegar)
                for o in q["startObjects"]:
                    cand = self.obj(o)
                    sp = self.best_spawn(cand, area)
                    # a caixa de correio de Orgrimmar também dá Deviate Hides: não para a Aliança
                    if sp and sp[0] not in self._inimigas:
                        giver, giver_id, giver_kind = cand, o, "object"
                        break
            if giver is None:                       # início por ITEM (lootar a fonte)
                for iid in q["startItems"]:
                    src = self.item_source(iid, area)
                    if src and src[3] and src[0] == "kill" and src[1] in q["startNpcs"]:
                        giver, giver_id, gc_o = self.npc(src[1]), src[1], src[3]
                        break
                    # o item de um mob raro (Blackmoss the Fetid, o Silithid Harvester) espera o
                    # spawn dele: o aceite travava o guia. Sem outra fonte, a quest sai
                    # (raro elite de mundo aberto também, Aean Swiftriver; no guia especial, area -1, o
                    # elite da masmorra fica: Scarshield Quartermaster da sintonização de Blackwing Lair)
                    rank = (self.npc(src[1]) or {}).get("rank") if src and src[0] == "kill" else None
                    raro = rank == 4 or (rank == 2 and area != -1)
                    if src and src[3] and not raro:
                        giver, giver_id = {"name": src[2], "item": iid}, src[1]
                        giver_kind, item_verb, gc_o = "item", src[0], src[3]
                        break
            if giver is None:                       # giver noutra zona (capital): do continente
                cands = [(n, self.npc(n)) for n in q["startNpcs"]]   # do guia, se houver
                cands = [(n, c) for n, c in cands if c and c.get("spawns")]
                cont = continente(area, self.faction) if area != -1 and self.faction else None
                perto = [(n, c) for n, c in cands
                         if cont and any(continente(int(a), self.faction) == cont for a in c["spawns"])]
                # e a capital da gente da zona antes: Speak with Un'thuwa, de Durotar, em Orgrimmar
                # (Uthel'nay), não em Thunder Bluff
                natos = RACA_DA_ZONA.get(area, 0)
                perto.sort(key=lambda nc: not any(natos & RACA_DA_CAPITAL.get(int(a), 0) for a in nc[1]["spawns"]))
                if cands:
                    giver_id, giver = (perto or cands)[0]
            gc = gc_o or self.best_spawn(giver, area)
            ender = ender_id = eobj = None
            for n in q["endNpcs"]:                   # quem recebe: o que spawna na zona primeiro
                cand = self.npc(n)
                if cand and str(area) in cand.get("spawns", {}):
                    ender, ender_id = cand, n
                    break
            if ender is None:
                for n in q["endNpcs"]:
                    if self.npc(n):
                        ender, ender_id = self.npc(n), n
                        break
            ec = self.best_spawn(ender, area)
            if not ender:                           # entrega por OBJETO (sem NPC)
                for o in q["endObjects"]:
                    sp = self.best_spawn(self.obj(o), area)
                    if sp:
                        eobj, ec = self.obj(o), sp
                        break
                if not eobj and q["endObjects"]:    # objeto de entrega sem spawn: perto do giver
                    eo = self.obj(q["endObjects"][0])
                    if eo:
                        eobj, ec = eo, (ec or gc)
            otarget = ocoord = okind = oid = None
            for m in q["objCreatures"]:
                cand = self.npc(m)
                sp = self.best_spawn(cand, area)
                if sp and not is_marker(cand["name"]):
                    otarget, ocoord, okind, oid = cand, sp, "kill", m
                    break
            if otarget is None:
                for o in q["objObjects"]:
                    cand = self.obj(o)
                    sp = self.best_spawn(cand, area)
                    if sp and not is_marker(cand["name"]):
                        otarget, ocoord, okind, oid = cand, sp, "collect", o
                        break
            # onde o objetivo acontece: o alvo, ou a fonte do item (o mob que dropa)
            ic = None
            if int(qid) in OBJETIVO_ANTES:
                ocoord = self.best_spawn(self.npc(OBJETIVO_ANTES[int(qid)]), area) or ocoord
            if otarget is None and int(qid) in OBJETIVO_LUGAR:
                ocoord = self.best_spawn(self.npc(OBJETIVO_LUGAR[int(qid)]), area)
            elif gatilho(q):                  # explorar a mina, escoltar: o ponto do servidor
                ocoord = self.best_spawn({"spawns": gatilho(q)[1]}, area)
            ics = []                          # a fonte de cada item (o `ic` é a do primeiro)
            if otarget is None:
                for iid in q["objItems"]:
                    src = self.item_source(iid, area, q["questLevel"] or 0)
                    ics.append(src[3] if src and src[0] != "buy" else None)
                # item noutra zona junto com um daqui: o passo é um só e só fecha com os dois, então
                # o lugar dele é o de fora — vai para as sobras, no fim do guia (A Noble Brew: a Tear
                # of Tilloa em Duskwood e a Musquash Root nos Wetlands travavam o meio de Duskwood)
                # (o mapa do continente não é outra zona: o glifo de Glyph Chasing está nele)
                fora_ = [p for p in ics if p and area != -1 and int(p[0]) != area
                         and "continent map" not in self.zone_name(p[0])]
                ic = fora_[0] if fora_ and len(fora_) < len([p for p in ics if p]) else (ics[0] if ics else None)
            info[qid] = {"q": q, "giver": giver, "giver_id": giver_id, "giver_kind": giver_kind,
                         "item_verb": item_verb, "ender": ender, "ender_id": ender_id, "eobj": eobj,
                         "gc": gc, "ec": ec, "oc": ocoord, "ic": ic, "ics": ics, "otarget": otarget,
                         "okind": okind, "oid": oid}
        # item que a quest anterior dá de recompensa (Tome of Divinity): começa onde
        # ela é entregue
        for p, q in sel.items():
            it = info.get(q.get("nextInChain"))
            if it and it["giver"] is None and it["q"]["startItems"]:
                iid = it["q"]["startItems"][0]
                it.update(giver={"name": (self.items.get(str(iid)) or {}).get("name") or it["q"]["name"]},
                          giver_id=iid, giver_kind="reward", gc=info[p]["ec"])
        return info

    def _sem_giver(self, sel, info):
        """Tira a quest que ninguém dá (giver sem spawn, item sem fonte nem quest
        anterior que o entregue): nunca entra no log, e a entrega travaria o guia.
        E a que ninguém recebe (missão nova do Forever sem o NPC de entrega no banco):
        aceita, ficava no diário até o fim do jogo. Quem recebe sem spawn também (o Molkar de
        Buying Friendship: Gelkis): a entrega saía sem seta e sem lugar."""
        for qid in self._tira(sel, {q for q, it in info.items()
                                    if not it["giver"] or not (it["ender"] or it["eobj"]) or not it["ec"]}):
            del info[qid]

    # -- geração de uma zona ------------------------------------------------
    def generate_zone(self, area, faction, title, level_max, next_key=None, exclude=None,
                      travel_to=None, include=None, fp=True, feitas=None, nivel_inicial=None,
                      fixas=None, adiar_zonas=None, adiar_fixo=None, herdadas=None):
        """Guia de uma zona. `exclude`: quests de outros guias/faixas. `feitas`: as
        que guias anteriores já entregam (pré-requisito delas vale). `nivel_inicial`:
        o nível de quem começa o guia (1 na zona inicial). `fixas`: o conjunto exato de
        quests (a seleção já foi feita).
        Entrega numa zona de um guia mais adiante na cadeia espera por ele: `adiar_zonas`
        ({área: (quests que não podem esperar, nível de entrada do guia de lá)}) decide,
        `adiar_fixo` repete a decisão de antes, `self.adiou` diz o que foi; o guia de lá
        recebe as `herdadas`, já no diário, e as entrega com `haveq`."""
        self.adiou = {}
        exclude = set(exclude or ())
        feitas = set(feitas or ())
        if fixas is not None:
            # passada final: exatamente o que a atribuição deu a este guia — refiltrar
            # aqui (faixa, poluente) perdia o que a realocação trouxe
            sel = {int(q): self.quests[str(q)] for q in fixas if str(q) in self.quests}
            importadas = set(sel)
            # ...menos o que pede nível acima da faixa do guia e tem lugar melhor: a de
            # classe (guia de classe), a de masmorra (guia da masmorra) e o "fale com"
            # de que nada depende. Ficavam no fim, opcionais por um nível acima da faixa
            # (Vyletongue Corruption pedia 41 em Desolace 33-40; antes, o "!" cinza).
            lv = sorted(v["questLevel"] for v in sel.values() if (v["questLevel"] or 0) > 0
                        and not v["classes"])
            if lv:
                teto = lv[min(len(lv) - 1, int(len(lv) * 0.85))]
                pedidas = {p for v in sel.values() for p in v["preSingle"] + v["preGroup"]}

                def tem_lugar(qid, v):
                    zona = (self.zones.get(str(v["zoneOrSort"])) or {}).get("name", "")
                    return v["classes"] or zona.endswith((" - Dungeon", " - Raid")) or not (
                        v["objCreatures"] or v["objItems"] or v["objObjects"] or qid in pedidas)
                self._tira(sel, {q for q, v in sel.items()
                                 if self.nivel_pedido(q, v, area) > teto and tem_lugar(q, v)})
        else:
            sel = self.select(area, faction, level_max, exclude)
            # quests IMPORTADAS de outra zona (capital), distribuídas por faixa de nível
            importadas = set()
            for qid in (include or ()):
                if int(qid) not in exclude and int(qid) not in sel:
                    q = self.quests.get(str(qid))
                    if q:
                        sel[int(qid)] = q
                        importadas.add(int(qid))
            if not sel:
                return None, 0, []
            self.zone_prereq_closure(sel, area, faction, exclude | feitas)
            # o fecho pode trazer de volta o que o leveling deixa fora (pré-req de uma da zona). A de
            # masmorra sai com o que depende dela; a de profissão (That's Asking A Lot pede Thorium Bar
            # e peças de engenheiro) sai sozinha, e a seguinte fica para quem a fez (`completed`)
            self._tira(sel, {qid for qid, q in sel.items() if self.em_masmorra(q)})
            for qid in [qid for qid, q in sel.items() if not self.de_leveling(q, faction, level_max)]:
                del sel[qid]
            # remove mis-includes: quest cujo preGroup do MESMO conteúdo (nível ~igual)
            # não entrou no guia (evento AQ, quest iniciada por item). Pré-req bem mais
            # baixo (cadeia entre zonas) é preservado.
            changed = True
            while changed:
                changed = False
                for qid in list(sel):
                    ql = sel[qid]["questLevel"] or 0
                    for p in sel[qid]["preGroup"]:
                        if p not in sel and p not in feitas and \
                                ((self.quests.get(str(p)) or {}).get("questLevel") or ql) >= ql - 6:
                            del sel[qid]; changed = True
                            break
            # POLUENTES: nível muito acima do perfil da zona (hi = p85 dos níveis de rota,
            # sem classe nem só-Skyborne, como o título: as de bruxo nível 35 de Ratchet
            # não fazem de The Barrens 14-24 um guia que vai até 40)
            lv = sorted(v["questLevel"] for v in sel.values() if (v["questLevel"] or 0) > 0
                        and not v["classes"] and not (v["races"] and not v["races"] & VANILLA_RACES)) \
                or sorted(v["questLevel"] for v in sel.values() if (v["questLevel"] or 0) > 0)
            if lv:
                hi = lv[min(len(lv) - 1, int(len(lv) * 0.85))]
                # a que continua cadeia de nível maior, de fora, fica: o generate_all a leva ao
                # guia do pré-requisito (The Legend of Stalvan do baú de Westfall, req 22, entre as
                # de Duskwood; tirada aqui, a cadeia de Stalvan sumia)
                # (só pré-req de leveling, sem classe: o de masmorra ou de classe nunca leva a
                # dependente a guia nenhum — Test of Lore esperava Scarlet Monastery em Hillsbrad)
                def de_cadeia(v):
                    return not v["classes"] and any(
                        p not in sel and ((self.quests.get(str(p)) or {}).get("questLevel") or 0) > hi
                        and not self.quests[str(p)]["classes"] and self.de_leveling(self.quests[str(p)], faction, level_max)
                        for p in v["preSingle"] + v["preGroup"] if str(p) in self.quests)
                for qid in [q for q, v in sel.items()
                            if ((v.get("reqLevel") or 0) > hi + 3 or (v["questLevel"] or 0) > hi + 12)
                            and not de_cadeia(v)]:
                    del sel[qid]
            # Pré-requisito que o jogador não terá feito: o NPC não abre a quest, o passo
            # seria pulado e tudo que depende dela travaria. Vale o que este guia ou os
            # anteriores entregam, e o de nível MENOR que algum guia de leveling leva
            # (feito antes na progressão, mesmo que noutra zona).
            # Sai só a quest cujo pré-requisito esta facção nem tem; o de fora do guia
            # vira condição do passo (`_portoes`).
            fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}

            def possivel(p):
                pq = self.quests.get(str(p))
                return p in sel or (bool(pq) and pq["faction"] in fac_ok and not is_placeholder(pq["name"]))

            self._tira(sel, {qid for qid, q in sel.items()
                             if not all(possivel(p) for p in q["preGroup"])
                             or (q["preSingle"] and not any(possivel(p) for p in q["preSingle"]))})
        # Mutuamente exclusivas para o MESMO jogador (The Ashenvale Hunt em Orgrimmar,
        # Thunder Bluff e Camp Taurajo): fica uma — a que nasce aqui, a de menor
        # nível. Só dentro do guia e só entre quests do mesmo público: as versões de
        # "The Great Outdoors" de cada zona inicial são de raças diferentes, e o
        # banco marca como exclusivas a montaria do Paladino e a do Bruxo.
        def nasce_aqui(q):
            return any(str(area) in ((self.npc(n) or {}).get("spawns") or {}) for n in q["startNpcs"])
        self._tira(sel, self._exclusivas(
            sel, lambda q: (not nasce_aqui(sel[q]), sel[q]["reqLevel"] or 0, q), faction))
        # Anterior alternativa (`_antes`) que nasce fora, quando uma daqui cobre o mesmo
        # público: The New Horde era ida a Orgrimmar para entregar no vale a quest de
        # nível 1 que Your Place In The World já leva a Cutting Teeth.
        cadeia = defaultdict(list)
        for b, q in sel.items():
            x = q.get("nextInChain")
            if x in sel and not any(p in sel for p in sel[x]["preSingle"] + sel[x]["preGroup"]):
                cadeia[x].append(b)
        self._tira(sel, {b for ps in cadeia.values() for b in ps if not nasce_aqui(sel[b])
                         and any(a != b and nasce_aqui(sel[a]) and cobre(sel[a], sel[b]) for a in ps)})
        if not sel:
            return None, 0, []
        zname = self.zone_name(area)
        herd = {int(q) for q in (herdadas or ()) if str(q) in self.quests}
        for q in herd:
            sel[q] = self.quests[str(q)]
        # "Fale com" de capital no nível de sair da zona inicial, num guia cuja gente não nasce na
        # casa dela: só para quem passa por lá (a raça da capital e o Skyborne, que sai da ilha pelas
        # capitais). Sergra Darkthorn e The Barrens Oases, de Thunder Bluff, levavam o orc de Durotar a
        # pé até lá no começo de The Barrens 12-20
        sky = sum(b for b, n in RACAS.get(faction, {}).items() if n == "Skyborne")
        for qid, q in list(sel.items()):
            zonas = {int(z) for z in self._areas(q["startNpcs"], self.npc)}
            z = next(iter(zonas)) if len(zonas) == 1 else None
            casa = RACA_DA_CAPITAL.get(z)
            fala = not (q["objCreatures"] or q["objItems"] or q["objObjects"] or gatilho(q) or tarefa_sem_alvo(q))
            if casa and not q["classes"] and (q["questLevel"] or 0) <= 12 and fala \
                    and not RACA_DA_ZONA.get(area, 0) & casa and qid not in herd \
                    and (q["races"] or ~0) & (casa | sky):        # 0 seria "todas as raças"
                sel[qid] = dict(q, races=(q["races"] or ~0) & (casa | sky))
        info = self._info(sel, area)
        self._sem_giver(sel, info)

        # Quest cujo objetivo ou entrega fica em outro continente não é rota desta
        # zona: no meio de Badlands, "entregue em Thousand Needles" é atravessar o
        # mundo. Sai do guia, e com ela o que depende dela. Capital da própria
        # facção fica (Darkshore -> Stormwind é barco e pedra de lar, rotina). Rodar
        # outras zonas falando com NPCs também não (o Mechanical Yeti de Everlook a
        # Gadgetzan e Un'Goro); uma só é como objetivo noutra zona (as torres de Andorhal,
        # da Bulwark), e capital fica (Exploring the Alliance).
        cont = continente(area, faction)
        casa = CAPITAIS[faction]

        def longe(it):
            outras = {p[0] for f in self.conversa(it) for p in [self.best_spawn(f[0], area)] if p}
            q = it["q"]
            # zona noutro nível: Of Mice and Milk (15) entrega ao Nesingwary, entre tigres de 30.
            # Classe (o druida vai a Moonglade de teleporte) e a ilha (navio e portal até
            # Dalaran, em Alterac) têm o transporte
            so_skyborne = q["races"] and not q["races"] & VANILLA_RACES
            perigo = not (q["classes"] or so_skyborne or area == ZEPHRAS) and any(
                p and int(p[0]) not in casa | {area}
                and self.nivel_zona(p[0]) >= (q["questLevel"] or 0) + 10 for p in [it["ec"], it["oc"]] + it["ics"])
            # de cada item: Warsong Supplies ia a Booty Bay. A de classe também, e com capital: a cadeia
            # que cruza o mar está inteira no guia de classe (Tome of the Cabal do bruxo, com um tomo em
            # Hillsbrad e outro em Thousand Needles, fazia 15 travessias; Storm, Earth, and Fire, duas
            # voltas de totem; Erion's Behest ia de Darnassus a Stormwind no meio de Darkshore)
            return perigo or len(outras - casa - {area}) > 1 or any(
                p and (int(p[0]) not in casa or q["classes"]) and continente(p[0], faction) != cont
                for p in [it["ec"], it["oc"]] + it["ics"] + ([it["gc"]] if q["classes"] else []))
        # a herdada só se entrega aqui: o objetivo dela (noutro continente, às vezes) já foi feito
        for qid in self._tira(sel, {qid for qid, it in info.items() if longe(it) and qid not in herd}):
            del info[qid]
        if not sel:
            return None, 0, []
        # a herdada conta como de fora: quem chega por outro caminho não a tem (o elfo noturno
        # chega a Elwynn 21-28 sem passar por Redridge, e Return to Verner pedia a 118)
        for qid, tokens in self._portoes({q: v for q, v in sel.items() if q not in herd}, faction).items():
            if tokens:
                info[qid]["q"] = sel[qid] = dict(sel[qid], portao=tokens)

        # Hub é onde se dá, recebe e também onde se faz: com só os dois primeiros, a
        # Burning Blade Coven caía no hub de Razor Hill e o guia ia à vila antes da caverna
        hubs = self.build_hubs(sel, area, [p[1] for it in info.values() for p in [it["oc"] or it["ic"]]
                                           if p and int(p[0]) == area])

        # hub só para ponto DENTRO da zona: Thurman, de Stormwind, não pode cair no
        # hub da fazenda Stonefield só porque a coordenada crua é parecida
        def hub(sp):
            return self.nearest_hub(sp[1], hubs) if sp and int(sp[0]) == area else None
        for it in info.values():
            it["ghub"], it["ehub"] = hub(it["gc"]), hub(it["ec"])
            it["ohub"] = hub(it["oc"] or it["ic"])
            it["fora"] = bool((it["oc"] or it["ic"]) and it["ohub"] is None)   # objetivo noutra zona
            it["hora"] = na_hora(it["q"])    # (uma vez: a rota simulada pergunta a cada passo)
            if it["hora"]:                   # a escolta logo depois do aceite (Supplies to Auberdine
                it["ohub"], it["fora"] = None, False   # tinha 41 passos no meio, e falhava)
            # a com tempo entregue noutra zona é pega nas sobras, quando a rota vai para lá: Apothecary
            # Zamah, pega nos Crossroads, ia a Thunder Bluff e voltava, e o guia passa lá no fim
            it["tarde"] = com_tempo(it["q"]) and bool(it["ec"]) and int(it["ec"][0]) != area

        # Nível estimado do jogador: começa no de quem entra no guia e sobe até o
        # alto da faixa conforme as quests são entregues. A quest espera até ele
        # alcançar o nível mínimo E chegar perto do nível dela (mob de nível 9 para
        # quem tem 3 é morte certa, mesmo que o NPC já ofereça).
        # A faixa conta o que todo jogador do guia faz: sem classe, sem herdada e sem a quest que
        # espera pré-requisito de fora (a cadeia de Felbane, 58-60, esperando a The Formation of
        # Felbane que guia nenhum entrega, puxava o teto de Stranglethorn 43-51 para 58, e Vital
        # Supplies, de 45, saía como cinza)
        # (`preGroup`: todas; `preSingle`: basta uma)
        def falta(v, ruim):
            return any(ruim(p) for p in v["preGroup"]) or (v["preSingle"] and all(ruim(p) for p in v["preSingle"]))
        espera = {q for q, v in sel.items() if falta(v, lambda p: p not in sel and p not in feitas)}
        mudou_ = True
        while mudou_:
            mudou_ = False
            for q, v in sel.items():
                if q not in espera and falta(v, lambda p: p in espera or (p not in sel and p not in feitas)):
                    espera.add(q)
                    mudou_ = True
        niveis = sorted(v["questLevel"] for q, v in sel.items() if (v["questLevel"] or 0) > 0
                        and not v["classes"] and q not in herd and q not in espera) \
            or sorted(v["questLevel"] for v in sel.values() if (v["questLevel"] or 0) > 0) or [1]
        n_lo = niveis[int(len(niveis) * 0.15)]
        n_hi = niveis[min(len(niveis) - 1, int(len(niveis) * 0.85))]
        ini = n_lo if nivel_inicial is None else nivel_inicial
        accepted, done, turned = set(), set(), set()
        teto = max(n_hi, ini)
        subiu = [0]                # níveis ganhos fora das entregas (o loop travou)

        def precisa(q):
            return max(q.get("reqLevel") or 0, (q.get("questLevel") or 0) - 2)

        # O nível estimado é o maior de dois: o da XP das entregas (`xp_quest`, a do
        # QuestieDB) de quem entra no guia no nível `ini`, e a fração das quests do guia
        # entregues, em curva até o teto. A XP sabe que o começo é rápido — pela fração,
        # Camp Narache era deixado no 3 com o jogador já no 4-5 —; a fração sabe que fora
        # da zona inicial o jogador não sobe só com o guia (intercala zonas): pela XP só,
        # Duskwood e Desolace travavam no nível e andavam 20-30% mais. As de classe, uma
        # ou duas por jogador, ficam fora das duas contas.
        # A folga de +1 é para o nível da quest; o reqLevel é trava do servidor — no
        # nível 1 o NPC mostra o "!" cinza da The Damned (reqLevel 2) e não a entrega.
        geral = {qid for qid, q in sel.items() if not q["classes"]} or set(sel)
        xpq = {qid: xp_quest(qid, sel[qid], self.xp, self.items) for qid in geral}

        class Estado:
            """Diário, feitas e entregues — o de verdade ou uma cópia para simular."""
            __slots__ = ("acc", "don", "tur", "xp", "ng")

            def __init__(s, acc, don, tur, xp=0.0, ng=0):
                s.acc, s.don, s.tur, s.xp, s.ng = acc, don, tur, xp, ng

            def copia(s):
                return Estado(set(s.acc), set(s.don), set(s.tur), s.xp, s.ng)

            def entrega(s, qid, xp=True):
                s.tur.add(qid)
                s.acc.discard(qid)
                if xp and qid in xpq:
                    s.xp += xpq[qid]
                    s.ng += 1

            def nivel(s, moido=True):          # moido: com os níveis que a rota travada sobe
                frac = ini + (teto - ini) * (s.ng / len(geral)) ** CURVA_NIVEL
                return min(max(nivel_por_xp(ini, s.xp) - XP_FOLGA, frac) + (subiu[0] if moido else 0), teto)

        real = Estado(accepted, done, turned)
        herd &= set(info)
        for q in herd:                       # pegas e feitas num guia de antes: só a entrega
            accepted.add(q)
            done.add(q)
            info[q]["q"] = dict(info[q]["q"], cond_resto="haveq(%d)" % q)

        def nivel_ok(q, st=None):
            est = (st or real).nivel()
            return (q.get("reqLevel") or 0) <= est and (q.get("questLevel") or 0) - LV_ACIMA <= est

        all_ids = set(sel)
        antes = self._antes(sel)

        def prereqs_ok(q, qid, feitas=None):
            feitas = turned if feitas is None else feitas
            preG = [p for p in q["preGroup"] if p in all_ids]
            ok = all(p in feitas for p in preG) and self._opcoes_ok(sel, qid, feitas) \
                and antes_ok(antes[qid], feitas)
            ov = PREREQ_OVERRIDES.get(qid)                     # gate que o banco não codifica
            if ok and ov and ov in all_ids:
                ok = ov in feitas
            return ok

        steps = []
        emit_accept, emit_do, emit_turnin = self._emissores(info, steps, area, faction)

        def tem_objetivo(q):
            return bool(q["objCreatures"] or q["objItems"] or q["objObjects"] or gatilho(q)) \
                or tarefa_sem_alvo(q)

        # Diário do Classic: 20. O guia leva as de todas as raças, então a conta é
        # folgada; as de classe ficam fora dela (uma ou duas por vez, de cada classe).
        # Sem o teto, The Barrens 12-20 chegava a 20 para o guerreiro orc.
        adiadas = []                         # entregas noutra zona deixadas para o fim (sobras)

        def aberto(st=None):                 # as adiadas seguem no diário até o fim do guia
            st = st or real
            fora = sum(1 for q in adiadas if not sel[q]["classes"]) if st is real else 0
            return fora + sum(1 for q in st.acc if q not in st.tur and not sel[q]["classes"])

        # Quest cujo `reqLevel` passa do nível que a XP dá (a curva da faixa adianta; a rota
        # travada sobe na marra) fica opcional por nível, em vez de travar o guia num
        # `ding N`: o aceite só aparece para quem tem o nível, fazer e entregar só para quem a
        # pegou (`haveq`), e o que depende dela no guia só para quem a entregou (`completed`),
        # em cascata. O `ding` parava o guia inteiro por uma quest — 8 níveis em Ironforge por
        # A Host of Evil, 5 em Orgrimmar por uma entrega em Gadgetzan.
        dependentes = defaultdict(list)       # pré-req -> (quem depende, condição)
        for d, qd in sel.items():
            opcoes = [p for p in qd["preSingle"] if p in sel]
            for p in qd["preGroup"]:
                if p in sel:
                    dependentes[p].append((d, "completed(%d)" % p))
            for p in opcoes:                  # só o pré-req do banco: o `_antes` (breadcrumb,
                dependentes[p].append((d, "completed(%s)" % ",".join(str(o) for o in opcoes)))
            # nextInChain) o servidor não cobra — escondia Gnogaine de quem pulou o breadcrumb
        marcadas = set()

        def marca(qid, aceite):
            q = info[qid]["q"]
            atual = q.get("cond_aceite")
            junto = atual if aceite in (atual or "") else " ".join(t for t in (atual, aceite) if t)
            info[qid]["q"] = dict(q, cond_aceite=junto, cond_resto="haveq(%d)" % qid)
            if qid in marcadas:
                return
            marcadas.add(qid)
            for d, cond in dependentes[qid]:
                if d not in real.acc and d not in real.tur:
                    marca(d, cond)

        def de_grupo(qid):              # alvo elite perto do nível da quest (`group_tag`)
            q = sel[qid]
            alvos = self.alvos(qid, q, area)
            if info[qid].get("giver_kind") == "item" and info[qid].get("item_verb") == "kill":
                alvos.append(info[qid]["giver_id"])   # o item que começa a quest cai do High Chief
            return any(self.group_tag(n, q["questLevel"] or 0) for n in alvos)   # Winterfall (elite de 59)

        def opcional(qid):              # pelo nível da XP: a curva da faixa adianta o nível, e
            req = sel[qid].get("reqLevel") or 0   # o NPC não dá a quest a quem não o tem
            if de_grupo(qid):           # elite de 61 para quem tem 52 (Alas, Andorhal), os Irradiated
                req = max(req, sel[qid]["questLevel"] or 0)   # Invaders elite de Gnogaine: o nível dela
            # pelo nível da XP com a folga (o mesmo que o `nivel` sem a curva): Deadmire (req 35)
            # saía sem portão para quem tinha 34,99 no fim de Dustwallow — a conta passava por 7 mil
            if req > min(nivel_por_xp(ini, real.xp) - XP_FOLGA, teto):
                marca(qid, "level>=%d" % req)

        aceitas = []                         # na ordem do guia: o `ding` da entrada olha as primeiras
        # (pré-requisito de qualquer quest do banco, não só deste guia: a de outro guia que
        # depende dela ficaria escondida atrás do `completed`)
        pedidas_sel = {p for v in self.quests.values() for p in v["preSingle"] + v["preGroup"]}

        def cinza(qid, st):
            """Cinza (10+ níveis abaixo de quem chega aqui) de que nada depende não vale a ida:
            Journey to Astranaar (20) mandava de Theramore a Astranaar no 35."""
            q = sel[qid]
            return (q["questLevel"] or 99) + 10 <= st.nivel(moido=False) and qid not in pedidas_sel \
                and not q["classes"]

        def aceitar(qid, st=None, emite=True):
            st = st or real
            if not sel[qid]["classes"] and aberto(st) >= DIARIO:
                return False
            if cinza(qid, st):
                return False
            if emite:
                opcional(qid)
            if emit_accept(qid) if emite else bool(info[qid]["giver"]):
                if emite:
                    aceitas.append((qid, st.xp))
                st.acc.add(qid)
                it = info[qid]
                if it["ohub"] is None and not it["fora"]:       # objetivo sem lugar: "como fazer" aqui
                    if emite and tem_objetivo(it["q"]):
                        emit_do(qid)
                    st.don.add(qid)
                    # a escolta que termina em quem recebe entrega ali (The Sleeper Has Awakened
                    # acaba ao lado da Liladris, em Ashenvale; a entrega esperava dois guias)
                    trig = it["q"].get("trigger")    # o fim da escolta, mesmo com objetivo de item
                    oc = self.best_spawn({"spawns": trig[1]}, area) if trig else it["oc"]
                    ec = it["ec"]
                    # e a escolta sem objetivo nem ponto (The Windshaper's Wrath: "Accompany Lumina")
                    # termina em quem recebe: a entrega é o passo dela
                    perto = oc and ec and int(oc[0]) == int(ec[0]) and dist2(oc[1], ec[1]) < 25
                    # a com tempo entrega logo, onde for (Apothecary Zamah ia de The Barrens 12-20 a
                    # Thunder Bluff 300 passos depois, com a quest já falha)
                    if (com_tempo(it["q"]) or escolta(it["q"]) and (perto or not tem_objetivo(it["q"]))) \
                            and (it["ender"] or it["eobj"]):
                        if emite:
                            emit_turnin(qid)
                        st.entrega(qid)
                        # e o que mais está pronto para entregar ali (em Maestra's Post, One Shot.
                        # One Kill. e The Tower of Althalaxx esperavam outra viagem)
                        for o in sorted(st.acc - st.tur):
                            eo = info[o]["ec"]
                            if o in st.don and ec and eo and int(eo[0]) == int(ec[0]) and dist2(eo[1], ec[1]) < 25 \
                                    and (info[o]["ender"] or info[o]["eobj"]):
                                if emite:
                                    emit_turnin(o)
                                st.entrega(o)
                return True
            return False

        # Quests importadas (giver na capital) com objetivo aqui: pegar antes de
        # entrar na zona — "passe em Stormwind antes de ir a Westfall". Na zona
        # inicial não: ninguém vai à capital no nível 1.
        if nivel_inicial is None or nivel_inicial > 1:
            nas_capitais = set()
            for qid in sorted(importadas & set(sel), key=lambda q: (precisa(sel[q]), q)):
                if info[qid]["ghub"] is None and not info[qid]["tarde"] and prereqs_ok(sel[qid], qid) and nivel_ok(sel[qid]):
                    if aceitar(qid) and info[qid]["gc"]:
                        nas_capitais.add(int(info[qid]["gc"][0]))
            # a herdada que se entrega numa capital por onde o guia começa sai ali, não no fim
            # (Glyphed Oaken Branch: o guia de Azshara começa em Darnassus)
            for qid in sorted(herd):
                if info[qid]["ec"] and int(info[qid]["ec"][0]) in nas_capitais and info[qid]["ehub"] is None:
                    emit_turnin(qid)
                    real.entrega(qid)

        por_precisa = sorted(sel, key=lambda q: (precisa(sel[q]), q))

        def sem_subir(q, st):                # o nível sem a trava já chega: aceita sem ser opcional
            return (q.get("reqLevel") or 0) <= st.nivel(moido=False)

        def visita(h, st=None, emite=True, subindo=False):
            """Fecha o hub: entrega, aceita e faz o que dá até nada mudar. `subindo`: aceita
            também o que só a trava libera (sai opcional por nível)."""
            st = st or real
            algo, mexeu = False, True
            while mexeu:
                mexeu = False
                for qid in sorted(st.acc):
                    it = info[qid]
                    if qid in st.don and qid not in st.tur and it["ehub"] == h and (it["ender"] or it["eobj"]):
                        if emite:
                            emit_turnin(qid)
                        st.entrega(qid)
                        mexeu = True
                # a escolta por último, quando o hub não tem mais nada: Free From the Hold saía
                # da fortaleza antes de Guns of Northwatch, que se faz lá dentro
                for escoltas in (False, True):
                    for qid in por_precisa:
                        it = info[qid]
                        if qid in st.acc or qid in st.tur or it["ghub"] != h or it["hora"] != escoltas \
                                or it["tarde"]:
                            continue
                        if prereqs_ok(it["q"], qid, st.tur) and nivel_ok(it["q"], st) \
                                and (subindo or sem_subir(it["q"], st)) and aceitar(qid, st, emite):
                            mexeu = True
                    for qid in sorted(st.acc):
                        if qid not in st.don and info[qid]["ohub"] == h:
                            if emite:
                                emit_do(qid)
                            st.don.add(qid)
                            mexeu = True
                    if mexeu:
                        break
                algo = algo or mexeu
            return algo

        def trabalho(st, subindo=False):
            """Os hubs em que a `visita` faria algo agora: {hub: termina algo (objetivo,
            entrega) ou só pega quest nova}."""
            out = {}
            for qid in st.acc:
                it = info[qid]
                if qid in st.don and qid not in st.tur and it["ehub"] is not None and (it["ender"] or it["eobj"]):
                    out[it["ehub"]] = True
                if qid not in st.don and it["ohub"] is not None:
                    out[it["ohub"]] = True
            livre, est, base = aberto(st) < DIARIO, st.nivel(), st.nivel(moido=False)
            for qid in por_precisa:
                g, q = info[qid]["ghub"], sel[qid]
                if g is None or g in out or qid in st.acc or qid in st.tur or info[qid]["tarde"]:
                    continue
                if (q["classes"] or livre) and (q.get("reqLevel") or 0) <= (est if subindo else base) \
                        and (q.get("questLevel") or 0) - LV_ACIMA <= est and prereqs_ok(q, qid, st.tur) \
                        and not cinza(qid, st):
                    out[g] = False
            return out

        def d(a, b):
            return dist2(hubs[a], hubs[b]) ** 0.5

        def ordem(cur, tr):                  # hub só de pegar quest conta mais longe
            return sorted(tr, key=lambda h: (d(cur, h) * (1 if tr[h] else PESO_SO_PEGAR), h))

        # Zona inicial: a subzona de partida (Valley of Trials, Northshire, Coldridge...) é
        # o `zoneOrSort` das quests de lá. Enquanto um hub onde se pega ou se faz uma delas
        # tiver trabalho, a rota fica neles — a distância sozinha mandava Dun Morogh a
        # Kharanos com A New Threat pronta ao lado dos troggs, e o jogador reclamava de sair
        # cedo deixando quest para trás. Na primeira saída a regra acaba (não força voltar).
        sub = sel[min(sel, key=lambda q: (precisa(sel[q]), q))]["zoneOrSort"]
        partida = set()
        if nivel_inicial == 1 and sub and sub > 0 and sub != area:
            partida = {h for q in sel if sel[q]["zoneOrSort"] == sub
                       for h in (info[q]["ghub"], info[q]["ohub"]) if h is not None}
        saiu = [not partida]

        def escolhe(cur, subindo=False):
            """O próximo hub. Entre os mais perto, o que dá o menor caminho até acabar o
            trabalho que se sabe, com o mesmo guloso simulado: ir à Coven obriga a voltar ao
            vale, ir ao Ukor adia — e Durotar saía do vale com Vile Familiars por fazer.
            Simular só alguns passos favorecia ir longe e deixar a volta para depois."""
            tr = trabalho(real, subindo)
            if not tr:
                return None
            if not saiu[0]:
                if any(h in partida for h in tr):
                    tr = {h: v for h, v in tr.items() if h in partida}
                else:
                    saiu[0] = True
            cands = ordem(cur, tr)[:ROLLOUT_LARGURA]
            if len(cands) == 1:
                return cands[0]
            melhor = None
            for h in cands:
                st, c, custo = real.copia(), h, d(cur, h)
                visita(h, st, False, subindo)
                while True:
                    t2 = trabalho(st, subindo)
                    if not t2:
                        break
                    nx = ordem(c, t2)[0]
                    custo += d(c, nx)
                    visita(nx, st, False, subindo)
                    c = nx
                if melhor is None or custo < melhor[0]:
                    melhor = (custo, h)
            return melhor[1]

        # Vai ao hub escolhido e repete. A varredura em ordem fixa ia a todo hub com
        # qualquer coisa — uma entrega só, longe —, e Durotar subia a Razor Hill no meio do
        # vale. Nada em hub nenhum: o jogador sobe um nível matando no caminho.
        lowest = min(sel, key=lambda q: (precisa(sel[q]), q))
        cur = info[lowest]["ghub"] or 0
        while hubs:
            # primeiro o que o nível já deixa: a quest que só a trava libera (opcional por
            # nível) fica para quando não há mais nada (Silverpine pedia nível 19 com The Weaver
            # e A Recipe for Death, nível 9-10, ainda por fazer — e a XP delas pode bastar)
            subindo = False
            prox = escolhe(cur)
            if prox is None:
                subindo, prox = True, escolhe(cur, True)
            if prox is not None:
                cur = prox
                assert visita(cur, subindo=subindo), "trabalho e visita discordam no hub %d" % cur
                continue
            if ini + subiu[0] >= teto:
                break
            subiu[0] += 1

        # Sobras, num bloco no fim: o que é de fora da zona (entrega na capital,
        # objetivo noutra zona) e o que o nível ainda não deixou. Ondas topológicas,
        # entregando o pré-req antes de aceitar a dependente. A entrega passa pelo
        # `Estado`: com `turned.add` cru o nível parava aqui e o gate saía alto demais.
        def pode_entregar(qid):
            return qid not in turned and (info[qid]["ender"] or info[qid]["eobj"])

        def por_hub(chave):                      # agrupa por lugar (sem hub: no fim)
            return lambda q: (info[q][chave] is None, info[q][chave] or 0, q)

        # Entrega na zona do guia seguinte, de que nada depende, fica para o fim do guia:
        # no meio das sobras, Flight to Auberdine era uma ida de barco a Darkshore entre os
        # passos de Darnassus; no fim, é entregue na chegada ao guia seguinte.
        pedidas = {p for q in sel.values() for p in q["preSingle"] + q["preGroup"]} \
            | {b for gs in antes.values() for g in gs for b in g} | set(PREREQ_OVERRIDES.values())

        proxima = travel_to[0] if travel_to else None   # a zona onde o guia seguinte começa

        def vai_la(z, qid):
            """O guia vai à zona `z` de qualquer jeito: pegar ou fazer uma quest lá (esta também:
            a chave de Target: Felstone Field é do lado do caldeirão; Water Sapta se pega e entrega
            no mesmo NPC), ou já passou por lá."""
            # (só o que todo personagem faz: o passo do bruxo em Ironforge não leva o guerreiro lá)
            nome, so_alguns = "|goto %s " % self.zone_name(z), False
            for t, cond in steps:
                if t == "step":
                    so_alguns = bool(cond and PUBLICOS & set(cond.split()))
                elif not so_alguns and nome in t:
                    return True
            # ou vai lá entregar uma herdada (Felwood vai a Ratchet pela de Un'Goro, e a Seeking
            # Spiritual Aid de lá não espera a Barrens 55-60)
            return any(int(p[0]) == z for it2 in info.values() if self.para_todos(it2["q"])
                       for p in [it2["gc"], it2["oc"]] if p) \
                or any(info[h]["ec"] and int(info[h]["ec"][0]) == z for h in herd if h in info)

        def entrega(qid):
            ec = info[qid]["ec"]
            z = int(ec[0]) if ec else None
            # a da zona onde o guia seguinte começa fica para o fim (Flight to Auberdine: no meio
            # das sobras era uma ida de barco a Darkshore entre os passos de Darnassus)
            if ec and z != area and qid not in pedidas and not vai_la(z, qid) and self.zone_name(z) == proxima:
                adiadas.append(qid)
                real.entrega(qid)
                return True
            # a de uma zona que um guia mais adiante visita espera por ele (It's a Secret to
            # Everybody ia de Un'Goro a Winterspring e voltava; Journey to Sentinel Hill, de
            # Westfall, é do guia de Westfall, que começa em Stormwind). Quest de classe não: o
            # cavalo do bruxo esperava 15 níveis atrás de Summon Felsteed
            if z != area and qid not in pedidas and qid not in herd and not sel[qid]["classes"] and (
                    qid in adiar_fixo if adiar_fixo is not None
                    else z in (adiar_zonas or {}) and qid not in adiar_zonas[z][0] and not vai_la(z, qid)
                    # e não cinza lá: o jogador chega lá no topo deste guia, pelo menos (Return to
                    # Thunder Bluff, de 23, saía no meio de Thousand Needles 27-35, com 10% da XP).
                    # Noutro continente basta o guia de lá não começar acima deste: entregar agora
                    # custa o mar e dá a mesma XP (A Scroll from Mauren, de 21, no fim de
                    # Stonetalon 21-27, ia a Stormwind e voltava para Ashenvale)
                    and max(adiar_zonas[z][1], teto) <= max((sel[qid]["questLevel"] or 0) + 4,
                                                            teto + 1 if continente(z, faction) != cont else 0)):
                self.adiou[qid] = z
                real.entrega(qid, xp=False)      # a XP é do guia de lá
                return True
            emit_turnin(qid)
            real.entrega(qid)

        def esvazia():                           # diário cheio nas sobras: faz e entrega
            for qid in sorted(accepted, key=por_hub("ohub")):
                if qid not in turned and qid not in done:
                    emit_do(qid); done.add(qid)
            for qid in sorted(accepted, key=por_hub("ehub")):
                if qid in done and pode_entregar(qid):
                    entrega(qid)
        # Guloso por lugar: o que dá para fazer na zona onde o jogador está, do mais perto;
        # acabou a zona, a ação mais cedo na ordem topológica; no mesmo lugar, entrega antes de
        # pegar. Em ondas topológicas as sobras iam e voltavam entre zonas (Un'Goro: Darnassus,
        # Feralas, Darnassus, Winterspring...) e The Magical City of Dalaran só era entregue
        # depois do tour das capitais que começa ao lado de quem a recebe.
        rank = {q: n for n, q in enumerate(q for w in self._topo_waves(sel)
                                           for q in sorted(w, key=lambda q: (precisa(sel[q]), q)))}
        TIPO = {"entrega": 0, "faz": 1, "aceita": 2}
        pos = (area, hubs[cur]) if hubs else None
        desiste = set()                          # sem quem dá, ou o diário não abre

        def lugar(qid, acao):
            it = info[qid]
            return it["ec"] if acao == "entrega" else it["gc"] if acao == "aceita" else (it["oc"] or it["ic"])

        def zona(a):
            p = lugar(a[1], a[0])
            return int(p[0]) if p else None

        def chave(a, zmin):                  # zmin: a ação mais cedo de cada zona escolhe a zona
            p, z = lugar(a[1], a[0]), zona(a)
            if p and pos and z == int(pos[0]):
                return (0, dist2(p[1], pos[1]), TIPO[a[0]], rank[a[1]])
            # fora da zona, o mesmo continente antes (o fim de Felwood ia Ironforge, Barrens,
            # Ashenvale, Blasted Lands: duas travessias a mais)
            outro = bool(z and pos and continente(z, faction) != continente(int(pos[0]), faction))
            return (1, outro, zmin[z], TIPO[a[0]], rank[a[1]])

        while True:
            cand = [("entrega" if qid in done else "faz", qid) for qid in accepted - turned
                    if qid not in done or pode_entregar(qid)]
            cheio = aberto() >= DIARIO
            cand += [("aceita", qid) for qid in sel if qid not in accepted and qid not in turned
                     and qid not in desiste and (sel[qid]["classes"] or not cheio)
                     and prereqs_ok(sel[qid], qid) and not cinza(qid, real)]
            if not cand:                         # pré-req que nunca se entrega: pega assim mesmo
                resto = sorted((q for q in sel if q not in accepted and q not in turned
                                and q not in desiste and not cinza(q, real)), key=rank.get)
                if not resto:
                    break
                cand = [("aceita", resto[0])]
            zmin = {}
            for a in cand:
                zmin[zona(a)] = min(zmin.get(zona(a), rank[a[1]]), rank[a[1]])
            acao, qid = min(cand, key=lambda a: chave(a, zmin))
            if acao == "entrega":
                if entrega(qid):             # adiada para o fim: o jogador não foi lá
                    continue
            elif acao == "faz":
                emit_do(qid); done.add(qid)
            elif not aceitar(qid):
                esvazia()
                if not aceitar(qid):
                    desiste.add(qid)
                    continue
            pos = lugar(qid, acao) or pos
            if acao == "aceita" and qid in turned:   # entregue logo (com tempo, escolta): o jogador
                pos = lugar(qid, "entrega") or pos   # está onde entregou (Zamah: Thunder Bluff)

        for qid in sorted(adiadas, key=lambda q: (self.zone_name(info[q]["ec"][0]), q)):
            emit_turnin(qid)

        # ponto de voo: no primeiro passo que passa perto dele, não no começo (o de
        # Elwynn fica em Goldshire, longe de Northshire)
        fm = self.flight_master_in(area, faction) if fp else None
        if fm:
            npc, coord = fm
            perto = re.compile(r"\|goto %s (-?[\d.]+),(-?[\d.]+)" % re.escape(zname))
            for i, (txt, _) in enumerate(steps):
                m = perto.search(txt) if txt != "step" else None
                if m and dist2((float(m.group(1)), float(m.group(2))), coord) <= 8 ** 2:
                    j = max(k for k in range(i + 1) if steps[k][0] == "step")
                    steps[j:j] = [("step", None), ("  note {fp}%s" % esc(npc["name"]), None),
                                  ("  goto %s %s,%s |tip {vendor}" % (zname, coord[0], coord[1]), None)]
                    break

        # entrada: o nível de quem o guia supõe (a XP das quests fica atrás da faixa
        # nos 50: Western Plaguelands 53-57 chegava no 51 e o NPC não dava as quests), até o
        # que as primeiras quests sem gate pedem. Pelo nível das quests, Tirisfal 53-60 pedia
        # 52 com as primeiras de reqLevel 50 (a de 55 tem gate): 2,5 níveis de grind. E o gate
        # supôs `ini`: a entrada sobe até toda quest sem gate de nível caber na XP dali
        # (Stranglethorn 34-41 entrava no 28 com The Defense of Grom'gol, de 33, sem gate)
        sem_gate = [(q, xp) for q, xp in aceitas if "level>=" not in (info[q]["q"].get("cond_aceite") or "")]
        primeiras = [q for q, _ in sem_gate if not sel[q]["classes"]][:ENTRADA_QUESTS]
        entrada = min(ini, max((sel[q].get("reqLevel") or 0 for q in primeiras), default=ini))
        # com a folga do portão (`opcional`): sem ela a Chromie dava The Battle of Darrowshire
        # (req 55) a quem chegava no 54 e tinha 54,6
        while entrada < ini and any(nivel_por_xp(entrada, xp) - XP_FOLGA < (sel[q].get("reqLevel") or 0)
                                    for q, xp in sem_gate):
            entrada += 1
        if nivel_inicial and entrada > 1:
            steps[0:0] = [("step", None), ("  ding %d" % entrada, None)]

        # outro: viajar para a próxima zona
        if travel_to:
            tzname, tx, ty = travel_to
            steps += [("step", None), ("  note {travel}%s" % tzname, None),
                      ("  goto %s %s,%s" % (tzname, tx, ty), None)]

        return (self._render("Leveling", faction, title, steps, next_key),
                len(set(sel) - herd), [q for q in sel if q not in herd])

    # Fecho de pré-requisitos: inclui recursivamente a cadeia que habilita cada
    # quest (preGroup=todos; preSingle=um da mesma facção, o de menor nível).
    # Sem isso, um guia por-reputação lista "Ogre Heaven" sem os passos que a abrem.
    def prereq_closure(self, ids, faction):
        fac_ok = ({"A", "AH"} if faction == "A"
                  else {"H", "AH"} if faction == "H"
                  else {"A", "H", "AH"})
        out = set(int(i) for i in ids)
        frontier = list(out)
        while frontier:
            q = self.quests.get(str(frontier.pop()))
            if not q:
                continue
            for p in q["preGroup"]:
                pq = self.quests.get(str(p))
                if p not in out and pq and pq["faction"] in fac_ok:
                    out.add(p); frontier.append(p)
            if q["preSingle"] and not any(p in out for p in q["preSingle"]):
                cand = [p for p in q["preSingle"]
                        if self.quests.get(str(p)) and self.quests[str(p)]["faction"] in fac_ok]
                # variantes por classe/raça (An Earnest Proposition de cada classe): todas,
                # senão só a classe da escolhida seguia a cadeia; das outras, a de menor nível
                varia = [p for p in cand if self.quests[str(p)]["classes"] or self.quests[str(p)]["races"]]
                if len(varia) > 1:
                    escolhidas = varia
                elif cand:
                    escolhidas = [min(cand, key=lambda p: self.quests[str(p)]["questLevel"] or 99)]
                else:
                    escolhidas = []
                for p in escolhidas:
                    if p not in out:
                        out.add(p); frontier.append(p)
        return out

    # Fecho de pré-req DA MESMA ZONA: se uma quest selecionada exige outra cujo
    # giver nasce nesta zona, inclui a pré-req (senão o guia manda aceitar algo
    # ainda bloqueado). Só mesma zona — pré-req de outra zona vem pela cadeia.
    # `exclude`: o que outro guia ou faixa já leva não é puxado de novo (a segunda
    # passada de Stranglethorn refazia metade da primeira).
    def zone_prereq_closure(self, sel, area, faction, exclude=()):
        fac_ok = ({"A", "AH"} if faction == "A"
                  else {"H", "AH"} if faction == "H"
                  else {"A", "H", "AH"})
        frontier = list(sel.keys())
        while frontier:
            q = self.quests.get(str(frontier.pop()))
            if not q:
                continue
            for p in (q["preGroup"] + q["preSingle"]):
                pq = self.quests.get(str(p))
                if not pq or int(p) in sel or int(p) in exclude or pq["faction"] not in fac_ok:
                    continue
                if any(self.npc(n) and str(area) in (self.npc(n).get("spawns") or {})
                       for n in pq["startNpcs"]):
                    sel[int(p)] = pq
                    frontier.append(int(p))

    # Ondas topológicas: cada onda só tem quests cujos pré-req (do conjunto) já
    # saíram em ondas anteriores. Emitindo onda-a-onda (aceita->faz->ENTREGA), todo
    # pré-req é entregue antes da dependente ser aceita — impossível quebrar.
    @staticmethod
    def _opcoes_ok(sel, q, feitas):
        """preSingle: basta uma opção — mas, se as opções são variantes por classe/raça
        (An Earnest Proposition de cada classe), cada jogador faz a sua: a dependente
        espera todas, senão saía logo depois da do druida e as outras classes não a
        conseguiam aceitar."""
        opc = [p for p in sel[q]["preSingle"] if p in sel]
        if not opc:
            return True
        varia = [p for p in opc if sel[p]["classes"] or sel[p]["races"]]
        if len(varia) > 1:
            return all(p in feitas for p in varia)
        return any(p in feitas for p in opc)

    @staticmethod
    def _topo_waves(sel):
        ids = set(sel)
        # nextInChain: uma quest REPETÍVEL (daily) só destrava DEPOIS da quest que a
        # habilita, mas o banco não marca pré-req formal p/ ela (0 preGroup/preSingle).
        # Ex.: "Bomb Them Again!" (11023, daily) segue "Bombing Run" (11010) via
        # nextInChain. Sem isso a daily, sem pré-req, ia parar no COMEÇO do guia e o
        # NPC não a oferece ainda. Só afeta dailies cujo habilitador está no MESMO guia.
        chain_pred = {}
        for p in ids:
            r = sel[p].get("nextInChain")
            if r and int(r) in ids:
                chain_pred.setdefault(int(r), set()).add(p)
        antes = Router._antes(sel)
        done, waves, pend = set(), [], set(ids)
        while pend:
            wave = []
            for q in sorted(pend, key=lambda q: (sel[q]["questLevel"] or 0, q)):
                preG = [p for p in sel[q]["preGroup"] if p in ids]
                ok = all(p in done for p in preG) and Router._opcoes_ok(sel, q, done) \
                    and antes_ok(antes[q], done)
                if ok and (sel[q].get("specialFlags") or 0) & 1:   # daily: espera o habilitador
                    cp = chain_pred.get(q)
                    if cp:
                        ok = any(p in done for p in cp)
                ov = PREREQ_OVERRIDES.get(q)                        # gate que o banco não codifica
                if ok and ov and ov in ids:
                    ok = ov in done
                if ok:
                    wave.append(q)
            if not wave:                                    # ciclo/deadlock: despeja o resto
                wave = sorted(pend, key=lambda q: (sel[q]["questLevel"] or 0, q))
            waves.append(wave)
            for q in wave:
                done.add(q); pend.discard(q)
        return waves

    # Guia linear a partir de um conjunto explícito de quests.
    #   mode "chain": uma quest por vez (aceita -> faz -> entrega), na ordem em que
    #                 o pré-requisito libera e o nível do jogador alcança — classe,
    #                 atunação, reputação, feriado
    #   mode "phase": em ondas (aceita tudo -> faz tudo -> entrega tudo) — masmorra,
    #                 para entrar na instância com todas as quests no log
    def generate_linear(self, ids, faction, title, category, mode="phase", next_key=None, exclude=()):
        fac_ok = ({"A", "AH"} if faction == "A"
                  else {"H", "AH"} if faction == "H"
                  else {"A", "H", "AH"})
        sel = {}
        for qid in self.prereq_closure(ids, faction):       # inclui a cadeia de pré-req
            q = self.quests.get(str(qid))
            # `exclude`: o que outro guia leva (sintonização); quem depende dela fica atrás
            # de `completed()`
            if q and q["faction"] in fac_ok and not is_placeholder(q["name"]) and qid not in exclude:
                sel[int(qid)] = q
        if not sel:
            return None, 0, []
        # Quest de classe dada só numa zona inicial é da raça que nasce ali, mesmo que
        # o banco a abra a todas: Call of Earth de Durotar, Mulgore e Zephras são a
        # mesma escolha para o banco, e o xamã orc ficava só com a da ilha
        for qid, q in list(sel.items()):
            zonas = self._areas(q["startNpcs"], self.npc)
            z = int(next(iter(zonas))) if len(zonas) == 1 else None
            irma = any(x in sel and qid in sel[x]["exclusiveTo"] for x in q["exclusiveTo"])
            casa = RACA_DA_ZONA.get(z) or (RACA_DA_CAPITAL.get(z) if irma else None)
            if q["classes"] and casa and (q["races"] or ~0) & casa:
                sel[qid] = dict(q, races=(q["races"] or ~0) & casa)
        # guia self-contained: remove quest cujo preGroup (obrigatório) não coube
        # (facção incompatível / sem giver) — senão manda aceitar algo bloqueado.
        changed = True
        while changed:
            changed = False
            for qid in list(sel):
                if any(p not in sel for p in sel[qid]["preGroup"]):
                    del sel[qid]; changed = True
        # quest que não começa em lugar nenhum (sem NPC, objeto nem item) nunca
        # entra no log: o passo de entrega travaria o guia
        self._tira(sel, {qid for qid, q in sel.items()
                         if not (q["startNpcs"] or q["startObjects"] or q["startItems"])})
        # mutuamente exclusivas (Call of Earth em Durotar, Mulgore e Zephras): uma só
        if mode != "tiers":
            # (a de raças antes da de todos: Storm, Earth, and Fire de Bath'rah, para orc, tauren e troll,
            # fica, e a de Veyric sobra para quem ela não cobre)
            self._tira(sel, self._exclusivas(sel, lambda q: (sel[q]["reqLevel"] or 0, not sel[q]["races"], q), faction))
        if not sel:
            return None, 0, []
        info = self._info(sel, -1)
        self._sem_giver(sel, info)
        if not sel:
            return None, 0, []
        for qid, tokens in self._portoes(sel, faction).items():
            if tokens:
                info[qid]["q"] = sel[qid] = dict(sel[qid], portao=tokens)
        antes = self._antes(sel)
        steps = []
        emit_accept, emit_do, emit_turnin = self._emissores(info, steps, -1, faction)

        def onde(qid):                       # agrupa por zona, e dentro dela por posição
            gc = info[qid]["gc"]
            return (self.zone_name(gc[0]), gc[1][1], gc[1][0]) if gc else ("", 0, 0)

        def chave(qid):
            q = sel[qid]
            return (max(q.get("reqLevel") or 0, (q.get("questLevel") or 0) - 2),) + onde(qid) + (qid,)

        if mode in ("chain", "tiers"):
            # ordem topológica por prioridade: entre as liberadas, a de menor nível
            # (o guia de guerreiro não manda o nível 10 aceitar Naxxramas), e no
            # empate a da mesma zona — os anciões do Lunar Festival saem zona a zona
            feitas, pend, ult = set(), set(sel), None

            def segue(q):                    # continua a cadeia que acabou de fechar
                return ult is not None and chave(q)[0] <= chave(ult)[0] + 2 and \
                    (ult in sel[q]["preSingle"] + sel[q]["preGroup"] or any(ult in g for g in antes[q]))
            while pend:
                livres = [q for q in pend
                          if all(p in feitas for p in sel[q]["preGroup"] if p in sel)
                          and self._opcoes_ok(sel, q, feitas)
                          and antes_ok(antes[q], feitas)]
                qid = ult = min(livres or pend, key=lambda q: (not segue(q),) + chave(q))
                emit_accept(qid)
                emit_do(qid)
                emit_turnin(qid)
                feitas.add(qid)
                pend.discard(qid)
        else:
            for wave in self._topo_waves(sel):
                wave = sorted(wave, key=chave)
                for qid in wave:
                    emit_accept(qid)
                for qid in wave:
                    emit_do(qid)
                for qid in wave:
                    emit_turnin(qid)

        return self._render(category, faction, title, steps, next_key), len(sel), list(sel.keys())

    def _render(self, category, faction, title, steps, next_key=None):
        fac = {"A": "Alliance", "H": "Horde"}.get(faction)   # nil = neutro
        if fac:
            key = "%s/%s/%s" % (category, fac, esc(title))
        else:
            key = "%s/%s" % (category, esc(title))
        L = ["-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).",
             "local ADDON, ns = ...",
             "if not ns then return end",
             'ns:RegisterGuide("%s", {' % key]
        if fac:
            L.append('\tfaction = "%s",' % fac)
        L.append('\tauthor = "Lodestar Generator",')
        if next_key:
            L.append('\tnext = "%s",' % next_key)
        corpo = []
        for text, cond in steps:
            if text == "step":
                corpo.append("step")
                if cond:
                    corpo.append("  only " + cond)
            else:
                corpo.append(text)
        # revisão do conteúdo: o addon recua o passo salvo de quem estava no guia
        L.append('\trev = "%s",' % hashlib.sha1("\n".join(corpo).encode("utf-8")).hexdigest()[:8])
        L.append("}, [[")
        L += corpo
        L.append("]])")
        return "\n".join(L) + "\n"


def demo():
    """`python tools/router.py`: os casos do #57, no lógico e nos guias gerados."""
    def q(races=0, classes=0, nxt=None):
        return {"races": races, "classes": classes, "exclusiveTo": [], "nextInChain": nxt,
                "preSingle": [], "preGroup": []}
    horda, orc, tauren, xama = 8589934770, 2, 32, 64
    # Cutting Teeth: as duas anteriores servem a toda a Horda — basta uma
    a = Router._antes({4641: q(horda, nxt=788), 787: q(horda, nxt=788), 788: q(horda)})
    assert antes_ok(a[788], {4641}) and not antes_ok(a[788], set()), a
    # Call of Fire no guia de classe, já estreitada pela raça da zona — espera as duas
    a = Router._antes({1522: q(orc, xama, 1524), 1523: q(tauren, xama, 1524), 1524: q(horda, xama)})
    assert antes_ok(a[1524], {1522, 1523}) and not antes_ok(a[1524], {1522}), a
    # a de todos basta; a só do orc deixa o troll sem a dele
    a = Router._antes({1: q(horda, nxt=3), 2: q(orc, nxt=3), 3: q(horda)})
    assert antes_ok(a[3], {1}) and not antes_ok(a[3], {2}), a
    # verbo: mob hostil com `faction` mata; o "kill her" de Mother's Milk não é o Ragged John
    assert manda_matar("Kill 8 Mindless Zombies.", {"name": "Mindless Zombie", "faction": "AH", "npcFlags": 0})
    ragged = {"name": "Ragged John", "faction": "AH", "npcFlags": 3, "questStarts": [4866]}
    assert not manda_matar("Ragged John wants milk. Chances are you will have to kill her.", ragged)
    assert manda_matar("Slay Fleet Master Seahorn and Ragged John.", ragged)

    guias = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "Guides", "Leveling", "Horde")
    quests = json.load(open(os.path.join(BUILD, "quests.json"), encoding="utf-8"))

    def ler(*partes):
        """O guia pelo nome; a faixa no nome anda um nível ou dois a cada regeração (Dun Morogh
        5-10 virou 4-10): sem o arquivo, o da mesma zona que começa até 3 níveis de distância (o
        guia que sumiu não vira outra faixa da zona)."""
        cam = os.path.join(*partes)
        if not os.path.exists(cam):
            pasta, nome = os.path.split(cam)
            base, lo = re.match(r"(.+_)(\d+)-\d+\.lua$", nome).groups()
            perto = [f for f in os.listdir(pasta) if re.fullmatch(re.escape(base) + r"\d+-\d+\.lua", f)
                     and abs(int(f[len(base):].split("-")[0]) - int(lo)) <= 3]
            assert perto, "guia sumiu: %s" % nome
            cam = os.path.join(pasta, min(perto, key=lambda f: abs(int(f[len(base):].split("-")[0]) - int(lo))))
        return open(cam, encoding="utf-8").read()

    def passos(nome):
        txt = ler(guias, nome)
        return re.findall(r"^  (\w+) [^\n]*?##(\d+)", txt, re.M), txt
    ps, txt = passos("Tirisfal_Glades_5-12.lua")
    assert "  kill Mindless Zombie##1501 |q 364" in txt, "mob de matar virou talk"
    # Deathknell no nível 1: nada de reqLevel 2 antes de entregar The Mindless Ones
    ate = ps.index(("turnin", "364"))
    cedo = [i for v, i in ps[:ate] if v == "accept" and (quests[i]["reqLevel"] or 0) > 1]
    assert not cedo, "accept acima do nível em Deathknell: %s" % cedo
    # tarefa sem objetivo no banco (#59): as Webbed Victims antes de entregar
    assert ps.index(("talk", "271961")) < ps.index(("turnin", "98389")), "A Light in the Darkness sem passo"
    # Durotar: Cutting Teeth e Sting of the Scorpid antes de ir a Razor Hill; The New Horde fora
    ps, _ = passos("Durotar_5-12.lua")
    assert ps.index(("turnin", "789")) < ps.index(("turnin", "2161")), "o vale ficou para trás"
    assert ("accept", "787") not in ps, "The New Horde: ida a Orgrimmar por quest de nível 1"
    # Zonas iniciais (#59): depois de pisar na vila, nada a pegar na área de partida, fora
    # quest de classe (entregar lá é do dado: Rare Books sai de Goldshire para a abadia)
    classe = re.compile(r"^  only .*\b(Warrior|Paladin|Hunter|Rogue|Priest|Shaman|Mage|Warlock|Druid)\b", re.M)
    for guia, zona, partida, rp, vila, rv in (
            ("Horde/Durotar_5-12", "Durotar", (42.5, 67), 8, (52, 43), 6),
            ("Horde/Tirisfal_Glades_5-12", "Tirisfal Glades", (31, 66), 6, (60, 52), 6),
            ("Horde/Mulgore_4-10", "Mulgore", (44, 77), 6, (47, 61), 6),
            ("Alliance/Elwynn_Forest_3-10", "Elwynn Forest", (49, 41), 10, (43, 65), 7),
            ("Alliance/Dun_Morogh_5-10", "Dun Morogh", (28, 70), 8, (47, 52), 6),
            ("Alliance/Teldrassil_4-11", "Teldrassil", (58, 40), 8, (56, 60), 5)):
        txt = ler(guias, "..", guia + ".lua")
        na_vila, tarde = False, []
        for st in txt.split("\nstep\n")[1:]:
            m = re.search(r"\|goto %s ([\d.]+),([\d.]+)" % zona, st)
            if not m:
                continue
            xy = (float(m.group(1)), float(m.group(2)))
            na_vila = na_vila or dist2(xy, vila) < rv ** 2
            a = re.search(r"^  accept (.+?)##", st, re.M)
            if na_vila and a and not classe.search(st) and dist2(xy, partida) < rp ** 2:
                tarde.append(a.group(1))
        assert not tarde, "%s deixada para trás: %s" % (zona, tarde)
    # nível que só a rota travada dá: o aceite fica opcional por nível, o resto por `haveq`
    # (Gnogaine, de grupo: o nível dela, 27) — sem `ding` travando o guia. Search for Incendicite,
    # que era o caso aqui, pede Mining (Incendicite Mineral Vein) e sai
    txt = ler(guias, "..", "Alliance", "Dun_Morogh_13-26.lua")
    blocos = txt.split("\nstep\n")
    assert "##466" not in txt, "Search for Incendicite (Mining) no leveling"
    i = next(i for i, st in enumerate(blocos) if "accept Gnogaine##2926" in st)
    assert "only level>=27" in blocos[i], "aceite de nível 27 sem condição: %r" % blocos[i]
    assert all("haveq(2926)" in st for st in blocos[i + 1:] if "|q 2926" in st or "##2926" in st), "passo de 2926 sem haveq"
    assert not any("\n  ding " in "\n" + b for b in blocos[2:]), "ding travando o guia"
    # o `ding` da entrada vai até o que as primeiras quests pedem: Tanaris 53-60 pedia o 56
    tan = next(f for f in os.listdir(os.path.join(guias, "..", "Alliance")) if f.startswith("Tanaris_5"))
    t = ler(guias, "..", "Alliance", tan)
    assert int(re.search(r"^  ding (\d+)", t, re.M).group(1)) <= 52, "%s com ding alto" % tan
    # quest de grupo acima do nível da XP: opcional pelo nível dela, com o elite marcado num passo
    # dele (o `kill` sem `|q` com seta a prendia)
    t = ler(guias, "Tirisfal_Glades_53-60.lua")
    assert re.search(r"only level>=60\n(  talk [^\n]*\n)?  accept Alas, Andorhal##105", t), "Alas, Andorhal sem gate"
    assert "  kill Araj the Summoner##1852 |elite\n  goto Western Plaguelands 45.27,69.21" in t, "Araj sem |elite"
    # nenhum `kill` sem `|q` com seta num passo com outro alvo: prenderia a seta nele
    for fac in ("Alliance", "Horde"):
        for f in os.listdir(os.path.join(guias, "..", fac)):
            for b in ler(guias, "..", fac, f).split("\nstep\n"):
                presos = [l for l in b.split("\n") if l.startswith("  kill ") and "|goto" in l and "|q " not in l]
                alvos = [l for l in b.split("\n") if "|goto" in l and "|q " in l]
                assert not (presos and alvos), "%s: seta presa em %s" % (f, presos[0])
    # falar com vários NPCs: um goal por NPC, na ordem do texto; o último espera a quest inteira.
    # Depois de um NPC da outra facção, sem índice (a posição no cliente pode mudar)
    zeph_a = ler(guias, "..", "Alliance", "Zephras_Isle_5-12.lua")
    assert re.search(r"  talk Randal Emerson##275491 \|q 93963/1 [^\n]*\n  talk King Magni Bronzebeard##2784 "
                     r"\|q 93963/3 [^\n]*\n  talk High Tinker Mekkatorque##7937 \|q 93963/2 [^\n]*\n"
                     r"  talk Tyrande Whisperwind##7999 \|q 93963 ", zeph_a), "Exploring the Alliance só com o Randal"
    r = Router(load_data(), "A")
    fake = {"objText": ["Speak with Valennia, Ayessa, Elaadrin."], "objCreatures": [252383, 251968, 252475]}
    assert [f[2] for f in r.falas(fake)] == [1, None], r.falas(fake)
    # a saída da ilha vai com o guia dela: entrega a 94946 a Denaaris, portal, Bolvar, o tour
    ordem_a = [m.group(1) for m in re.finditer(r"^  (?:accept|turnin|collect|click) [^#\n]+##(\d+)", zeph_a, re.M)]
    assert ordem_a.index("94946", ordem_a.index("94946") + 1) < ordem_a.index("631299") < ordem_a.index("93963"), \
        "saída da ilha fora de ordem"
    zeph = ler(guias, "Zephras_Isle_5-12.lua")
    assert "accept Welcome to Azeroth##95350" in zeph, "95350 fora do guia da ilha"
    assert "##95350" not in ler(guias, "Mulgore_4-10.lua"), "95350 em Mulgore"
    assert re.search(r"  accept Blood Tithe##92679[^\n]*\n  talk Alvarion Windfield##252448 \|tip ", zeph), \
        "Blood Tithe: ouvir o Alvarion no aceite"
    assert "talk Elaadrin" not in zeph and "talk Ayessa Dawnsinger##251968 |q 92640 " in zeph, "Desperate Times da outra facção"
    assert "  kill Ferauu the Bludgeon##252863 |q 92693 " in zeph, "Standing Our Ground sem o chefe"
    assert "##5163" not in ler(guias, "Winterspring_54-59.lua"), \
        "Winterspring manda a Tanaris e Un'Goro pelo Mechanical Yeti"
    # vários itens: um goal por mensageiro, na ordem do mapa (o Runner, em Zoram'gar, por último);
    # quem entrega o item (não vende) é `talk` + `collect`; o último espera a quest inteira
    t = ler(guias, "The_Barrens_12-20.lua")
    assert re.search(r"Warsong Scout Update##16764 \|q 6543/1 [^\n]*\n  talk Warsong Outrider##12864\n  collect "
                     r"Warsong Outrider Update##16765 \|q 6543/3 [^\n]*\n  talk Warsong Runner##12863\n  collect "
                     r"Warsong Runner Update##16763 \|q 6543 ", t), "The Warsong Reports fora da ordem do mapa"
    # explorar: o `goto` ao ponto do servidor, com o nome do gatilho na dica
    assert "  goto The Barrens 45.06,22.53 |tip Explore the waters of the Forgotten Pools" in t, "The Forgotten Pools sem passo"
    # entrega numa zona 10+ níveis acima: Of Mice and Milk (15) ia ao Nesingwary
    assert "##93928" not in ler(guias, "..", "Alliance", "Westfall_12-18.lua"), \
        "Of Mice and Milk em Westfall"
    # The Legend of Stalvan inteira: a 68 (baú de Westfall, req 22) saía como poluente de
    # Westfall 12-18 e a 74 (Sealed Crate, objeto em Stormwind) não ia a guia nenhum
    alianca = "".join(ler(guias, "..", "Alliance", f) for f in os.listdir(os.path.join(guias, "..", "Alliance")))
    for q in (66, 67, 68, 69, 70, 72, 74, 75, 78, 79, 80, 97, 98):   # cada elo pego e entregue: o
        for v in ("accept", "turnin"):                                  # `completed` do seguinte abre
            assert re.search(r"%s [^#\n]*##%d\b" % (v, q), alianca), "Stalvan %d sem %s" % (q, v)
    # item só de profissão sai, também como pré-req de outra (That's Asking A Lot: Thorium Bar e
    # peças de engenheiro); o que a quest faz (nível de item 1) fica: Pamela's Doll vai aos pedaços
    assert not re.search(r"accept [^#\n]*##(6026|713)\b", alianca), "quest de profissão no leveling"
    assert re.search(r"collect Pamela's Doll##12885 \|q 5149 \|goto Eastern Plaguelands [\d.,]+ \|tip Combine ", alianca), \
        "Pamela's Doll sem os pedaços"
    assert "##5206" in alianca and "##91738" in alianca, "Resonating Skull / Thunder Applejack fora"
    # tecido cai de humanoide e não é de profissão (The Tome of Divinity, do paladino)
    assert re.search(r"collect 10 Linen Cloth##2589 \|q 1644 [^\n]*\|tip \{dropsfrom\}humanoids", alianca), \
        "The Tome of Divinity sem o Linen Cloth"
    horda = "".join(ler(guias, f) for f in os.listdir(guias))
    # fora do leveling: masmorra (Fire Hardened Mail, Vyletongue Corruption), raide (Order Must Be
    # Restored, A Humble Offering), classe noutro continente (Tome of the Cabal), baú aleatório (Lore
    # for a Price), sem texto nem fonte (A Sealed Crate), sem objetivo no banco (My Little Friends)
    for q in (1701, 7041, 7029, 6187, 9248, 1802, 2199, 91899, 93176, 92819):
        assert not re.search(r"accept [^#\n]*##%d\b" % q, alianca + horda), "%d no leveling" % q
    # com tempo: entregue no passo seguinte ao aceite, e a ida a Thunder Bluff junta as de lá
    t = ler(guias, "The_Barrens_12-20.lua")
    assert re.search(r"accept Apothecary Zamah##853 [^\n]*\nstep\n(?:  note [^\n]*\n)?  talk [^\n]*\n  turnin Apothecary Zamah##853", t), \
        "Apothecary Zamah sem a entrega logo depois"
    assert t.index("turnin Hamuul Runetotem##1489") - t.index("turnin Apothecary Zamah##853") < 3000, \
        "duas idas a Thunder Bluff"
    # Shen'dralas é de Desolace: a Horda pega Ravaging Ravagers com o Nerlokh
    assert "accept Ravaging Ravagers##93035" in ler(guias, "Desolace_33-39.lua"), "Shen'dralas fora de Desolace"
    # o giver da capital da gente da zona: Speak with Un'thuwa em Orgrimmar, para Durotar
    assert re.search(r"accept Speak with Un'thuwa##1883 \|goto Orgrimmar", ler(guias, "Durotar_5-12.lua")), \
        "Un'thuwa em Thunder Bluff"
    # Marla's Last Wish: o Samuel Fipps num passo dele, e a seta na lápide no seguinte
    txt = ler(guias, "Tirisfal_Glades_5-12.lua")
    assert re.search(r"  kill Samuel Fipps##1919\n  goto Tirisfal Glades 36.68,61.56\nstep\n[^\n]*\n"
                     r"  click Marla's Grave##178090 \|q 6395 \|goto Tirisfal Glades 31.17,65.08", txt), "Marla sem Samuel Fipps"
    # entrega noutra zona de que nada depende: no fim (Flight to Auberdine, depois de Darnassus)
    txt = ler(guias, "..", "Alliance", "Teldrassil_4-11.lua")
    ultima = max(m.start() for m in re.finditer(r"\|goto (Teldrassil|Darnassus) ", txt))
    assert txt.index("turnin Flight to Auberdine##6342") > ultima, "ida a Auberdine no meio de Teldrassil"
    # a cadeia intercala os continentes: o morto-vivo passa por The Barrens antes de Hillsbrad 32-39
    prox = {}
    for f in os.listdir(guias):
        t = ler(guias, f)
        k, n = re.search(r'RegisterGuide\("([^"]+)"', t), re.search(r'next = "([^"]+)"', t)
        prox[k.group(1)] = n.group(1) if n else None
    k, cadeia = "Leveling/Horde/Tirisfal Glades (5-12)", []
    while k in prox and k not in cadeia:
        cadeia.append(k)
        k = prox[k]
    barrens = next(i for i, g in enumerate(cadeia) if re.match(r"Leveling/Horde/The Barrens \(1\d-", g))
    hills = next(i for i, g in enumerate(cadeia) if g.startswith("Leveling/Horde/Hillsbrad Foothills (3"))
    assert barrens < hills, "cadeia do morto-vivo sem Kalimdor antes de Hillsbrad 32-39: %s" % cadeia[:8]
    print("ok: router — antecessores alternativos, verbo kill, nível, tarefa sem objetivo, rota das zonas "
          "iniciais, ding, vários alvos, saída da ilha, explorar, cadeia intercalada")


if __name__ == "__main__":
    demo()
