-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Winterspring (54-59)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Silithus (57-60)",
	rev = "d8d5b14c",
}, [[
step
  ding 53
step
  only haveq(5249)
  note Find Starfall Village in Winterspring and speak with Wynd Nightchaser.
  talk Wynd Nightchaser##11079
  turnin To Winterspring!##5249 |goto Winterspring 51.97,30.39
step
  only haveq(5250)
  note Find Starfall in Winterspring and speak with Wynd Nightchaser.
  talk Wynd Nightchaser##11079
  turnin Starfall##5250 |goto Winterspring 51.97,30.39
step
  only haveq(8465)
  note Travel through Timbermaw Hold and exit into Winterspring. Speak with Salfa, who stands guard outside the entrance to Timbermaw Hold.
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5
step
  only haveq(980)
  note Travel to Winterspring and speak with Donova Snowden.
  talk Donova Snowden##9298
  turnin The New Springs##980 |goto Winterspring 31.27,45.16
step
  only haveq(3908)
  note Take Linken's Sword to Donova Snowden in Winterspring.
  talk Donova Snowden##9298
  turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  talk Donova Snowden##9298
  accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  only completed(980)
  talk Donova Snowden##9298
  accept Strange Sources##4842 |goto Winterspring 31.27,45.16
step
  only level>=53
  talk Wynd Nightchaser##11079
  accept The Ruins of Kel'Theril##5244 |goto Winterspring 51.97,30.39
step
  only haveq(5244)
  note Speak with Jaron Stoneshaper in Starfall Village.
  talk Jaron Stoneshaper##10301
  turnin The Ruins of Kel'Theril##5244 |goto Winterspring 52.14,30.43
step
  note {fp}Maethrya
  goto Winterspring 62.33,36.61 |tip {vendor}
step
  only completed(4808)
  talk Felnok Steelspring##10468
  accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
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
  note Collect 10 Thick Yeti Furs for Umi Rumplesnicker in Everlook.
  collect 10 Thick Yeti Fur##12366 |q 3783 |goto Winterspring 43.59,38.51 |tip {dropsfrom}Rogue Ice Thistle, Ice Thistle Yeti
step
  only completed(4808)
  note Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.
  collect 8 Uncracked Chillwind Horn##12444 |q 4809 |goto Winterspring 44.88,42.22 |tip {dropsfrom}Fledgling Chillwind, Chillwind Chimaera, Chillwind Ravager
step
  note Bring the Empty Firewater Flask to Donova Snowden in Winterspring.
  talk Donova Snowden##9298
  turnin Winterfall Firewater##5083 |goto Winterspring 31.27,45.16
step
  note Find Donova Snowden near the hot springs in Winterspring.
  talk Donova Snowden##9298
  turnin Trouble in Winterspring!##6603 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16
step
  note Donova Snowden in Winterspring wants you to kill 8 Winterfall Pathfinders, 8 Winterfall Den Watchers, and 8 Winterfall Totemics.
  kill Winterfall Totemic##7441 |q 5082/3 |goto Winterspring 39.75,42.66
  kill Winterfall Pathfinder##7442 |q 5082/1 |goto Winterspring 34.72,36.96
  kill Winterfall Den Watcher##7440 |q 5082 |goto Winterspring 66.54,35.92
step
  talk Donova Snowden##9298
  turnin Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
step
  only completed(980)
  note Follow Donova Snowden's instructions, then report back.
  goto Winterspring 59.82,74.25 |tip Discover Darkwhisper Gorge
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
  only completed(4808)
  talk Felnok Steelspring##10468
  turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
  only completed(980)
  talk Donova Snowden##9298
  turnin Strange Sources##4842 |goto Winterspring 31.27,45.16
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  only completed(5248) level>=53
  talk Remorseful Highborne##10684
  accept Remorseful Highborne##5252 |goto Winterspring 56.14,44.36
step
  talk Umi Rumplesnicker##10305
  accept Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  note Collect 2 Pristine Yeti Horns for Umi Rumplesnicker in Everlook.
  collect 2 Pristine Yeti Horn##12367 |q 977 |goto Winterspring 70.01,41.24 |tip {dropsfrom}Ice Thistle Matriarch, Ice Thistle Patriarch
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Shaman##7439 |q 8464/1 |goto Winterspring 67.86,38.06
  kill Winterfall Ursa##7438 |q 8464/3 |goto Winterspring 66.66,37.07
  kill Winterfall Den Watcher##7440 |q 8464 |goto Winterspring 66.54,35.92
step
  talk Umi Rumplesnicker##10305
  turnin Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
  only completed(5248) haveq(5252)
  note Speak with Wynd Nightchaser in Starfall Village, and ask about the proper place for the Crystal of Zin-Malor.
  talk Wynd Nightchaser##11079
  turnin Remorseful Highborne##5252 |goto Winterspring 51.97,30.39
step
  only completed(5248) completed(5252) level>=53
  talk Wynd Nightchaser##11079
  accept The Crystal of Zin-Malor##5253 |goto Winterspring 51.97,30.39
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  only level>=53
  talk Harlo Wigglesworth##11755
  accept Enraged Wildkin##6604 |goto Winterspring 61.12,38.43
step
  only haveq(6604)
  note Speak with Jaron Stoneshaper at Starfall Village.
  talk Jaron Stoneshaper##10301
  turnin Enraged Wildkin##6604 |goto Winterspring 52.14,30.43
step
  only level>=53
  talk Jaron Stoneshaper##10301
  accept Enraged Wildkin##4861 |goto Winterspring 52.14,30.43
step
  only haveq(4861)
  note Locate Jaron Stoneshaper's wrecked camp and supplies in southern Winterspring.
  turnin Enraged Wildkin##4861 |goto Winterspring 58.99,59.79
step
  only completed(4861) level>=53
  click Damaged Crate##175587
  accept Enraged Wildkin##4863 |goto Winterspring 58.99,59.79
step
  only haveq(4863)
  note Find Jaron Stoneshaper's wrecked wagon.
  turnin Enraged Wildkin##4863 |goto Winterspring 61.44,60.68
step
  only completed(4863) level>=53
  click Jaron's Wagon##175586
  accept Enraged Wildkin##4864 |goto Winterspring 61.44,60.68
step
  only haveq(4864)
  note Pick up Jaron's Supplies from the snow, then find the wildkin that stole the amulet Jaron spoke of.
  collect Jaron's Supplies##12525 |q 4864/1 |goto Winterspring 61.41,60.73
  collect Blue-feathered Amulet##12524 |q 4864 |goto Winterspring 64.3,24.98 |tip {dropsfrom}Crazed Owlbeast, Moontouched Owlbeast, Berserk Owlbeast
step
  only completed(979)
  talk Ranshalla##10300
  accept Guardians of the Altar##4901 |goto Winterspring 63.07,59.48
step
  only completed(979)
  note Protect Ranshalla while she attempts to reactivate the Altar of Elune. Report your findings to Erelas Ambersky in Rut'theran Village.
  goto Winterspring 64.85,63.73 |tip Discover the secret of the Altar of Elune
step
  only level>=55
  talk Harlo Wigglesworth##11755
  accept A Little Luck##6606 |goto Winterspring 61.12,38.43
step
  only haveq(6606)
  note Speak with Witch Doctor Mau'ari in Everlook.
  talk Witch Doctor Mau'ari##10307
  turnin A Little Luck##6606 |goto Winterspring 61.92,38.3
step
  only level>=55
  talk Witch Doctor Mau'ari##10307
  accept Luck Be With You##969 |goto Winterspring 61.92,38.3
step
  only haveq(969)
  note Collect 4 Frostmaul Shards for Witch Doctor Mau'ari in Everlook.
  collect 4 Frostmaul Shards##12334 |q 969 |goto Winterspring 61.84,67.99
step
  only haveq(969)
  talk Witch Doctor Mau'ari##10307
  turnin Luck Be With You##969 |goto Winterspring 61.92,38.3
step
  only completed(969) level>=55
  talk Witch Doctor Mau'ari##10307
  accept Cache of Mau'ari##975 |goto Winterspring 61.92,38.3
step
  only haveq(975)
  note Speak to Witch Doctor Mau'ari again in a moment to receive the lucky charm.
  talk Witch Doctor Mau'ari##10307
  turnin Cache of Mau'ari##975 |goto Winterspring 61.92,38.3
step
  only haveq(4864)
  talk Jaron Stoneshaper##10301
  turnin Enraged Wildkin##4864 |goto Winterspring 52.14,30.43
step
  only completed(5160) level>=57
  talk Haleh##10929
  accept Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  only completed(5160) haveq(5161)
  note Speak with Haleh if you wish to continue.
  talk Haleh##10929
  turnin Wrath of the Blue Flight##5161 |goto Winterspring 54.55,51.2
step
  note Take the Winterfall Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
  talk Kernda##11558
  turnin Winterfall Ritual Totem##8471 |goto Felwood 65.5,3.52 |tip {turninat}Felwood
step
  note Search the Deadwood furbolg camp in northern Felwood for a clue.
  turnin Falling to Corruption##5084 |goto Felwood 60.2,5.84 |tip {turninat}Felwood
step
  click Deadwood Cauldron##176091
  accept Mystery Goo##5085 |goto Felwood 60.2,5.84
step
  only completed(979)
  talk Erelas Ambersky##7916
  turnin Guardians of the Altar##4901 |goto Teldrassil 55.5,92.05 |tip {turninat}Teldrassil
step
  only completed(979)
  talk Erelas Ambersky##7916
  accept Wildkin of Elune##4902 |goto Teldrassil 55.5,92.05
step
  only completed(3908)
  note Seek out Gregan Brewspewer in northern Feralas. From him, learn how you may acquire the Videre Elixir, then return to Donova Snowden in Winterspring.
  collect Videre Elixir##11243 |q 3909 |goto Feralas 45.12,25.57 |tip {dropsfrom}Gregan Brewspewer
step
  only completed(3908)
  talk Donova Snowden##9298
  turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
  note Report back to Donova Snowden with your findings.
  talk Donova Snowden##9298
  turnin Mystery Goo##5085 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  talk Donova Snowden##9298
  accept Meet at the Grave##3912 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  only completed(979)
  note Speak with Arch Druid Fandral Staghelm in Darnassus.
  talk Arch Druid Fandral Staghelm##3516
  turnin Wildkin of Elune##4902 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only completed(5248) haveq(5253)
  note Deliver the Crystal of Zin-Malor to Arch Druid Fandral Staghelm in Darnassus.
  talk Arch Druid Fandral Staghelm##3516
  turnin The Crystal of Zin-Malor##5253 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only completed(3908)
  note Go to the graveyard outside Gadgetzan, and use the Videre Elixir. Follow the rest of Donova's instructions to find Gaeriyan.
  talk Gaeriyan##9299
  turnin Meet at the Grave##3912 |goto Tanaris 53.92,23.33 |tip {turninat}Tanaris
step
  only completed(3908)
  talk Gaeriyan##9299
  accept A Grave Situation##3913 |goto Tanaris 53.92,23.33
step
  only completed(3908)
  note Resurrect, then look for the gravestone that Gaeriyan told you to find.
  turnin A Grave Situation##3913 |goto Tanaris 53.81,29.06 |tip {turninat}Tanaris
step
  only completed(3908)
  click A Conspicuous Gravestone##148504
  accept Linken's Sword##3914 |goto Tanaris 53.81,29.06
step
  note Collect 3 Toxic Horror Droplets for Donova Snowden in Winterspring.
  collect 3 Toxic Horror Droplet##12822 |q 5086 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
step
  talk Donova Snowden##9298
  turnin Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
  talk Donova Snowden##9298
  accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  note Find the Winterfall Runners and stop them from delivering their shipment to Winterfall Village.
  collect Winterfall Crate##12829 |q 5087 |goto Winterspring 27.96,34.52 |tip {dropsfrom}Winterfall Runner
step
  talk Donova Snowden##9298
  turnin Winterfall Runners##5087 |goto Winterspring 31.27,45.16
step
  only level>=59
  talk Donova Snowden##9298
  accept High Chief Winterfall##5121 |goto Winterspring 31.27,45.16
step
  only haveq(5121)
  note Donova Snowden in Winterspring wants you to defeat High Chief Winterfall.
  kill High Chief Winterfall##10738 |q 5121 |goto Winterspring 69.56,38.31 |elite
step
  only level>=59
  kill High Chief Winterfall##10738 |goto Winterspring 69.56,38.31 |elite |tip Loot the quest item here — it starts the quest.
  accept The Final Piece##5123 |goto Winterspring 69.56,38.31
step
  only haveq(5121)
  talk Donova Snowden##9298
  turnin High Chief Winterfall##5121 |goto Winterspring 31.27,45.16
step
  only haveq(5123)
  note Bring the Crudely-written Log to Donova Snowden in Winterspring.
  talk Donova Snowden##9298
  turnin The Final Piece##5123 |goto Winterspring 31.27,45.16
step
  only completed(5123)
  talk Donova Snowden##9298
  accept Words of the High Chief##5128 |goto Winterspring 31.27,45.16
step
  only completed(3908)
  note Deliver Linken's Superior Sword to Linken in Un'Goro Crater.
  talk Linken##8737
  turnin Linken's Sword##3914 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  only completed(3908)
  talk Linken##8737
  accept A Gnome's Assistance##3941 |goto Un'Goro Crater 44.66,8.1
step
  only completed(3908)
  note Find J.D. Collie in the cave at Marshal's Refuge.
  talk J.D. Collie##9117
  turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.7 |tip {turninat}Un'Goro Crater
step
  only completed(3908)
  talk J.D. Collie##9117
  accept Linken's Memory##3942 |goto Un'Goro Crater 41.92,2.7
step
  only completed(3908)
  note Find Eridan Bluewind in southern Felwood.
  talk Eridan Bluewind##9116
  turnin Linken's Memory##3942 |goto Felwood 51.35,81.51 |tip {turninat}Felwood
step
  only completed(3908)
  talk Eridan Bluewind##9116
  accept Silver Heart##4084 |goto Felwood 51.35,81.51
step
  only haveq(5128)
  note Take the Crudely-written Log to Kelek Skykeeper in southern Felwood.
  talk Kelek Skykeeper##10920
  turnin Words of the High Chief##5128 |goto Felwood 51.14,81.75 |tip {turninat}Felwood
step
  only completed(3908)
  note Collect 11 Silvery Claws and 1 Irontree Heart for Eridan Bluewind in Felwood.
  collect 11 Silvery Claws##11172 |q 4084/1 |goto Felwood 48.43,78.77 |tip {dropsfrom}Angerclaw Bear, Angerclaw Grizzly, Angerclaw Mauler
  collect 1 Irontree Heart##11173 |q 4084 |goto Felwood 46.58,23.75 |tip {dropsfrom}Irontree Wanderer, Irontree Stomper
step
  only completed(3908)
  talk Eridan Bluewind##9116
  turnin Silver Heart##4084 |goto Felwood 51.35,81.51 |tip {turninat}Felwood
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
  note Take the Silver Totem of Aquementas to Linken in Marshal's Refuge.
  talk Linken##8737
  turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  only completed(3908) level>=56
  talk Linken##8737
  accept It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1
step
  only completed(3908) haveq(3962)
  note Travel to Fire Plume Ridge, south of Marshal's Refuge.
  kill Blazerunner##9376 |q 3962 |goto Un'Goro Crater 49.41,49.33 |elite
step
  only completed(3908) haveq(3962)
  talk Linken##8737
  turnin It's Dangerous to Go Alone##3962 |goto Un'Goro Crater 44.66,8.1 |tip {turninat}Un'Goro Crater
step
  note {travel}Silithus
  goto Silithus 51.61,38.63
]])
