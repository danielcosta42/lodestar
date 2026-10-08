-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Ahn'Qiraj - Scepter of the Shifting Sands", {
	author = "Lodestar Generator",
	rev = "abc78156",
}, [[
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  note Venture to the Caverns of Time in Tanaris and find Anachronos, Brood of Nozdormu.
  talk Anachronos##15192 |q 8286 |goto Tanaris 65.27,50.03
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 50.21,40.97
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept Long Forgotten Memories##8305 |goto Tanaris 65.27,50.03
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
step
  talk Vaelastrasz the Corrupt##13020
  accept Nefarius's Corruption##8730 |goto Blackwing Lair - Dungeon -1,-1
step
  note Slay Nefarian and recover the Red Scepter Shard. Return the Red Scepter Shard to Anachronos at the Caverns of Time in Tanaris. You have 5 hours to complete this task.
  collect Red Scepter Shard##21138 |q 8730 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Nefarian
step
  talk Anachronos##15192
  turnin Nefarius's Corruption##8730 |goto Tanaris 65.27,50.03
step
  talk Narain Soothfancy##11811
  accept Never Ask Me About My Business##8584 |goto Tanaris 65.24,18.58
step
  talk Dirge Quikcleave##8125
  turnin Never Ask Me About My Business##8584 |goto Tanaris 52.63,28.11
step
  talk Dirge Quikcleave##8125
  accept The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  note Recover Lakmaeran's Carcass and 20 Chimaerok Tenderloins for Dirge Quikcleave in Tanaris.
  kill Lord Lakmaeran##12803 |goto Feralas 29.34,72.63 |elite
  collect Lakmaeran's Carcass##21027 |q 8585 |goto Feralas 29.34,72.63
step
  talk Dirge Quikcleave##8125
  turnin The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  talk Dirge Quikcleave##8125
  accept Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  note Dirge Quikcleave in Gadgetzan wants you to bring him 20 Goblin Rocket Fuel and 20 Deeprock Salt.
  collect Goblin Rocket Fuel##9061 |q 8586 |goto Silithus 62.65,52.84 |tip {dropsfrom}Clunk, Spirestone Ogre Magus, Tortured Druid
step
  talk Dirge Quikcleave##8125
  turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  talk Dirge Quikcleave##8125
  accept Return to Narain##8587 |goto Tanaris 52.63,28.11
step
  talk Narain Soothfancy##11811
  turnin Return to Narain##8587 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Draconic for Dummies##8597 |goto Tanaris 65.24,18.58
step
  turnin Draconic for Dummies##8597 |goto Azeroth - the world map 29.99,89.15
step
  click Freshly Dug Dirt##180652
  accept rAnS0m##8598 |goto Azeroth - the world map 29.99,89.15
step
  talk Narain Soothfancy##11811
  turnin rAnS0m##8598 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Decoy!##8606 |goto Tanaris 65.24,18.58
step
  note Narain Soothfancy in Tanaris wants you to travel to Winterspring and place the Bag of Gold at the drop off point documented by the booknappers.
  kill Number Two##15554 |q 8606 |goto Winterspring 67.2,72.6 |elite
step
  talk Narain Soothfancy##11811
  turnin Decoy!##8606 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  note Recover the 8 lost chapters of Draconic for Dummies and combine them with the Magical Book Binding and return the completed book of Draconic for Dummies: Volume II to Narain Soothfancy in Tanaris.
  collect Draconic For Dummies: Volume II##21111 |q 8620 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  note Narain Soothfancy in Tanaris wants you to bring him 20 Arcanite Bars, 10 Elementium Ore, 10 Azerothian Diamonds, and 10 Blue Sapphires.
  collect Arcanite Bar##12360 |q 8728 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Wrath of Neptulon##8729 |goto Tanaris 65.24,18.58
step
  note Use the Arcanite Buoy at the Swirling Maelstrom at the Bay of Storms in Azshara.
  collect Blue Scepter Shard##21137 |q 8729 |goto Tanaris 65.24,18.58 |tip {dropsfrom}Maws
step
  talk Anachronos##15192
  turnin The Wrath of Neptulon##8729 |goto Tanaris 65.27,50.03
step
  talk Malfurion Stormrage##15362
  accept Eranikus, Tyrant of the Dream##8733 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  talk Forest Wisp##15624
  turnin Eranikus, Tyrant of the Dream##8733 |goto Teldrassil 37.55,47.92
step
  talk Forest Wisp##15624
  accept Tyrande and Remulos##8734 |goto Teldrassil 37.55,47.92
step
  talk Keeper Remulos##11832
  turnin Tyrande and Remulos##8734 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  note Travel to the four Emerald Dream portals in Azeroth and collect a Fragment of the Nightmare's Corruption from each. Return to Keeper Remulos in the Moonglade when you have completed this task.
  kill Emeraldon Boughguard##12474 |goto Ashenvale 94.98,39.79 |elite
  collect Fragment of the Nightmare's Corruption##21147 |q 8735 |goto Ashenvale 94.98,39.79
step
  talk Keeper Remulos##11832
  turnin The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  turnin The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Champion Returns##8741 |goto Moonglade 36.18,41.79
step
  talk Anachronos##15192
  turnin The Champion Returns##8741 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Might of Kalimdor##8742 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Might of Kalimdor##8742 |goto Tanaris 65.27,50.03
step
  click The Scarab Gong##180717
  accept Bang a Gong!##8743 |goto Silithus 25.72,90.86
step
  collect The Scepter of the Shifting Sands##21175 |q 8743 |goto Silithus 25.72,90.86
step
  turnin Bang a Gong!##8743 |goto Silithus 25.72,90.86
step
  talk Jonathan the Revelator##15693
  accept Treasure of the Timeless One##8745 |goto Silithus 25.94,90.96
step
  talk Jonathan the Revelator##15693
  turnin Treasure of the Timeless One##8745 |goto Silithus 25.94,90.96
]])
