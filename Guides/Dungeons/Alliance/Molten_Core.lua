-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Molten Core", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "57870739",
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
  kill Highlord Demitrian##14347 |goto Silithus 21.71,8.57 |elite |tip Loot the quest item here — it starts the quest.
  accept Examine the Vessel##7785 |goto Silithus 21.71,8.57
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  note Use the Aspect of Neptulon on poisoned elementals of Eastern Plaguelands. Bring 12 Discordant Bracers and the Aspect of Neptulon to Duke Hydraxis in Azshara.
  collect 12 Discordant Bracers##17309 |q 6804 |goto Eastern Plaguelands 54.91,68.84 |tip {dropsfrom}Blighted Surge, Plague Ravager, Blighted Horror
step
  note Kill 15 Dust Stormers and 15 Desert Rumblers and then return to Duke Hydraxis in Azshara.
  kill Dust Stormer##11744 |q 6805 |goto Silithus 21.6,22.4
step
  note Venture to the Caverns of Time in Tanaris and find Anachronos, Brood of Nozdormu.
  talk Anachronos##15192 |q 8286 |goto Tanaris 65.27,50.03
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
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Duke Hydraxis##13278
  accept Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Highlord Demitrian##14347
  accept Thunderaan the Windseeker##7786 |goto Silithus 21.71,8.57
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  note Bring the Eye of the Emberseer to Duke Hydraxis in Azshara.
  collect Eye of the Emberseer##17322 |q 6821 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}Pyroguard Emberseer
step
  note To free Thunderaan the Windseeker from his prison, you must present the right and left halves of the Bindings of the Windseeker, 10 bars of Elementium, and the Essence of the Firelord to Highlord Demitrian in Silithus.
  collect Elementium Bar##17771 |q 7786 |goto Silithus 21.71,8.57
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  talk Duke Hydraxis##13278
  turnin Eye of the Emberseer##6821 |goto Azshara 79.28,73.7
step
  talk Highlord Demitrian##14347
  turnin Thunderaan the Windseeker##7786 |goto Silithus 21.71,8.57
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Duke Hydraxis##13278
  accept The Molten Core##6822 |goto Azshara 79.28,73.7
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  note Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara.
  kill Molten Giant##11658 |q 6822 |goto Molten Core - Dungeon -1,-1 |elite
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 50.21,40.97
step
  talk Duke Hydraxis##13278
  turnin The Molten Core##6822 |goto Azshara 79.28,73.7
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Duke Hydraxis##13278
  accept Agent of Hydraxis##6823 |goto Azshara 79.28,73.7
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Duke Hydraxis##13278
  turnin Agent of Hydraxis##6823 |goto Azshara 79.28,73.7
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 65.27,50.03
step
  talk Duke Hydraxis##13278
  accept Hands of the Enemy##6824 |goto Azshara 79.28,73.7
step
  talk Anachronos##15192
  accept Long Forgotten Memories##8305 |goto Tanaris 65.27,50.03
step
  note Bring the Hands of Lucifron, Sulfuron, Gehennas and Shazzrah to Duke Hydraxis in Azshara.
  collect Hand of Shazzrah##17332 |q 6824 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Shazzrah
step
  talk Duke Hydraxis##13278
  turnin Hands of the Enemy##6824 |goto Azshara 79.28,73.7
step
  turnin Long Forgotten Memories##8305 |goto Silithus 28.68,89.14
step
  click Crystalline Tear##180633
  accept A Pawn on the Eternal Board##8519 |goto Silithus 28.68,89.14
step
  talk Anachronos##15192
  turnin A Pawn on the Eternal Board##8519 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Spirit of Azuregos##15481
  accept Azuregos's Magical Ledger##8575 |goto Azshara 52.98,81.73
step
  talk Narain Soothfancy##11811
  turnin Azuregos's Magical Ledger##8575 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Stewvul, Ex-B.F.F.##8577 |goto Tanaris 65.24,18.58
step
  turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.68
step
  click Inconspicuous Crate##180642
  accept Scrying Goggles? No Problem!##8578 |goto Silverpine Forest 46.19,86.68
step
  note Find Narain's Scrying Goggles and return them to Narain Soothfancy in Tanaris.
  collect Narain's Scrying Goggles##20951 |q 8578 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Flamewaker, Ragnaros, Magmadar
step
  talk Narain Soothfancy##11811
  turnin Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
]])
