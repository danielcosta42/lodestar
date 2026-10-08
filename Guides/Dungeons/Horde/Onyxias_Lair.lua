-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Onyxia's Lair", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "32a06ab2",
}, [[
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  click Cache of the Firelord##179703
  accept The Ancient Leaf##7632 |goto Molten Core - Dungeon -1,-1
step
  only completed(6602)
  kill Onyxia##10184 |goto Onyxia's Lair - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept Victory for the Horde##7490 |goto Onyxia's Lair - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Return Nostro's Compendium of Dragon Slaying to the Athenaeum.
  talk Lorekeeper Lydros##14368
  turnin Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  note Find the owner of the Ancient Petrified Leaf. Good luck, <Name>; It's a big world.
  talk Vartrus the Ancient##14524
  turnin The Ancient Leaf##7632 |goto Felwood 47.78,24.08
step
  only completed(6602)
  note Take the Head of Onyxia to Thrall in Orgrimmar.
  talk Thrall##4949
  turnin Victory for the Horde##7490 |goto Orgrimmar 31.73,37.82
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  use A Dull and Flat Elven Blade##18513 |tip The previous quest gave you this item — it starts the quest.
  accept The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  talk Stoma the Ancient##14525
  accept A Proper String##7635 |goto Felwood 48.39,22.29
step
  only Hunter
  note Stoma the Ancient has asked that you bring him a Mature Black Dragon Sinew. Should you find this sinew, return it to Stoma in Felwood.
  collect Mature Black Dragon Sinew##18705 |q 7635 |goto Onyxia's Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Onyxia
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note Give the Dull and Flat Elven Blade to Lorekeeper Lydros.
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  talk Stoma the Ancient##14525
  turnin A Proper String##7635 |goto Felwood 48.39,22.29
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Lorekeeper Lydros##14368
  accept The Forging of Quel'Serrar##7509 |goto Dire Maul - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note You must get Onyxia to breathe fire on the Unfired Ancient Blade. Once this is done, pick up the now Heated Ancient Blade. Be warned, a Heated Ancient Blade will not remain heated forever - time is of the essence.
  collect Treated Ancient Blade##18492 |q 7509 |goto Dire Maul - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7509 |goto Dire Maul - Dungeon -1,-1
]])
