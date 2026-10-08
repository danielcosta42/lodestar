-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Swamp of Sorrows (55-57)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stranglethorn Vale (55-60)",
	rev = "10c16fb5",
}, [[
step
  only completed(1469)
  talk Brohann Caskbelly##5384
  accept Into The Temple of Atal'Hakkar##1475 |goto Stormwind City 69.45,40.4
step
  only Warrior
  talk Kelv Sternhammer##5113
  accept A Troubled Spirit##8417 |goto Ironforge 70.34,90.65
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(2623,2783)
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(1469)
  note Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind.
  collect 10 Atal'ai Tablet##6288 |q 1475 |goto Swamp of Sorrows 76.07,47.44
step
  only completed(2623,2783)
  note Listen to the Fallen Hero of the Horde tell his story.
  talk Fallen Hero of the Horde##7572 |q 2801 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(2623,2783)
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(2623,2783)
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(3373)
  talk Itharius##5353 |goto Swamp of Sorrows 13.67,71.72 |tip They give you the item that starts the quest.
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
  only completed(1469)
  talk Brohann Caskbelly##5384
  turnin Into The Temple of Atal'Hakkar##1475 |goto Stormwind City 69.45,40.4 |tip {turninat}Stormwind City
step
  only completed(2623,2783)
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 54.09,52.49
step
  only completed(2623,2783)
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(2623,2783)
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(2623,2783)
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702 |goto Swamp of Sorrows 33.49,65.99
step
  only completed(2623,2783)
  talk Corporal Thund Splithoof##7750
  accept Heroes of Old##2701 |goto Swamp of Sorrows 33.49,65.99
step
  only completed(2623,2783)
  turnin Heroes of Old##2701 |goto Swamp of Sorrows 33.26,66.22
step
  only completed(2623,2783)
  talk Fallen Hero of the Horde##7572
  accept Kirith##2721 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(2623,2783)
  talk Spirit of Kirith##7729
  turnin Kirith##2721 |goto Blasted Lands 68.8,31.07 |tip {turninat}Blasted Lands
step
  only completed(2623,2783)
  talk Spirit of Kirith##7729
  accept The Cover of Darkness##2743 |goto Blasted Lands 68.8,31.07
step
  only completed(2623,2783)
  talk Fallen Hero of the Horde##7572
  turnin The Cover of Darkness##2743 |goto Swamp of Sorrows 34.29,66.14
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 30.52,47.87
]])
