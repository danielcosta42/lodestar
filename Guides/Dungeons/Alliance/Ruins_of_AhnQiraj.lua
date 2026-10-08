-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Ruins of Ahn'Qiraj", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "5d23359e",
}, [[
step
  kill Ossirian the Unscarred##15339 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Fall of Ossirian##8791 |goto Ruins of Ahn'Qiraj - Dungeon -1,-1
step
  note Deliver the Head of Ossirian the Unscarred to Commander Mar'alith at Cenarion Hold in Silithus.
  talk Commander Mar'alith##15181
  turnin The Fall of Ossirian##8791 |goto Silithus 49.2,34.18
]])
