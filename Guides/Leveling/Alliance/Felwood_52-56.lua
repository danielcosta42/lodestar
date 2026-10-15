-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Felwood (52-56)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Azshara (52-58)",
	rev = "57a44562",
}, [[
step
  ding 51
step
  talk Grazle##11554
  accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Greta Mosshoof##10922
  accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Pathfinder##7155 |q 8460/2 |goto Felwood 48.3,89.46
  kill Deadwood Gardener##7154 |q 8460/3 |goto Felwood 48.42,89.84
  kill Deadwood Warrior##7153 |q 8460 |goto Felwood 48.39,91.4
step
  note Enter Jaedenar and slay 4 Jaedenar Hounds, 4 Jaedenar Guardsmen, 6 Jaedenar Adepts, and 6 Jaedenar Cultists before returning to Greta Mosshoof in Felwood.
  kill Jaedenar Adept##7115 |q 5155/3 |goto Felwood 38.25,61.45
  kill Jaedenar Cultist##7112 |q 5155/4 |goto Felwood 38.15,61.13
  kill Jaedenar Guardian##7113 |q 5155/2 |goto Felwood 38.07,60.74
  kill Jaedenar Hound##7125 |q 5155 |goto Felwood 38.83,60.38
step
  talk Greta Mosshoof##10922
  turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Greta Mosshoof##10922
  accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  only Warlock
  talk Niby the Almighty##14469
  accept What Niby Commands##7601 |goto Felwood 41.38,44.85
step
  only Warlock not completed(8419) not haveq(8419)
  talk Impsy##14470
  accept Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  note Speak with Impsy in Felwood.
  talk Impsy##14470
  turnin What Niby Commands##7601 |goto Felwood 41.36,45.02
step
  note Take the Empty Canteen to the Moon Well in the center of Jaedenar and fill it before returning to Greta Mosshoof in Felwood.
  collect Corrupt Moonwell Water##12907 |q 5157 |goto Felwood 35.17,59.79 |tip {dropsfrom}Corrupt Jaedenar Moonwell
step
  only Warlock not completed(8419) not haveq(8419)
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8420 |goto Felwood 37.34,66.67 |tip {dropsfrom}Jadefire Rogue, Jadefire Trickster, Jadefire Betrayer
step
  talk Greta Mosshoof##10922
  turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
  talk Eridan Bluewind##9116
  accept The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
  talk Taronn Redfeather##10921
  accept Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  note Kill 11 Jadefire Felsworns, 9 Jadefire Shadowstalkers, 9 Jadefire Rogues, and Xavathras. Return to Eridan Bluewind in Felwood when the task has been completed.
  kill Jadefire Felsworn##7109 |q 4421/1 |goto Felwood 38.85,83.2
  kill Jadefire Shadowstalker##7110 |q 4421/2 |goto Felwood 37.13,67.29
  kill Jadefire Rogue##7106 |q 4421/3 |goto Felwood 37.34,66.67
  kill Xavathras##9454 |q 4421 |goto Felwood 32.23,67.11
step
  talk Eridan Bluewind##9116
  turnin The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Further Corruption##4906 |goto Felwood 51.35,81.51
step
  only Warlock not completed(8419) not haveq(8419)
  talk Impsy##14470
  turnin Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  accept The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  note Seek out and destroy 2 Entropic Beasts and 2 Entropic Horrors while exploring Shatter Scar Vale. After checking to see if the craters there are still filled with corrupt fel water, return to Taronn Redfeather in Felwood.
  kill Entropic Beast##9878 |q 5156 |goto Felwood 41.73,40.15
step
  only Warlock
  note Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
  collect 4 Bloodvenom Essence##20614 |q 8421/2 |goto Felwood 41.4,50.23 |tip {dropsfrom}Tainted Ooze
  collect 10 Rotting Wood##20613 |q 8421 |goto Felwood 46.58,23.75 |tip {dropsfrom}Irontree Wanderer, Irontree Stomper, Withered Protector
step
  kill Xavaric##10648 |goto Felwood 39.07,22.35 |tip Loot the quest item here — it starts the quest.
  accept Flute of Xavaric##939 |goto Felwood 39.07,22.35
step
  note Eridan Bluewind in Felwood wants you to kill 8 Jadefire Hellcallers, 8 Jadefire Betrayers, 8 Jadefire Tricksters, and Xavaric. Return to Eridan when the task is completed.
  kill Xavaric##10648 |q 4906/4 |goto Felwood 39.07,22.35
  kill Jadefire Hellcaller##7111 |q 4906/1 |goto Felwood 41.21,20.64
  kill Jadefire Betrayer##7108 |q 4906/2 |goto Felwood 41.78,19.13
  kill Jadefire Trickster##7107 |q 4906 |goto Felwood 42.81,16.94
step
  talk Eridan Bluewind##9116
  turnin Further Corruption##4906 |goto Felwood 51.35,81.51
step
  talk Taronn Redfeather##10921
  turnin Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  note Bring the Flute of Xavaric and 5 Jadefire Felbind samples to Eridan Bluewind in southern Felwood.
  collect 5 Jadefire Felbind##11674 |q 939 |goto Felwood 41.61,85.68 |tip {dropsfrom}Jadefire Satyr, Jadefire Rogue, Jadefire Trickster
step
  talk Eridan Bluewind##9116
  turnin Flute of Xavaric##939 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
  talk Arathandris Silversky##9528
  accept Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
  only completed(5159)
  talk Greta Mosshoof##10922
  accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  only Warlock
  talk Impsy##14470
  turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  kill Jaedenar Enforcer##7114 |goto Felwood 39.65,49.47 |tip Loot the quest item here — it starts the quest.
  accept A Strange Red Key##5202 |goto Felwood 39.65,49.47
step
  note {fp}Mishellena
  goto Felwood 62.49,24.24 |tip {vendor}
step
  note Bring 15 Blood Amber to Arathandris Silversky in Felwood.
  collect 15 Blood Amber##11503 |q 4101 |goto Felwood 57.16,18.28 |tip {dropsfrom}Warpwood Moss Flayer, Warpwood Shredder, Dessecus
step
  note Travel north along the main road in Felwood and speak with the furbolg named Nafien. He stands guard outside the entrance to Timbermaw Hold.
  talk Nafien##15395
  turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  kill Deadwood Den Watcher##7156 |goto Felwood 62.76,8.01 |tip Loot the quest item here — it starts the quest.
  accept Deadwood Ritual Totem##8470 |goto Felwood 62.76,8.01
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461/1 |goto Felwood 62.76,8.01
  kill Deadwood Avenger##7157 |q 8461/2 |goto Felwood 62.67,8.45
  kill Deadwood Shaman##7158 |q 8461 |goto Felwood 62.63,11.22
step
  talk Nafien##15395
  turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  note Take the Deadwood Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
  talk Kernda##11558
  turnin Deadwood Ritual Totem##8470 |goto Felwood 65.5,3.52
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  note Search through Jaedenar to discover what the Blood Red Key is used for.
  talk Captured Arko'narin##11016
  turnin A Strange Red Key##5202 |goto Felwood 36.21,55.47
step
  only completed(5159)
  note Using the Purified Moon Well Water, douse the flames of the four braziers of protection within Shadow Hold in Felwood, then return to Greta Mosshoof in the Emerald Sanctuary.
  click Brazier of Hatred##176161 |q 5165/4 |goto Felwood 36.48,55.19
  click Brazier of Pain##176158 |q 5165/1 |goto Felwood 36.27,56.3
  click Brazier of Suffering##176160 |q 5165/3 |goto Felwood 36.73,53.27
  click Brazier of Malice##176159 |q 5165 |goto Felwood 37.68,52.69
step
  talk Captured Arko'narin##11016
  accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.47
step
  note Escort Arko'narin to where Lightforge and her equipment are being held, and then protect her as you escape Shadow Hold. Afterwards, seek out Jessir Moonbow in Felwood to let her know what's happened to her friends.
  goto Felwood 35.45,59.06 |tip Protect Arko'narin out of Shadow Hold
step
  talk Arathandris Silversky##9528
  turnin Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
  only completed(5159)
  talk Greta Mosshoof##10922
  turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  turnin Rescue From Jaedenar##5203 |goto Felwood 51.35,82.01
step
  talk Arathandris Silversky##9528
  accept Salve via Hunting##5882 |goto Felwood 54.15,86.83
step
  only not completed(5250) not haveq(5250) level>=53
  talk Ivy Leafrunner##10924
  accept To Winterspring!##5249 |goto Felwood 50.96,81.58
step
  collect Corrupted Soul Shard##11515 |q 5882 |goto Felwood 40.17,70.82 |tip {dropsfrom}Cursed Ooze, Tainted Ooze, Vile Ooze
step
  talk Arathandris Silversky##9528
  turnin Salve via Hunting##5882 |goto Felwood 54.15,86.83
step
  talk Jessir Moonbow##11019
  accept Retribution of the Light##5204 |goto Felwood 51.35,82.01
step
  note Return to Jaedenar and kill the succubus Rakaiah before finding the Remains of Trey Lightforge.
  kill Rakaiah##9518 |q 5204 |goto Felwood 38.3,50.51
step
  talk Remains of Trey Lightforge##11020
  turnin Retribution of the Light##5204 |goto Felwood 38.5,50.41
step
  talk Remains of Trey Lightforge##11020
  accept The Remains of Trey Lightforge##5385 |goto Felwood 38.5,50.41
step
  note Return the Remains of Trey Lightforge to Jessir Moonbow in Felwood.
  talk Jessir Moonbow##11019
  turnin The Remains of Trey Lightforge##5385 |goto Felwood 51.35,82.01
step
  only completed(5159)
  talk Greta Mosshoof##10922
  accept A Final Blow##5242 |goto Felwood 51.21,82.11
step
  only completed(5159)
  note Kill Moora and Salia, and bring Shadow Lord Fel'dan's Head to Greta Mosshoof in Felwood.
  kill Moora##9861 |q 5242 |goto Felwood 38.81,46.87
step
  only completed(5159)
  talk Greta Mosshoof##10922
  turnin A Final Blow##5242 |goto Felwood 51.21,82.11
step
  note Travel to Darnassus and use Eridan's Vial to collect a Vial of Blessed Water from the Temple of the Moon. Return to Eridan with the filled vial.
  collect Vial of Blessed Water##5646 |q 4441 |goto Darnassus 39.18,85.59 |tip {dropsfrom}Temple of the Moon Fountain
step
  talk Eridan Bluewind##9116
  turnin Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
  talk Eridan Bluewind##9116
  accept Purified!##4442 |goto Felwood 51.35,81.51
step
  note Speak to Eridan again in a moment.
  talk Eridan Bluewind##9116
  turnin Purified!##4442 |goto Felwood 51.35,81.51
step
  talk Arei##9598
  accept Ancient Spirit##4261 |goto Felwood 49.57,29.6
step
  note Escort Arei to safety, then speak with Kayneth Stillwind in Forest Song, in eastern Ashenvale.
  goto Felwood 49.42,14.54 |tip Help Arei get to Safety
step
  note Take the Corrupt Moon Well Water to Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  talk Kayneth Stillwind##3848
  turnin Ancient Spirit##4261 |goto Ashenvale 85.24,44.71 |tip {turninat}Ashenvale
step
  note {travel}Azshara
  goto Azshara 11.37,78.17
]])
