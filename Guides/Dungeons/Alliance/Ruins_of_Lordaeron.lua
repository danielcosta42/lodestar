-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Ruins of Lordaeron", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "980cb0e6",
}, [[
step
  only not completed(95204) not haveq(95204)
  collect Crest of Lordaeron##614679 |goto Ruins of Lordaeron - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Crest of Lordaeron##95189 |goto Ruins of Lordaeron - Dungeon -1,-1
step
  kill Skeleton##250618 |goto Ruins of Lordaeron - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Bloodied Insignia##95195 |goto Ruins of Lordaeron - Dungeon -1,-1
step
  note Collect 10 Bloodied Insignias and take them to General Marcus Jonathan in Stormwind City.
  collect 10 Bloodied Insignia##268540 |q 95195 |goto Ruins of Lordaeron - Dungeon -1,-1 |elite |tip {dropsfrom}Skeleton, Ragged Ghoul, Mangled Cadaver
step
  only not completed(95204) not haveq(95204)
  note Return the Crest of Lordaeron to Lady Dena Kennedy in Stormwind City.
  talk Lady Dena Kennedy##15991
  turnin Crest of Lordaeron##95189 |goto Stormwind City 68,28.9
step
  talk General Marcus Jonathan##466
  turnin Bloodied Insignia##95195 |goto Stormwind City 69.17,82.72
]])
