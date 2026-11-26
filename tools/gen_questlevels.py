"""Gera QuestLevels.lua (issue #93): o nível de cada quest que os guias citam, para o Lodestar saber o que é cinza
antes de a quest estar no diário (o jogo só dá o nível de quest já carregada).

Fonte: o banco do Forever que o import_forever.py montou (tools/build/forever/quests.json, o `questLevel` do
QuestieDB); sem nível lá (quest de classe vem com -1), o da XP que os jogadores viram (xp.json, a tabela do QuestieDB
mais os traces); e, só por último, o pfQuest (MIT, https://github.com/shagu/pfQuest): db/quests.lua ("lvl"), se a
pasta vier no argumento. Só entram as quests que algum guia de Guides/ cita (`accept/turnin Nome##id` ou `|q id`; o
`##` de NPC e item fica de fora).

    python3 tools/gen_questlevels.py [pasta do pfQuest]
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, "..")
OUT = os.path.join(ROOT, "QuestLevels.lua")


def guide_ids():
    ids = set()
    for base, _, files in os.walk(os.path.join(ROOT, "Guides")):
        for f in files:
            if f.endswith(".lua"):
                with open(os.path.join(base, f), encoding="utf-8") as h:
                    text = h.read()
                ids.update(int(m) for m in re.findall(r"\b(?:accept|turnin)\b[^\n#]*##(\d+)", text))
                ids.update(int(m) for m in re.findall(r"\|q (\d+)", text))
    return ids


def levels(path):
    """[id] = lvl, lendo db/quests.lua linha a linha (blocos de primeiro nível `  [id] = {`)."""
    out, cur = {}, None
    with open(path, encoding="utf-8") as h:
        for line in h:
            m = re.match(r"^  \[(\d+)\] = \{", line)
            if m:
                cur = int(m.group(1))
                continue
            m = re.match(r'^    \["lvl"\] = (\d+),', line)
            if m and cur is not None:
                out[cur] = int(m.group(1))
    return out


def main():
    import json
    build = os.path.join(HERE, "build", "forever")
    with open(os.path.join(build, "quests.json"), encoding="utf-8") as fh:
        banco = {int(k): q.get("questLevel") or 0 for k, q in json.load(fh).items()}
    xp = {}
    if os.path.exists(os.path.join(build, "xp.json")):
        with open(os.path.join(build, "xp.json"), encoding="utf-8") as fh:
            xp = {int(k): v[0] for k, v in json.load(fh).items() if v and v[0]}
    pf = levels(os.path.join(sys.argv[1], "db", "quests.lua")) if len(sys.argv) > 1 else {}
    want = guide_ids()
    lv, fonte = {}, {"banco": 0, "xp": 0, "pfQuest": 0}
    for q in want:
        for nome, tab in (("banco", banco), ("xp", xp), ("pfQuest", pf)):
            if (tab.get(q) or 0) > 0:
                lv[q] = tab[q]
                fonte[nome] += 1
                break
    found = sorted(lv)
    with open(os.path.join(build, "fonte.json"), encoding="utf-8") as fh:
        versao = json.load(fh).get("questiedb", "?")
    lines = ["-- AUTO-GERADO (tools/gen_questlevels.py). O nível das quests que os guias citam.",
             "-- Fonte: o QuestieDB %s do Forever (questLevel; sem ele, a XP dos traces)%s." % (
                 versao, "; o pfQuest (MIT, github.com/shagu/pfQuest) só onde os dois não têm" if pf else ""),
             "local ADDON, ns = ...", "if not ns then return end", "ns.questLevel = {"]
    row = []
    for q in found:
        row.append("[%d]=%d" % (q, lv[q]))
        if len(row) == 12:
            lines.append("\t" + ",".join(row) + ",")
            row = []
    if row:
        lines.append("\t" + ",".join(row) + ",")
    lines.append("}")
    with open(OUT, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print("ok: %d de %d quests dos guias com nível (banco %d, xp %d, pfQuest %d)" % (
        len(found), len(want), fonte["banco"], fonte["xp"], fonte["pfQuest"]))


if __name__ == "__main__":
    main()
