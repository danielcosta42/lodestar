-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Temple of Ahn'Qiraj", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "b980817e",
}, [[
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  kill C'Thun##15727 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept C'Thun's Legacy##8801 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  collect Qiraji Lord's Insignia##21229 |q 8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}The Prophet Skeram, Emperor Vek'nilash, Emperor Vek'lor
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Caelestrasz##15379
  turnin C'Thun's Legacy##8801 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Caelestrasz##15379
  accept The Savior of Kalimdor##8802 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Anachronos##15192
  turnin The Savior of Kalimdor##8802 |goto Tanaris 65.27,50.03
]])
