-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Molten Core", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "9c5dcb19",
}, [[
step
  talk Duke Hydraxis##13278
  accept Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  only Hunter
  click Cache of the Firelord##179703
  accept The Ancient Leaf##7632 |goto Molten Core - Dungeon -1,-1
step
  talk Highlord Demitrian##14347 |goto Silithus 21.71,8.57 |tip They give you the item that starts the quest.
  accept Examine the Vessel##7785 |goto Silithus 21.71,8.57
step
  note Use the Aspect of Neptulon on poisoned elementals of Eastern Plaguelands. Bring 12 Discordant Bracers and the Aspect of Neptulon to Duke Hydraxis in Azshara.
  collect 12 Discordant Bracers##17309 |q 6804 |goto Eastern Plaguelands 54.91,68.84 |tip {dropsfrom}Blighted Surge, Plague Ravager, Blighted Horror
step
  note Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
  kill Dust Stormer##11744 |q 6805 |goto Silithus 21.6,22.4
step
  talk Duke Hydraxis##13278
  turnin Poisoned Water##6804 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  turnin Stormers and Rumblers##6805 |goto Azshara 79.28,73.7
step
  only Hunter
  talk Vartrus the Ancient##14524
  turnin The Ancient Leaf##7632 |goto Felwood 47.78,24.08
step
  talk Highlord Demitrian##14347
  turnin Examine the Vessel##7785 |goto Silithus 21.71,8.57
step
  talk Duke Hydraxis##13278
  accept Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Highlord Demitrian##14347
  accept Thunderaan the Windseeker##7786 |goto Silithus 21.71,8.57
step
  note Bring the Eye of the Emberseer to Duke Hydraxis in Azshara.
  collect Eye of the Emberseer##17322 |q 6821 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Pyroguard Emberseer
step
  note To free Thunderaan the Windseeker from his prison, you must present the right and left halves of the Bindings of the Windseeker, 10 bars of Elementium, and the Essence of the Firelord to Highlord Demitrian in Silithus.
  collect Elementium Bar##17771 |q 7786 |goto Silithus 21.71,8.57
step
  talk Duke Hydraxis##13278
  turnin Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Highlord Demitrian##14347
  turnin Thunderaan the Windseeker##7786 |goto Silithus 21.71,8.57
step
  talk Duke Hydraxis##13278
  accept The Molten Core##6822 |goto Azshara 79.28,73.7
step
  note Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara.
  kill Molten Giant##11658 |q 6822 |goto Molten Core - Dungeon -1,-1 |elite
step
  talk Duke Hydraxis##13278
  turnin The Molten Core##6822 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept Agent of Hydraxis##6823 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  turnin Agent of Hydraxis##6823 |goto Azshara 79.28,73.7
step
  talk Duke Hydraxis##13278
  accept Hands of the Enemy##6824 |goto Azshara 79.28,73.7
step
  note Bring the Hands of Lucifron, Sulfuron, Gehennas and Shazzrah to Duke Hydraxis in Azshara.
  collect Hand of Shazzrah##17332 |q 6824 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Shazzrah
step
  talk Duke Hydraxis##13278
  turnin Hands of the Enemy##6824 |goto Azshara 79.28,73.7
]])
