-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Timbermaw Hold", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "c6fdac8a",
}, [[
step
  talk Grazle##11554
  accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  note Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners. Return to him in southern Felwood near the Emerald Sanctuary when you are done.
  kill Deadwood Pathfinder##7155 |q 8460/2 |goto Felwood 48.3,89.46
  kill Deadwood Gardener##7154 |q 8460/3 |goto Felwood 48.42,89.84
  kill Deadwood Warrior##7153 |q 8460 |goto Felwood 48.39,91.4
step
  talk Grazle##11554
  turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.01
step
  talk Elder Bramblesnap##235906
  accept An Unlikely Source##86804 |goto Azshara 41.67,19.54
step
  note Find a way to get Legashi Firewater in the Legashi Encampment.
  turnin An Unlikely Source##86804 |goto Azshara 57.7,21.02
step
  talk Elder Bramblesnap##235906
  accept Transmuted Tincture##86812 |goto Azshara 41.67,19.54
step
  note Use the Satyrweed Tincture on 3 Mosshoof Coursers or Thunderhead Skystormers after weakening them.
  use Mosshoof Courser##8761 |q 86812 |goto Azshara 50.78,75.64 |tip {useit}
step
  talk Elder Bramblesnap##235906
  turnin Transmuted Tincture##86812 |goto Azshara 41.67,19.54
step
  talk Elder Bramblesnap##235906
  accept Potential Panacea##86813 |goto Azshara 41.67,19.54
step
  note Administer Bramblesnap's Panacea to Furze.
  talk Elder Bramblesnap##235906
  turnin Potential Panacea##86813 |goto Azshara 41.67,19.54
step
  talk Gatekeeper Rageroar##236573
  accept Missing Blackmaw Scouts##86791 |goto Azshara 42.28,20.13
step
  note Find the Blackmaw scouting party near the Legashi camps east of Ursolan.
  talk Korsa##236770
  turnin Missing Blackmaw Scouts##86791 |goto Azshara 63.01,21.43
step
  click Legashi Cauldron##506307
  accept Toil and Trouble##86925 |goto Azshara 57.7,21.02
step
  note Find a Legashi Firewater Recipe from satyr in the Legashi Encampment.
  collect Legashi Firewater Recipe##235645 |q 86925 |goto Azshara 61.79,23.59 |tip {dropsfrom}Legashi Satyr, Legashi Rogue, Legashi Hellcaller
step
  turnin Toil and Trouble##86925 |goto Azshara 57.7,21.02
step
  click Legashi Cauldron##506307
  accept Felfire Burn, Cauldron Bubble##86926 |goto Azshara 57.7,21.02
step
  note Bring 5 Satyrweed and a Fel Mote to the Legashi Cauldron in the Legashi Encampment.
  collect 5 Satyrweed##235470 |q 86926/1 |goto Azshara 59.61,22.79 |tip {dropsfrom}Satyrweed Bramble
  collect Fel Mote##235471 |q 86926 |goto Azshara 61.46,25.1
step
  turnin Felfire Burn, Cauldron Bubble##86926 |goto Azshara 57.7,21.02
step
  click Legashi Cauldron##506307
  accept Running Firewater##86927 |goto Azshara 57.7,21.02
step
  note Bring the Legashi Firewater to Elder Bramblesnap at Ursolan.
  talk Elder Bramblesnap##235906
  turnin Running Firewater##86927 |goto Azshara 41.67,19.54
step
  talk Korsa##236770
  accept Master Feardred##86777 |goto Azshara 63.01,21.43
step
  note Kill Master Feardred, and bring his amulet to Korsa.
  collect Feardred's Amulet##235334 |q 86777 |goto Azshara 61.35,25.05 |tip {dropsfrom}Master Feardred
step
  talk Korsa##236770
  turnin Master Feardred##86777 |goto Azshara 63.01,21.43
step
  talk Korsa##236770
  accept Return to Rageroar##86797 |goto Azshara 63.01,21.43
step
  note Return to Gatekeeper Rageroar at Ursolan.
  talk Gatekeeper Rageroar##236573
  turnin Return to Rageroar##86797 |goto Azshara 42.28,20.13
step
  talk Furze##235909
  accept Encroaching Corruption##86799 |goto Azshara 45.27,22.34
step
  note Speak to Elder Bramblesnap about Furze's illness.
  talk Elder Bramblesnap##235906
  turnin Encroaching Corruption##86799 |goto Azshara 41.67,19.54
step
  talk Ekkal##235903
  accept The Legashi Threat##86746 |goto Azshara 42,38.88
step
  note Kill 5 Legashi Satyr, 5 Legashi Rogues, and 5 Legashi Hellcallers for Ekkal at the Ruins of Eldarth.
  kill Legashi Rogue##6201 |q 86746/2 |goto Azshara 61.24,23.41
  kill Legashi Satyr##6200 |q 86746/1 |goto Azshara 61.79,23.59
  kill Legashi Hellcaller##6202 |q 86746 |goto Azshara 65.26,16.41
step
  talk Ekkal##235903
  turnin The Legashi Threat##86746 |goto Azshara 42,38.88
step
  talk Ekkal##235903
  accept Report to Rageroar##86752 |goto Azshara 42,38.88
step
  note Speak with Gatekeeper Rageroar at Ursolan.
  talk Gatekeeper Rageroar##236573
  turnin Report to Rageroar##86752 |goto Azshara 42.28,20.13
step
  talk Graal##237007
  accept Later, Satyr##86796 |goto Azshara 66.58,14.57
step
  note Help Graal break out of Legashi Stronghold, then inform Korsa outside Legashi Stronghold.
  talk Korsa##236770
  turnin Later, Satyr##86796 |goto Azshara 63.01,21.43
step
  talk Korsa##236770
  accept Thinning Their Forces##86792 |goto Azshara 63.01,21.43
step
  note Kill 6 Legashi Hellraisers, 4 Legashi Soulstealers, and 2 Legashi Blackguards for Korsa outside Legashi Stronghold.
  kill Legashi Hellraiser##236874 |q 86792/1 |goto Azshara 65.66,18.6
  kill Legashi Soulstealer##236867 |q 86792/2 |goto Azshara 65.74,18.58
  kill Legashi Blackguard##236876 |q 86792 |goto Azshara 65.57,18.12
step
  talk Korsa##236770
  turnin Thinning Their Forces##86792 |goto Azshara 63.01,21.43
step
  talk Lorekeeper Nok##249853
  accept The Twin Bears##92066 |goto Azshara 41.31,20.1
step
  note Find the Totem of Ursoc and the Totem of Ursol inside Blackmaw Hold. Then, return them to Lorekeeper Nok at Ursolan.
  collect Totem of Ursoc##249694 |q 92066/1
  collect Totem of Ursol##249693 |q 92066
step
  talk Lorekeeper Nok##249853
  turnin The Twin Bears##92066 |goto Azshara 41.31,20.1
step
  talk Gatekeeper Rageroar##236573
  accept Timbermaw Reinforcements##86798 |goto Azshara 42.28,20.13
step
  note Speak to Gorn One Eye in Timbermaw Hold and ask him to provide reinforcements.
  talk Gorn One Eye##11555
  turnin Timbermaw Reinforcements##86798 |goto Felwood 65.18,2.68
step
  kill Swarming Imp##255247 |goto Azshara 35.13,24.07 |tip Loot the quest item here — it starts the quest.
  accept A Lost Memento##92070 |goto Azshara 35.13,24.07
step
  note Find the owner of the Feathered Charm Necklace.
  collect Feathered Charm Necklace##249698 |q 92070 |goto Azshara 35.13,24.07 |tip {dropsfrom}Swarming Imp, Legashi Satyr, Legashi Slayer
step
  talk Unele##249855
  turnin A Lost Memento##92070 |goto Azshara 43.17,18.09
step
  talk Gorn One Eye##11555
  accept Blackmaw Counter-Offensive##86814 |goto Felwood 65.18,2.68
step
  note Plant the Timbermaw War Banner at the Legashi Stronghold in Azshara. Kill Prince Halanox, report your victory to Gatekeeper Rageroar at Ursolan.
  kill Prince Halanox##235892 |q 86814 |goto Azshara 67.2,18.67 |elite
step
  talk Gatekeeper Rageroar##236573
  turnin Blackmaw Counter-Offensive##86814 |goto Azshara 42.28,20.13
step
  talk Gorn One Eye##11555
  accept Chieftain Bloodmaw##87346 |goto Felwood 65.18,2.68
step
  note Kill Chieftain Bloodmaw and bring his mace to Gorn One Eye in Timbermaw Hold.
  collect Bloodmaw's Basher##236631 |q 87346 |goto Felwood 62.75,7.74 |tip {dropsfrom}Chieftain Bloodmaw
step
  talk Gorn One Eye##11555
  turnin Chieftain Bloodmaw##87346 |goto Felwood 65.18,2.68
step
  talk Meilosh##11557
  accept Runecloth##6031 |goto Felwood 65.69,2.81
step
  note Bring 30 Runecloth to Meilosh in Timbermaw Hold.
  collect 30 Runecloth##14047 |q 6031 |goto Felwood 65.69,2.81 |tip {dropsfrom}humanoids
step
  talk Meilosh##11557
  turnin Runecloth##6031 |goto Felwood 65.69,2.81
step
  talk Meilosh##11557
  accept Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  note Bring 2 Mooncloth to Meilosh in Timbermaw Hold.
  collect 2 Mooncloth##14342 |q 6032 |goto Felwood 65.69,2.81 |tip Crafted or bought.
step
  talk Meilosh##11557
  turnin Sacred Cloth##6032 |goto Felwood 65.69,2.81
step
  kill Deadwood Den Watcher##7156 |goto Felwood 62.76,8.01 |tip Loot the quest item here — it starts the quest.
  accept Deadwood Ritual Totem##8470 |goto Felwood 62.76,8.01
step
  note Take the Deadwood Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
  talk Kernda##11558
  turnin Deadwood Ritual Totem##8470 |goto Felwood 65.5,3.52
step
  talk Nafien##15395
  accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  note Nafien would like you to kill 6 Deadwood Den Watchers, 6 Deadwood Avengers, and 6 Deadwood Shamans. Return to him in northern Felwood near the entrance to Timbermaw Hold.
  kill Deadwood Den Watcher##7156 |q 8461/1 |goto Felwood 62.76,8.01
  kill Deadwood Avenger##7157 |q 8461/2 |goto Felwood 62.67,8.45
  kill Deadwood Shaman##7158 |q 8461 |goto Felwood 62.63,11.22
step
  talk Nafien##15395
  turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
step
  talk Nafien##15395
  accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
  note Travel through Timbermaw Hold and exit into Winterspring. Speak with Salfa, who stands guard outside the entrance to Timbermaw Hold.
  talk Salfa##11556
  turnin Speak to Salfa##8465 |goto Winterspring 27.73,34.5
step
  talk Nafien##15395
  accept Feathers for Nafien##8467 |goto Felwood 64.77,8.13
step
  collect Deadwood Headdress Feather##21377 |q 8467 |goto Felwood 48.39,91.4 |tip {dropsfrom}Deadwood Warrior, Deadwood Gardener, Deadwood Pathfinder
step
  talk Nafien##15395
  turnin Feathers for Nafien##8467 |goto Felwood 64.77,8.13
step
  talk Grazle##11554
  accept Speak to Nafien##8462 |goto Felwood 50.93,85.01
step
  note Travel north along the main road in Felwood and speak with the furbolg named Nafien. He stands guard outside the entrance to Timbermaw Hold.
  talk Nafien##15395
  turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
step
  talk Grazle##11554
  accept Feathers for Grazle##8466 |goto Felwood 50.93,85.01
step
  collect Deadwood Headdress Feather##21377 |q 8466 |goto Felwood 48.39,91.4 |tip {dropsfrom}Deadwood Warrior, Deadwood Gardener, Deadwood Pathfinder
step
  talk Grazle##11554
  turnin Feathers for Grazle##8466 |goto Felwood 50.93,85.01
step
  kill Winterfall Ursa##7438 |goto Winterspring 66.66,37.07 |tip Loot the quest item here — it starts the quest.
  accept Winterfall Ritual Totem##8471 |goto Winterspring 66.66,37.07
step
  note Take the Winterfall Ritual Totem inside Timbermaw Hold and see if one of the furbolgs there will find a use for the item. The Timbermaw will not speak with you unless you are of Neutral reputation or greater with them.
  talk Kernda##11558
  turnin Winterfall Ritual Totem##8471 |goto Felwood 65.5,3.52
step
  talk Ogtinc##8405
  accept Claws That Rend, Tusks that Gore##92069 |goto Azshara 42.4,42.62
step
  note Bring the Claws of the Great Bear and the Tusks of the Unbroken to Ogtinc, in Azshara.
  collect Claws of the Great Bear##249697 |q 92069/1 |elite |tip {dropsfrom}Withermaw
  collect Tusks of the Unbroken##249696 |q 92069 |elite |tip {dropsfrom}Bonesnout the Unbroken
step
  talk Ogtinc##8405
  turnin Claws That Rend, Tusks that Gore##92069 |goto Azshara 42.4,42.62
step
  talk Salfa##11556
  accept Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  note Salfa wants you to kill 8 Winterfall Shaman, 8 Winterfall Den Watchers, and 8 Winterfall Ursa. Salfa is located just outside the entrance to Timbermaw Hold in Winterspring.
  kill Winterfall Den Watcher##7440 |q 8464/2 |goto Winterspring 66.54,35.92
  kill Winterfall Ursa##7438 |q 8464/3 |goto Winterspring 66.66,37.07
  kill Winterfall Shaman##7439 |q 8464 |goto Winterspring 67.86,38.06
step
  talk Salfa##11556
  turnin Winterfall Activity##8464 |goto Winterspring 27.73,34.5
step
  talk Salfa##11556
  accept Beads for Salfa##8469 |goto Winterspring 27.73,34.5
step
  collect Winterfall Spirit Beads##21383 |q 8469 |goto Winterspring 67.86,38.06 |tip {dropsfrom}Winterfall Shaman, Winterfall Den Watcher, Winterfall Totemic
step
  talk Salfa##11556
  turnin Beads for Salfa##8469 |goto Winterspring 27.73,34.5
step
  talk Gatekeeper Rageroar##236573
  accept Blackmaw Reclamation##92065 |goto Azshara 42.28,20.13
step
  note Bring Varrox Bleakhoof's Head to Gatekeeper Rageroar at Ursolan.
  collect Head of Varrox Bleakhoof##249692 |q 92065 |goto Azshara 42.28,20.13 |elite |tip {dropsfrom}Varrox Bleakhoof
step
  talk Gatekeeper Rageroar##236573
  turnin Blackmaw Reclamation##92065 |goto Azshara 42.28,20.13
step
  talk Ekkal##235903
  accept Blackmaw Pouches##97327 |goto Azshara 42,38.88
step
  note Enter Blackmaw Hold and recover 5 Blackmaw Pouches for Ekkal at the Ruins of Eldarath in Azshara.
  collect 5 Blackmaw Pouch##273050 |q 97327 |goto Azshara 35.13,24.07 |tip {dropsfrom}Swarming Imp, Blackmaw Berserker, Blackmaw Thrall
step
  talk Ekkal##235903
  turnin Blackmaw Pouches##97327 |goto Azshara 42,38.88
step
  talk Ekkal##235903
  accept Blackmaw Pouches##96246 |goto Azshara 42,38.88
step
  collect Blackmaw Pouch##273050 |q 96246 |goto Azshara 35.13,24.07 |tip {dropsfrom}Swarming Imp, Blackmaw Berserker, Blackmaw Thrall
step
  talk Ekkal##235903
  turnin Blackmaw Pouches##96246 |goto Azshara 42,38.88
step
  talk Gorn One Eye##11555
  accept The Root of All Evil##8481 |goto Felwood 65.18,2.68
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  kill Xandivious##15623 |elite
  goto Winterspring 69.56,38.31
step
  note Plant the Demon Summoning Torch in the mouth of High Chief Winterfall's cave in the Winterfall furbolg village. Defeat the demon and retrieve the Essence of Xandivious for Gorn One Eye in Timbermaw Hold.
  collect Essence of Xandivious##21145 |q 8481 |goto Winterspring 69.56,38.31 |tip {dropsfrom}Xandivious' Demon Bag
step
  talk Gorn One Eye##11555
  turnin The Root of All Evil##8481 |goto Felwood 65.18,2.68
]])
