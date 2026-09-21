"""Funde os LodestarDB.scan de várias sessões num build/scan.json só.

O cliente do beta NÃO guarda SavedVariables entre sessões: a tabela nasce vazia
a cada login e a gravação do logout sobrescreve o arquivo com o que AQUELA
sessão viu. Uma sessão trouxe 7 quests de Mulgore, a seguinte 13 de Tirisfal —
e as 7 sumiram. Por isso aqui se lê TUDO que houver (as contas do WTF de todos
os clientes instalados, os arquivos por personagem, os .bak que o próprio
cliente guarda da versão anterior, e qualquer pasta de arquivos que alguém
mande) e se funde de forma ADITIVA: nenhum arquivo apaga a quest de outro.

    python import_scan.py                      # varre o WTF de todos os clientes
    python import_scan.py <arquivo|pasta> ...  # e/ou o que for apontado
    python import_scan.py --autoteste          # checa inversão de mapa e fusão

Saída: build/scan.json — o mesmo formato da tabela do addon, mais:
  * `area`: o areaID (o espaço de ids do zones.json e do roteador) do uiMapID
    que o cliente gravou. O roteador indexa spawn por areaID; gravar o uiMapID
    faz o giver nunca ancorar e a quest sumir do guia.
  * `src`: a procedência do registro ("scan"), para quando houver outra fonte
    (Wowhead, DB2) disputando o mesmo campo.
"""
import glob
import json
import os
import sys

from parse_lua import LuaParser

HERE = os.path.dirname(os.path.abspath(__file__))
BUILD = os.path.join(HERE, "build")
SAIDA = os.path.join(BUILD, "scan.json")
FONTE = "scan"
TABELAS = ("quests", "givers", "enders", "waypoints")


# -- leitura ----------------------------------------------------------------
def alvos_do_wtf():
    """Os SavedVariables do Lodestar em todos os clientes instalados.

    Daqui (<WoW>/<cliente>/Interface/AddOns/Lodestar/tools) sobe-se até a raiz
    do WoW e varre-se cliente por cliente: o beta do Forever é outra pasta que
    não a do Anniversary, e é justamente a dele que interessa.
    """
    cliente = os.path.abspath(os.path.join(HERE, "..", "..", "..", ".."))
    wow = os.path.dirname(cliente)
    conta = os.path.join(wow, "*", "WTF", "Account", "*")
    achados = []
    for padrao in (os.path.join(conta, "SavedVariables", "Lodestar.lua*"),
                   os.path.join(conta, "*", "*", "SavedVariables", "Lodestar.lua*")):
        achados += glob.glob(padrao)
    return achados


def alvos_de(caminho):
    """Um arquivo, ou todo .lua de uma pasta contribuída (nome não importa)."""
    if os.path.isfile(caminho):
        return [caminho]
    achados = []
    for raiz, _, nomes in os.walk(caminho):
        achados += [os.path.join(raiz, n) for n in nomes if n.endswith((".lua", ".bak"))]
    return achados


def le_scan(caminho):
    """O LodestarDB.scan de um SavedVariables, ou None se não houver."""
    try:
        texto = open(caminho, encoding="utf-8", errors="replace").read()
    except OSError:
        return None
    marca = "LodestarDB = "
    inicio = texto.find(marca)
    if inicio < 0:
        return None
    p = LuaParser(texto)
    p.i = inicio + len(marca)
    try:
        db = p.parse_value()
    except (ValueError, AssertionError, IndexError):
        return None
    return (db or {}).get("scan")


def lista(t):
    """Tabela posicional do Lua ({1:a, 2:b}) vira lista; o resto passa direto."""
    if isinstance(t, dict):
        return [t[k] for k in sorted(t, key=lambda k: (not isinstance(k, int), k))]
    return t or []


# -- uiMapID -> areaID ------------------------------------------------------
def inverte(zonas):
    """uiMapID -> [areaID]. zones.json é areaID -> {uiMapId, name}.

    uiMapId 0 é o "fail safe" do banco (não identifica zona nenhuma) e fica
    de fora: inverter o 0 grudaria dezenas de áreas num id só.
    """
    inv = {}
    for area, info in zonas.items():
        uimap = (info or {}).get("uiMapId")
        if uimap:
            inv.setdefault(int(uimap), []).append(int(area))
    for uimap in inv:
        inv[uimap].sort()
    return inv


def para_area(inv, zonas, uimap, nome=None, avisos=None):
    """areaID de um uiMapID, ou None quando o mapa não é de zona conhecida.

    Dos 301 uiMapIDs, 8 caem em 2-3 areaIDs. São sempre o mesmo caso: a zona
    vanilla mais um id sintético ("fake ID, mapped to ...", masmorra/raide de
    SoD) ou a variante de masmorra da mesma zona. Decide-se pelo nome da zona
    que o cliente gravou junto; sem nome, pelo MENOR areaID — o id alto é
    sempre o sintético. A escolha vai para `avisos` em vez de sumir calada.
    """
    ids = inv.get(int(uimap or 0)) or []
    if not ids:
        return None
    if len(ids) > 1:
        escolha = None
        if nome:
            escolha = next((a for a in ids
                            if (zonas.get(str(a)) or {}).get("name", "").lower() == nome.lower()),
                           None)
        motivo = "nome do cliente" if escolha else "menor areaID"
        escolha = escolha or ids[0]
        if avisos is not None:
            avisos.add("uiMap %d -> area %d (%s) [%s; descartados: %s]" % (
                uimap, escolha, (zonas.get(str(escolha)) or {}).get("name", "?"), motivo,
                ", ".join(str(a) for a in ids if a != escolha)))
        return escolha
    return ids[0]


# -- fusão aditiva ----------------------------------------------------------
def _funde_campos(alvo, novo, campos):
    """Preenche só o que falta: o 1º arquivo que soube o campo manda."""
    for campo in campos:
        if alvo.get(campo) is None and novo.get(campo) is not None:
            alvo[campo] = novo[campo]


def funde(acc, scan, inv, zonas, avisos=None):
    """Acrescenta um scan ao acumulado. Nunca remove, nunca zera."""
    for qid, q in (scan.get("quests") or {}).items():
        ent = acc["quests"].setdefault(str(qid), {"src": FONTE})
        _funde_campos(ent, q, ("name", "level"))
        if q.get("done"):                      # entregue é estado grudento
            ent["done"] = True
        objs = ent.setdefault("obj", [])
        vistos = {o.get("text") for o in objs}
        for o in lista(q.get("obj")):
            if o.get("text") and o["text"] not in vistos:
                vistos.add(o["text"])
                objs.append({"text": o.get("text"), "need": o.get("need"), "type": o.get("type")})

    for tabela in ("givers", "enders"):
        for qid, g in (scan.get(tabela) or {}).items():
            ent = acc[tabela].setdefault(str(qid), {"src": FONTE})
            # registro com npc ganha do registro sem npc (o vazio é sessão em que
            # o alvo não estava selecionado); no empate, o primeiro fica.
            if g.get("npc") and not ent.get("npc"):
                ent.update({"npc": g["npc"], "name": g.get("name"), "map": g.get("map"),
                            "x": g.get("x"), "y": g.get("y"), "zone": g.get("zone")})
            _funde_campos(ent, g, ("npc", "name", "map", "x", "y", "zone"))
            area = para_area(inv, zonas, ent.get("map"), ent.get("zone"), avisos)
            if area:
                ent["area"] = area

    for qid, pts in (scan.get("waypoints") or {}).items():
        ent = acc["waypoints"].setdefault(str(qid), [])
        vistos = {(p.get("area"), round(p["x"], 1), round(p["y"], 1)) for p in ent}
        for p in lista(pts):
            if p.get("x") is None or p.get("y") is None:
                continue
            area = para_area(inv, zonas, p.get("map"), None, avisos)
            chave = (area, round(p["x"], 1), round(p["y"], 1))
            if chave in vistos:                # o addon grava cru a cada 5s: dedup é aqui
                continue
            vistos.add(chave)
            ent.append({"area": area, "map": p.get("map"),
                        "x": round(p["x"], 2), "y": round(p["y"], 2), "src": FONTE})
    return acc


# -- autoteste --------------------------------------------------------------
def autoteste():
    """Checagem do que não é óbvio: a inversão de mapa e a fusão aditiva."""
    zonas = {"215": {"uiMapId": 1412, "name": "Mulgore"},
             "331": {"uiMapId": 1440, "name": "Ashenvale"},
             "15475": {"uiMapId": 1440, "name": "Demon Fall Canyon (SoD Dungeon) (fake ID)"},
             "0": {"uiMapId": 0, "name": "fail safe"}}
    inv = inverte(zonas)
    avisos = set()
    assert para_area(inv, zonas, 1412) == 215                    # inversão direta
    assert para_area(inv, zonas, 1440, "Ashenvale", avisos) == 331   # nome desempata
    assert para_area(inv, zonas, 1440, None, avisos) == 331          # sem nome: menor id
    assert para_area(inv, zonas, 0) is None                      # fail safe não é zona
    assert para_area(inv, zonas, 9999) is None                   # zona nova do Forever
    assert len(avisos) == 2, avisos                              # ambiguidade não some calada

    # duas sessões do mesmo cliente: a 2ª NÃO pode apagar a 1ª (o arquivo apaga).
    s1 = {"quests": {745: {"name": "Sharing the Land", "level": 8,
                           "obj": {1: {"text": "10/10 Palemane Tanner slain", "need": 10}}}},
          "givers": {745: {"npc": 2993, "name": "Baine Bloodhoof", "map": 1412,
                           "x": 46.69, "y": 63.28, "zone": "Mulgore"}},
          "enders": {}, "waypoints": {}}
    s2 = {"quests": {426: {"name": "The Mills Overrun", "level": 8},
                     745: {"name": "Sharing the Land", "done": True,
                           "obj": {1: {"text": "10/10 Palemane Tanner slain", "need": 10},
                                   2: {"text": "8/8 Palemane Skinner slain", "need": 8}}}},
          "givers": {745: {}},                 # sessão que viu a quest sem ver o NPC
          "enders": {}, "waypoints": {745: {1: {"map": 1412, "x": 10.0, "y": 20.0},
                                            2: {"map": 1412, "x": 10.02, "y": 20.01},
                                            3: {"map": 1412, "x": 44.0, "y": 51.0}}}}
    vazio = lambda: {t: {} for t in TABELAS}
    a = vazio()
    for s in (s1, s2):
        funde(a, s, inv, zonas)
    assert set(a["quests"]) == {"745", "426"}, a["quests"].keys()   # nada foi apagado
    assert a["quests"]["745"]["done"] is True                        # o novo entrou
    assert a["quests"]["745"]["level"] == 8                          # o velho ficou
    assert len(a["quests"]["745"]["obj"]) == 2                       # objetivos somados
    assert a["quests"]["745"]["src"] == FONTE                        # procedência gravada
    assert a["givers"]["745"]["area"] == 215                         # areaID, não uiMapID
    assert a["givers"]["745"]["npc"] == 2993                         # sessão vazia não apagou
    assert len(a["waypoints"]["745"]) == 2                           # dedup por coordenada

    b = vazio()                                # ordem inversa dá o mesmo conjunto
    for s in (s2, s1):
        funde(b, s, inv, zonas)
    assert set(b["quests"]) == set(a["quests"])
    assert b["givers"]["745"]["npc"] == 2993
    print("autoteste: ok")


# -- main -------------------------------------------------------------------
def main(args):
    if "--autoteste" in args:
        return autoteste()
    caminhos = []
    for a in args:
        caminhos += alvos_de(a)
    caminhos += alvos_do_wtf()
    # ordem estável e com o arquivo vivo antes do .bak (que é a versão anterior):
    # no empate de campo, o primeiro a saber manda, e o mais novo é o vivo.
    caminhos = sorted(set(os.path.abspath(c) for c in caminhos))
    if not caminhos:
        print("nenhum SavedVariables do Lodestar encontrado")
        return

    zonas = json.load(open(os.path.join(BUILD, "zones.json"), encoding="utf-8"))
    inv = inverte(zonas)
    acc, avisos, lidos = {t: {} for t in TABELAS}, set(), 0
    for caminho in caminhos:
        scan = le_scan(caminho)
        if not scan:
            continue
        antes = len(acc["quests"])
        funde(acc, scan, inv, zonas, avisos)
        lidos += 1
        print("  %s: +%d quests" % (os.path.basename(os.path.dirname(
            os.path.dirname(caminho))) + "/" + os.path.basename(caminho),
            len(acc["quests"]) - antes))

    sem_area = sum(1 for g in list(acc["givers"].values()) + list(acc["enders"].values())
                   if not g.get("area"))
    os.makedirs(BUILD, exist_ok=True)
    json.dump(acc, open(SAIDA, "w", encoding="utf-8"), ensure_ascii=False)
    print("gravado em", os.path.normpath(SAIDA))
    print("  arquivos com scan:", lidos, "de", len(caminhos), "candidatos")
    print("  quests:", len(acc["quests"]), "| givers:", len(acc["givers"]),
          "| enders:", len(acc["enders"]), "| quests com waypoint:", len(acc["waypoints"]))
    print("  givers/enders sem areaID (zona nova do Forever, sem entrada no zones.json):",
          sem_area)
    for aviso in sorted(avisos):
        print("  ambíguo:", aviso)


if __name__ == "__main__":
    main(sys.argv[1:])
