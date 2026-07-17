-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Felwood (52-58)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Winterspring (54-60)",
}, [[
step
  note {fp}Brakkar
  goto Felwood 34.44,53.96 |tip {vendor}
step
  talk Warcaller Gorlach##10880
  accept The New Frontier##1018 |goto Orgrimmar 37.56,75.36
step
  talk Eridan Bluewind##9116
  accept Silver Heart##4084 |goto Felwood 51.35,81.51
step
  note Collect 11 Silvery Claws and 1 Irontree Heart for Eridan Bluewind in Felwood.
  collect 11 Silvery Claws##11172 |q 4084 |goto Felwood 46.31,79.69 |tip {dropsfrom}Angerclaw Bear, Angerclaw Grizzly, Angerclaw Mauler
step
  talk Maybess Riverbreeze##9529
  accept Cleansing Felwood##4102 |goto Felwood 46.75,83.13
step
  note Bring 15 Blood Amber to Maybess Riverbreeze in Felwood.
  collect 15 Blood Amber##11503 |q 4102 |goto Felwood 57.17,18.49 |tip {dropsfrom}Warpwood Moss Flayer, Warpwood Shredder, Dessecus
step
  talk Apothecary Zinge##5204
  accept Vivian Lagrave##4133 |goto Undercity 50.14,67.97
step
  talk Chemist Fuely##10136
  accept ... and a Batch of Ooze##4294 |goto Undercity 47.45,73.35
step
  note Gather Un'Goro Slime Samples from any of the slimes in Un'Goro Crater. Then, using the Testing Equipment next to Chemist Fuely in Undercity, see which of your samples are the most pure. Bring 5 of the Pure Un'Goro Samples you find to Chemist Fuely.
  collect 5 ... and a Batch of Ooze##12236 |q 4294 |goto Undercity 47.45,73.35
step
  talk Greta Mosshoof##10922
  accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Lady Sylvanas Windrunner##10181
  accept The Champion of the Banshee Queen##5961 |goto Undercity 58.05,91.79
step
  talk Cenarion Emissary Blackhoof##15188
  accept Taking Back Silithus##8276 |goto Orgrimmar 47.64,65.76
step
  talk Grazle##11554
  accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Warrior##7153 |q 8460 |goto Felwood 48.59,91.43
step
  talk Shadowmage Vivian Lagrave##9078
  turnin Vivian Lagrave##4133 |goto Badlands 2.9,47.76 |tip {turninat}Badlands
step
  talk Nathanos Blightcaller##11878
  turnin The Champion of the Banshee Queen##5961 |goto Eastern Plaguelands 26.54,74.73 |tip {turninat}Eastern Plaguelands
step
  talk Bluff Runner Windstrider##10881
  accept The New Frontier##1000 |goto Thunder Bluff 44.33,58.76
step
  talk Winna Hazzard##9996
  accept Well of Corruption##4505 |goto Felwood 34.21,52.34
step
  note Collect a sample of corrupted water from the Jadefire Satyrs' moonwell and bring it to Winna Hazzard at Bloodvenom Post.
  collect Filled Flasket##12567 |q 4505 |goto Felwood 34.21,52.34
step
  talk Trull Failbane##10306
  accept Wild Guardians##4521 |goto Felwood 34.73,52.79
step
  talk Trull Failbane##10306
  accept Guarding Secrets##4883 |goto Felwood 34.73,52.79
step
  talk Dreka'Sur##9620
  accept A Husband's Last Battle##6162 |goto Felwood 34.8,52.73
step
  note Kill Overlord Ror and return his claw to Dreka'Sur at Bloodvenom Post in Felwood.
  collect Overlord Ror's Claw##15879 |q 6162 |goto Felwood 48.23,94.28 |tip {dropsfrom}Overlord Ror
step
  talk Elder Nightwind##15603
  accept Nightwind the Elder##8723 |goto Felwood 37.64,53.0
step
  note Enter Jaedenar and slay 4 Jaedenar Hounds, 4 Jaedenar Guardsmen, 6 Jaedenar Adepts, and 6 Jaedenar Cultists before returning to Greta Mosshoof in Felwood.
  kill Jaedenar Hound##7125 |q 5155 |goto Felwood 38.38,60.55
step
  note Using the Purified Moon Well Water, douse the flames of the four braziers of protection within Shadow Hold in Felwood, then return to Greta Mosshoof in the Emerald Sanctuary.
  collect Brazier of Pain##176158 |q 5165 |goto Felwood 36.27,56.3
step
  talk Windcaller Proudhorn##15191
  turnin Taking Back Silithus##8276 |goto Silithus 51.15,38.29 |tip {turninat}Silithus
step
  talk Harbinger Balthazad##10879
  accept The New Frontier##1004 |goto Undercity 63.9,44.08
step
  kill Jaedenar Enforcer##7114 |goto Felwood 38.84,49.47 |tip Loot the quest item here — it starts the quest.
  accept A Strange Red Key##5202 |goto Felwood 38.84,49.47
step
  only Warlock
  talk Impsy##14470
  accept Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8420 |goto Blasted Lands 59.78,54.09 |tip {dropsfrom}Felguard Sentry, Legashi Satyr, Legashi Rogue
step
  note Trull Failbane in Felwood wants you to kill 15 Raging Owlbeasts and 15 Ragged Owlbeasts.
  kill Raging Owlbeast##7451 |q 4521 |goto Winterspring 58.73,31.69
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1000 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1004 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Nara Wildmane##5770
  turnin Guarding Secrets##4883 |goto Thunder Bluff 75.65,31.61 |tip {turninat}Thunder Bluff
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1018 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Rabine Saturna##1123 |goto Thunder Bluff 78.62,28.56
step
  click Deadwood Cauldron##176091
  accept Mystery Goo##5085 |goto Felwood 60.2,5.84
step
  talk Meilosh##11557
  accept Runecloth##6031 |goto Felwood 65.69,2.81
step
  note Bring 30 Runecloth to Meilosh in Timbermaw Hold.
  collect 30 Runecloth##14047 |q 6031 |goto Alterac Valley - Battleground 51.71,94.86 |tip {dropsfrom}Grimtooth, Stonard Shaman, Firewing Bloodwarder
step
  talk Meilosh##11557
  accept Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  note Bring 2 Mooncloth to Meilosh in Timbermaw Hold.
  collect 2 Mooncloth##14342 |q 6032 |goto Felwood 65.69,2.81
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  kill Deadwood Den Watcher##7156 |goto Felwood 62.08,8.01 |tip Loot the quest item here — it starts the quest.
  accept Deadwood Ritual Totem##8470 |goto Felwood 62.08,8.01
step
  talk Gorn One Eye##11555
  accept The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  collect Essence of Xandivious##21145 |q 8481 |goto Felwood 65.18,2.68 |tip {dropsfrom}Xandivious
step
  talk Gorn One Eye##11555
  accept The Brokering of Peace##8485 |goto Felwood 65.18,2.68
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461 |goto Felwood 62.08,8.01
step
  talk Maybess Riverbreeze##9529
  turnin Cleansing Felwood##4102 |goto Felwood 46.75,83.13
step
  talk Chemist Fuely##10136
  turnin ... and a Batch of Ooze##4294 |goto Undercity 47.45,73.35 |tip {turninat}Undercity
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Greta Mosshoof##10922
  turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Eridan Bluewind##9116
  turnin Silver Heart##4084 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Aquementas##4005 |goto Felwood 51.35,81.51
step
  note Take the Book of Aquor, the Silvery Claws, and the Irontree Heart to Tanaris.
  collect Silver Totem of Aquementas##11522 |q 4005 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  note Take the Empty Canteen to the Moon Well in the center of Jaedenar and fill it before returning to Greta Mosshoof in Felwood.
  collect Corrupt Moonwell Water##12907 |q 5157 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  accept A Final Blow##5242 |goto Felwood 51.21,82.11
step
  talk Maybess Riverbreeze##9529
  accept Salve via Hunting##5882 |goto Felwood 46.75,83.13
step
  collect Corrupted Soul Shard##11515 |q 5882 |goto Felwood 40.4,70.82 |tip {dropsfrom}Cursed Ooze, Tainted Ooze, Vile Ooze
step
  talk Maybess Riverbreeze##9529
  accept Salve via Mining##5883 |goto Felwood 46.75,83.13
step
  collect Tainted Vitriol##11513 |q 5883 |goto Burning Steppes 62.76,44.03 |tip {dropsfrom}Small Thorium Vein, Gold Vein, Mithril Deposit
step
  talk Maybess Riverbreeze##9529
  accept Salve via Gathering##5884 |goto Felwood 46.75,83.13
step
  collect Fel Creep##11514 |q 5884 |goto Western Plaguelands 47.04,61.35 |tip {dropsfrom}Arthas' Tears, Gromsblood, Plaguebloom
step
  talk Maybess Riverbreeze##9529
  accept Salve via Skinning##5885 |goto Felwood 46.75,83.13
step
  collect Patch of Tainted Skin##11512 |q 5885 |goto Felwood 46.75,83.13
step
  talk Maybess Riverbreeze##9529
  accept Salve via Disenchanting##5886 |goto Felwood 46.75,83.13
step
  collect Lesser Nether Essence##11174 |q 5886 |goto Felwood 46.75,83.13
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  talk Dreka'Sur##9620
  turnin A Husband's Last Battle##6162 |goto Felwood 34.8,52.73
step
  talk Captured Arko'narin##11016
  turnin A Strange Red Key##5202 |goto Felwood 36.21,55.47
step
  talk Elder Nightwind##15603
  turnin Nightwind the Elder##8723 |goto Felwood 37.64,53.0
step
  talk Winna Hazzard##9996
  turnin Well of Corruption##4505 |goto Felwood 34.21,52.34
step
  talk Donova Snowden##9298
  turnin Mystery Goo##5085 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  talk Trull Failbane##10306
  turnin Wild Guardians##4521 |goto Felwood 34.73,52.79
step
  talk Trull Failbane##10306
  accept Wild Guardians##4741 |goto Felwood 34.73,52.79
step
  talk Captured Arko'narin##11016
  accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.47
step
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5 |tip {turninat}Winterspring
step
  only Warlock
  talk Impsy##14470
  turnin Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  talk Rabine Saturna##11801
  turnin Rabine Saturna##1123 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  talk Thrall##4949
  turnin The Brokering of Peace##8485 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Impsy##14470
  accept The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Warlock
  note Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
  collect 10 Rotting Wood##20613 |q 8421 |goto Felwood 48.7,23.1 |tip {dropsfrom}Irontree Wanderer, Irontree Stomper, Withered Protector
step
  note Kill Moora and Salia, and bring Shadow Lord Fel'dan's Head to Greta Mosshoof in Felwood.
  kill Moora##9861 |q 5242 |goto Felwood 38.81,46.87
step
  talk Nafien##15395
  turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
step
  talk Meilosh##11557
  turnin Runecloth##6031 |goto Felwood 65.69,2.81
step
  talk Meilosh##11557
  turnin Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  talk Kernda##11558
  turnin Deadwood Ritual Totem##8470 |goto Felwood 65.5,3.52
step
  talk Gorn One Eye##11555
  turnin The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  talk J.D. Collie##9117
  turnin Aquementas##4005 |goto Un'Goro Crater 41.92,2.7 |tip {turninat}Un'Goro Crater
step
  note Trull Failbane in Felwood wants you to hunt 13 Moontouched Owlbeasts.
  kill Moontouched Owlbeast##7453 |q 4741 |goto Winterspring 64.75,22.96
step
  talk Jessir Moonbow##11019
  turnin Rescue From Jaedenar##5203 |goto Felwood 51.35,82.01
step
  talk Maybess Riverbreeze##9529
  turnin Salve via Hunting##5882 |goto Felwood 46.75,83.13
step
  talk Greta Mosshoof##10922
  turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  turnin A Final Blow##5242 |goto Felwood 51.21,82.11
step
  talk Maybess Riverbreeze##9529
  turnin Salve via Mining##5883 |goto Felwood 46.75,83.13
step
  talk Maybess Riverbreeze##9529
  turnin Salve via Gathering##5884 |goto Felwood 46.75,83.13
step
  talk Maybess Riverbreeze##9529
  turnin Salve via Skinning##5885 |goto Felwood 46.75,83.13
step
  talk Maybess Riverbreeze##9529
  turnin Salve via Disenchanting##5886 |goto Felwood 46.75,83.13
step
  talk Greta Mosshoof##10922
  accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  accept Retribution of the Light##5204 |goto Felwood 51.35,82.01
step
  talk Trull Failbane##10306
  turnin Wild Guardians##4741 |goto Felwood 34.73,52.79
step
  talk Trull Failbane##10306
  accept Wild Guardians##4721 |goto Felwood 34.73,52.79
step
  note Return to Jaedenar and kill the succubus Rakaiah before finding the Remains of Trey Lightforge.
  kill Rakaiah##9518 |q 5204 |goto Felwood 38.3,50.51
step
  talk Islen Waterseer##5901
  turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only Warlock
  talk Impsy##14470
  turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  accept Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warlock
  note Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
  collect Amber Voodoo Feather##20606 |q 8422 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  note Trull Failbane in Felwood wants you to hunt 10 Berserk Owlbeasts in Winterspring.
  kill Berserk Owlbeast##7454 |q 4721 |goto Winterspring 65.42,22.67
step
  talk Remains of Trey Lightforge##11020
  turnin Retribution of the Light##5204 |goto Felwood 38.5,50.41
step
  talk Trull Failbane##10306
  turnin Wild Guardians##4721 |goto Felwood 34.73,52.79
step
  talk Remains of Trey Lightforge##11020
  accept The Remains of Trey Lightforge##5385 |goto Felwood 38.5,50.41
step
  only Warlock
  talk Impsy##14470
  turnin Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  talk Jessir Moonbow##11019
  turnin The Remains of Trey Lightforge##5385 |goto Felwood 51.35,82.01
step
  note {travel}Winterspring
  goto Winterspring 31.27,45.16
]])
