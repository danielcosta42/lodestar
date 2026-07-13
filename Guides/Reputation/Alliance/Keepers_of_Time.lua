-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Keepers of Time", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Steward of Time##20142
  accept To The Master's Lair##10279 |goto Tanaris 66.02,49.7
step
  talk Wind Trader Zhareem##24369
  accept Wanted: The Epoch Hunter's Head##11378 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  accept Wanted: Aeonus's Hourglass##11382 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Rift Lords##11383 |goto Shattrath City 75.5,37.24
step
  talk Andormu##20130
  turnin To The Master's Lair##10279 |goto Tanaris 58.43,54.28
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: The Epoch Hunter's Head##11378 |goto Shattrath City 75.13,36.65
step
  talk Wind Trader Zhareem##24369
  turnin Wanted: Aeonus's Hourglass##11382 |goto Shattrath City 75.13,36.65
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Rift Lords##11383 |goto Shattrath City 75.5,37.24
step
  talk Andormu##20130
  accept The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Andormu##20130
  turnin The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Andormu##20130
  accept Old Hillsbrad##10282 |goto Tanaris 58.43,54.28
step
  talk Erozion##18723
  turnin Old Hillsbrad##10282 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Erozion##18723
  accept Taretha's Diversion##10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  note Travel to Durnholde Keep and set 5 incendiary charges at the barrels located inside each of the internment lodges using the Pack of Incendiary Bombs given to you by Erozion.
  kill Hillsbrad Internment Lodge Quest Trigger##20155 |q 10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Thrall##17876
  turnin Taretha's Diversion##10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Thrall##17876
  accept Escape from Durnholde##10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  note When you are ready to proceed, let Thrall know. Follow Thrall out of Durnholde Keep and help him free Taretha and fulfill his destiny.
  kill Thrall Quest Trigger##20156 |q 10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Erozion##18723
  turnin Escape from Durnholde##10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Erozion##18723
  accept Return to Andormu##10285 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Andormu##20130
  turnin Return to Andormu##10285 |goto Tanaris 58.43,54.28
step
  talk Andormu##19932
  accept The Black Morass##10296 |goto Tanaris 57.62,59.01
step
  talk Sa'at##20201
  turnin The Black Morass##10296 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  accept The Opening of the Dark Portal##10297 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  turnin The Opening of the Dark Portal##10297 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  accept Hero of the Brood##10298 |goto The Black Morass - Dungeon -1,-1
step
  talk Andormu##20130
  turnin Hero of the Brood##10298 |goto Tanaris 58.43,54.28
]])
