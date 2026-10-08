-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Felwood (54-56)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Moonglade (20-60)",
}, [[
step
  talk Eridan Bluewind##9116
  accept Silver Heart##4084 |goto Felwood 51.35,81.51
step
  note Collect 11 Silvery Claws and 1 Irontree Heart for Eridan Bluewind in Felwood.
  collect 11 Silvery Claws##11172 |q 4084 |goto Felwood 46.31,79.69 |tip {dropsfrom}Angerclaw Bear, Angerclaw Grizzly, Angerclaw Mauler
step
  talk Arathandris Silversky##9528
  accept Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
  note Bring 15 Blood Amber to Arathandris Silversky in Felwood.
  collect 15 Blood Amber##11503 |q 4101 |goto Felwood 57.17,18.49 |tip {dropsfrom}Warpwood Moss Flayer, Warpwood Shredder, Dessecus
step
  talk Eridan Bluewind##9116
  accept The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Taronn Redfeather##10921
  accept Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  talk Greta Mosshoof##10922
  accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Ivy Leafrunner##10924
  accept To Winterspring!##5249 |goto Felwood 50.96,81.58
step
  talk Grazle##11554
  accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  note Kill 11 Jadefire Felsworns, 9 Jadefire Shadowstalkers, 9 Jadefire Rogues, and Xavathras. Return to Eridan Bluewind in Felwood when the task has been completed.
  kill Jadefire Felsworn##7109 |q 4421 |goto Felwood 39.76,83.26
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Warrior##7153 |q 8460 |goto Felwood 48.59,91.43
step
  note Enter Jaedenar and slay 4 Jaedenar Hounds, 4 Jaedenar Guardsmen, 6 Jaedenar Adepts, and 6 Jaedenar Cultists before returning to Greta Mosshoof in Felwood.
  kill Jaedenar Hound##7125 |q 5155 |goto Felwood 38.38,60.55
step
  note Using the Purified Moon Well Water, douse the flames of the four braziers of protection within Shadow Hold in Felwood, then return to Greta Mosshoof in the Emerald Sanctuary.
  collect Brazier of Pain##176158 |q 5165 |goto Felwood 36.27,56.3
step
  kill Jaedenar Enforcer##7114 |goto Felwood 38.84,49.47 |tip Loot the quest item here — it starts the quest.
  accept A Strange Red Key##5202 |goto Felwood 38.84,49.47
step
  only Warlock
  talk Niby the Almighty##14469
  accept What Niby Commands##7601 |goto Felwood 41.38,44.85
step
  only Warlock
  talk Lord Banehollow##9516
  accept Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  only Warlock
  note Confront Ulathek, then bring The Traitor's Heart to Lord Banehollow in Jaedenar.
  collect The Traitor's Heart##18719 |q 7624 |goto Felwood 40.76,48.42 |tip {dropsfrom}Ulathek
step
  only Warlock
  talk Impsy##14470
  accept Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8420 |goto Blasted Lands 57.91,51.54 |tip {dropsfrom}Felhunter, Felguard Sentry, Legashi Satyr
step
  note Seek out and destroy 2 Entropic Beasts and 2 Entropic Horrors while exploring Shatter Scar Vale. After checking to see if the craters there are still filled with corrupt fel water, return to Taronn Redfeather in Felwood.
  kill Entropic Beast##9878 |q 5156 |goto Felwood 42.46,40.39
step
  talk Wynd Nightchaser##11079
  turnin To Winterspring!##5249 |goto Winterspring 51.97,30.39 |tip {turninat}Winterspring
step
  kill Xavaric##10648 |goto Felwood 39.07,22.35 |tip Loot the quest item here — it starts the quest.
  accept Flute of Xavaric##939 |goto Felwood 39.07,22.35
step
  note Bring the Flute of Xavaric and 5 Jadefire Felbind samples to Eridan Bluewind in southern Felwood.
  collect Jadefire Felbind##11674 |q 939 |goto Felwood 41.65,85.57 |tip {dropsfrom}Jadefire Satyr, Jadefire Rogue, Jadefire Trickster
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept An Introduction##7633 |goto Felwood 47.78,24.08
step
  only Hunter
  talk Hastat the Ancient##14526
  accept Ancient Sinew Wrapped Lamina##7634 |goto Felwood 46.7,24.06
step
  only Hunter
  note Hastat the Ancient has asked that you bring him a Mature Blue Dragon Sinew. Should you find this sinew, return it to Hastat in Felwood.
  collect Mature Blue Dragon Sinew##18704 |q 7634 |goto Winterspring 56.52,50.94 |tip {dropsfrom}Cobalt Wyrmkin, Cobalt Scalebane, Azuregos
step
  only Hunter
  talk Stoma the Ancient##14525
  accept A Proper String##7635 |goto Felwood 48.39,22.29
step
  only Hunter
  note Stoma the Ancient has asked that you bring him a Mature Black Dragon Sinew. Should you find this sinew, return it to Stoma in Felwood.
  collect Mature Black Dragon Sinew##18705 |q 7635 |goto Onyxia's Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Onyxia
step
  only Hunter
  talk Vartrus the Ancient##14524
  accept Stave of the Ancients##7636 |goto Felwood 47.78,24.08
step
  only Hunter
  note You must find and destroy these four demonic corrupters:
  kill Simone the Inconspicuous##14527 |goto Un'Goro Crater 34.32,40.79 |elite
  collect Simone's Head##18952 |q 7636 |goto Un'Goro Crater 34.32,40.79
step
  click Deadwood Cauldron##176091
  accept Mystery Goo##5085 |goto Felwood 60.2,5.84
step
  talk Meilosh##11557
  accept Runecloth##6031 |goto Felwood 65.69,2.81
step
  note Bring 30 Runecloth to Meilosh in Timbermaw Hold.
  collect 30 Runecloth##14047 |q 6031 |goto Felwood 65.69,2.81 |tip {dropsfrom}Heavy Fel Iron Chest, Adamantite Bound Chest, Felsteel Chest
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  kill Deadwood Den Watcher##7156 |goto Felwood 62.08,8.01 |tip Loot the quest item here — it starts the quest.
  accept Deadwood Ritual Totem##8470 |goto Felwood 62.08,8.01
step
  talk Gorn One Eye##11555
  accept The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  collect Essence of Xandivious##21145 |q 8481 |goto Felwood 65.18,2.68 |tip {dropsfrom}Xandivious' Demon Bag
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461 |goto Felwood 62.08,8.01
step
  talk Arathandris Silversky##9528
  turnin Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Greta Mosshoof##10922
  turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Taronn Redfeather##10921
  turnin Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  talk Eridan Bluewind##9116
  turnin Flute of Xavaric##939 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Eridan Bluewind##9116
  turnin The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  turnin Silver Heart##4084 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Aquementas##4005 |goto Felwood 51.35,81.51
step
  note Take the Book of Aquor, the Silvery Claws, and the Irontree Heart to Tanaris.
  collect Silver Totem of Aquementas##11522 |q 4005 |goto Tanaris 70.4,49.9 |tip {dropsfrom}Aquementas
step
  talk Eridan Bluewind##9116
  accept Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
  note Travel to Darnassus and use Eridan's Vial to collect a Vial of Blessed Water from the Temple of the Moon. Return to Eridan with the filled vial.
  collect Vial of Blessed Water##5646 |q 4441 |goto Darnassus 39.18,85.59 |tip {dropsfrom}Temple of the Moon Fountain
step
  talk Eridan Bluewind##9116
  accept Further Corruption##4906 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  note Take the Empty Canteen to the Moon Well in the center of Jaedenar and fill it before returning to Greta Mosshoof in Felwood.
  collect Corrupt Moonwell Water##12907 |q 5157 |goto Felwood 35.17,59.79 |tip {dropsfrom}Corrupt Jaedenar Moonwell
step
  talk Greta Mosshoof##10922
  accept A Final Blow##5242 |goto Felwood 51.21,82.11
step
  talk Arathandris Silversky##9528
  accept Salve via Hunting##5882 |goto Felwood 54.15,86.83
step
  collect Corrupted Soul Shard##11515 |q 5882 |goto Felwood 40.4,70.82 |tip {dropsfrom}Cursed Ooze, Tainted Ooze, Vile Ooze
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  talk Captured Arko'narin##11016
  turnin A Strange Red Key##5202 |goto Felwood 36.21,55.47
step
  talk Captured Arko'narin##11016
  accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.47
step
  only Warlock
  talk Impsy##14470
  turnin What Niby Commands##7601 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Lord Banehollow##9516
  turnin Ulathek the Traitor##7624 |goto Felwood 35.93,44.42
step
  talk Donova Snowden##9298
  turnin Mystery Goo##5085 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  only Warlock
  talk Impsy##14470
  turnin Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  accept Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
step
  only Warlock
  note Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
  collect Flawless Fel Essence (Azshara)##18624 |q 7602 |goto Azshara 61.87,19.68 |tip {dropsfrom}Legashi Satyr, Legashi Rogue, Legashi Hellcaller
step
  only Warlock
  talk Lord Banehollow##9516
  accept Xorothian Stardust##7625 |goto Felwood 35.93,44.42
step
  only Warlock
  note Purchase Xorothian Stardust from Ur'dan. Bring it to Gorzeeki Wildeyes in the Burning Steppes.
  buy Xorothian Stardust##18687 |q 7625 |goto Felwood 36.18,44.46
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
  talk J.D. Collie##9117
  turnin Aquementas##4005 |goto Un'Goro Crater 41.92,2.7 |tip {turninat}Un'Goro Crater
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin An Introduction##7633 |goto Felwood 47.78,24.08
step
  only Hunter
  talk Hastat the Ancient##14526
  turnin Ancient Sinew Wrapped Lamina##7634 |goto Felwood 46.7,24.06
step
  only Hunter
  talk Stoma the Ancient##14525
  turnin A Proper String##7635 |goto Felwood 48.39,22.29
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin Stave of the Ancients##7636 |goto Felwood 47.78,24.08
step
  note Eridan Bluewind in Felwood wants you to kill 8 Jadefire Hellcallers, 8 Jadefire Betrayers, 8 Jadefire Tricksters, and Xavaric. Return to Eridan when the task is completed.
  kill Jadefire Hellcaller##7111 |q 4906 |goto Felwood 41.21,21
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
  talk Kernda##11558
  turnin Deadwood Ritual Totem##8470 |goto Felwood 65.5,3.52
step
  talk Gorn One Eye##11555
  turnin The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  talk Gorn One Eye##11555
  accept The Brokering of Peace##8484 |goto Felwood 65.18,2.68
step
  talk Arathandris Silversky##9528
  turnin Salve via Hunting##5882 |goto Felwood 54.15,86.83
step
  talk Greta Mosshoof##10922
  turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  talk Eridan Bluewind##9116
  turnin Further Corruption##4906 |goto Felwood 51.35,81.51
step
  talk Jessir Moonbow##11019
  turnin Rescue From Jaedenar##5203 |goto Felwood 51.35,82.01
step
  talk Eridan Bluewind##9116
  turnin Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  turnin A Final Blow##5242 |goto Felwood 51.21,82.11
step
  talk Eridan Bluewind##9116
  accept Purified!##4442 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  accept Retribution of the Light##5204 |goto Felwood 51.35,82.01
step
  talk King Magni Bronzebeard##2784
  turnin The Brokering of Peace##8484 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  note Return to Jaedenar and kill the succubus Rakaiah before finding the Remains of Trey Lightforge.
  kill Rakaiah##9518 |q 5204 |goto Felwood 38.3,50.51
step
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5 |tip {turninat}Winterspring
step
  talk Islen Waterseer##5901
  turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only Warlock
  talk Impsy##14470
  turnin Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Gorzeeki Wildeyes##14437
  turnin Xorothian Stardust##7625 |goto Burning Steppes 12.44,31.63 |tip {turninat}Burning Steppes
step
  only Warlock
  talk Impsy##14470
  turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  accept Kroshius' Infernal Core##7603 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  accept Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Warlock
  note Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
  collect Amber Voodoo Feather##20606 |q 8422 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Warlock
  note Search Shatter Scar Vale in Felwood for the remains of Kroshius. When you locate the remains, use the Fel Fire near them and await Kroshius' return. When the infernal has awoken, slay him and take from his corpse Kroshius' Infernal Core.
  kill Kroshius##14467 |q 7603 |goto Felwood 45.7,34.76 |elite
step
  talk Eridan Bluewind##9116
  turnin Purified!##4442 |goto Felwood 51.35,81.51
step
  talk Remains of Trey Lightforge##11020
  turnin Retribution of the Light##5204 |goto Felwood 38.5,50.41
step
  talk Remains of Trey Lightforge##11020
  accept The Remains of Trey Lightforge##5385 |goto Felwood 38.5,50.41
step
  only Warlock
  talk Niby the Almighty##14469
  turnin Kroshius' Infernal Core##7603 |goto Felwood 41.38,44.85
step
  only Warlock
  talk Impsy##14470
  turnin Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  talk Jessir Moonbow##11019
  turnin The Remains of Trey Lightforge##5385 |goto Felwood 51.35,82.01
step
  note {travel}Moonglade
  goto Moonglade 56.21,30.64
]])
