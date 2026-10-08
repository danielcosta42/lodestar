-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stranglethorn Vale (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Eastern Plaguelands (56-60)",
	rev = "75a64fb4",
}, [[
step
  collect Arena Treasure Chest##179697 |goto Stranglethorn Vale 30.52,47.87 |tip Loot the quest item here — it starts the quest.
  accept Arena Master##7810 |goto Stranglethorn Vale 30.52,47.87
step
  talk Short John Mithril##14508
  turnin Arena Master##7810 |goto Stranglethorn Vale 29.59,47.38
step
  talk Fleet Master Firallon##2546
  accept Dressing the Part##9272 |goto Stranglethorn Vale 30.58,90.63
step
  talk Fleet Master Firallon##2546
  turnin Dressing the Part##9272 |goto Stranglethorn Vale 30.58,90.63
step
  only completed(3621)
  talk Galvan the Ancient##7802
  accept Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
step
  only completed(3621)
  note Wait for Galvan to finish forging the weaponry.
  talk Galvan the Ancient##7802 |q 3625 |goto Stranglethorn Vale 50.62,20.48
step
  only completed(3621)
  talk Galvan the Ancient##7802
  turnin Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
step
  only completed(3621)
  talk Galvan the Ancient##7802
  accept Return to the Blasted Lands##3626 |goto Stranglethorn Vale 50.62,20.48
step
  talk "Pretty Boy" Duncan##2545
  accept Avast Ye, Scallywag##1036 |goto Stranglethorn Vale 27.39,69.42
step
  talk Fleet Master Firallon##2546
  turnin Avast Ye, Scallywag##1036 |goto Stranglethorn Vale 30.58,90.63
step
  talk Fleet Master Firallon##2546
  accept Avast Ye, Admiral!##4621 |goto Stranglethorn Vale 30.58,90.63
step
  talk Exzhal##14910
  accept A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  note String 5 Channeler's Heads, then return the Collection of Troll Heads to Exzhal on Yojamba Isle.
  collect Gurubashi Head Collection##19880 |q 8201 |goto Stranglethorn Vale 15.26,15.5
step
  talk Vinchaxa##15070
  accept A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  talk Exzhal##14910
  turnin A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  talk Vinchaxa##15070
  turnin A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  note Slay Fleet Master Seahorn and Baron Revilgaz of Booty Bay, and then return to Fleet Master Firallon aboard the Crimson Veil off the coast of Stranglethorn Vale.
  talk Baron Revilgaz##2496 |q 4621 |goto Stranglethorn Vale 27.23,76.87
step
  talk Fleet Master Firallon##2546
  turnin Avast Ye, Admiral!##4621 |goto Stranglethorn Vale 30.58,90.63
step
  only completed(3621)
  talk Fallen Hero of the Horde##7572
  turnin Return to the Blasted Lands##3626 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  only completed(3621)
  talk Fallen Hero of the Horde##7572
  accept Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(3621)
  note Slay Grol the Destroyer, Lady Sevine, and Archmage Allistarj. From their corpses take the Amulet of Grol, the Amulet of Sevine, and the Amulet of Allistarj.
  kill Archmage Allistarj##7666 |goto Blasted Lands 66.69,29.24 |elite
  collect Amulet of Allistarj##10755 |q 3627 |goto Blasted Lands 66.69,29.24
step
  only completed(3621)
  talk Fallen Hero of the Horde##7572
  turnin Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  only completed(3621)
  talk Fallen Hero of the Horde##7572
  accept You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  only completed(3621)
  note Destroy Razelikh the Defiler and return the Severed Horn of the Defiler to the Fallen Hero of the Horde. You will also need to return the Ward of the Defiler so that the Fallen Hero can destroy it, preventing it from ever falling into the wrong hands.
  kill Razelikh the Defiler##7664 |goto Blasted Lands 47.64,29.83 |elite
  collect Severed Horn of the Defiler##10759 |q 3628 |goto Blasted Lands 47.64,29.83
step
  only completed(3621)
  talk Fallen Hero of the Horde##7572
  turnin You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  note {travel}Undercity
  goto Undercity 58.05,91.79
]])
