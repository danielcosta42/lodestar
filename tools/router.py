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
    r"\b(wrangle|capture|subdue|tame|snag|ensnare|douse|tag)\b|"
    r"\buse\s+(?:the\s+|your\s+|a\s+)?[\w' ]{2,28}?\s+on\b", re.I)
# se o texto MANDA MATAR, a criatura é kill e o "use ... on" é num objeto à parte
# (ex.: "Kill Zuluhed... Use the Key on the Chains") — não marcar a criatura como "use".
_KILLQ = re.compile(r"\b(kill|slay|slaughter|destroy|defeat|assassinate|eliminate)\b", re.I)
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
# (bit 32 = DeathKnight, inexistente no TBC.)
CLASS_BIT = {1: "Warrior", 2: "Paladin", 4: "Hunter", 8: "Rogue", 16: "Priest",
             64: "Shaman", 128: "Mage", 256: "Warlock", 1024: "Druid"}

HUB_MERGE_DIST = 6.0    # % da zona: pontos mais próximos que isso viram um hub

# zoneOrSort que não é rota de leveling: feriado/evento (-22 Seasonal, -284, -364
# Darkmoon, -365 guerra de AQ, -366, -368, -369), reputação e lendária de fim de
# jogo (-367, -344, -1), profissão (-24, -101, -121, -181, -182, -201, -264, -304,
# -324) e campo de batalha (AV 2597, WSG 3277, AB 3358). Têm guia próprio no
# gen_special ou nenhum. Classe (-61, -141...) fica — sai com `only <Classe>` —, e
# o Camping do Forever (-666) também: é o tutorial da zona inicial.
FORA_DO_LEVELING = {-22, -284, -364, -365, -366, -367, -368, -369, -344, -1,
                    -24, -101, -121, -181, -182, -201, -264, -304, -324,
                    2597, 3277, 3358}
# entregar marca de campo de batalha ou doar pano é reputação, não rota: Concerted
# Efforts fazia do Alterac da Aliança um guia "34-60"
SO_REPUTACAO = {20558, 20559, 20560, 2592, 4306, 4338, 14047}

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
def load_data():
    d = {}
    for name in ("quests", "npcs", "objects", "zones"):
        with open(os.path.join(BUILD, f"{name}.json"), encoding="utf-8") as fh:
            d[name] = json.load(fh)
    p = os.path.join(BUILD, "items.json")   # fonte dos objItems (opcional)
    d["items"] = json.load(open(p, encoding="utf-8")) if os.path.exists(p) else {}
    return d


# ---------------------------------------------------------------------------
# helpers de coord
# ---------------------------------------------------------------------------
def dist2(a, b):
    return (a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2


def single_bit(mask):
    return bool(mask) and (mask & (mask - 1)) == 0


# As raças jogáveis de cada facção no Forever. Quest de algumas delas (anão e
# gnomo) sai como "not Human not NightElf not Skyborne": o `only` é um E de tokens.
RACAS = {"A": {1: "Human", 4: "Dwarf", 8: "NightElf", 64: "Gnome", 1 << 32: "Skyborne"},
         "H": {2: "Orc", 16: "Undead", 32: "Tauren", 128: "Troll", 1 << 33: "Skyborne"}}

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
    return " ".join(conds + sorted(q.get("portao") or ()))


def esc(name):
    return (name or "").replace("]", "").replace("|", "").strip()


class Router:
    def __init__(self, data, faction=None):
        self.npcs = data["npcs"]
        self.quests = data["quests"]
        if faction in ("A", "H"):
            self.quests = {k: self._lado(q, faction) for k, q in self.quests.items()}
        self.objects = data["objects"]
        self.zones = data["zones"]
        self.items = data.get("items") or {}
        # índice nome->npc (com spawn) p/ o fallback de fonte de item por nome
        self._npc_by_name = {}
        for nid, n in self.npcs.items():
            nm = n.get("name")
            if nm and n.get("spawns"):
                self._npc_by_name.setdefault(nm.lower(), int(nid))

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

    def item_source(self, iid, area=-1):
        """De onde o item de objetivo vem: (kind, id, nome, spawn) ou None.
        Fonte que nasce em `area` (a zona do guia) vem antes de qualquer outra — o
        Murloc Eye de Silverpine não pode apontar para os Wetlands. Depois:
          1) mob COMUM (rank normal): alvo direto e confiável (sempre up).
          2) senão (só elite/rare/worldboss, ou nenhuma criatura): OBJETO/nó/baú —
             fonte inequívoca e sempre presente (o Bloodpetal Sprout é colhido no
             chão, não do Devilsaur elite).
          3) o elite/rare/worldboss, se for a única criatura.
          4) VENDEDOR.
          5) Fallback: item 'X's ...' -> NPC 'X' (baú de mob nomeado, ex.: Maggoc).
        Entre criaturas de mesma confiabilidade, mantém a 1ª da lista (estável)."""
        it = self.items.get(str(iid))
        if not it:
            return None

        def longe(sp):
            return 0 if area == -1 or (sp and int(sp[0]) == area) else 1
        best_npc = None                       # (fora da zona, penalty, id, nome, spawn)
        for nid in (it.get("npc") or []):
            ent = self.npc(nid)
            sp = self.best_spawn(ent, area) if ent else None
            if not sp:
                continue
            rank = ent.get("rank") or 0
            penalty = 2 if rank in (3, 4) else (1 if rank in (1, 2) else 0)
            cand = (longe(sp), penalty, nid, ent["name"], sp)
            if best_npc is None or cand[:2] < best_npc[:2]:
                best_npc = cand
        obj = None
        for oid in (it.get("obj") or []):
            ent = self.obj(oid)
            sp = self.best_spawn(ent, area) if ent else None
            if sp and (obj is None or longe(sp) < obj[0]):
                obj = (longe(sp), oid, ent["name"], sp)
        if best_npc and best_npc[1] == 0 and (not obj or best_npc[0] <= obj[0]):
            return ("kill",) + best_npc[2:]      # mob comum -> alvo direto
        if obj and (not best_npc or obj[0] <= best_npc[0]):
            return ("collect",) + obj[1:]        # sem mob comum por perto -> nó/objeto
        if best_npc:                           # sobrou o elite/rare/boss
            return ("kill",) + best_npc[2:]
        # vendedor: o da zona, senão o do mesmo continente (Soothing Spices tem em
        # Theramore; o primeiro da lista ficava em Duskwood)
        vendas = []
        for vid in (it.get("vendor") or []):
            ent = self.npc(vid)
            sp = self.best_spawn(ent, area) if ent else None
            if sp:
                vendas.append(((longe(sp), area != -1 and continente(sp[0], "A") != continente(area, "A")),
                               vid, ent["name"], sp))
        if vendas:
            return ("buy",) + min(vendas, key=lambda v: v[0])[1:]
        m = re.match(r"^(.+?)'s ", it.get("name") or "")
        if m:
            nid = self._npc_by_name.get(m.group(1).lower())
            if nid:
                return ("kill", nid, self.npc(nid)["name"], self.best_spawn(self.npc(nid), -1))
        return None

    def source_names(self, iid, limit=3):
        """Nomes das fontes do item p/ o tip 'Dropa de: A, B, C'. Mobs comuns
        primeiro (rare/boss por último), depois nós/objetos. Dedup, cap em `limit`."""
        it = self.items.get(str(iid)) or {}
        scored = []
        for n in (it.get("npc") or []):
            e = self.npc(n)
            if e and e.get("name"):
                rank = e.get("rank") or 0
                pen = 2 if rank in (3, 4) else (1 if rank == 2 else 0)
                scored.append((pen, e["name"]))
        scored.sort(key=lambda t: t[0])
        names = []
        for _, nm in scored:
            if nm not in names:
                names.append(nm)
        for o in (it.get("obj") or []):
            e = self.obj(o)
            if e and e.get("name") and e["name"] not in names:
                names.append(e["name"])
        return names[:limit]

    def _goto_str(self, sp):
        if not sp:
            return ""
        a, c = sp
        return " |goto %s %s,%s" % (self.zone_name(a), c[0], c[1])

    def _item_step(self, iid, q, qid, fallback_sp, area=-1):
        """Passo enriquecido de coletar item (estilo Zygor). Formas:
          A)  matar mob nomeado cujo baú/objeto aparece após a morte
              (via_name + objeto):        kill + click + collect
          A') item 'X's ...' de matar X, sem objeto:  kill + collect
          B)  drop DIRETO de elite/rare/boss (group_tag != ''): kill |elite + collect
          -)  resto (objeto estático / vendor / mob comum): collect/buy + tip
        Suprime tip {dropsfrom} circular (fonte == nome do item)."""
        item = self.items.get(str(iid)) or {}
        iname = item.get("name") or q["name"]
        src = self.item_source(iid, area)
        ql = q.get("questLevel") or 0
        cnt = obj_count(q["objText"])
        cstr = (cnt + " ") if cnt else ""

        # --- item obtido MATANDO um mob (baú-após-kill, ou drop direto de elite) ---
        if src and src[0] == "kill":
            nid, mob = src[1], src[2]
            via_name = nid not in (item.get("npc") or [])   # resolvido pelo NOME ("X's...") -> baú/named
            tag = self.group_tag(nid, ql)                   # ' |elite'/' |raid'/'' (gated por nível)
            sp = src[3]
            world = bool(sp) and not (sp[1][0] == -1 and sp[1][1] == -1)
            if (via_name or tag) and world:
                # MUNDO ABERTO: trio kill (+click) + collect; goto nas DUAS linhas
                # (cada goal mantém waypoint -> não vira NOGOTO; coord real -> não INSTLOC).
                goto = self._goto_str(sp)
                lines = ["  kill %s##%d%s%s" % (esc(mob), nid, goto, tag)]
                objs = item.get("obj") or []
                if via_name and objs:                       # baú/objeto que aparece após a morte
                    ob = self.obj(objs[0])
                    if ob and ob.get("name") and not is_marker(ob["name"]):
                        lines.append("  click %s##%d |tip {spawnsafter}%s"
                                     % (esc(ob["name"]), objs[0], esc(mob)))
                lines.append("  collect %s%s##%d |q %d%s" % (cstr, esc(iname), iid, qid, goto))
                return "\n".join(lines)
            if tag:
                # DENTRO DE INSTÂNCIA (goto -1,-1): sem linha kill redundante (não há
                # coord de mundo) — só marca grupo/raide no collect; mob fica no tip.
                names = self.source_names(iid)
                if names and names[0].strip().lower() == iname.strip().lower():
                    names = []
                tip = (" |tip {dropsfrom}" + ", ".join(names)) if names else ""
                return "  collect %s%s##%d |q %d%s%s%s" % (
                    cstr, esc(iname), iid, qid, self._goto_str(sp or fallback_sp), tag, tip)

        # --- caminho normal: objeto estático / vendor / mob comum ---
        sp = src[3] if src else fallback_sp
        verb = "buy" if (src and src[0] == "buy") else "collect"
        names = self.source_names(iid)
        if names and names[0].strip().lower() == iname.strip().lower():
            names = []                                      # tip circular (fonte == item): descarta
        tip = (" |tip {dropsfrom}" + ", ".join(names)) if names else ""
        return "  %s %s%s##%d |q %d%s%s" % (verb, cstr, esc(iname), iid, qid, self._goto_str(sp), tip)


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

    @staticmethod
    def _portoes(sel):
        """{quest: condições do passo}. Pré-requisito que vem de fora do guia (outra
        zona, masmorra, classe) vira `completed(p)`: o passo só aparece para quem já o
        entregou, em vez de travar num NPC que não abre a quest. Quest exclusiva com
        outra (exclusiveTo) leva `not completed(x) not haveq(x)`: Call of Fire de
        Durotar e a de Orgrimmar (em The Barrens, o guia seguinte) — feita uma, a
        outra some em vez de travar; breadcrumb some depois da quest que a fecha.
        Quem depende dela dentro do guia herda tudo, menos o que fala dela mesma."""
        memo = {}

        def portao(qid, pilha):
            if qid in memo:
                return memo[qid]
            if qid in pilha:                 # ciclo no banco
                return frozenset()
            q, pilha = sel[qid], pilha | {qid}
            out = {"not %s(%d)" % (f, x) for x in q["exclusiveTo"] if x != qid
                   for f in ("completed", "haveq")}
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
        """{quest: o que tem de ser entregue antes dela} além do pré-req do banco: a
        breadcrumb (fecha quando a quest entra no log) e, para quest sem pré-req, a
        anterior pelo nextInChain (a que dá o item que a inicia)."""
        antes = defaultdict(list)
        for b, q in sel.items():
            for x in q["exclusiveTo"]:
                if x in sel and b not in sel[x]["exclusiveTo"]:
                    antes[x].append(b)
            x = q.get("nextInChain")
            if x in sel and not any(p in sel for p in sel[x]["preSingle"] + sel[x]["preGroup"]):
                antes[x].append(b)
        return antes

    def _areas(self, ids, tabela):
        out = set()
        for i in ids:
            out |= set(((tabela(i) or {}).get("spawns") or {}))
        return out

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
        return dentro(alvo) or dentro(rota) or dentro(self._areas(q["endNpcs"], self.npc))

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
        # senão: a zona com mais spawns (mais provável de ser "a" casa dele)
        best_area, best_pts = max(spawns.items(), key=lambda kv: len(kv[1]))
        return int(best_area), self._centroid(best_pts)

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
                and not (q["objItems"] and set(q["objItems"]) <= SO_REPUTACAO))

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
            for n in q["startNpcs"]:
                npc = self.npc(n)
                if npc and str(area) in npc.get("spawns", {}):
                    anchored = True
                    break
            if not anchored:
                for o in q["startObjects"]:
                    ob = self.obj(o)
                    if ob and str(area) in ob.get("spawns", {}):
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
    def build_hubs(self, sel, area):
        pts = []
        for qid, q in sel.items():
            for n in q["startNpcs"] + q["endNpcs"]:
                npc = self.npc(n)
                if npc and str(area) in npc.get("spawns", {}):
                    pts.append(self._centroid(npc["spawns"][str(area)]))
        if not pts:
            return []
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

    @staticmethod
    def hub_path(hubs, start):
        # vizinho-mais-próximo a partir do hub inicial
        remaining = set(range(len(hubs)))
        path = []
        cur = start
        while remaining:
            cur = min(remaining, key=lambda h: dist2(hubs[cur], hubs[h]))
            path.append(cur)
            remaining.discard(cur)
        return path

    # -- passos -------------------------------------------------------------
    def _emissores(self, info, steps, area, faction):
        """accept/do/turnin de uma quest, iguais nos dois geradores (zona e linear).
        `area` é a zona do guia (-1 no guia linear): spawn e fonte de item preferem ela."""
        def goto_str(spawn):
            if not spawn:
                return ""
            a, c = spawn
            return " |goto %s %s,%s" % (self.zone_name(a), c[0], c[1])

        def abre(q):
            steps.append(("step", only_cond(q, faction)))

        def accept(qid):
            it = info[qid]; q = it["q"]
            if not it["giver"]:
                return False
            abre(q)
            if it.get("giver_kind") == "item":       # quest começa ao LOOTAR o item da fonte
                iv = it.get("item_verb") or "kill"
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
            return True

        def do(qid):
            it = info[qid]; q = it["q"]
            objc, obji, objo = q["objCreatures"], q["objItems"], q["objObjects"]
            if not (objc or obji or objo):
                return                       # sem objetivo (entrega/talk): o turnin já leva lá
            ql = q["questLevel"] or q["reqLevel"] or 0
            abre(q)
            if q["objText"]:                 # SEMPRE mostra "como fazer"
                steps.append(("  note " + esc(q["objText"][0]), None))
            if is_craft_quest(q["name"]) and obji:     # fabricar item, não lootar
                iname = (self.items.get(str(obji[0])) or {}).get("name") or q["name"]
                steps.append(("  get %s##%d |q %d |tip Craft this (or buy it), then deliver it." %
                              (esc(iname), obji[0], qid), None))
                return
            useq = is_use_quest(q["objText"])   # "wrangle/capture/use X on" -> verbo "use"
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
            if alvo is not None and okind == "kill":
                # NPC amigo não se mata: "Speak with", "Listen to", alimentar, curar —
                # o objetivo é de criatura no banco, o passo é falar com ela
                verb = "use" if useq else ("talk" if alvo.get("faction") else "kill")
                gt = self.group_tag(oid, ql) if verb != "talk" else ""
                ut = " |tip {useit}" if useq else ""
                steps.append(("  %s %s##%d |q %d%s%s%s" % (verb, esc(alvo["name"]), oid, qid,
                              goto_str(oc), gt, ut), None))
            elif alvo is not None:
                steps.append(("  collect %s##%d |q %d%s" % (esc(alvo["name"]), oid, qid, goto_str(oc)), None))
            elif obji:                       # OBJETIVO DE ITEM: "colete N <item>" + fontes no tip
                steps.append((self._item_step(obji[0], q, qid, it["gc"], area), None))
            else:
                steps.append(("  get %s |q %d%s" % (esc(q["name"]), qid, goto_str(it["gc"])), None))

        def turnin(qid):
            it = info[qid]; q = it["q"]
            if not (it["ender"] or it["eobj"]):
                return False
            abre(q)
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
                    if cand and self.best_spawn(cand, area):
                        giver, giver_id, giver_kind = cand, o, "object"
                        break
            if giver is None:                       # início por ITEM (lootar a fonte)
                for iid in q["startItems"]:
                    src = self.item_source(iid, area)
                    if src and src[3]:
                        giver, giver_id = {"name": src[2]}, src[1]
                        giver_kind, item_verb, gc_o = "item", src[0], src[3]
                        break
            if giver is None:                       # giver noutra zona (capital)
                for n in q["startNpcs"]:
                    cand = self.npc(n)
                    if cand and cand.get("spawns"):
                        giver, giver_id = cand, n
                        break
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
            if otarget is None:
                for iid in q["objItems"][:1]:
                    src = self.item_source(iid, area)
                    ic = src[3] if src and src[0] != "buy" else None
            info[qid] = {"q": q, "giver": giver, "giver_id": giver_id, "giver_kind": giver_kind,
                         "item_verb": item_verb, "ender": ender, "ender_id": ender_id, "eobj": eobj,
                         "gc": gc, "ec": ec, "oc": ocoord, "ic": ic, "otarget": otarget,
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
        anterior que o entregue): nunca entra no log, e a entrega travaria o guia."""
        for qid in self._tira(sel, {q for q, it in info.items() if not it["giver"]}):
            del info[qid]

    # -- geração de uma zona ------------------------------------------------
    def generate_zone(self, area, faction, title, level_max, next_key=None, exclude=None,
                      travel_to=None, include=None, fp=True, feitas=None, nivel_inicial=None,
                      fixas=None):
        """Guia de uma zona. `exclude`: quests de outros guias/faixas. `feitas`: as
        que guias anteriores já entregam (pré-requisito delas vale). `nivel_inicial`:
        o nível de quem começa o guia (1 na zona inicial). `fixas`: o conjunto exato de
        quests (a seleção já foi feita)."""
        exclude = set(exclude or ())
        feitas = set(feitas or ())
        if fixas is not None:
            # passada final: exatamente o que a atribuição deu a este guia — refiltrar
            # aqui (faixa, poluente) perdia o que a realocação trouxe
            sel = {int(q): self.quests[str(q)] for q in fixas if str(q) in self.quests}
            importadas = set(sel)
            # ...menos a de classe acima do teto do que sobrou: a realocação baixa o
            # teto (Barrens 14-21 com as de bruxo nível 30), e o accept travaria para
            # o bruxo. Ela tem o guia de classe.
            lv = sorted(v["questLevel"] for v in sel.values() if (v["questLevel"] or 0) > 0
                        and not v["classes"])
            if lv:
                teto = lv[min(len(lv) - 1, int(len(lv) * 0.85))] + 3
                self._tira(sel, {q for q, v in sel.items()
                                 if v["classes"] and (v.get("reqLevel") or 0) > teto})
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
            # o fecho pode trazer de volta quest de masmorra (pré-req de uma da zona)
            self._tira(sel, {qid for qid, q in sel.items() if self.em_masmorra(q)})
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
                for qid in [q for q, v in sel.items()
                            if (v.get("reqLevel") or 0) > hi + 3 or (v["questLevel"] or 0) > hi + 12]:
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
        if not sel:
            return None, 0, []
        zname = self.zone_name(area)
        hubs = self.build_hubs(sel, area)
        info = self._info(sel, area)
        self._sem_giver(sel, info)

        # Quest cujo objetivo ou entrega fica em outro continente não é rota desta
        # zona: no meio de Badlands, "entregue em Thousand Needles" é atravessar o
        # mundo. Sai do guia, e com ela o que depende dela. Capital da própria
        # facção fica (Darkshore -> Stormwind é barco e pedra de lar, rotina).
        cont = continente(area, faction)
        casa = CAPITAIS[faction]

        def longe(it):
            return any(p and int(p[0]) not in casa and continente(p[0], faction) != cont
                       for p in (it["ec"], it["oc"], it["ic"]))
        for qid in self._tira(sel, {qid for qid, it in info.items() if longe(it)}):
            del info[qid]
        if not sel:
            return None, 0, []
        for qid, tokens in self._portoes(sel).items():
            if tokens:
                info[qid]["q"] = sel[qid] = dict(sel[qid], portao=tokens)

        # hub só para ponto DENTRO da zona: Thurman, de Stormwind, não pode cair no
        # hub da fazenda Stonefield só porque a coordenada crua é parecida
        def hub(sp):
            return self.nearest_hub(sp[1], hubs) if sp and int(sp[0]) == area else None
        for it in info.values():
            it["ghub"], it["ehub"] = hub(it["gc"]), hub(it["ec"])
            it["ohub"] = hub(it["oc"] or it["ic"])
            it["fora"] = bool((it["oc"] or it["ic"]) and it["ohub"] is None)   # objetivo noutra zona

        # Nível estimado do jogador: começa no de quem entra no guia e sobe até o
        # alto da faixa conforme as quests são entregues. A quest espera até ele
        # alcançar o nível mínimo E chegar perto do nível dela (mob de nível 9 para
        # quem tem 3 é morte certa, mesmo que o NPC já ofereça).
        niveis = sorted(v["questLevel"] for v in sel.values() if (v["questLevel"] or 0) > 0) or [1]
        n_lo = niveis[int(len(niveis) * 0.15)]
        n_hi = niveis[min(len(niveis) - 1, int(len(niveis) * 0.85))]
        ini = n_lo if nivel_inicial is None else nivel_inicial
        accepted, done, turned = set(), set(), set()

        def precisa(q):
            return max(q.get("reqLevel") or 0, (q.get("questLevel") or 0) - 2)

        def nivel_ok(q):
            return precisa(q) <= ini + (max(n_hi, ini) - ini) * len(turned) / len(sel) + 1

        all_ids = set(sel)
        antes = self._antes(sel)

        def prereqs_ok(q, qid):
            preG = [p for p in q["preGroup"] if p in all_ids]
            preS = [p for p in q["preSingle"] if p in all_ids]
            ok = all(p in turned for p in preG) and (not preS or any(p in turned for p in preS)) \
                and all(b in turned for b in antes[qid])
            ov = PREREQ_OVERRIDES.get(qid)                     # gate que o banco não codifica
            if ok and ov and ov in all_ids:
                ok = ov in turned
            return ok

        steps = []
        emit_accept, emit_do, emit_turnin = self._emissores(info, steps, area, faction)

        def tem_objetivo(q):
            return bool(q["objCreatures"] or q["objItems"] or q["objObjects"])

        def aceitar(qid):
            if emit_accept(qid):
                accepted.add(qid)
                it = info[qid]
                if it["ohub"] is None and not it["fora"]:       # objetivo sem lugar: "como fazer" aqui
                    if tem_objetivo(it["q"]):
                        emit_do(qid)
                    done.add(qid)
                return True
            return False

        # Quests importadas (giver na capital) com objetivo aqui: pegar antes de
        # entrar na zona — "passe em Stormwind antes de ir a Westfall". Na zona
        # inicial não: ninguém vai à capital no nível 1.
        if nivel_inicial is None or nivel_inicial > 1:
            for qid in sorted(importadas & set(sel), key=lambda q: (precisa(sel[q]), q)):
                if info[qid]["ghub"] is None and prereqs_ok(sel[qid], qid) and nivel_ok(sel[qid]):
                    aceitar(qid)

        def visita(h):
            """Fecha o hub: entrega, aceita e faz o que dá até nada mudar."""
            algo, mexeu = False, True
            while mexeu:
                mexeu = False
                for qid in sorted(accepted):
                    it = info[qid]
                    if qid in done and qid not in turned and it["ehub"] == h and (it["ender"] or it["eobj"]):
                        emit_turnin(qid); turned.add(qid); accepted.discard(qid); mexeu = True
                for qid in sorted(sel, key=lambda q: (precisa(sel[q]), q)):
                    it = info[qid]
                    if qid in accepted or qid in turned or it["ghub"] != h:
                        continue
                    if prereqs_ok(it["q"], qid) and nivel_ok(it["q"]) and aceitar(qid):
                        mexeu = True
                for qid in sorted(accepted):
                    if qid not in done and info[qid]["ohub"] == h:
                        emit_do(qid); done.add(qid); mexeu = True
                algo = algo or mexeu
            return algo

        lowest = min(sel, key=lambda q: (precisa(sel[q]), q))
        start = info[lowest]["ghub"] or 0
        path = self.hub_path(hubs, start) if hubs else []
        for _ in range(16):
            if not any([visita(h) for h in path]):
                break

        # Sobras, num bloco no fim: o que é de fora da zona (entrega na capital,
        # objetivo noutra zona) e o que o nível ainda não deixou. Ondas topológicas,
        # entregando o pré-req antes de aceitar a dependente.
        def pode_entregar(qid):
            return qid not in turned and (info[qid]["ender"] or info[qid]["eobj"])
        for wave in self._topo_waves(sel):
            wave = sorted(wave, key=lambda q: (precisa(sel[q]), q))
            for qid in wave:
                if qid in accepted and qid in done and pode_entregar(qid):
                    emit_turnin(qid); turned.add(qid)
            for qid in wave:
                if qid not in accepted and qid not in turned:
                    aceitar(qid)
            for qid in wave:
                if qid in accepted and qid not in done:
                    emit_do(qid); done.add(qid)
            for qid in wave:
                if pode_entregar(qid):
                    emit_turnin(qid); turned.add(qid)

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

        # outro: viajar para a próxima zona
        if travel_to:
            tzname, tx, ty = travel_to
            steps += [("step", None), ("  note {travel}%s" % tzname, None),
                      ("  goto %s %s,%s" % (tzname, tx, ty), None)]

        return (self._render("Leveling", faction, title, steps, next_key),
                len(sel), list(sel.keys()))

    @staticmethod
    def _topo(sel):
        ids = set(sel.keys())
        done, order = set(), []
        pend = set(ids)
        while pend:
            ready = [q for q in pend
                     if all(p in done for p in (sel[q]["preSingle"] + sel[q]["preGroup"]) if p in ids)]
            if not ready:
                ready = list(pend)
            ready.sort(key=lambda q: (sel[q]["questLevel"] or 0, q))
            for q in ready:
                order.append(q); done.add(q); pend.discard(q)
        return order

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
                if cand:
                    chosen = min(cand, key=lambda p: self.quests[str(p)]["questLevel"] or 99)
                    out.add(chosen); frontier.append(chosen)
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
                preS = [p for p in sel[q]["preSingle"] if p in ids]
                ok = all(p in done for p in preG) and (not preS or any(p in done for p in preS)) \
                    and all(b in done for b in antes[q])
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
    def generate_linear(self, ids, faction, title, category, mode="phase", next_key=None):
        fac_ok = ({"A", "AH"} if faction == "A"
                  else {"H", "AH"} if faction == "H"
                  else {"A", "H", "AH"})
        sel = {}
        for qid in self.prereq_closure(ids, faction):       # inclui a cadeia de pré-req
            q = self.quests.get(str(qid))
            if q and q["faction"] in fac_ok and not is_placeholder(q["name"]):
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
        self._tira(sel, self._exclusivas(sel, lambda q: (sel[q]["reqLevel"] or 0, q), faction))
        if not sel:
            return None, 0, []
        info = self._info(sel, -1)
        self._sem_giver(sel, info)
        if not sel:
            return None, 0, []
        for qid, tokens in self._portoes(sel).items():
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

        if mode == "chain":
            # ordem topológica por prioridade: entre as liberadas, a de menor nível
            # (o guia de guerreiro não manda o nível 10 aceitar Naxxramas), e no
            # empate a da mesma zona — os anciões do Lunar Festival saem zona a zona
            feitas, pend, ult = set(), set(sel), None

            def segue(q):                    # continua a cadeia que acabou de fechar
                return ult is not None and chave(q)[0] <= chave(ult)[0] + 2 and \
                    (ult in sel[q]["preSingle"] + sel[q]["preGroup"] or ult in antes[q])
            while pend:
                livres = [q for q in pend
                          if all(p in feitas for p in sel[q]["preGroup"] if p in sel)
                          and (not [p for p in sel[q]["preSingle"] if p in sel]
                               or any(p in feitas for p in sel[q]["preSingle"] if p in sel))
                          and all(b in feitas for b in antes[q])]
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
        L.append("}, [[")
        for text, cond in steps:
            if text == "step":
                L.append("step")
                if cond:
                    L.append("  only " + cond)
            else:
                L.append(text)
        L.append("]])")
        return "\n".join(L) + "\n"
