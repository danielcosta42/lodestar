-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Swamp of Sorrows (50-57)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stranglethorn Vale (55-60)",
}, [[
step
  only Warrior
  talk Torm Ragetotem##3041
  accept A Troubled Spirit##8417 |goto Thunder Bluff 57.24,87.37
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  note Listen to the Fallen Hero of the Horde tell his story.
  talk Fallen Hero of the Horde##7572 |q 2784 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Disgraced One##2621 |goto Swamp of Sorrows 34.29,66.14
step
  note {fp}Breyk
  goto Swamp of Sorrows 46.07,54.83 |tip {vendor}
step
  talk Dispatch Commander Ruag##7623
  turnin The Disgraced One##2621 |goto Swamp of Sorrows 47.79,54.94
step
  talk Dispatch Commander Ruag##7623
  accept The Missing Orders##2622 |goto Swamp of Sorrows 47.79,54.94
step
  talk Bengor##7643
  turnin The Missing Orders##2622 |goto Swamp of Sorrows 44.97,57.37
step
  only completed(3373)
  kill Itharius##5353 |goto Swamp of Sorrows 13.67,71.72 |tip Loot the quest item here — it starts the quest.
  accept The Essence of Eranikus##3374 |goto Swamp of Sorrows 13.67,71.72
step
  only completed(3373)
  note Bring the Oathstone of Ysera's Dragonflight and the Chained Essence of Eranikus to Itharius in the Swamp of Sorrows. It is there that you will make your choice to aid Ysera's Dragonflight or not.
  collect Chained Essence of Eranikus##10455 |q 3374 |goto Swamp of Sorrows 13.67,71.72
step
  only completed(3373)
  talk Itharius##5353
  turnin The Essence of Eranikus##3374 |goto Swamp of Sorrows 13.67,71.72
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 50.2,38.6
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.08,35.24
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Bengor##7643
  accept The Swamp Talker##2623 |goto Swamp of Sorrows 44.97,57.37
step
  note Retrieve the Warchief's Orders and return them to the Fallen Hero of the Horde.
  collect Warchief's Orders##8463 |q 2623 |goto Swamp of Sorrows 62.4,84.6 |tip {dropsfrom}Swamp Talker
step
  talk Fallen Hero of the Horde##7572
  turnin The Swamp Talker##2623 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  note Listen to the Fallen Hero of the Horde tell his story.
  talk Fallen Hero of the Horde##7572 |q 2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 54.09,52.49
step
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
step
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702 |goto Swamp of Sorrows 33.49,65.99
step
  talk Corporal Thund Splithoof##7750
  accept Heroes of Old##2701 |goto Swamp of Sorrows 33.49,65.99
step
  turnin Heroes of Old##2701 |goto Swamp of Sorrows 33.26,66.22
step
  talk Fallen Hero of the Horde##7572
  accept Kirith##2721 |goto Swamp of Sorrows 34.29,66.14
step
  talk Spirit of Kirith##7729
  turnin Kirith##2721 |goto Blasted Lands 68.8,31.07 |tip {turninat}Blasted Lands
step
  talk Spirit of Kirith##7729
  accept The Cover of Darkness##2743 |goto Blasted Lands 68.8,31.07
step
  talk Fallen Hero of the Horde##7572
  turnin The Cover of Darkness##2743 |goto Swamp of Sorrows 34.29,66.14
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 30.52,47.87
]])
