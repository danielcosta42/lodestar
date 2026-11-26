-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/The Temple of Atal'Hakkar", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "2344f47c",
}, [[
step
  only Rogue completed(8235)
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
step
  only Mage completed(8252)
  talk Archmage Xylem##8379
  accept Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Hunter completed(8231)
  talk Ogtinc##8405
  accept The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Priest completed(8256)
  talk Ogtinc##8405
  accept Blood of Morphaz##8257 |goto Azshara 42.4,42.62
step
  only Warlock completed(8421)
  talk Impsy##14470
  accept Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warrior completed(8424)
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Muigin##9119
  accept Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  only Druid completed(9051)
  talk Torwa Pathfinder##9619
  accept A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only not NightElf not Gnome not Skyborne Paladin completed(8416)
  talk Commander Ashlam Valorfist##10838
  accept Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  talk Atal'ai Exile##5598
  accept Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  kill Shade of Eranikus##5709 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Essence of Eranikus##3373 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  only Rogue completed(8235)
  note Return the Azure Key to Lord Jorach Ravenholdt.
  collect Azure Key##20022 |q 8236 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Mage completed(8252)
  note Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem.
  collect Arcane Shard##20085 |q 8253 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Hunter completed(8231)
  note Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath.
  collect Tooth of Morphaz##20019 |q 8232 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Priest completed(8256)
  note Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows.
  collect Blood of Morphaz##20025 |q 8257 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Warlock completed(8421)
  note Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
  collect Amber Voodoo Feather##20606 |q 8422 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Warrior completed(8424)
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  note Collect 15 Bloodpetals and return to Muigin.
  collect 15 Bloodpetal##11316 |q 4141 |goto Un'Goro Crater 67.79,31.77 |tip {dropsfrom}Bloodpetal Lasher, Bloodpetal Flayer, Bloodpetal Thresher
step
  only Druid completed(9051)
  note Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder.
  collect Putrid Vine##22444 |q 9053 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Atal'alarion
step
  only not NightElf not Gnome not Skyborne Paladin completed(8416)
  note Bring the voodoo feathers to Ashlam Valorfist.
  collect Amber Voodoo Feather##20606 |q 8418 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  note The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
  collect Head of Jammal'an##6212 |q 1446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Jammal'an the Prophet
step
  only Rogue completed(8235)
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88
step
  only Mage completed(8252)
  talk Archmage Xylem##8379
  turnin Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Hunter completed(8231)
  talk Ogtinc##8405
  turnin The Green Drake##8232 |goto Azshara 42.4,42.62
step
  only Priest completed(8256)
  talk Greta Mosshoof##10922
  turnin Blood of Morphaz##8257 |goto Felwood 51.21,82.11
step
  only Warlock completed(8421)
  talk Impsy##14470
  turnin Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warrior completed(8424)
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Muigin##9119
  turnin Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
  only Druid completed(9051)
  talk Torwa Pathfinder##9619
  turnin A Better Ingredient##9053 |goto Un'Goro Crater 71.64,75.96
step
  only not NightElf not Gnome not Skyborne Paladin completed(8416)
  talk Commander Ashlam Valorfist##10838
  turnin Forging the Mightstone##8418 |goto Western Plaguelands 42.7,84.03
step
  talk Atal'ai Exile##5598
  turnin Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  note Place the Essence of Eranikus in the Essence Font located in this lair in the Sunken Temple.
  turnin The Essence of Eranikus##3373 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  talk Muigin##9119
  accept A Visit to Gregan##4142 |goto Un'Goro Crater 42.94,9.64
step
  note Take a Bloodpetal to Gregan Brewspewer in Feralas.
  talk Gregan Brewspewer##7775
  turnin A Visit to Gregan##4142 |goto Feralas 45.12,25.57
step
  talk Gregan Brewspewer##7775
  accept Haze of Evil##4143 |goto Feralas 45.12,25.57
step
  note Collect 5 samples of Atal'ai Haze, then return to Muigin in Un'Goro Crater.
  collect 5 Atal'ai Haze##11318 |q 4143 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Murk Worm, Saturated Ooze, Deep Lurker
step
  talk Muigin##9119
  turnin Haze of Evil##4143 |goto Un'Goro Crater 42.94,9.64
]])
