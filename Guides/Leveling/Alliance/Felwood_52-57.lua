-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Felwood (52-57)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Burning Steppes (53-60)",
}, [[
step
  note {fp}Mishellena
  goto Felwood 62.49,24.24 |tip {vendor}
step
  talk Eridan Bluewind##9116
  accept Silver Heart##4084 |goto Felwood 51.35,81.51
step
  note Collect 11 Silvery Claws and 1 Irontree Heart for Eridan Bluewind in Felwood.
  kill Angerclaw Bear##8956 |q 4084 |goto Felwood 46.31,79.69
step
  talk Arathandris Silversky##9528
  accept Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
  note Bring 15 Blood Amber to Arathandris Silversky in Felwood.
  kill Warpwood Moss Flayer##7100 |q 4101 |goto Felwood 57.17,18.49
step
  talk Eridan Bluewind##9116
  accept The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
  note Travel to Darnassus and use Eridan's Vial to collect a Vial of Blessed Water from the Temple of the Moon. Return to Eridan with the filled vial.
  get Felbound Ancients |q 4441 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
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
  talk Captured Arko'narin##11016
  accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.47
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
  talk Wynd Nightchaser##11079
  turnin To Winterspring!##5249 |goto Winterspring 51.97,30.39 |tip {turninat}Winterspring
step
  only Druid
  talk Impsy##14470
  accept Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Druid
  note Bring a piece of felcloth to Impsy in Felwood.
  kill Felguard Sentry##6011 |q 8420 |goto Blasted Lands 59.78,54.09
step
  talk Meilosh##11557
  accept Runecloth##6031 |goto Felwood 65.69,2.81
step
  note Bring 30 Runecloth to Meilosh in Timbermaw Hold.
  kill Grimtooth##603 |q 6031 |goto Alterac Valley - Battleground 51.71,94.86
step
  talk Meilosh##11557
  accept Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  note Bring 2 Mooncloth to Meilosh in Timbermaw Hold.
  get Sacred Cloth |q 6032 |goto Felwood 65.69,2.81
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  talk Gorn One Eye##11555
  accept The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  get The Root of All Evil |q 8481 |goto Felwood 65.18,2.68
step
  talk Gorn One Eye##11555
  accept The Brokering of Peace##8484 |goto Felwood 65.18,2.68
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461 |goto Felwood 62.08,8.01
step
  talk Greta Mosshoof##10922
  turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Eridan Bluewind##9116
  turnin The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
  talk Arathandris Silversky##9528
  turnin Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Greta Mosshoof##10922
  turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  turnin Rescue From Jaedenar##5203 |goto Felwood 51.35,82.01
step
  talk Eridan Bluewind##9116
  turnin Silver Heart##4084 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  turnin Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Aquementas##4005 |goto Felwood 51.35,81.51
step
  note Take the Book of Aquor, the Silvery Claws, and the Irontree Heart to Tanaris.
  get Aquementas |q 4005 |goto Felwood 51.35,81.51
step
  talk Arathandris Silversky##9528
  accept Salve via Hunting##4103 |goto Felwood 54.15,86.83
step
  kill Cursed Ooze##7086 |q 4103 |goto Felwood 40.4,70.82
step
  talk Arathandris Silversky##9528
  accept Salve via Mining##4104 |goto Felwood 54.15,86.83
step
  collect Small Thorium Vein##324 |q 4104 |goto Burning Steppes 62.76,44.03
step
  talk Arathandris Silversky##9528
  accept Salve via Gathering##4105 |goto Felwood 54.15,86.83
step
  collect Arthas' Tears##142141 |q 4105 |goto Western Plaguelands 47.04,61.35
step
  talk Arathandris Silversky##9528
  accept Salve via Skinning##4106 |goto Felwood 54.15,86.83
step
  get Salve via Skinning |q 4106 |goto Felwood 54.15,86.83
step
  talk Arathandris Silversky##9528
  accept Salve via Disenchanting##4107 |goto Felwood 54.15,86.83
step
  get Salve via Disenchanting |q 4107 |goto Felwood 54.15,86.83
step
  talk Eridan Bluewind##9116
  accept Purified!##4442 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Further Corruption##4906 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  note Take the Empty Canteen to the Moon Well in the center of Jaedenar and fill it before returning to Greta Mosshoof in Felwood.
  get Collection of the Corrupt Water |q 5157 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  accept Retribution of the Light##5204 |goto Felwood 51.35,82.01
step
  talk Greta Mosshoof##10922
  accept A Final Blow##5242 |goto Felwood 51.21,82.11
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  talk Elder Nightwind##15603
  turnin Nightwind the Elder##8723 |goto Felwood 37.64,53.0
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
  only Druid
  talk Impsy##14470
  turnin Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Druid
  talk Impsy##14470
  accept The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  only Druid
  note Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
  kill Irontree Wanderer##7138 |q 8421 |goto Felwood 48.7,23.1
step
  note Eridan Bluewind in Felwood wants you to kill 8 Jadefire Hellcallers, 8 Jadefire Betrayers, 8 Jadefire Tricksters, and Xavaric. Return to Eridan when the task is completed.
  kill Jadefire Hellcaller##7111 |q 4906 |goto Felwood 41.21,21.0
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
  talk Gorn One Eye##11555
  turnin The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  talk J.D. Collie##9117
  turnin Aquementas##4005 |goto Un'Goro Crater 41.92,2.7 |tip {turninat}Un'Goro Crater
step
  talk Arathandris Silversky##9528
  turnin Salve via Hunting##4103 |goto Felwood 54.15,86.83
step
  talk Arathandris Silversky##9528
  turnin Salve via Mining##4104 |goto Felwood 54.15,86.83
step
  talk Arathandris Silversky##9528
  turnin Salve via Gathering##4105 |goto Felwood 54.15,86.83
step
  talk Arathandris Silversky##9528
  turnin Salve via Skinning##4106 |goto Felwood 54.15,86.83
step
  talk Arathandris Silversky##9528
  turnin Salve via Disenchanting##4107 |goto Felwood 54.15,86.83
step
  talk Eridan Bluewind##9116
  turnin Purified!##4442 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  talk Eridan Bluewind##9116
  turnin Further Corruption##4906 |goto Felwood 51.35,81.51
step
  talk Greta Mosshoof##10922
  turnin A Final Blow##5242 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
  talk Remains of Trey Lightforge##11020
  turnin Retribution of the Light##5204 |goto Felwood 38.5,50.41
step
  talk Remains of Trey Lightforge##11020
  accept The Remains of Trey Lightforge##5385 |goto Felwood 38.5,50.41
step
  only Druid
  talk Impsy##14470
  turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  talk Islen Waterseer##5901
  turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only Druid
  talk Impsy##14470
  accept Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  only Druid
  note Bring a total of 6 Voodoo Feathers from the trolls in sunken temple.
  kill Gasher##5713 |q 8422 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite
step
  talk Jessir Moonbow##11019
  turnin The Remains of Trey Lightforge##5385 |goto Felwood 51.35,82.01
step
  only Druid
  talk Impsy##14470
  turnin Trolls of a Feather##8422 |goto Felwood 41.36,45.02
step
  note {travel}Burning Steppes
  goto Burning Steppes 65.15,23.91
]])
