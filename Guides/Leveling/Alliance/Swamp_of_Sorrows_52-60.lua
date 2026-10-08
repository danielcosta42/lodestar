-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Swamp of Sorrows (52-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Western Plaguelands (54-60)",
}, [[
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  note Slay Grol the Destroyer, Lady Sevine, and Archmage Allistarj. From their corpses take the Amulet of Grol, the Amulet of Sevine, and the Amulet of Allistarj.
  kill Archmage Allistarj##7666 |goto Blasted Lands 66.69,29.24 |elite
  collect Amulet of Allistarj##10755 |q 3627 |goto Blasted Lands 66.69,29.24
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  note Listen to the Fallen Hero of the Horde tell his story.
  kill Fallen Hero of the Horde##7572 |q 2801 |goto Swamp of Sorrows 34.29,66.14
step
  only Warlock
  talk Greshka##12807
  accept Mor'zul Bloodbringer##7562 |goto Swamp of Sorrows 48.58,55.27
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 50.2,38.8
step
  only Warlock
  talk Mor'zul Bloodbringer##14436
  turnin Mor'zul Bloodbringer##7562 |goto Burning Steppes 12.69,31.64 |tip {turninat}Burning Steppes
step
  kill Itharius##5353 |goto Swamp of Sorrows 13.67,71.72 |tip Loot the quest item here — it starts the quest.
  accept The Essence of Eranikus##3374 |goto Swamp of Sorrows 13.67,71.72
step
  note Bring the Oathstone of Ysera's Dragonflight and the Chained Essence of Eranikus to Itharius in the Swamp of Sorrows. It is there that you will make your choice to aid Ysera's Dragonflight or not.
  collect Chained Essence of Eranikus##10455 |q 3374 |goto Swamp of Sorrows 13.67,71.72
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  note Destroy Razelikh the Defiler and return the Severed Horn of the Defiler to the Fallen Hero of the Horde. You will also need to return the Ward of the Defiler so that the Fallen Hero can destroy it, preventing it from ever falling into the wrong hands.
  kill Razelikh the Defiler##7664 |goto Blasted Lands 47.64,29.83 |elite
  collect Severed Horn of the Defiler##10759 |q 3628 |goto Blasted Lands 47.64,29.83
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.64,35.24
step
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 55.05,55.73
step
  talk Itharius##5353
  turnin The Essence of Eranikus##3374 |goto Swamp of Sorrows 13.67,71.72
step
  talk Itharius##5353
  accept In Eranikus' Own Words##3512 |goto Swamp of Sorrows 13.67,71.72
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  talk Umbranse the Spiritspeaker##8588
  turnin In Eranikus' Own Words##3512 |goto Winterspring 67.81,27.43 |tip {turninat}Winterspring
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
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
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
