-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Winterspring (54-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Redridge Mountains (54-60)",
}, [[
step
  note {fp}Azzleby
  goto Winterspring 60.39,37.92 |tip {vendor}
step
  talk Donova Snowden##9298
  accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  note Seek out Gregan Brewspewer in northern Feralas. From him, learn how you may acquire the Videre Elixir, then return to Donova Snowden in Winterspring.
  collect Videre Elixir##11243 |q 3909 |goto Feralas 45.12,25.57 |tip {dropsfrom}Gregan Brewspewer
step
  talk King Magni Bronzebeard##2784
  accept Kharan Mighthammer##4341 |goto Ironforge 39.09,56.2
step
  talk King Magni Bronzebeard##2784
  accept The Fate of the Kingdom##4362 |goto Ironforge 39.09,56.2
step
  talk Donova Snowden##9298
  accept Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  note Collect 3 Toxic Horror Droplets for Donova Snowden in Winterspring.
  collect 3 Toxic Horror Droplet##12822 |q 5086 |goto Felwood 49.76,24.66 |tip {dropsfrom}Toxic Horror
step
  talk Kharan Mighthammer##9021
  turnin Kharan Mighthammer##4341 |goto Blackrock Depths - Dungeon -1,-1 |tip {turninat}Blackrock Depths - Dungeon
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  note Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan.
  kill Emperor Dagran Thaurissan##9019 |q 4362 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  note Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
  kill Winterfall Pathfinder##7442 |q 5082 |goto Winterspring 34.72,37.72
step
  talk Jaron Stoneshaper##10301
  accept Enraged Wildkin##4861 |goto Winterspring 52.14,30.43
step
  talk Wynd Nightchaser##11079
  accept The Ruins of Kel'Theril##5244 |goto Winterspring 51.97,30.39
step
  talk Witch Doctor Mau'ari##10307
  accept Luck Be With You##969 |goto Winterspring 61.92,38.3
step
  note Collect 4 Frostmaul Shards for Witch Doctor Mau'ari in Everlook.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.28 |elite
  collect 4 Frostmaul Shards##12334 |q 969 |goto Winterspring 62.56,69.28
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
  note Collect 10 Thick Yeti Furs for Umi Rumplesnicker in Everlook.
  collect 10 Thick Yeti Fur##12366 |q 3783 |goto Winterspring 44.74,38.51 |tip {dropsfrom}Rogue Ice Thistle, Ice Thistle Yeti
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.97,42.75 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.84,37.84 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Firewater##5083 |goto Winterspring 66.84,37.84
step
  talk Jessica Redpath##11629
  accept Sister Pamela##5601 |goto Winterspring 61.28,38.98
step
  talk Gregor Greystone##10431
  accept The Everlook Report##6028 |goto Winterspring 61.35,38.97
step
  talk Gregor Greystone##10431
  accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
  talk Meggi Peppinrocker##11754
  accept Trouble in Winterspring!##6603 |goto Winterspring 60.66,38.17
step
  talk Harlo Wigglesworth##11755
  accept Enraged Wildkin##6604 |goto Winterspring 61.12,38.43
step
  talk Harlo Wigglesworth##11755
  accept A Little Luck##6606 |goto Winterspring 61.12,38.43
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.84,37.84 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Ritual Totem##8471 |goto Winterspring 66.84,37.84
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Shaman##7439 |q 8464 |goto Winterspring 67.86,38.06
step
  talk Remorseful Highborne##10684
  accept Remorseful Highborne##5252 |goto Winterspring 56.14,44.36
step
  talk Argent Officer Pureheart##10840
  turnin The Everlook Report##6028 |goto Western Plaguelands 42.97,83.55 |tip {turninat}Western Plaguelands
step
  turnin Enraged Wildkin##4861 |goto Winterspring 58.99,59.79
step
  click Damaged Crate##175587
  accept Enraged Wildkin##4863 |goto Winterspring 58.99,59.79
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  accept Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  note You must retrieve the Blood of the Black Dragon Champion from General Drakkisath. Drakkisath can be found in his throne room behind the Halls of Ascension in Blackrock Spire.
  collect Blood of the Black Dragon Champion##16663 |q 6502 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}General Drakkisath
step
  only Warlock
  talk Spackle Thornberry##5520
  accept Mor'zul Bloodbringer##7562 |goto Stormwind City 39.53,84.53
step
  talk Donova Snowden##9298
  turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Trouble in Winterspring!##6603 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Winterfall Firewater##5083 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  talk Pamela Redpath##10926
  turnin Sister Pamela##5601 |goto Eastern Plaguelands 31.15,77.98 |tip {turninat}Eastern Plaguelands
step
  talk Donova Snowden##9298
  accept Meet at the Grave##3912 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  note Find the Winterfall Runners and stop them from delivering their shipment to Winterfall Village.
  collect Winterfall Crate##12829 |q 5087 |goto Winterspring 27.96,34.48 |tip {dropsfrom}Winterfall Runner
step
  talk Princess Moira Bronzebeard##8929
  turnin The Fate of the Kingdom##4362 |goto Blackrock Depths - Dungeon -1,-1 |tip {turninat}Blackrock Depths - Dungeon
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  turnin Mor'zul Bloodbringer##7562 |goto Burning Steppes 12.69,31.64 |tip {turninat}Burning Steppes
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  talk Wynd Nightchaser##11079
  turnin Remorseful Highborne##5252 |goto Winterspring 51.97,30.39
step
  talk Kernda##11558
  turnin Winterfall Ritual Totem##8471 |goto Felwood 65.5,3.52 |tip {turninat}Felwood
step
  talk Gaeriyan##9299
  turnin Meet at the Grave##3912 |goto Tanaris 53.92,23.33 |tip {turninat}Tanaris
step
  talk Jaron Stoneshaper##10301
  turnin Enraged Wildkin##6604 |goto Winterspring 52.14,30.43
step
  turnin Falling to Corruption##5084 |goto Felwood 60.2,5.84 |tip {turninat}Felwood
step
  talk Jaron Stoneshaper##10301
  turnin The Ruins of Kel'Theril##5244 |goto Winterspring 52.14,30.43
step
  talk Jaron Stoneshaper##10301
  accept Troubled Spirits of Kel'Theril##5245 |goto Winterspring 52.14,30.43
step
  note Use Jaron's Pick to find the four Highborne Relic Fragments. Bring them to Aurora Skycaller in Eastern Plaguelands.
  collect First Relic Fragment##12896 |q 5245 |goto Winterspring 55.14,42.98 |tip {dropsfrom}Highborne Relic Fragment
step
  talk Wynd Nightchaser##11079
  accept The Crystal of Zin-Malor##5253 |goto Winterspring 51.97,30.39
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 71.63,50.09 |tip {turninat}Eastern Plaguelands
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
  talk Witch Doctor Mau'ari##10307
  turnin Luck Be With You##969 |goto Winterspring 61.92,38.3
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Witch Doctor Mau'ari##10307
  turnin A Little Luck##6606 |goto Winterspring 61.92,38.3
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  note Collect 2 Pristine Yeti Horns for Umi Rumplesnicker in Everlook.
  collect 2 Pristine Yeti Horn##12367 |q 977 |goto Winterspring 70.01,40.71 |tip {dropsfrom}Ice Thistle Matriarch, Ice Thistle Patriarch
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Haleh##10929
  turnin Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  turnin Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  turnin Enraged Wildkin##4863 |goto Winterspring 61.44,60.68
step
  click Jaron's Wagon##175586
  accept Enraged Wildkin##4864 |goto Winterspring 61.44,60.68
step
  note Pick up Jaron's Supplies from the snow, then find the wildkin that stole the amulet Jaron spoke of.
  collect Jaron's Supplies##12525 |q 4864 |goto Winterspring 61.41,60.73
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5162 |goto Winterspring 54.55,51.2
step
  talk Donova Snowden##9298
  turnin Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept High Chief Winterfall##5121 |goto Winterspring 31.27,45.16
step
  talk Arch Druid Fandral Staghelm##3516
  turnin The Crystal of Zin-Malor##5253 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Jaron Stoneshaper##10301
  turnin Enraged Wildkin##4864 |goto Winterspring 52.14,30.43
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24 |tip {turninat}Burning Steppes
step
  talk Aurora Skycaller##10304
  turnin Troubled Spirits of Kel'Theril##5245 |goto Eastern Plaguelands 46.49,16.03 |tip {turninat}Eastern Plaguelands
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  talk Felnok Steelspring##10468
  accept Tinkee Steamboil##4907 |goto Winterspring 61.63,38.61
step
  kill High Chief Winterfall##10738 |goto Winterspring 69.56,38.31 |elite |tip Loot the quest item here — it starts the quest.
  accept The Final Piece##5123 |goto Winterspring 69.56,38.31
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
  note Donova Snowden in Winterspring wants you to defeat High Chief Winterfall.
  kill High Chief Winterfall##10738 |q 5121 |goto Winterspring 69.56,38.31 |elite
step
  note Take Umi's Mechanical Yeti and scare her friends with it:
  kill Legacki##10978 |q 5163 |goto Winterspring 61.54,38.61
step
  talk Jeziba##10976
  turnin Wrath of the Blue Flight##5162 |goto Western Plaguelands 39.37,66.78 |tip {turninat}Western Plaguelands
step
  talk Donova Snowden##9298
  turnin High Chief Winterfall##5121 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin The Final Piece##5123 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Words of the High Chief##5128 |goto Winterspring 31.27,45.16
step
  talk Tinkee Steamboil##10267
  turnin Tinkee Steamboil##4907 |goto Burning Steppes 65.24,24 |tip {turninat}Burning Steppes
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
  talk Kelek Skykeeper##10920
  turnin Words of the High Chief##5128 |goto Felwood 51.14,81.75 |tip {turninat}Felwood
step
  note {travel}Redridge Mountains
  goto Redridge Mountains 24.9,44.45
]])
