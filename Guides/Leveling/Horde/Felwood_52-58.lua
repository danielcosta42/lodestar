-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Felwood (52-58)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Winterspring (54-59)",
}, [[
step
  only Druid
  talk Turak Runetotem##3033
  accept Torwa Pathfinder##9063 |goto Thunder Bluff 76.48,27.22
step
  only not completed(1004) not completed(1018) not haveq(1004) not haveq(1018)
  talk Bluff Runner Windstrider##10881
  accept The New Frontier##1000 |goto Thunder Bluff 44.33,58.76
step
  talk Grazle##11554
  accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Greta Mosshoof##10922
  accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Taronn Redfeather##10921
  accept Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  talk Maybess Riverbreeze##9529
  accept Cleansing Felwood##4102 |goto Felwood 46.75,83.13
step
  only completed(5159)
  talk Greta Mosshoof##10922
  accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Warrior##7153 |q 8460 |goto Felwood 48.39,91.4
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  note {fp}Brakkar
  goto Felwood 34.44,53.96 |tip {vendor}
step
  talk Dreka'Sur##9620
  accept A Husband's Last Battle##6162 |goto Felwood 34.8,52.73
step
  talk Winna Hazzard##9996
  accept Well of Corruption##4505 |goto Felwood 34.21,52.34
step
  talk Trull Failbane##10306
  accept Wild Guardians##4521 |goto Felwood 34.73,52.79
step
  note Collect a sample of corrupted water from the Jadefire Satyrs' moonwell and bring it to Winna Hazzard at Bloodvenom Post.
  collect Filled Flasket##12567 |q 4505 |goto Felwood 32.32,66.56 |tip {dropsfrom}Corrupted Moonwell Spell Focus (DND)
step
  note Enter Jaedenar and slay 4 Jaedenar Hounds, 4 Jaedenar Guardsmen, 6 Jaedenar Adepts, and 6 Jaedenar Cultists before returning to Greta Mosshoof in Felwood.
  kill Jaedenar Hound##7125 |q 5155 |goto Felwood 38.83,60.38
step
  only completed(5159)
  note Using the Purified Moon Well Water, douse the flames of the four braziers of protection within Shadow Hold in Felwood, then return to Greta Mosshoof in the Emerald Sanctuary.
  collect Brazier of Pain##176158 |q 5165 |goto Felwood 36.27,56.3
step
  talk Winna Hazzard##9996
  turnin Well of Corruption##4505 |goto Felwood 34.21,52.34
step
  talk Winna Hazzard##9996
  accept Corrupted Sabers##4506 |goto Felwood 34.21,52.34
step
  talk Winna Hazzard##9996
  turnin Corrupted Sabers##4506 |goto Felwood 34.21,52.34
step
  only Warlock
  talk Niby the Almighty##14469
  accept What Niby Commands##7601 |goto Felwood 41.38,44.85
step
  kill Jaedenar Enforcer##7114 |goto Felwood 39.65,49.47 |tip Loot the quest item here — it starts the quest.
  accept A Strange Red Key##5202 |goto Felwood 39.65,49.47
step
  note Seek out and destroy 2 Entropic Beasts and 2 Entropic Horrors while exploring Shatter Scar Vale. After checking to see if the craters there are still filled with corrupt fel water, return to Taronn Redfeather in Felwood.
  kill Entropic Beast##9878 |q 5156 |goto Felwood 41.73,40.15
step
  only Warlock
  talk Impsy##14470
  turnin What Niby Commands##7601 |goto Felwood 41.36,45.02
step
  only Warlock
  talk Impsy##14470
  accept Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
step
  talk Nafien##15395
  turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  kill Deadwood Den Watcher##7156 |goto Felwood 62.76,8.01 |tip Loot the quest item here — it starts the quest.
  accept Deadwood Ritual Totem##8470 |goto Felwood 62.76,8.01
step
  note Bring 15 Blood Amber to Maybess Riverbreeze in Felwood.
  collect 15 Blood Amber##11503 |q 4102 |goto Felwood 57.16,18.28 |tip {dropsfrom}Warpwood Moss Flayer, Warpwood Shredder, Dessecus
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461 |goto Felwood 62.76,8.01
step
  talk Nafien##15395
  turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Kernda##11558
  turnin Deadwood Ritual Totem##8470 |goto Felwood 65.5,3.52
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  talk Maybess Riverbreeze##9529
  turnin Cleansing Felwood##4102 |goto Felwood 46.75,83.13
step
  talk Greta Mosshoof##10922
  turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
  talk Taronn Redfeather##10921
  turnin Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
  only completed(5159)
  talk Greta Mosshoof##10922
  turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  talk Greta Mosshoof##10922
  accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  talk Maybess Riverbreeze##9529
  accept Salve via Hunting##5887 |goto Felwood 46.75,83.13
step
  collect Corrupted Soul Shard##11515 |q 5887 |goto Felwood 40.17,70.82 |tip {dropsfrom}Cursed Ooze, Tainted Ooze, Vile Ooze
step
  note Kill Overlord Ror and return his claw to Dreka'Sur at Bloodvenom Post in Felwood.
  collect Overlord Ror's Claw##15879 |q 6162 |goto Felwood 48.23,94.28 |tip {dropsfrom}Overlord Ror
step
  talk Maybess Riverbreeze##9529
  turnin Salve via Hunting##5887 |goto Felwood 46.75,83.13
step
  talk Captured Arko'narin##11016
  turnin A Strange Red Key##5202 |goto Felwood 36.21,55.47
step
  talk Dreka'Sur##9620
  turnin A Husband's Last Battle##6162 |goto Felwood 34.8,52.73
step
  talk Captured Arko'narin##11016
  accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.47
step
  note Take the Empty Canteen to the Moon Well in the center of Jaedenar and fill it before returning to Greta Mosshoof in Felwood.
  collect Corrupt Moonwell Water##12907 |q 5157 |goto Felwood 35.17,59.79 |tip {dropsfrom}Corrupt Jaedenar Moonwell
step
  talk Greta Mosshoof##10922
  turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  turnin Rescue From Jaedenar##5203 |goto Felwood 51.35,82.01
step
  talk Greta Mosshoof##10922
  accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  accept Retribution of the Light##5204 |goto Felwood 51.35,82.01
step
  only completed(5159)
  talk Greta Mosshoof##10922
  accept A Final Blow##5242 |goto Felwood 51.21,82.11
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
  only completed(5159)
  note Kill Moora and Salia, and bring Shadow Lord Fel'dan's Head to Greta Mosshoof in Felwood.
  kill Moora##9861 |q 5242 |goto Felwood 38.81,46.87
step
  only completed(5159)
  talk Greta Mosshoof##10922
  turnin A Final Blow##5242 |goto Felwood 51.21,82.11
step
  talk Jessir Moonbow##11019
  turnin The Remains of Trey Lightforge##5385 |goto Felwood 51.35,82.01
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
step
  only not completed(1004) not completed(1018) not haveq(1004) not haveq(1018)
  talk Arch Druid Hamuul Runetotem##5769
  turnin The New Frontier##1000 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  talk Gorn One Eye##11555
  accept The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  collect Essence of Xandivious##21145 |q 8481 |goto Felwood 65.18,2.68 |tip {dropsfrom}Xandivious' Demon Bag
step
  note Trull Failbane in Felwood wants you to kill 15 Raging Owlbeasts and 15 Ragged Owlbeasts.
  kill Raging Owlbeast##7451 |q 4521 |goto Winterspring 59.83,31.69
step
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  collect Reliquary of Purity##22201 |q 5527 |goto Silithus 63.23,55.35 |tip {dropsfrom}Dusty Reliquary
step
  talk Trull Failbane##10306
  turnin Wild Guardians##4521 |goto Felwood 34.73,52.79
step
  talk Rabine Saturna##11801
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  talk Gorn One Eye##11555
  turnin The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5 |tip {turninat}Winterspring
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Rabine Saturna##1123 |goto Thunder Bluff 78.62,28.56
step
  talk Trull Failbane##10306
  accept Wild Guardians##4741 |goto Felwood 34.73,52.79
step
  talk Rabine Saturna##11801
  accept Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  collect Sealed Reliquary of Purity##18540 |q 5526 |goto Moonglade 51.69,45.1
step
  talk Gorn One Eye##11555
  accept The Brokering of Peace##8485 |goto Felwood 65.18,2.68
step
  only Warlock
  note Impsy in Felwood has asked that you bring him three Flawless Fel Essences originating from three distinct locations.
  collect Flawless Fel Essence (Azshara)##18624 |q 7602 |goto Azshara 61.79,23.59 |tip {dropsfrom}Legashi Satyr, Legashi Rogue, Legashi Hellcaller
step
  note Trull Failbane in Felwood wants you to hunt 13 Moontouched Owlbeasts.
  kill Moontouched Owlbeast##7453 |q 4741 |goto Winterspring 64.15,22.9
step
  only Warlock
  talk Impsy##14470
  turnin Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
step
  talk Rabine Saturna##11801
  turnin Rabine Saturna##1123 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  talk Trull Failbane##10306
  turnin Wild Guardians##4741 |goto Felwood 34.73,52.79
step
  talk Rabine Saturna##11801
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  talk Thrall##4949
  turnin The Brokering of Peace##8485 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Islen Waterseer##5901
  turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only Warlock
  talk Impsy##14470
  accept Kroshius' Infernal Core##7603 |goto Felwood 41.36,45.02
step
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  talk Trull Failbane##10306
  accept Wild Guardians##4721 |goto Felwood 34.73,52.79
step
  only Warlock
  note Search Shatter Scar Vale in Felwood for the remains of Kroshius. When you locate the remains, use the Fel Fire near them and await Kroshius' return. When the infernal has awoken, slay him and take from his corpse Kroshius' Infernal Core.
  kill Kroshius##14467 |q 7603 |goto Felwood 45.7,34.76 |elite
step
  note Trull Failbane in Felwood wants you to hunt 10 Berserk Owlbeasts in Winterspring.
  kill Berserk Owlbeast##7454 |q 4721 |goto Winterspring 65.67,22.28
step
  only Warlock
  talk Niby the Almighty##14469
  turnin Kroshius' Infernal Core##7603 |goto Felwood 41.38,44.85
step
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93 |tip {turninat}Silithus
step
  talk Trull Failbane##10306
  turnin Wild Guardians##4721 |goto Felwood 34.73,52.79
step
  note {travel}Winterspring
  goto Winterspring 31.27,45.16
]])
