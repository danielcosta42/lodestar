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
# quest no lugar. Ex.: "Banishing Crystal Bunny 02", "... Quest Trigger", "[DND]".
_MARKER = re.compile(r"\bbunny\b|credit|trigger|\bdnd\b|\bph\b|\bmarker\b", re.I)
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

# objetivo de FALAR com a criatura ("Speak with Halaan Hawk-Eye..."): o banco guarda
# como objetivo de criatura, e "kill" mandaria matar um NPC amigo. O passo continua
# rastreado por |q, então só o verbo muda.
_TALKQ = re.compile(r"^\s*(?:speak|talk)\s+(?:with|to)\b", re.I)
def is_talk_quest(objtext):
    return bool(_TALKQ.search((objtext[0] if objtext else "") or ""))

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
            32: "Tauren", 64: "Gnome", 128: "Troll", 512: "BloodElf", 1024: "Draenei",
            # Forever: uma raça Skyborne por facção; a facção já sai da máscara, e o
            # Guide.lua reconhece "Skyborne" pelo id da raça (95/96).
            1 << 32: "Skyborne", 1 << 33: "Skyborne"}
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


def only_cond(q):
    conds = []
    if single_bit(q["races"]) and q["races"] in RACE_BIT:
        conds.append(RACE_BIT[q["races"]])
    if single_bit(q["classes"]) and q["classes"] in CLASS_BIT:
        conds.append(CLASS_BIT[q["classes"]])
    return " ".join(conds)


def esc(name):
    return (name or "").replace("]", "").replace("|", "").strip()


class Router:
    def __init__(self, data):
        self.quests = data["quests"]
        self.npcs = data["npcs"]
        self.objects = data["objects"]
        self.zones = data["zones"]
        self.items = data.get("items") or {}
        # índice nome->npc (com spawn) p/ o fallback de fonte de item por nome
        self._npc_by_name = {}
        for nid, n in self.npcs.items():
            nm = n.get("name")
            if nm and n.get("spawns"):
                self._npc_by_name.setdefault(nm.lower(), int(nid))

    def item_source(self, iid):
        """De onde o item de objetivo vem: (kind, id, nome, spawn) ou None.
        Prioridade:
          1) mob COMUM (rank normal): alvo direto e confiável (sempre up).
          2) senão (só rare/worldboss, ou nenhuma criatura): OBJETO/nó/baú —
             fonte inequívoca e sempre presente (ex.: item que só 'dropa' de um
             rare vira o nó do mundo, não a seta pro rare que raramente aparece).
          3) o rare/worldboss, se for a única criatura.
          4) VENDEDOR.
          5) Fallback: item 'X's ...' -> NPC 'X' (baú de mob nomeado, ex.: Maggoc).
        Entre criaturas de mesma confiabilidade, mantém a 1ª da lista (estável)."""
        it = self.items.get(str(iid))
        if not it:
            return None
        best_npc = None                       # (penalty, id, nome, spawn); menor penalty = melhor
        for nid in (it.get("npc") or []):
            ent = self.npc(nid)
            sp = self.best_spawn(ent, -1) if ent else None
            if not sp:
                continue
            rank = ent.get("rank") or 0
            penalty = 2 if rank in (3, 4) else (1 if rank == 2 else 0)
            if best_npc is None or penalty < best_npc[0]:
                best_npc = (penalty, nid, ent["name"], sp)
        if best_npc and best_npc[0] == 0:      # mob comum -> alvo direto
            return ("kill", best_npc[1], best_npc[2], best_npc[3])
        for oid in (it.get("obj") or []):      # sem mob confiável -> nó/objeto do mundo
            ent = self.obj(oid)
            sp = self.best_spawn(ent, -1) if ent else None
            if sp:
                return ("collect", oid, ent["name"], sp)
        if best_npc:                           # sobrou o rare/boss como única criatura
            return ("kill", best_npc[1], best_npc[2], best_npc[3])
        for vid in (it.get("vendor") or []):
            ent = self.npc(vid)
            sp = self.best_spawn(ent, -1) if ent else None
            if sp:
                return ("buy", vid, ent["name"], sp)
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

    def _item_step(self, iid, q, qid, fallback_sp):
        """Passo enriquecido de coletar item (estilo Zygor). Formas:
          A)  matar mob nomeado cujo baú/objeto aparece após a morte
              (via_name + objeto):        kill + click + collect
          A') item 'X's ...' de matar X, sem objeto:  kill + collect
          B)  drop DIRETO de elite/rare/boss (group_tag != ''): kill |elite + collect
          -)  resto (objeto estático / vendor / mob comum): collect/buy + tip
        Suprime tip {dropsfrom} circular (fonte == nome do item)."""
        item = self.items.get(str(iid)) or {}
        iname = item.get("name") or q["name"]
        src = self.item_source(iid)
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
        # centroide do maior aglomerado simples (mediana robusta a outliers)
        xs = sorted(p[0] for p in pts)
        ys = sorted(p[1] for p in pts)
        mid = len(pts) // 2
        return [round(xs[mid], 2), round(ys[mid], 2)]

    def npc(self, nid):
        return self.npcs.get(str(nid))

    def obj(self, oid):
        return self.objects.get(str(oid))

    # índice de mestres de voo por área (npcFlags & 8192)
    def _fm_index_build(self):
        idx = {}
        for n in self.npcs.values():
            if (n.get("npcFlags") or 0) & 8192:
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
    def select(self, area, faction, level_max, exclude=None):
        fac_ok = {"A", "AH"} if faction == "A" else {"H", "AH"}
        exclude = exclude or set()
        sel = {}
        for qid, q in self.quests.items():
            if int(qid) in exclude:
                continue
            if q["faction"] not in fac_ok:
                continue
            if is_placeholder(q["name"]):                         # [Not Used]/OLD: deprecada
                continue
            if q["specialFlags"] and (q["specialFlags"] & 3):     # 1=repetível, 2=evento/holiday
                continue
            if q["questLevel"] is not None and q["questLevel"] < 1:  # holiday/AQ (nível <=0): fora do leveling
                continue
            if q["questLevel"] and q["questLevel"] > level_max:
                continue
            if q["zoneOrSort"] in FORA_DO_LEVELING:
                continue
            if q.get("reqSkill"):                 # exige profissão: o NPC não oferece a quem não tem
                continue                          # (ex.: as "Camping 101: <profissão>" do Forever)
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

    # -- geração de uma zona ------------------------------------------------
    def generate_zone(self, area, faction, title, level_max, next_key=None,
                      exclude=None, travel_to=None, include=None):
        sel = self.select(area, faction, level_max, exclude)
        # quests IMPORTADAS de outra zona (ex.: capital), distribuídas por faixa de
        # nível: entram aqui mesmo com o giver fora da zona (accept com goto cross-zone).
        exclude = exclude or set()
        for qid in (include or ()):
            if int(qid) not in exclude and int(qid) not in sel:
                q = self.quests.get(str(qid))
                if q:
                    sel[int(qid)] = q
        if not sel:
            return None, 0, []
        self.zone_prereq_closure(sel, area, faction)   # inclui pré-req da mesma zona
        # remove mis-includes: quest cujo preGroup do MESMO conteúdo (nível ~igual)
        # não entrou no guia (evento AQ, quest iniciada por item). Pré-req bem mais
        # baixo (cadeia entre zonas) é preservado.
        changed = True
        while changed:
            changed = False
            for qid in list(sel):
                ql = sel[qid]["questLevel"] or 0
                for p in sel[qid]["preGroup"]:
                    if p not in sel and ((self.quests.get(str(p)) or {}).get("questLevel") or ql) >= ql - 6:
                        del sel[qid]; changed = True
                        break
        if not sel:
            return None, 0, []
        # Varredura final de POLUENTES (roda DEPOIS dos closures p/ pegar prereqs
        # adicionados): quest cujo nível está muito acima do perfil da zona — evento
        # (Anciões da Lua), PvP (Care Package), atunação, profissão e quests de alto
        # nível que só entraram porque o giver spawna aqui. hi = p85 dos níveis da zona.
        lv = sorted(v["questLevel"] for v in sel.values() if (v["questLevel"] or 0) > 0)
        if lv:
            hi = lv[min(len(lv) - 1, int(len(lv) * 0.85))]
            for qid in [q for q, v in sel.items()
                        if (v.get("reqLevel") or 0) > hi + 3 or (v["questLevel"] or 0) > hi + 12]:
                del sel[qid]
        if not sel:
            return None, 0, []
        zname = self.zone_name(area)
        hubs = self.build_hubs(sel, area)

        # coords/baldes por quest
        info = {}
        for qid, q in sel.items():
            # o giver escolhido é o que spawna NA zona (pode não ser startNpcs[0]);
            # guardamos o ID dele p/ o ##id bater com o nome emitido (evita seta errada).
            giver = giver_id = None
            giver_kind = "npc"; item_verb = None; gc_o = None
            for n in q["startNpcs"]:
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
            if giver is None:                       # início por ITEM (lootar a fonte na zona)
                for iid in q["startItems"]:
                    src = self.item_source(iid)
                    if src and src[3] and int(src[3][0]) == area:
                        giver, giver_id = {"name": src[2]}, src[1]
                        giver_kind, item_verb, gc_o = "item", src[0], src[3]
                        break
            if giver is None:                       # quest IMPORTADA: giver noutra zona (capital)
                for n in q["startNpcs"]:
                    cand = self.npc(n)
                    if cand and cand.get("spawns"):
                        giver, giver_id = cand, n
                        break
            gc = gc_o or self.best_spawn(giver, area) or self.best_spawn(giver, -1)
            ender = ender_id = None
            for n in q["endNpcs"]:
                cand = self.npc(n)
                if cand:
                    ender, ender_id = cand, n
                    break
            ec = self.best_spawn(ender, area)
            eobj = None
            if not ender:                       # entrega por OBJETO (sem NPC) na zona
                for o in q["endObjects"]:
                    sp = self.best_spawn(self.obj(o), area)
                    if sp:
                        eobj, ec = self.obj(o), sp
                        break
                # objeto de entrega SEM spawn (contextual): ainda emite turnin, ~ no giver
                if not eobj and q["endObjects"]:
                    eo = self.obj(q["endObjects"][0])
                    if eo:
                        eobj, ec = eo, (ec or gc)
            # objetivo: mob (creature) ou objeto
            otarget, ocoord = None, None
            for m in q["objCreatures"]:
                sp = self.best_spawn(self.npc(m), area)
                if sp:
                    otarget, ocoord, okind, oid = self.npc(m), sp, "kill", m
                    break
            if otarget is None:
                for o in q["objObjects"]:
                    sp = self.best_spawn(self.obj(o), area)
                    if sp:
                        otarget, ocoord, okind, oid = self.obj(o), sp, "collect", o
                        break
            info[qid] = {
                "q": q, "giver": giver, "giver_id": giver_id, "giver_kind": giver_kind,
                "item_verb": item_verb,
                "ender": ender, "ender_id": ender_id, "eobj": eobj,
                "gc": gc, "ec": ec, "oc": ocoord,
                "otarget": otarget,
                "okind": okind if otarget else None,
                "oid": oid if otarget else None,
                "ghub": self.nearest_hub(gc[1] if gc else None, hubs),
                "ohub": self.nearest_hub(ocoord[1] if ocoord else None, hubs),
                "ehub": self.nearest_hub(ec[1] if ec else None, hubs),
            }

        # hub inicial = do giver da quest de menor nível
        lowest = min(sel, key=lambda q: sel[q]["questLevel"] or 99)
        start = info[lowest]["ghub"] or 0
        path = self.hub_path(hubs, start) if hubs else [0]

        # -- agendamento por passes -----------------------------------------
        all_ids = set(sel.keys())
        accepted, done, turned = set(), set(), set()
        steps = []

        def prereqs_ok(q, qid):
            # disponível só quando os pré-req do conjunto foram ENTREGUES (turned in).
            # preGroup = todos entregues; preSingle = ao menos um entregue.
            preG = [p for p in q["preGroup"] if p in all_ids]
            preS = [p for p in q["preSingle"] if p in all_ids]
            ok = all(p in turned for p in preG) and (not preS or any(p in turned for p in preS))
            ov = PREREQ_OVERRIDES.get(qid)                     # gate que o banco não codifica
            if ok and ov and ov in all_ids:
                ok = ov in turned
            return ok

        def goto_str(spawn):
            if not spawn:
                return ""
            a, c = spawn
            return f' |goto {self.zone_name(a)} {c[0]},{c[1]}'

        def emit_accept(qid):
            it = info[qid]; q = it["q"]
            steps.append(("step", only_cond(q)))
            if it.get("giver_kind") == "item":       # quest começa ao LOOTAR o item da fonte
                iv = it.get("item_verb") or "kill"
                gt = self.group_tag(it["giver_id"], q["questLevel"] or 0) if iv == "kill" else ""
                steps.append(("  %s %s##%d%s%s |tip Loot the quest item here — it starts the quest." % (
                    iv, esc(it["giver"]["name"]), it["giver_id"], goto_str(it["gc"]), gt), None))
                steps.append(("  accept %s##%d%s" % (esc(q["name"]), qid, goto_str(it["gc"])), None))
            else:
                averb = "click" if it.get("giver_kind") == "object" else "talk"
                steps.append(("  %s %s##%d" % (averb, esc(it["giver"]["name"]), it["giver_id"]), None))
                steps.append(("  accept %s##%d%s" % (esc(q["name"]), qid, goto_str(it["gc"])), None))

        def emit_do(qid):
            it = info[qid]; q = it["q"]
            objc, obji, objo = q["objCreatures"], q["objItems"], q["objObjects"]
            if not (objc or obji or objo):
                return                       # sem objetivo (entrega/talk): o turnin já leva lá
            ql = q["questLevel"] or q["reqLevel"] or 0
            steps.append(("step", only_cond(q)))
            if q["objText"]:                 # SEMPRE mostra "como fazer"
                steps.append(("  note " + esc(q["objText"][0]), None))
            if is_craft_quest(q["name"]) and obji:     # fabricar item, não lootar
                iname = (self.items.get(str(obji[0])) or {}).get("name") or q["name"]
                steps.append(("  get %s##%d |q %d |tip Craft this (or buy it), then deliver it." %
                              (esc(iname), obji[0], qid), None))
                return
            useq = is_use_quest(q["objText"])   # "wrangle/capture/use X on" -> verbo "use"
            if it["otarget"]:                # alvo já resolvido com spawn na zona
                if it["okind"] == "kill" and useq:
                    steps.append(("  use %s##%d |q %d%s%s |tip {useit}" % (esc(it["otarget"]["name"]),
                                  it["oid"], qid, goto_str(it["oc"]), self.group_tag(it["oid"], ql)), None))
                else:
                    okind = "talk" if it["okind"] == "kill" and is_talk_quest(q["objText"]) else it["okind"]
                    gt = self.group_tag(it["oid"], ql) if okind == "kill" else ""
                    steps.append(("  %s %s##%d |q %d%s%s" % (okind, esc(it["otarget"]["name"]),
                                  it["oid"], qid, goto_str(it["oc"]), gt), None))
            else:                            # objItems / gatilho / sem spawn: rastreado por |q
                npc = objc and self.npc(objc[0])
                obj = objo and self.obj(objo[0])
                if npc and not is_marker(npc["name"]):
                    verb = "use" if useq else ("talk" if is_talk_quest(q["objText"]) else "kill")
                    ut = " |tip {useit}" if useq else ""
                    gt = self.group_tag(objc[0], ql) if verb == "kill" else ""
                    steps.append(("  %s %s##%d |q %d%s%s%s" % (verb, esc(npc["name"]), objc[0], qid,
                                  goto_str(self.best_spawn(npc, area)), gt, ut), None))
                elif obj and not is_marker(obj["name"]):
                    steps.append(("  collect %s##%d |q %d%s" % (esc(obj["name"]), objo[0], qid,
                                  goto_str(self.best_spawn(obj, area))), None))
                elif obji:                   # OBJETIVO DE ITEM: "colete N <item>" + fontes no tip
                    steps.append((self._item_step(obji[0], q, qid, it["gc"]), None))
                else:
                    sp = (npc and self.best_spawn(npc, area)) or (obj and self.best_spawn(obj, area)) or it["gc"]
                    steps.append(("  get %s |q %d%s" % (esc(q["name"]), qid, goto_str(sp)), None))

        def emit_turnin(qid):
            it = info[qid]; q = it["q"]
            steps.append(("step", only_cond(q)))
            if it["ender"]:
                steps.append(("  talk %s##%d" % (esc(it["ender"]["name"]), it["ender_id"]), None))
            tip = ""
            if it["ec"] and it["ec"][0] != area:
                tip = " |tip {turninat}%s" % self.zone_name(it["ec"][0])
            steps.append(("  turnin %s##%d%s%s" % (esc(q["name"]), qid, goto_str(it["ec"]), tip), None))

        MAX_PASSES = 8
        for _ in range(MAX_PASSES):
            progress = False
            for hub in path:
                # 1) entregar o que está pronto e vence aqui
                for qid in list(accepted):
                    it = info[qid]
                    if qid in done and qid not in turned and it["ehub"] == hub and (it["ender"] or it["eobj"]):
                        emit_turnin(qid); turned.add(qid); accepted.discard(qid); progress = True
                # 2) pegar quests deste hub cujos pré-reqs já foram feitos
                for qid in sorted(sel):
                    it = info[qid]
                    if qid in accepted or qid in turned:
                        continue
                    if it["ghub"] != hub:
                        continue
                    if prereqs_ok(it["q"], qid):
                        emit_accept(qid); accepted.add(qid); progress = True
                        if it["otarget"] is None:
                            q = it["q"]
                            if q["objCreatures"] or q["objItems"] or q["objObjects"]:
                                emit_do(qid)           # objItems/sem-spawn: mostra "como fazer" aqui
                            done.add(qid)              # sem hub de objetivo distinto -> concluído
                # 3) fazer objetivos cujo alvo pertence a este hub
                for qid in list(accepted):
                    it = info[qid]
                    if qid in done:
                        continue
                    if it["ohub"] == hub and it["otarget"]:
                        emit_do(qid); done.add(qid); progress = True
            if not progress:
                break

        # -- sobras: reprocessa TODO o conjunto em ondas topológicas, ENTREGANDO
        # o pré-req já feito antes de aceitar a dependente. Corrige a inversão em
        # que uma quest aceita nos passes (mas não entregue, ex.: ender fora de
        # hub) só era entregue no fim — depois da dependente já ter sido aceita.
        def can_turn(qid):
            return qid not in turned and (info[qid]["ender"] or info[qid]["eobj"])
        for wave in self._topo_waves(sel):
            for qid in wave:                        # 1) entrega pré-req já aceito
                if qid in accepted and can_turn(qid):
                    emit_turnin(qid); turned.add(qid)
            for qid in wave:                        # 2) aceita+faz as sobras
                if qid not in accepted and qid not in turned:
                    emit_accept(qid); accepted.add(qid)
                    if info[qid]["otarget"]:
                        emit_do(qid)
                    done.add(qid)
            for qid in wave:                        # 3) entrega as sobras desta onda
                if can_turn(qid):
                    emit_turnin(qid); turned.add(qid)

        # intro: pegar o ponto de voo da zona (economiza viagens)
        intro = []
        fm = self.flight_master_in(area, faction)
        if fm:
            npc, coord = fm
            intro.append(("step", None))
            intro.append(("  note {fp}%s" % esc(npc["name"]), None))
            intro.append(("  goto %s %s,%s |tip {vendor}"
                          % (zname, coord[0], coord[1]), None))

        # outro: viajar para a próxima zona
        outro = []
        if travel_to:
            tzname, tx, ty = travel_to
            outro.append(("step", None))
            outro.append(("  note {travel}%s" % tzname, None))
            outro.append(("  goto %s %s,%s" % (tzname, tx, ty), None))

        return (self._render("Leveling", faction, title, intro + steps + outro, next_key),
                len(sel), list(sel.keys()))

    # -- info por quest (coords/alvos), sem ancorar a uma área específica -----
    def _quest_info(self, sel):
        info = {}
        for qid, q in sel.items():
            giver = giver_id = None
            giver_kind = "npc"; item_verb = None; gc_o = None
            for n in q["startNpcs"]:
                cand = self.npc(n)
                if cand:
                    giver, giver_id = cand, n
                    break
            if giver is None:                       # início por OBJETO (clicar p/ pegar)
                for o in q["startObjects"]:
                    cand = self.obj(o)
                    if cand and cand.get("spawns"):
                        giver, giver_id, giver_kind = cand, o, "object"
                        break
            if giver is None:                       # início por ITEM (loot da fonte)
                for iid in q["startItems"]:
                    src = self.item_source(iid)
                    if src and src[3]:
                        giver, giver_id = {"name": src[2]}, src[1]
                        giver_kind, item_verb, gc_o = "item", src[0], src[3]
                        break
            ender = ender_id = None
            for n in q["endNpcs"]:
                cand = self.npc(n)
                if cand:
                    ender, ender_id = cand, n
                    break
            ec = self.best_spawn(ender, -1)
            eobj = None
            if not ender:                       # entrega por OBJETO (sem NPC)
                for o in q["endObjects"]:
                    sp = self.best_spawn(self.obj(o), -1)
                    if sp:
                        eobj, ec = self.obj(o), sp
                        break
                # objeto de entrega SEM spawn (contextual, ex.: "Scrying Bowl"): ainda
                # emite o turnin (senão a quest fica pendurada); seta ~ na coord do giver.
                if not eobj and q["endObjects"]:
                    eo = self.obj(q["endObjects"][0])
                    if eo:
                        eobj, ec = eo, (ec or self.best_spawn(giver, -1))
            target, coord, kind, oid = None, None, None, None
            for m in q["objCreatures"]:
                if self.npc(m) and self.npc(m).get("spawns"):
                    target, coord, kind, oid = self.npc(m), self.best_spawn(self.npc(m), -1), "kill", m
                    break
            if target is None:
                for o in q["objObjects"]:
                    if self.obj(o) and self.obj(o).get("spawns"):
                        target, coord, kind, oid = self.obj(o), self.best_spawn(self.obj(o), -1), "collect", o
                        break
            info[qid] = {
                "q": q, "giver": giver, "giver_id": giver_id, "giver_kind": giver_kind,
                "item_verb": item_verb,
                "ender": ender, "ender_id": ender_id, "eobj": eobj,
                "gc": gc_o or self.best_spawn(giver, -1), "ec": ec,
                "oc": coord, "otarget": target, "okind": kind, "oid": oid,
            }
        return info

    # ordena respeitando pré-req (topológico), desempate por nível e id
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
    def zone_prereq_closure(self, sel, area, faction):
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
                if not pq or int(p) in sel or pq["faction"] not in fac_ok:
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
        done, waves, pend = set(), [], set(ids)
        while pend:
            wave = []
            for q in sorted(pend, key=lambda q: (sel[q]["questLevel"] or 0, q)):
                preG = [p for p in sel[q]["preGroup"] if p in ids]
                preS = [p for p in sel[q]["preSingle"] if p in ids]
                ok = all(p in done for p in preG) and (not preS or any(p in done for p in preS))
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
    #   mode "phase": aceita tudo -> objetivos -> entrega tudo (dungeons)
    #   mode "chain": aceita->faz->entrega por quest, em ordem (attunements)
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
        # guia self-contained: remove quest cujo preGroup (obrigatório) não coube
        # (facção incompatível / sem giver) — senão manda aceitar algo bloqueado.
        changed = True
        while changed:
            changed = False
            for qid in list(sel):
                if any(p not in sel for p in sel[qid]["preGroup"]):
                    del sel[qid]; changed = True
        if not sel:
            return None, 0, []
        info = self._quest_info(sel)
        waves = self._topo_waves(sel)
        steps = []

        def goto_str(spawn):
            if not spawn:
                return ""
            a, c = spawn
            return " |goto %s %s,%s" % (self.zone_name(a), c[0], c[1])

        def push_only(q):
            steps.append(("step", only_cond(q)))

        def emit_accept(qid):
            it = info[qid]; q = it["q"]
            if not it["giver"]:
                return
            push_only(q)
            if it.get("giver_kind") == "item":       # quest começa ao LOOTAR o item da fonte
                iv = it.get("item_verb") or "kill"
                gt = self.group_tag(it["giver_id"], q["questLevel"] or 0) if iv == "kill" else ""
                steps.append(("  %s %s##%d%s%s |tip Loot the quest item here — it starts the quest." % (
                    iv, esc(it["giver"]["name"]), it["giver_id"], goto_str(it["gc"]), gt), None))
                steps.append(("  accept %s##%d%s" % (esc(q["name"]), qid, goto_str(it["gc"])), None))
            else:
                averb = "click" if it.get("giver_kind") == "object" else "talk"
                steps.append(("  %s %s##%d" % (averb, esc(it["giver"]["name"]), it["giver_id"]), None))
                steps.append(("  accept %s##%d%s" % (esc(q["name"]), qid, goto_str(it["gc"])), None))

        def emit_do(qid):
            it = info[qid]; q = it["q"]
            objc, obji, objo = q["objCreatures"], q["objItems"], q["objObjects"]
            if not (objc or obji or objo):
                return                       # sem objetivo (entrega/talk): o turnin já leva lá
            push_only(q)
            ql = q["questLevel"] or q["reqLevel"] or 0
            if q["objText"]:                 # SEMPRE mostra "como fazer"
                steps.append(("  note " + esc(q["objText"][0]), None))
            if is_craft_quest(q["name"]) and obji:     # fabricar item, não lootar
                iname = (self.items.get(str(obji[0])) or {}).get("name") or q["name"]
                steps.append(("  get %s##%d |q %d |tip Craft this (or buy it), then deliver it." %
                              (esc(iname), obji[0], qid), None))
                return
            # passo rastreado por |q — espera a quest ficar pronta antes de avançar.
            useq = is_use_quest(q["objText"])          # "wrangle/capture/use X on" -> verbo "use"
            npc = objc and self.npc(objc[0])
            obj = objo and self.obj(objo[0])
            if npc and not is_marker(npc["name"]):     # matar/usar/falar com criatura (goto se tiver spawn)
                verb = "use" if useq else ("talk" if is_talk_quest(q["objText"]) else "kill")
                ut = " |tip {useit}" if useq else ""
                gt = self.group_tag(objc[0], ql) if verb == "kill" else ""
                steps.append(("  %s %s##%d |q %d%s%s%s" % (verb, esc(npc["name"]), objc[0], qid,
                              goto_str(self.best_spawn(npc, -1)), gt, ut), None))
            elif obj and not is_marker(obj["name"]):   # coletar de objeto no mundo
                steps.append(("  collect %s##%d |q %d%s" % (esc(obj["name"]), objo[0], qid,
                              goto_str(self.best_spawn(obj, -1))), None))
            elif obji:                                 # OBJETIVO DE ITEM: "colete N <item>" + fontes
                steps.append((self._item_step(obji[0], q, qid, it["gc"]), None))
            else:                                      # sem fonte conhecida: genérico rastreado
                sp = (npc and self.best_spawn(npc, -1)) or (obj and self.best_spawn(obj, -1)) or it["gc"]
                steps.append(("  get %s |q %d%s" % (esc(q["name"]), qid, goto_str(sp)), None))

        def emit_turnin(qid):
            it = info[qid]; q = it["q"]
            if not (it["ender"] or it["eobj"]):
                return
            push_only(q)
            if it["ender"]:
                steps.append(("  talk %s##%d" % (esc(it["ender"]["name"]), it["ender_id"]), None))
            steps.append(("  turnin %s##%d%s" % (esc(q["name"]), qid, goto_str(it["ec"])), None))

        # onda-a-onda: aceita -> faz -> ENTREGA antes da próxima onda. Garante que
        # todo pré-requisito é entregue antes da dependente ser aceita.
        for wave in waves:
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
