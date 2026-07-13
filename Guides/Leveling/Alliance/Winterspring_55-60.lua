-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Winterspring (55-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Blackrock Depths - Dungeon -- Shadowforge City (54-59)",
}, [[
step
  note {fp}Maethrya
  goto Winterspring 62.33,36.61 |tip {vendor}
step
  talk Donova Snowden##9298
  accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Words of the High Chief##5128 |goto Winterspring 31.27,45.16
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  turnin Falling to Corruption##5084 |goto Felwood 60.2,5.84 |tip {turninat}Felwood
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
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Malyfous Darkhammer##10637
  accept Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  talk Lilith the Lithe##11191
  accept Sweet Serenity##5305 |goto Winterspring 61.33,37.13
step
  talk Kilram##11192
  accept Snakestone of the Shadow Huntress##5306 |goto Winterspring 61.3,37.07
step
  talk Seril Scourgebane##11193
  accept Corruption##5307 |goto Winterspring 61.33,37.19
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
  talk Elder Stonespire##15574
  accept Stonespire the Elder##8672 |goto Winterspring 61.45,37.81
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Shaman##7439 |q 8464 |goto Winterspring 67.86,38.06
step
  talk Remorseful Highborne##10684
  accept Remorseful Highborne##5252 |goto Winterspring 56.14,44.36
step
  talk Elder Brightspear##15606
  accept Brightspear the Elder##8726 |goto Winterspring 55.61,43.65
step
  turnin Enraged Wildkin##4861 |goto Winterspring 58.99,59.79
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  accept Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  talk Kelek Skykeeper##10920
  turnin Words of the High Chief##5128 |goto Felwood 51.14,81.75 |tip {turninat}Felwood
step
  talk Argent Officer Pureheart##10840
  turnin The Everlook Report##6028 |goto Western Plaguelands 42.97,83.55 |tip {turninat}Western Plaguelands
step
  talk Duke Nicholas Zverenhoff##11039
  turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 81.44,59.82 |tip {turninat}Eastern Plaguelands
step
  talk Pamela Redpath##10926
  turnin Sister Pamela##5601 |goto Eastern Plaguelands 36.45,90.8 |tip {turninat}Eastern Plaguelands
step
  talk Lorax##10918
  accept Lorax's Tale##5126 |goto Winterspring 63.79,73.76
step
  talk Donova Snowden##9298
  turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Trouble in Winterspring!##6603 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Meet at the Grave##3912 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  note Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
  kill Winterfall Pathfinder##7442 |q 5082 |goto Winterspring 34.72,37.72
step
  talk Wynd Nightchaser##11079
  turnin Remorseful Highborne##5252 |goto Winterspring 51.97,30.39
step
  talk Gaeriyan##9299
  turnin Meet at the Grave##3912 |goto Tanaris 53.92,23.33 |tip {turninat}Tanaris
step
  talk Jaron Stoneshaper##10301
  turnin Enraged Wildkin##6604 |goto Winterspring 52.14,30.43
step
  talk Jaron Stoneshaper##10301
  turnin The Ruins of Kel'Theril##5244 |goto Winterspring 52.14,30.43
step
  talk Jaron Stoneshaper##10301
  accept Troubled Spirits of Kel'Theril##5245 |goto Winterspring 52.14,30.43
step
  talk Wynd Nightchaser##11079
  accept The Crystal of Zin-Malor##5253 |goto Winterspring 51.97,30.39
step
  talk Malyfous Darkhammer##10637
  turnin Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  talk Lilith the Lithe##11191
  turnin Sweet Serenity##5305 |goto Winterspring 61.33,37.13
step
  talk Kilram##11192
  turnin Snakestone of the Shadow Huntress##5306 |goto Winterspring 61.3,37.07
step
  talk Seril Scourgebane##11193
  turnin Corruption##5307 |goto Winterspring 61.33,37.19
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
  talk Elder Stonespire##15574
  turnin Stonespire the Elder##8672 |goto Winterspring 61.45,37.81
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  talk Felnok Steelspring##10468
  accept Return to Tinkee##4810 |goto Winterspring 61.63,38.61
step
  talk Elder Brightspear##15606
  turnin Brightspear the Elder##8726 |goto Winterspring 55.61,43.65
step
  talk Haleh##10929
  turnin Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  turnin Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5162 |goto Winterspring 54.55,51.2
step
  talk Lorax##10918
  turnin Lorax's Tale##5126 |goto Winterspring 63.79,73.76
step
  talk Lorax##10918
  accept The Demon Forge##5127 |goto Winterspring 63.79,73.76
step
  talk Donova Snowden##9298
  turnin Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
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
  talk Aurora Skycaller##10304
  turnin Troubled Spirits of Kel'Theril##5245 |goto Eastern Plaguelands 53.5,22.0 |tip {turninat}Eastern Plaguelands
step
  talk Tinkee Steamboil##10267
  turnin Return to Tinkee##4810 |goto Burning Steppes 65.24,24.0 |tip {turninat}Burning Steppes
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  talk Felnok Steelspring##10468
  accept Tinkee Steamboil##4907 |goto Winterspring 61.63,38.61
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
  note Donova Snowden in Winterspring wants you to defeat High Chief Winterfall.
  kill High Chief Winterfall##10738 |q 5121 |goto Winterspring 69.56,38.31
step
  note Take Umi's Mechanical Yeti and scare her friends with it:
  kill Legacki##10978 |q 5163 |goto Winterspring 61.54,38.61
step
  talk Jeziba##10976
  turnin Wrath of the Blue Flight##5162 |goto Western Plaguelands 39.37,66.78 |tip {turninat}Western Plaguelands
step
  talk Lorax##10918
  turnin The Demon Forge##5127 |goto Winterspring 63.79,73.76
step
  talk Donova Snowden##9298
  turnin High Chief Winterfall##5121 |goto Winterspring 31.27,45.16
step
  talk Tinkee Steamboil##10267
  turnin Tinkee Steamboil##4907 |goto Burning Steppes 65.24,24.0 |tip {turninat}Burning Steppes
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
  talk Umi Rumplesnicker##10305
  accept A Yeti of Your Own##8798 |goto Winterspring 60.88,37.62
step
  talk Umi Rumplesnicker##10305
  turnin A Yeti of Your Own##8798 |goto Winterspring 60.88,37.62
step
  note {travel}Blackrock Depths - Dungeon -- Shadowforge City
  goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
]])
