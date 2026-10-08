-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Onyxia's Lair", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "5d40c840",
}, [[
step
  kill Warlord Goretooth##9077 |goto Badlands 5.81,47.52 |tip Loot the quest item here — it starts the quest.
  accept Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  click Cache of the Firelord##179703
  accept The Ancient Leaf##7632 |goto Molten Core - Dungeon -1,-1
step
  note Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
  kill Overlord Wyrmthalak##9568 |q 4903 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Warlord Goretooth##9077
  turnin Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Lorekeeper Lydros##14368
  turnin Nostro's Compendium##7507 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin The Ancient Leaf##7632 |goto Felwood 47.78,24.08
step
  talk Warlord Goretooth##9077
  accept Eitrigg's Wisdom##4941 |goto Badlands 5.81,47.52
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
  talk Thrall##4949
  turnin Eitrigg's Wisdom##4941 |goto Orgrimmar 31.73,37.82
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7508 |goto Dire Maul - Dungeon -1,-1
step
  only Hunter
  talk Stoma the Ancient##14525
  turnin A Proper String##7635 |goto Felwood 48.39,22.29
step
  talk Thrall##4949
  accept For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Lorekeeper Lydros##14368
  accept The Forging of Quel'Serrar##7509 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
  collect Head of Rend Blackhand##12630 |q 4974 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Warchief Rend Blackhand
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  note You must get Onyxia to breathe fire on the Unfired Ancient Blade. Once this is done, pick up the now Heated Ancient Blade. Be warned, a Heated Ancient Blade will not remain heated forever - time is of the essence.
  collect Treated Ancient Blade##18492 |q 7509 |goto Dire Maul - Dungeon -1,-1
step
  talk Thrall##4949
  turnin For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid
  talk Lorekeeper Lydros##14368
  turnin The Forging of Quel'Serrar##7509 |goto Dire Maul - Dungeon -1,-1
step
  talk Thrall##4949
  accept What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  turnin What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept The Champion of the Horde##6567 |goto Orgrimmar 31.73,37.82
step
  talk Rexxar##10182
  turnin The Champion of the Horde##6567 |goto Desolace 54,2
step
  talk Rexxar##10182
  accept The Testament of Rexxar##6568 |goto Desolace 54,2
step
  talk Myranda the Hag##11872
  turnin The Testament of Rexxar##6568 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  note Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete.
  collect 20 Black Dragonspawn Eye##16786 |q 6569 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Rage Talon Dragonspawn, Overlord Wyrmthalak, Rage Talon Flamescale
step
  talk Myranda the Hag##11872
  turnin Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Emberstrife##6570 |goto Western Plaguelands 50.79,77.85
step
  talk Emberstrife##10321
  turnin Emberstrife##6570 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  note You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.
  kill Scryer##10664 |goto Winterspring 52.71,55.89 |elite
  collect The Skull of Scryer##16869 |q 6582 |goto Winterspring 52.71,55.89
step
  note Destroy the drake champion of the Green Flight, Somnus. Take his skull and return it to Emberstrife.
  kill Somnus##12900 |goto Swamp of Sorrows 76,66.6 |elite
  collect The Skull of Somnus##16870 |q 6583 |goto Swamp of Sorrows 76,66.6
step
  note Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.
  kill Chronalis##8197 |goto Tanaris 64.16,48.49 |elite
  collect The Skull of Chronalis##16871 |q 6584 |goto Tanaris 64.16,48.49
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  note Travel to Grim Batol and track down Axtroz, drake champion of the Red Flight. Destroy him and take his skull. Return the skull to Emberstrife.
  kill Axtroz##12899 |goto Wetlands 81.82,48.24 |elite
  collect The Skull of Axtroz##16872 |q 6585 |goto Wetlands 81.82,48.24
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept Ascension...##6601 |goto Dustwallow Marsh 56.66,87.72
step
  talk Rexxar##10182
  turnin Ascension...##6601 |goto Desolace 54,2
step
  talk Rexxar##10182
  accept Blood of the Black Dragon Champion##6602 |goto Desolace 54,2
step
  note Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rexxar.
  collect Blood of the Black Dragon Champion##16663 |q 6602 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}General Drakkisath
step
  talk Rexxar##10182
  turnin Blood of the Black Dragon Champion##6602 |goto Desolace 54,2
step
  kill Onyxia##10184 |goto Onyxia's Lair - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept Victory for the Horde##7490 |goto Onyxia's Lair - Dungeon -1,-1
step
  talk Thrall##4949
  turnin Victory for the Horde##7490 |goto Orgrimmar 31.73,37.82
]])
