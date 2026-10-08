-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Wailing Caverns", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Tonga Runetotem##3448
  accept The Forgotten Pools##870 |goto The Barrens 52.26,31.93
step
  talk Nalpak##5767
  accept Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  talk Crane Operator Bigglefuzz##3665
  accept Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  talk Mebok Mizzyrix##3446
  accept Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Apothecary Zamah##3419
  accept Serpentbloom##962 |goto Thunder Bluff 22.81,20.89
step
  talk Ebru##5768
  accept Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  kill Mutanus the Devourer##3654 |goto Wailing Caverns - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Glowing Shard##6981 |goto Wailing Caverns - Dungeon -1,-1
step
  note Nalpak in the Wailing Caverns wants 20 Deviate Hides.
  kill Deviate Coiler##3630 |goto The Barrens 46,36.4 |elite
  collect Deviate Hide##6443 |q 1486 |goto The Barrens 46,36.4
step
  note Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns.
  kill Mad Magglish##3655 |goto The Barrens 46.83,34.66 |elite
  collect 99-Year-Old Port##5334 |q 959 |goto The Barrens 46.83,34.66
step
  note Gather 5 Intact Raptor Horns from Sunscale Scytheclaws, and bring them to Mebok Mizzyrix in Ratchet.
  collect 5 Intact Raptor Horn##5055 |q 865 |goto The Barrens 52.58,45.99 |tip {dropsfrom}Sunscale Scytheclaw, Ishamuhale, Takk the Leaper
step
  note Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom.
  collect 10 Serpentbloom##5339 |q 962 |goto The Barrens 47.62,33.85
step
  note Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs.
  kill Deviate Ravager##3636 |q 1487 |goto Wailing Caverns - Dungeon -1,-1 |elite
step
  note Travel to Ratchet to find someone that can tell you more about the glowing shard.
  talk Sputtervalve##3442 |q 6981 |goto The Barrens 62.98,37.22
step
  talk Tonga Runetotem##3448
  turnin The Forgotten Pools##870 |goto The Barrens 52.26,31.93
step
  talk Nalpak##5767
  turnin Deviate Hides##1486 |goto The Barrens 45.99,35.66
step
  talk Crane Operator Bigglefuzz##3665
  turnin Trouble at the Docks##959 |goto The Barrens 63.09,37.61
step
  talk Mebok Mizzyrix##3446
  turnin Raptor Horns##865 |goto The Barrens 62.37,37.62
step
  talk Apothecary Zamah##3419
  turnin Serpentbloom##962 |goto Thunder Bluff 22.81,20.89
step
  talk Ebru##5768
  turnin Deviate Eradication##1487 |goto The Barrens 46.01,35.74
step
  talk Falla Sagewind##8418
  turnin The Glowing Shard##6981 |goto The Barrens 48.18,32.78
step
  talk Tonga Runetotem##3448
  accept The Stagnant Oasis##877 |goto The Barrens 52.26,31.93
step
  talk Mebok Mizzyrix##3446
  accept Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  note Return to Tonga at The Crossroads, after investigating the Stagnant Oasis.
  collect Bubbling Fissure##3737 |q 877 |goto The Barrens 55.61,42.75
step
  note Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet.
  collect 6 Wailing Essence##6464 |q 1491 |goto Wailing Caverns - Dungeon -1,-1 |tip {dropsfrom}Devouring Ectoplasm, Evolving Ectoplasm, Nightmare Ectoplasm
step
  talk Tonga Runetotem##3448
  turnin The Stagnant Oasis##877 |goto The Barrens 52.26,31.93
step
  talk Mebok Mizzyrix##3446
  turnin Smart Drinks##1491 |goto The Barrens 62.37,37.62
step
  talk Tonga Runetotem##3448
  accept Altered Beings##880 |goto The Barrens 52.26,31.93
step
  note Bring 8 Altered Snapjaw Shells to Tonga Runetotem at the Crossroads.
  collect 8 Altered Snapjaw Shell##5098 |q 880 |goto The Barrens 47.74,40.22 |tip {dropsfrom}Oasis Snapjaw
step
  talk Tonga Runetotem##3448
  turnin Altered Beings##880 |goto The Barrens 52.26,31.93
step
  talk Tonga Runetotem##3448
  accept Hamuul Runetotem##1489 |goto The Barrens 52.26,31.93
step
  talk Arch Druid Hamuul Runetotem##5769
  turnin Hamuul Runetotem##1489 |goto Thunder Bluff 78.62,28.56
step
  talk Arch Druid Hamuul Runetotem##5769
  accept Nara Wildmane##1490 |goto Thunder Bluff 78.62,28.56
step
  talk Nara Wildmane##5770
  turnin Nara Wildmane##1490 |goto Thunder Bluff 75.65,31.61
step
  talk Nara Wildmane##5770
  accept Leaders of the Fang##914 |goto Thunder Bluff 75.65,31.61
step
  note Bring the Gems of Cobrahn, Anacondra, Pythas and Serpentis to Nara Wildmane in Thunder Bluff.
  collect Gem of Cobrahn##9738 |q 914 |goto Wailing Caverns - Dungeon -1,-1 |elite |tip {dropsfrom}Lord Cobrahn, Cobrahn Snake Form
step
  talk Nara Wildmane##5770
  turnin Leaders of the Fang##914 |goto Thunder Bluff 75.65,31.61
]])
