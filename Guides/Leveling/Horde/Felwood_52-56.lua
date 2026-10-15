-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Felwood (52-56)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (55-60)",
	rev = "d6f38383",
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
  note {fp}Brakkar
  goto Felwood 34.44,53.96 |tip {vendor}
step
  note Enter Jaedenar and slay 4 Jaedenar Hounds, 4 Jaedenar Guardsmen, 6 Jaedenar Adepts, and 6 Jaedenar Cultists before returning to Greta Mosshoof in Felwood.
  kill Jaedenar Adept##7115 |q 5155/3 |goto Felwood 38.25,61.45
  kill Jaedenar Cultist##7112 |q 5155/4 |goto Felwood 38.15,61.13
  kill Jaedenar Guardian##7113 |q 5155/2 |goto Felwood 38.07,60.74
  kill Jaedenar Hound##7125 |q 5155 |goto Felwood 38.83,60.38
step
  talk Dreka'Sur##9620
  accept A Husband's Last Battle##6162 |goto Felwood 34.8,52.73
step
  talk Greta Mosshoof##10922
  turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  note Kill Overlord Ror and return his claw to Dreka'Sur at Bloodvenom Post in Felwood.
  collect Overlord Ror's Claw##15879 |q 6162 |goto Felwood 48.23,94.28 |tip {dropsfrom}Overlord Ror
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Warrior##7153 |q 8460/1 |goto Felwood 48.39,91.4
  kill Deadwood Gardener##7154 |q 8460/3 |goto Felwood 48.42,89.84
  kill Deadwood Pathfinder##7155 |q 8460 |goto Felwood 48.3,89.46
step
  note Take the Empty Canteen to the Moon Well in the center of Jaedenar and fill it before returning to Greta Mosshoof in Felwood.
  collect Corrupt Moonwell Water##12907 |q 5157 |goto Felwood 35.17,59.79 |tip {dropsfrom}Corrupt Jaedenar Moonwell
step
  talk Dreka'Sur##9620
  turnin A Husband's Last Battle##6162 |goto Felwood 34.8,52.73
step
  talk Winna Hazzard##9996
  accept Well of Corruption##4505 |goto Felwood 34.21,52.34
step
  note Collect a sample of corrupted water from the Jadefire Satyrs' moonwell and bring it to Winna Hazzard at Bloodvenom Post.
  collect Filled Flasket##12567 |q 4505 |goto Felwood 32.32,66.56 |tip {dropsfrom}Corrupted Moonwell Spell Focus (DND)
step
  talk Winna Hazzard##9996
  turnin Well of Corruption##4505 |goto Felwood 34.21,52.34
step
  talk Winna Hazzard##9996
  accept Corrupted Sabers##4506 |goto Felwood 34.21,52.34
step
  note Take Winna's kitten to the corrupted moonwell, release it, then bring it back to Winna.
  talk Winna Hazzard##9996
  turnin Corrupted Sabers##4506 |goto Felwood 34.21,52.34
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
  only Warlock not completed(8419) not haveq(8419)
  note Bring a piece of felcloth to Impsy in Felwood.
  collect Felcloth##14256 |q 8420 |goto Felwood 37.34,66.67 |tip {dropsfrom}Jadefire Rogue, Jadefire Trickster, Jadefire Betrayer
step
  talk Greta Mosshoof##10922
  turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Greta Mosshoof##10922
  accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
  talk Taronn Redfeather##10921
  accept Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  talk Maybess Riverbreeze##9529
  accept Cleansing Felwood##4102 |goto Felwood 46.75,83.13
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  only Warlock not completed(8419) not haveq(8419)
  talk Impsy##14470
  turnin Hot and Itchy##8420 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  accept The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  kill Jaedenar Enforcer##7114 |goto Felwood 39.65,49.47 |tip Loot the quest item here — it starts the quest.
  accept A Strange Red Key##5202 |goto Felwood 39.65,49.47
step
  note Seek out and destroy 2 Entropic Beasts and 2 Entropic Horrors while exploring Shatter Scar Vale. After checking to see if the craters there are still filled with corrupt fel water, return to Taronn Redfeather in Felwood.
  kill Entropic Beast##9878 |q 5156 |goto Felwood 41.73,40.15
step
  only Warlock
  note Bring 10 Rotting Wood and 4 Bloodvenom Essence to Impsy in Felwood.
  collect 4 Bloodvenom Essence##20614 |q 8421/2 |goto Felwood 41.4,50.23 |tip {dropsfrom}Tainted Ooze
  collect 10 Rotting Wood##20613 |q 8421 |goto Felwood 46.58,23.75 |tip {dropsfrom}Irontree Wanderer, Irontree Stomper, Withered Protector
step
  note Bring 15 Blood Amber to Maybess Riverbreeze in Felwood.
  collect 15 Blood Amber##11503 |q 4102 |goto Felwood 57.16,18.28 |tip {dropsfrom}Warpwood Moss Flayer, Warpwood Shredder, Dessecus
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
  only Warlock
  talk Impsy##14470
  turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
step
  note Search through Jaedenar to discover what the Blood Red Key is used for.
  talk Captured Arko'narin##11016
  turnin A Strange Red Key##5202 |goto Felwood 36.21,55.47
step
  only level>=52
  talk Trull Failbane##10306
  accept Wild Guardians##4521 |goto Felwood 34.73,52.79
step
  talk Captured Arko'narin##11016
  accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.47
step
  note Escort Arko'narin to where Lightforge and her equipment are being held, and then protect her as you escape Shadow Hold. Afterwards, seek out Jessir Moonbow in Felwood to let her know what's happened to her friends.
  goto Felwood 35.45,59.06 |tip Protect Arko'narin out of Shadow Hold
step
  talk Maybess Riverbreeze##9529
  turnin Cleansing Felwood##4102 |goto Felwood 46.75,83.13
step
  talk Taronn Redfeather##10921
  turnin Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  talk Jessir Moonbow##11019
  turnin Rescue From Jaedenar##5203 |goto Felwood 51.35,82.01
step
  talk Maybess Riverbreeze##9529
  accept Salve via Hunting##5887 |goto Felwood 46.75,83.13
step
  collect Corrupted Soul Shard##11515 |q 5887 |goto Felwood 40.17,70.82 |tip {dropsfrom}Cursed Ooze, Tainted Ooze, Vile Ooze
step
  talk Maybess Riverbreeze##9529
  turnin Salve via Hunting##5887 |goto Felwood 46.75,83.13
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
  only haveq(3908)
  note Take Linken's Sword to Donova Snowden in Winterspring.
  talk Donova Snowden##9298
  turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  only haveq(980)
  note Travel to Winterspring and speak with Donova Snowden.
  talk Donova Snowden##9298
  turnin The New Springs##980 |goto Winterspring 31.27,45.16 |tip {turninat}Winterspring
step
  note Travel through Timbermaw Hold and exit into Winterspring. Speak with Salfa, who stands guard outside the entrance to Timbermaw Hold.
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5 |tip {turninat}Winterspring
step
  only haveq(4521)
  note Trull Failbane in Felwood wants you to kill 15 Raging Owlbeasts and 15 Ragged Owlbeasts.
  kill Ragged Owlbeast##7450 |q 4521/2 |goto Winterspring 44.76,38.29
  kill Raging Owlbeast##7451 |q 4521 |goto Winterspring 59.83,31.69
step
  only haveq(4147)
  note Travel to Marvon Rivetseeker's workshop in Ratchet.
  talk Liv Rizzlefix##8496
  turnin Marvon's Workshop##4147 |goto The Barrens 62.45,38.73 |tip {turninat}The Barrens
step
  note Take the Corrupt Moon Well Water to Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only not completed(1004) not completed(1018) not haveq(1004) not haveq(1018) level>=54
  talk Bluff Runner Windstrider##10881
  accept The New Frontier##1000 |goto Thunder Bluff 44.33,58.76
step
  only not completed(1004) not completed(1018) not haveq(1004) not haveq(1018) haveq(1000)
  note Speak with Arch Druid Hamuul Runetotem on the Elder Rise of Thunder Bluff about the Cenarion Circle's call to explore the frontiers of Kalimdor.
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1000 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  only haveq(4521)
  talk Trull Failbane##10306
  turnin Wild Guardians##4521 |goto Felwood 34.73,52.79
step
  only completed(4521) level>=52
  talk Trull Failbane##10306
  accept Wild Guardians##4741 |goto Felwood 34.73,52.79
step
  only haveq(4741)
  note Trull Failbane in Felwood wants you to hunt 13 Moontouched Owlbeasts.
  kill Moontouched Owlbeast##7453 |q 4741 |goto Winterspring 64.15,22.9
step
  only haveq(4741)
  talk Trull Failbane##10306
  turnin Wild Guardians##4741 |goto Felwood 34.73,52.79
step
  only completed(4741) level>=52
  talk Trull Failbane##10306
  accept Wild Guardians##4721 |goto Felwood 34.73,52.79
step
  only haveq(4721)
  note Trull Failbane in Felwood wants you to hunt 10 Berserk Owlbeasts in Winterspring.
  kill Berserk Owlbeast##7454 |q 4721 |goto Winterspring 65.67,22.28
step
  only haveq(4721)
  talk Trull Failbane##10306
  turnin Wild Guardians##4721 |goto Felwood 34.73,52.79
step
  note {travel}The Barrens
  goto The Barrens 62.45,38.73
]])
