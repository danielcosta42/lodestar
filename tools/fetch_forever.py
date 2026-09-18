"""Baixa do banco do Forever (Wowhead) as quests que só existem naquele cliente.

A lista de ids vem do diff de `QuestV2` entre os dois builds (o mesmo de
gen_forever.py): id que o Forever tem e o Anniversary não. De cada página sai o
que o roteador precisa — nome, nível, facção, XP, zona, e os pontos `start`,
`end` e `objective` com id de NPC e coordenada.

    python fetch_forever.py [--limit N] [--sleep S]

Uma página por vez, com pausa (padrão 1s) e cache em `build/wowhead/<id>.html`:
rodar de novo não rebaixa nada que já esteja em disco. Escreve
`build/forever_quests.json`.

Procedência: o banco é do Wowhead. Antes de publicar rota derivada daqui, ver a
ressalva de licença/atribuição em docs/forever.md.
"""
import argparse
import csv
import io
import json
import os
import re
import sys
import time
import urllib.error
import urllib.request

HERE = os.path.dirname(os.path.abspath(__file__))
CACHE = os.path.join(HERE, "build", "wowhead")
OUT = os.path.join(HERE, "build", "forever_quests.json")
UA = "Lodestar-fetch_forever/1.0 (+https://github.com/danielcosta42/lodestar)"

FOREVER = "1.60.1.69893"
ANNIV = "2.5.6.69795"


class Blocked(Exception):
    """A Wowhead recusou a coleta. Não é erro nosso, e não adianta insistir."""


def get(url, timeout=60):
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    return urllib.request.urlopen(req, timeout=timeout).read().decode("utf-8", "replace")


def quest_ids(build):
    """Ids de QuestV2 do build, com o mesmo cache que o gen_forever.py usa."""
    path = os.path.join(HERE, "build", "QuestV2-%s.csv" % build)
    if os.path.exists(path):
        raw = open(path, encoding="utf-8").read()
    else:
        raw = get("https://wago.tools/db2/QuestV2/csv?build=" + build, timeout=120)
        os.makedirs(os.path.dirname(path), exist_ok=True)
        open(path, "w", encoding="utf-8").write(raw)
    return {int(r[0]) for r in csv.reader(io.StringIO(raw)) if r and r[0].isdigit()}


def page(quest_id, sleep):
    """HTML da página da quest, do cache ou da rede."""
    path = os.path.join(CACHE, "%d.html" % quest_id)
    if os.path.exists(path):
        return open(path, encoding="utf-8", errors="replace").read()
    try:
        html = get("https://www.wowhead.com/forever/quest=%d" % quest_id)
    except urllib.error.HTTPError as err:
        if err.code == 404:
            html = ""                       # id sem página: fica registrado como vazio
        elif err.code in (403, 429):
            # A Wowhead barra coleta em volume (403 depois de ~130 páginas a 1/s).
            # Não insistimos: o que já está em cache fica, e o resto vem de outra fonte.
            raise Blocked("Wowhead recusou (HTTP %d) no id %d — o site barra coleta em massa. "
                          "O cache ate aqui foi preservado." % (err.code, quest_id))
        else:
            raise
    os.makedirs(CACHE, exist_ok=True)
    open(path, "w", encoding="utf-8").write(html)
    time.sleep(sleep)                       # só depois de ir à rede
    return html


_LISTVIEW = re.compile(r"template: 'quest'.*?data:(\[.*?\])\}\);", re.S)
INDEX = os.path.join(HERE, "build", "forever_index.json")


def index(sleep, lo=1, hi=70):
    """O banco inteiro do Forever em uma requisição por nível.

    A listagem corta em 1.000 linhas, mas fatiada por nível (`minle`/`maxle`)
    cabe folgado: cada linha traz id, nome, nível, nível mínimo, facção, XP e a
    zona (`category`). É o índice — coordenada só vem da página de cada quest.
    """
    # mescla com o que já houver: uma faixa avulsa não pode apagar o resto
    todas = {}
    if os.path.exists(INDEX):
        todas = {int(k): v for k, v in json.load(open(INDEX, encoding="utf-8")).items()}
    for level in range(lo, hi + 1):
        path = os.path.join(CACHE, "lvl-%d.html" % level)
        if os.path.exists(path):
            html = open(path, encoding="utf-8", errors="replace").read()
        else:
            html = get("https://www.wowhead.com/forever/quests?filter=minle=%d;maxle=%d"
                       % (level, level))
            os.makedirs(CACHE, exist_ok=True)
            open(path, "w", encoding="utf-8").write(html)
            time.sleep(sleep)
        m = _LISTVIEW.search(html)
        if not m:
            print("  nível %d: sem listagem" % level)
            continue
        linhas = json.loads(m.group(1))
        if len(linhas) >= 1000:
            print("  nível %d: 1.000 linhas — a listagem cortou, fatie mais fino" % level)
        for row in linhas:
            todas[row["id"]] = {k: row.get(k) for k in
                                ("id", "name", "level", "reqlevel", "side", "category", "xp")}
        print("  nível %2d: %4d quests (total %d)" % (level, len(linhas), len(todas)))
    json.dump(todas, open(INDEX, "w", encoding="utf-8"), ensure_ascii=False, indent=0,
              sort_keys=True)
    print("gravado:", os.path.normpath(INDEX), "|", len(todas), "quests")
    return todas


_TITLE = re.compile(r"<title>([^<]*)</title>")
# o objeto da própria quest na página: "category":12,...,"id":176,...,"level":11,...
_QUEST = re.compile(r'\{"category":(-?\d+),"category2":(-?\d+),"id":%d,.*?\}')
_MAPPER = re.compile(r"new Mapper\(")


def _json_after(html, start):
    """O objeto JSON que começa na primeira '{' a partir de `start`, por contagem
    de chaves (o payload do Mapper tem objetos aninhados e strings com chaves)."""
    i = html.find("{", start)
    if i < 0:
        return None
    depth, in_str, esc = 0, False, False
    for j in range(i, len(html)):
        c = html[j]
        if in_str:
            if esc:
                esc = False
            elif c == "\\":
                esc = True
            elif c == '"':
                in_str = False
            continue
        if c == '"':
            in_str = True
        elif c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                try:
                    return json.loads(html[i:j + 1])
                except ValueError:
                    return None
    return None


_TIP_TAGS = re.compile(r"<[^>]+>")
_TIP_REQ = re.compile(r"Requirements:\s*", re.I)
_TIP_LEVEL = re.compile(r"^Level \d+$")


def tooltip(quest_id, sleep):
    """Texto do objetivo da quest. A página não o traz estático; o endpoint de
    tooltip sim. Cache em `build/wowhead/tip-<id>.json`."""
    path = os.path.join(CACHE, "tip-%d.json" % quest_id)
    if os.path.exists(path):
        raw = open(path, encoding="utf-8").read()
    else:
        try:
            raw = get("https://nether.wowhead.com/forever/tooltip/quest/%d?locale=0" % quest_id)
        except urllib.error.HTTPError as err:
            if err.code != 404:
                raise
            raw = "{}"
        open(path, "w", encoding="utf-8").write(raw)
        time.sleep(sleep)
    try:
        data = json.loads(raw)
    except ValueError:
        return None
    text = _TIP_TAGS.sub("\n", data.get("tooltip") or "").replace("&nbsp;", " ")
    text = _TIP_REQ.split(text)[0]                    # o objetivo vem antes de "Requirements:"
    nome = (data.get("name") or "").strip()
    linhas = [l.strip() for l in text.split("\n") if l.strip()]
    # as primeiras linhas são o próprio nome e o "Level N" do cabeçalho
    linhas = [l for l in linhas if l != nome and not _TIP_LEVEL.match(l)]
    return linhas[0] if linhas else None


def parse(quest_id, html):
    """Nome, nível, facção, XP, zona e os pontos (quem dá, quem recebe, onde estão
    os objetivos) com coordenada, da página do Wowhead."""
    if not html:
        return None
    title = _TITLE.search(html)
    if not title or "Quest" not in title.group(1):
        return None

    out = {"id": quest_id}
    m = re.search(_QUEST.pattern % quest_id, html, re.S)
    if m:
        data = _json_after(html, m.start())
        if data:
            for key in ("name", "level", "reqlevel", "side", "xp", "money", "category",
                        "reqclass", "type"):
                if key in data:
                    out[key] = data[key]

    # Mapper({"objectives":{"<zoneId>":{"zone":"<nome>","levels":[[pontos]]}}})
    points, zones = [], {}
    m = _MAPPER.search(html)
    mapper = _json_after(html, m.end() - 1) if m else None
    for zone_id, zone in ((mapper or {}).get("objectives") or {}).items():
        try:
            zone_id = int(zone_id)
        except (TypeError, ValueError):
            continue
        if zone.get("zone"):
            zones[zone_id] = zone["zone"]
        for level in zone.get("levels") or []:
            for p in level or []:
                if not isinstance(p, dict) or "coord" not in p:
                    continue
                coord = p["coord"]
                if not (isinstance(coord, list) and len(coord) >= 2):
                    continue
                points.append({"zone": zone_id, "point": p.get("point"), "type": p.get("type"),
                               "id": p.get("id"), "name": p.get("name"),
                               "x": coord[0], "y": coord[1]})
    if zones:
        out["zones"] = zones
    if points:
        out["points"] = points
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=0, help="só os N primeiros ids (piloto)")
    ap.add_argument("--sleep", type=float, default=4.0, help="pausa entre requisições, em segundos")
    ap.add_argument("--index", action="store_true",
                    help="só o índice: uma listagem por nível, com zona e nível de cada quest")
    ap.add_argument("--only-index", action="store_true",
                    help="só os ids que o índice conhece (o resto não tem página: poupa a Wowhead)")
    ap.add_argument("--parse-only", action="store_true",
                    help="só relê o que já está em cache, sem tocar na rede")
    args = ap.parse_args()

    if args.index:
        index(args.sleep)
        return

    ids = sorted(quest_ids(FOREVER) - quest_ids(ANNIV))
    if args.only_index:
        if not os.path.exists(INDEX):
            sys.exit("rode antes com --index")
        conhecidos = {int(k) for k in json.load(open(INDEX, encoding="utf-8"))}
        ids = [q for q in ids if q in conhecidos]
    if args.limit:
        ids = ids[:args.limit]
    print("ids a buscar:", len(ids))

    # o índice tem nível, facção e zona de toda quest (a listagem é fatiada por
    # nível); a página nem sempre repete isso. O índice completa o que faltar.
    do_indice = {}
    if os.path.exists(INDEX):
        do_indice = {int(k): v for k, v in json.load(open(INDEX, encoding="utf-8")).items()}

    quests, vazias = {}, 0
    for i, qid in enumerate(ids, 1):
        cached = os.path.join(CACHE, "%d.html" % qid)
        if args.parse_only and not os.path.exists(cached):
            continue
        try:
            data = parse(qid, page(qid, args.sleep))
        except Blocked as err:
            print(err, file=sys.stderr)
            break
        except Exception as err:                       # rede caiu: para e mantém o cache
            print("parou no id %d: %s" % (qid, err), file=sys.stderr)
            break
        if data:
            for campo, valor in (do_indice.get(qid) or {}).items():
                if valor is not None and data.get(campo) in (None, 0):
                    data[campo] = valor
            if not args.parse_only or os.path.exists(os.path.join(CACHE, "tip-%d.json" % qid)):
                texto = tooltip(qid, args.sleep)
                if texto:
                    data["objText"] = texto
            quests[qid] = data
        else:
            vazias += 1
        if i % 50 == 0 or i == len(ids):
            print("  %d/%d  com dado: %d  sem página: %d" % (i, len(ids), len(quests), vazias))

    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    json.dump(quests, open(OUT, "w", encoding="utf-8"), ensure_ascii=False, indent=0, sort_keys=True)
    print("gravado:", os.path.normpath(OUT), "|", len(quests), "quests")
    comeco = sum(1 for q in quests.values() if any(p["point"] == "start" for p in q.get("points", [])))
    print("com NPC de início e coordenada:", comeco)


if __name__ == "__main__":
    main()
