"""Gera QuestLevels.lua (issue #93): o nível de cada quest que os guias citam, para o Lodestar saber o que é cinza
antes de a quest estar no diário (o jogo só dá o nível de quest já carregada).

Fonte: o banco do pfQuest (MIT, https://github.com/shagu/pfQuest): db/quests.lua ("lvl"). Só entram as quests que
algum guia de Guides/ cita (`accept/turnin Nome##id` ou `|q id`; o `##` de NPC e item fica de fora).

    python3 tools/gen_questlevels.py <pasta do pfQuest>
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
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    want = guide_ids()
    lv = levels(os.path.join(sys.argv[1], "db", "quests.lua"))
    found = sorted(q for q in want if q in lv and lv[q] > 0)
    lines = ["-- AUTO-GERADO (tools/gen_questlevels.py). O nível das quests que os guias citam.",
             "-- Fonte: pfQuest (MIT, github.com/shagu/pfQuest).",
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
    print("ok: %d de %d quests dos guias com nível" % (len(found), len(want)))


if __name__ == "__main__":
    main()
