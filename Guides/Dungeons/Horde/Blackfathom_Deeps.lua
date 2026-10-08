-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackfathom Deeps", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "c8e82250",
}, [[
step
  talk Tsunaman##11862
  accept Trouble in the Deeps##6562 |goto Stonetalon Mountains 47.36,64.25
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  talk Je'neu Sancrea##12736
  accept Amongst the Ruins##6921 |goto Ashenvale 11.56,34.29
step
  talk Argent Guard Thaelrid##4787
  accept Blackfathom Villainy##6561 |goto Blackfathom Deeps - Dungeon -1,-1
step
  kill Baron Aquanis##12876 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Baron Aquanis##6922 |goto Blackfathom Deeps - Dungeon -1,-1
step
  note Bring the Fathom Core to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale.
  collect Fathom Core##16762 |q 6921 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {dropsfrom}Fathom Stone
step
  note Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff.
  collect Head of Kelris##5881 |q 6561 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Lord Kelris
step
  note Speak to Je'neu Sancrea in Ashenvale.
  talk Je'neu Sancrea##12736
  turnin Trouble in the Deeps##6562 |goto Ashenvale 11.56,34.29
step
  note Seek out Argent Guard Thaelrid in Blackfathom Deeps.
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Je'neu Sancrea##12736
  turnin Amongst the Ruins##6921 |goto Ashenvale 11.56,34.29
step
  talk Bashana Runetotem##9087
  turnin Blackfathom Villainy##6561 |goto Thunder Bluff 71.06,34.19
step
  note Bring the Strange Water Globe to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale.
  talk Je'neu Sancrea##12736
  turnin Baron Aquanis##6922 |goto Ashenvale 11.56,34.29
step
  kill Blackfathom Tide Priestess##4802 |goto Ashenvale 13.55,12.06 |elite |tip Loot the quest item here — it starts the quest.
  accept Allegiance to the Old Gods##6564 |goto Ashenvale 13.55,12.06
step
  talk Je'neu Sancrea##12736
  accept The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  note Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale.
  collect 20 Sapphire of Aku'Mai##16784 |q 6563 |goto Darkshore 32,92.81
step
  note Bring the Damp Note to Je'neu Sancrea in Ashenvale.
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6564 |goto Ashenvale 11.56,34.29
step
  talk Je'neu Sancrea##12736
  turnin The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  talk Je'neu Sancrea##12736
  accept Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
step
  note Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale.
  kill Lorgus Jett##12902 |q 6565 |goto Blackfathom Deeps - Dungeon -1,-1 |elite
step
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
]])
