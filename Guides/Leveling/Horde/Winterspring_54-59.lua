-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Winterspring (54-59)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Silithus (57-60)",
}, [[
step
  only completed(3908)
  talk Donova Snowden##9298
  accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  only completed(980)
  talk Donova Snowden##9298
  accept Strange Sources##4842 |goto Winterspring 31.27,45.16
step
  only completed(980)
  talk Donova Snowden##9298
  turnin Strange Sources##4842 |goto Winterspring 31.27,45.16
step
  note {fp}Yugrek
  goto Winterspring 60.47,36.3 |tip {vendor}
step
  only completed(4808)
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Harlo Wigglesworth##11755
  accept A Strange One##6605 |goto Winterspring 61.12,38.43
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
  talk Storm Shadowhoof##10303
  accept Ursius of the Shardtooth##5054 |goto Winterspring 61.93,38.38
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.66,37.07 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Firewater##5083 |goto Winterspring 66.66,37.07
step
  talk Meggi Peppinrocker##11754
  accept Trouble in Winterspring!##6603 |goto Winterspring 60.66,38.17
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.66,37.07 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Ritual Totem##8471 |goto Winterspring 66.66,37.07
step
  note Storm Shadowhoof at Everlook in Winterspring wants you to kill Ursius.
  kill Ursius##10806 |q 5054 |goto Winterspring 60.92,32.9 |elite
step
  talk Storm Shadowhoof##10303
  turnin Ursius of the Shardtooth##5054 |goto Winterspring 61.93,38.38
step
  talk Donova Snowden##9298
  turnin Winterfall Firewater##5083 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin Trouble in Winterspring!##6603 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16
step
  note Collect 10 Thick Yeti Furs for Umi Rumplesnicker in Everlook.
  collect 10 Thick Yeti Fur##12366 |q 3783 |goto Winterspring 43.59,38.51 |tip {dropsfrom}Rogue Ice Thistle, Ice Thistle Yeti
step
  note Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
  kill Winterfall Pathfinder##7442 |q 5082 |goto Winterspring 34.72,36.96
step
  only completed(4808)
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.88,42.22 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
  only completed(4808)
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Donova Snowden##9298
  turnin Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  talk Storm Shadowhoof##10303
  accept Brumeran of the Chillwind##5055 |goto Winterspring 61.93,38.38
step
  note Collect 2 Pristine Yeti Horns for Umi Rumplesnicker in Everlook.
  collect 2 Pristine Yeti Horn##12367 |q 977 |goto Winterspring 70.01,41.24 |tip {dropsfrom}Ice Thistle Matriarch, Ice Thistle Patriarch
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Shaman##7439 |q 8464 |goto Winterspring 67.86,38.06
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
  note Take Umi's Mechanical Yeti and scare her friends with it:
  talk Legacki##10978 |q 5163 |goto Winterspring 61.54,38.61
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  note Storm Shadowhoof at Everlook in Winterspring wants you to kill Brumeran.
  kill Brumeran##10807 |q 5055 |goto Winterspring 62.54,57.9 |elite
step
  talk Storm Shadowhoof##10303
  turnin Brumeran of the Chillwind##5055 |goto Winterspring 61.93,38.38
step
  only completed(4741)
  kill Crazed Owlbeast##7452 |goto Winterspring 64.3,24.98 |tip Loot the quest item here — it starts the quest.
  accept Guarding Secrets##4882 |goto Winterspring 64.3,24.98
step
  only completed(5160)
  talk Haleh##10929
  accept Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  only completed(5160)
  talk Haleh##10929
  turnin Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  talk Storm Shadowhoof##10303
  accept Shy-Rotam##5056 |goto Winterspring 61.93,38.38
step
  talk Harlo Wigglesworth##11755
  accept A Little Luck##6606 |goto Winterspring 61.12,38.43
step
  note Storm Shadowhoof at Everlook in Winterspring wants you to defeat Shy-Rotam.
  kill Shy-Rotam##10737 |q 5056 |goto Winterspring 49.81,9.8 |elite
step
  talk Storm Shadowhoof##10303
  turnin Shy-Rotam##5056 |goto Winterspring 61.93,38.38
step
  talk Witch Doctor Mau'ari##10307
  turnin A Little Luck##6606 |goto Winterspring 61.92,38.3
step
  talk Witch Doctor Mau'ari##10307
  accept Luck Be With You##969 |goto Winterspring 61.92,38.3
step
  talk Storm Shadowhoof##10303
  accept Past Endeavors##5057 |goto Winterspring 61.93,38.38
step
  talk Storm Shadowhoof##10303
  turnin Past Endeavors##5057 |goto Winterspring 61.93,38.38
step
  note Collect 4 Frostmaul Shards for Witch Doctor Mau'ari in Everlook.
  collect 4 Frostmaul Shards##12334 |q 969 |goto Winterspring 61.84,67.99 |tip {dropsfrom}Frostmaul Giant, Frostmaul Preserver, Kashoch the Reaver
step
  talk Witch Doctor Mau'ari##10307
  turnin Luck Be With You##969 |goto Winterspring 61.92,38.3
step
  talk Witch Doctor Mau'ari##10307
  accept Cache of Mau'ari##975 |goto Winterspring 61.92,38.3
step
  talk Witch Doctor Mau'ari##10307
  turnin Cache of Mau'ari##975 |goto Winterspring 61.92,38.3
step
  talk Winna Hazzard##9996
  turnin A Strange One##6605 |goto Felwood 34.21,52.34 |tip {turninat}Felwood
step
  talk Kernda##11558
  turnin Winterfall Ritual Totem##8471 |goto Felwood 65.5,3.52 |tip {turninat}Felwood
step
  only completed(4741)
  talk Trull Failbane##10306
  turnin Guarding Secrets##4882 |goto Felwood 34.73,52.79 |tip {turninat}Felwood
step
  talk Harbinger Balthazad##10879
  accept Camp Mojache##7492 |goto Undercity 63.9,44.08
step
  only completed(3908)
  note Seek out Gregan Brewspewer in northern Feralas. From him, learn how you may acquire the Videre Elixir, then return to Donova Snowden in Winterspring.
  collect Videre Elixir##11243 |q 3909 |goto Feralas 45.12,25.57 |tip {dropsfrom}Gregan Brewspewer
step
  only completed(3908)
  talk Donova Snowden##9298
  turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  talk Talo Thornhoof##7776
  turnin Camp Mojache##7492 |goto Feralas 76.18,43.83 |tip {turninat}Feralas
step
  turnin Falling to Corruption##5084 |goto Felwood 60.2,5.84 |tip {turninat}Felwood
step
  only completed(3908)
  talk Donova Snowden##9298
  accept Meet at the Grave##3912 |goto Winterspring 31.27,45.16
step
  only completed(4741)
  talk Trull Failbane##10306
  accept Guarding Secrets##4883 |goto Felwood 34.73,52.79
step
  only completed(3908)
  talk Gaeriyan##9299
  turnin Meet at the Grave##3912 |goto Tanaris 53.92,23.33 |tip {turninat}Tanaris
step
  only completed(4741)
  talk Nara Wildmane##5770
  turnin Guarding Secrets##4883 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  only completed(3908)
  talk Gaeriyan##9299
  accept A Grave Situation##3913 |goto Tanaris 53.92,23.33
step
  click Deadwood Cauldron##176091
  accept Mystery Goo##5085 |goto Felwood 60.2,5.84
step
  only completed(3908)
  turnin A Grave Situation##3913 |goto Tanaris 53.81,29.06 |tip {turninat}Tanaris
step
  talk Donova Snowden##9298
  turnin Mystery Goo##5085 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  click A Conspicuous Gravestone##148504
  accept Linken's Sword##3914 |goto Tanaris 53.81,29.06
step
  talk Donova Snowden##9298
  accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  note Collect 3 Toxic Horror Droplets for Donova Snowden in Winterspring.
  collect 3 Toxic Horror Droplet##12822 |q 5086 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
step
  only completed(3908)
  talk Linken##8737
  turnin Linken's Sword##3914 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  talk Donova Snowden##9298
  turnin Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  talk Linken##8737
  accept A Gnome's Assistance##3941 |goto Un'Goro Crater 44.66,8.1
step
  talk Donova Snowden##9298
  accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  note Find the Winterfall Runners and stop them from delivering their shipment to Winterfall Village.
  collect Winterfall Crate##12829 |q 5087 |goto Winterspring 27.96,34.52 |tip {dropsfrom}Winterfall Runner
step
  only completed(3908)
  talk J.D. Collie##9117
  turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.7 |tip {turninat}Un'Goro Crater
step
  talk Donova Snowden##9298
  turnin Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  talk J.D. Collie##9117
  accept Linken's Memory##3942 |goto Un'Goro Crater 41.92,2.7
step
  talk Donova Snowden##9298
  accept High Chief Winterfall##5121 |goto Winterspring 31.27,45.16
step
  kill High Chief Winterfall##10738 |goto Winterspring 69.56,38.31 |elite |tip Loot the quest item here — it starts the quest.
  accept The Final Piece##5123 |goto Winterspring 69.56,38.31
step
  note Donova Snowden in Winterspring wants you to defeat High Chief Winterfall.
  kill High Chief Winterfall##10738 |q 5121 |goto Winterspring 69.56,38.31 |elite
step
  only completed(3908)
  talk Eridan Bluewind##9116
  turnin Linken's Memory##3942 |goto Felwood 51.35,81.51 |tip {turninat}Felwood
step
  talk Donova Snowden##9298
  turnin High Chief Winterfall##5121 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  turnin The Final Piece##5123 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  talk Eridan Bluewind##9116
  accept Silver Heart##4084 |goto Felwood 51.35,81.51
step
  talk Donova Snowden##9298
  accept Words of the High Chief##5128 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  note Collect 11 Silvery Claws and 1 Irontree Heart for Eridan Bluewind in Felwood.
  collect 11 Silvery Claws##11172 |q 4084 |goto Felwood 48.43,78.77 |tip {dropsfrom}Angerclaw Bear, Angerclaw Grizzly, Angerclaw Mauler
step
  only completed(3908)
  talk Eridan Bluewind##9116
  turnin Silver Heart##4084 |goto Felwood 51.35,81.51 |tip {turninat}Felwood
step
  talk Kelek Skykeeper##10920
  turnin Words of the High Chief##5128 |goto Felwood 51.14,81.75 |tip {turninat}Felwood
step
  only completed(3908)
  talk Eridan Bluewind##9116
  accept Aquementas##4005 |goto Felwood 51.35,81.51
step
  only completed(3908)
  note Take the Book of Aquor, the Silvery Claws, and the Irontree Heart to Tanaris.
  collect Silver Totem of Aquementas##11522 |q 4005 |goto Tanaris 70.4,49.9 |tip {dropsfrom}Aquementas
step
  only completed(3908)
  talk J.D. Collie##9117
  turnin Aquementas##4005 |goto Un'Goro Crater 41.92,2.7 |tip {turninat}Un'Goro Crater
step
  only completed(3908)
  talk J.D. Collie##9117
  accept Linken's Adventure##3961 |goto Un'Goro Crater 41.92,2.7
step
  only completed(3908)
  talk Linken##8737
  turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  only completed(3908)
  talk Linken##8737
  accept It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1
step
  only completed(3908)
  note Travel to Fire Plume Ridge, south of Marshal's Refuge.
  kill Blazerunner##9376 |q 3962 |goto Un'Goro Crater 49.41,49.33 |elite
step
  only completed(3908)
  talk Linken##8737
  turnin It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  note {travel}Orgrimmar
  goto Orgrimmar 47.64,65.76
]])
