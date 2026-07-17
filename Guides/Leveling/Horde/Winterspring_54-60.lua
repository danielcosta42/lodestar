-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Winterspring (54-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tanaris (47-68)",
}, [[
step
  note {fp}Yugrek
  goto Winterspring 60.47,36.3 |tip {vendor}
step
  talk Donova Snowden##9298
  accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  note Seek out Gregan Brewspewer in northern Feralas. From him, learn how you may acquire the Videre Elixir, then return to Donova Snowden in Winterspring.
  collect Videre Elixir##11243 |q 3909 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  note Collect 3 Toxic Horror Droplets for Donova Snowden in Winterspring.
  collect 3 Toxic Horror Droplet##12822 |q 5086 |goto Felwood 49.76,24.66 |tip {dropsfrom}Toxic Horror
step
  talk Thrall##4949
  accept The Royal Rescue##4003 |goto Orgrimmar 31.73,37.82
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  note Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell.
  kill Emperor Dagran Thaurissan##9019 |q 4003 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |elite
step
  talk Elder Brightspear##15606
  accept Brightspear the Elder##8726 |goto Winterspring 55.61,43.65
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
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
  collect 10 Thick Yeti Fur##12366 |q 3783 |goto Winterspring 44.74,38.51 |tip {dropsfrom}Rogue Ice Thistle, Ice Thistle Yeti, Ice Thistle Matriarch
step
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.97,42.75 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  kill Crazed Owlbeast##7452 |goto Winterspring 64.99,24.98 |tip Loot the quest item here — it starts the quest.
  accept Guarding Secrets##4882 |goto Winterspring 64.99,24.98
step
  talk Storm Shadowhoof##10303
  accept Ursius of the Shardtooth##5054 |goto Winterspring 61.93,38.38
step
  click Malyfous's Catalogue##175927
  accept Cap of the Scarlet Savant##5063 |goto Winterspring 61.0,38.8
step
  note In order to create the Cap of the Scarlet Savant, you will be required to bring the following items back to Malyfous Darkhammer: 1 Pristine Hide of the Beast; 5 Frayed Abomination Stitchings; 8 Arcane Crystals; 5 Enchanted Scarlet Thread.
  collect Pristine Hide of the Beast##12731 |q 5063 |goto Winterspring 61.0,38.8
step
  click Malyfous's Catalogue##175927
  accept Leggings of Arcana##5067 |goto Winterspring 61.0,38.8
step
  note In order to create the Leggings of Arcana, you will be required to bring the following items back to Malyfous Darkhammer: 1 Pristine Hide of the Beast; 5 Frayed Abomination Stitchings; 5 Arcanite Bars; 5 Frostwhisper's Embalming Fluid.
  collect Pristine Hide of the Beast##12731 |q 5067 |goto Winterspring 61.0,38.8
step
  click Malyfous's Catalogue##175927
  accept Breastplate of Bloodthirst##5068 |goto Winterspring 61.0,38.8
step
  note In order to create the Breastplate of Bloodthirst, you will be required to bring the following items back to Malyfous Darkhammer: 1 Pristine Hide of the Beast; 10 Frayed Abomination Stitchings; 5 Arcanite Bars; 5 Skin of Shadow.
  collect Pristine Hide of the Beast##12731 |q 5068 |goto Winterspring 61.0,38.8
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.84,37.84 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Firewater##5083 |goto Winterspring 66.84,37.84
step
  talk Malyfous Darkhammer##10637
  accept Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  note Bring Malyfous Darkhammer 6 Enchanted Thorium Bars, 2 Essence of Fire, and 4 Star Rubies. You will also need to turn in your Unfired Plate Gauntlets.
  collect Unfired Plate Gauntlets##12812 |q 5124 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Lilith the Lithe##11191
  accept Sweet Serenity##5305 |goto Winterspring 61.33,37.13
step
  note Travel to Stratholme and kill the Crimson Hammersmith. Recover the Crimson Hammersmith's Apron and return to Lilith.
  collect Crimson Hammersmith's Apron##13351 |q 5305 |goto Winterspring 61.33,37.13 |tip {dropsfrom}Crimson Hammersmith
step
  talk Kilram##11192
  accept Snakestone of the Shadow Huntress##5306 |goto Winterspring 61.3,37.07
step
  note Travel to Blackrock Spire and slay Shadow Hunter Vosh'gajin. Recover Vosh'gajin's Snakestone and return to Kilram.
  collect Vosh'gajin's Snakestone##13352 |q 5306 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Shadow Hunter Vosh'gajin
step
  talk Seril Scourgebane##11193
  accept Corruption##5307 |goto Winterspring 61.33,37.19
step
  note Find the Black Guard Swordsmith in Stratholme and destroy him. Recover the Insignia of the Black Guard and return to Seril Scourgebane.
  collect Insignia of the Black Guard##13350 |q 5307 |goto Winterspring 61.33,37.19 |tip {dropsfrom}Black Guard Swordsmith
step
  talk Jessica Redpath##11629
  accept Sister Pamela##5601 |goto Winterspring 61.28,38.98
step
  talk Gregor Greystone##10431
  accept The Everlook Report##6029 |goto Winterspring 61.35,38.97
step
  talk Gregor Greystone##10431
  accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
  talk Meggi Peppinrocker##11754
  accept Trouble in Winterspring!##6603 |goto Winterspring 60.66,38.17
step
  talk Harlo Wigglesworth##11755
  accept A Strange One##6605 |goto Winterspring 61.12,38.43
step
  talk Harlo Wigglesworth##11755
  accept A Little Luck##6606 |goto Winterspring 61.12,38.43
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.84,37.84 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Ritual Totem##8471 |goto Winterspring 66.84,37.84
step
  talk Elder Stonespire##15574
  accept Stonespire the Elder##8672 |goto Winterspring 61.45,37.81
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Shaman##7439 |q 8464 |goto Winterspring 67.86,38.06
step
  note Storm Shadowhoof at Everlook in Winterspring wants you to kill Ursius.
  kill Ursius##10806 |q 5054 |goto Winterspring 64.01,24.14
step
  talk Argent Officer Garush##10839
  turnin The Everlook Report##6029 |goto Tirisfal Glades 83.19,68.45 |tip {turninat}Tirisfal Glades
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
  talk Warcaller Gorlach##10880
  accept Camp Mojache##7492 |goto Orgrimmar 37.56,75.36
step
  talk Trull Failbane##10306
  turnin Guarding Secrets##4882 |goto Felwood 34.73,52.79 |tip {turninat}Felwood
step
  talk Donova Snowden##9298
  turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Trouble in Winterspring!##6603 |goto Winterspring 31.27,45.16
step
  talk Winna Hazzard##9996
  turnin A Strange One##6605 |goto Felwood 34.21,52.34 |tip {turninat}Felwood
step
  talk Donova Snowden##9298
  turnin Winterfall Firewater##5083 |goto Winterspring 31.27,45.16
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
  accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  note Find the Winterfall Runners and stop them from delivering their shipment to Winterfall Village.
  collect Winterfall Crate##12829 |q 5087 |goto Winterspring 27.96,34.48 |tip {dropsfrom}Winterfall Runner
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  talk Princess Moira Bronzebeard##8929
  turnin The Royal Rescue##4003 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1 |tip {turninat}Blackrock Depths - Dungeon -- Shadowforge City
step
  note Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
  kill Winterfall Pathfinder##7442 |q 5082 |goto Winterspring 34.72,37.72
step
  talk Elder Brightspear##15606
  turnin Brightspear the Elder##8726 |goto Winterspring 55.61,43.65
step
  talk Haleh##10929
  turnin Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  accept Wrath of the Blue Flight##5162 |goto Winterspring 54.55,51.2
step
  talk Malyfous Darkhammer##10637
  turnin Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  talk Kernda##11558
  turnin Winterfall Ritual Totem##8471 |goto Felwood 65.5,3.52 |tip {turninat}Felwood
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
  talk Storm Shadowhoof##10303
  turnin Ursius of the Shardtooth##5054 |goto Winterspring 61.93,38.38
step
  talk Talo Thornhoof##7776
  turnin Camp Mojache##7492 |goto Feralas 76.18,43.83 |tip {turninat}Feralas
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
  talk Malyfous Darkhammer##10637
  turnin Cap of the Scarlet Savant##5063 |goto Winterspring 60.99,38.78
step
  talk Witch Doctor Mau'ari##10307
  turnin Luck Be With You##969 |goto Winterspring 61.92,38.3
step
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Malyfous Darkhammer##10637
  turnin Leggings of Arcana##5067 |goto Winterspring 60.99,38.78
step
  talk Malyfous Darkhammer##10637
  turnin Breastplate of Bloodthirst##5068 |goto Winterspring 60.99,38.78
step
  talk Gaeriyan##9299
  turnin Meet at the Grave##3912 |goto Tanaris 53.92,23.33 |tip {turninat}Tanaris
step
  talk Witch Doctor Mau'ari##10307
  turnin A Little Luck##6606 |goto Winterspring 61.92,38.3
step
  turnin Falling to Corruption##5084 |goto Felwood 60.2,5.84 |tip {turninat}Felwood
step
  talk Elder Stonespire##15574
  turnin Stonespire the Elder##8672 |goto Winterspring 61.45,37.81
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
  talk Storm Shadowhoof##10303
  accept Brumeran of the Chillwind##5055 |goto Winterspring 61.93,38.38
step
  talk Lorax##10918
  turnin Lorax's Tale##5126 |goto Winterspring 63.79,73.76
step
  talk Lorax##10918
  accept The Demon Forge##5127 |goto Winterspring 63.79,73.76
step
  note Travel to Blackrock Spire and find Goraluk Anvilcrack. Slay him and then use the Blood Stained Pike upon his corpse. After his soul has been siphoned, the pike will be Soul Stained.
  collect Soul Stained Pike##12847 |q 5127 |goto Winterspring 63.79,73.76
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
  talk Jeziba##10976
  turnin Wrath of the Blue Flight##5162 |goto Western Plaguelands 39.37,66.78 |tip {turninat}Western Plaguelands
step
  note Storm Shadowhoof at Everlook in Winterspring wants you to kill Brumeran.
  kill Brumeran##10807 |q 5055 |goto Winterspring 62.54,57.9
step
  talk Storm Shadowhoof##10303
  turnin Brumeran of the Chillwind##5055 |goto Winterspring 61.93,38.38
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
  talk Storm Shadowhoof##10303
  accept Shy-Rotam##5056 |goto Winterspring 61.93,38.38
step
  note Storm Shadowhoof at Everlook in Winterspring wants you to defeat Shy-Rotam.
  kill Shy-Rotam##10737 |q 5056
step
  kill High Chief Winterfall##10738 |goto Winterspring 69.56,38.31 |tip Loot the quest item here — it starts the quest.
  accept The Final Piece##5123 |goto Winterspring 69.56,38.31
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
  talk Lorax##10918
  turnin The Demon Forge##5127 |goto Winterspring 63.79,73.76
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
  turnin Tinkee Steamboil##4907 |goto Burning Steppes 65.24,24.0 |tip {turninat}Burning Steppes
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
  talk Storm Shadowhoof##10303
  turnin Shy-Rotam##5056 |goto Winterspring 61.93,38.38
step
  talk Storm Shadowhoof##10303
  accept Past Endeavors##5057 |goto Winterspring 61.93,38.38
step
  talk Umi Rumplesnicker##10305
  accept A Yeti of Your Own##8798 |goto Winterspring 60.88,37.62
step
  talk Kelek Skykeeper##10920
  turnin Words of the High Chief##5128 |goto Felwood 51.14,81.75 |tip {turninat}Felwood
step
  talk Storm Shadowhoof##10303
  turnin Past Endeavors##5057 |goto Winterspring 61.93,38.38
step
  talk Umi Rumplesnicker##10305
  turnin A Yeti of Your Own##8798 |goto Winterspring 60.88,37.62
step
  note {travel}Tanaris
  goto Tanaris 53.54,28.01
]])
