-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Alterac Mountains (36-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Azshara (52-60)",
}, [[
step
  talk Voggah Deathgrip##13817
  accept The Battle for Alterac##7142 |goto Alterac Mountains 63.84,60.47
step
  talk Henchman Valik##2333
  accept Valik##535 |goto Alterac Mountains 57.17,69.51
step
  note Bring a mug of Southshore Stout to Valik in the Syndicate camp.
  collect Southshore Stout##3703 |q 535 |goto Alterac Mountains 59.3,69.76 |tip {dropsfrom}Drunken Footpad
step
  talk Andron Gant##6522
  accept Andron's Payment to Jediga##3564 |goto Undercity 54.81,76.33
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3568 |goto Undercity 48.71,71.39
step
  note Fill all 4 Empty Vials at the tide pools along the coast of the Ruins of Eldarath in Azshara before returning to Chemist Cuely.
  collect Filled Vial Labeled #1##10691 |q 3568 |goto Undercity 48.71,71.39
step
  talk Chemist Fuely##10136
  accept A Sample of Slime...##4293 |goto Undercity 47.45,73.35
step
  note Gather Felwood Slime Samples from any of the slimes in Felwood. Then, using the Testing Equipment next to Chemist Fuely in Undercity, see which of your samples are the most corrupt. Bring 5 of the Corrupted Felwood Samples you find to Chemist Fuely.
  collect 5 A Sample of Slime...##12234 |q 4293 |goto Undercity 47.45,73.35
step
  only Hunter
  talk Kary Thunderhorn##3038
  accept The Hunter's Charm##8151 |goto Thunder Bluff 58.49,88.33
step
  only Paladin
  talk Champion Cyssa Dawnrose##20406
  accept To The Bulwark##9601 |goto Undercity 58.0,90.45
step
  only Paladin
  talk Lady Sylvanas Windrunner##10181
  accept Ancient Evil##10593 |goto Undercity 58.05,91.79
step
  only Paladin
  note Unlock the secrets of the Temple of Atal'Hakkar to release Atal'alarion and recover the Putrid Vine from his flesh. Return to Mehlar at the Bulwark when you have done this.
  collect Putrid Vine##22444 |q 10593 |goto Undercity 58.05,91.79 |tip {dropsfrom}Atal'alarion
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin To The Bulwark##9601 |goto Tirisfal Glades 83.22,71.32 |tip {turninat}Tirisfal Glades
step
  only Paladin
  talk Mehlar Dawnblade##17099
  turnin Ancient Evil##10593 |goto Tirisfal Glades 83.22,71.32 |tip {turninat}Tirisfal Glades
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Duskwood 64.14,67.71 |tip {dropsfrom}Nightbane Dark Runner, Nightbane Vile Fang, Splinter Fist Warrior
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Bring the pieces for the spirit totem to Bath'rah the Windwatcher.
  collect Bloodshot Spider Eye##20610 |q 8412 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Carrion Lurker, Venom Mist Lurker
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  collect Sealed Azure Bag##19775 |q 8234 |goto Azshara 44.21,22.54 |tip {dropsfrom}Timbermaw Shaman
step
  only Rogue
  talk Fahrad##6707
  accept Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  collect Heavy Junkbox##16885 |q 8249 |goto Alterac Valley - Battleground 51.14,6.98 |tip {dropsfrom}Irondeep Trogg, Irondeep Skullthumper, Taskmaster Snivvle
step
  talk Jediga##8587
  turnin Andron's Payment to Jediga##3564 |goto Azshara 22.56,51.42 |tip {turninat}Azshara
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
step
  talk Magatha Grimtotem##4046
  accept Magatha's Payment to Jediga##3562 |goto Thunder Bluff 69.85,30.91
step
  talk Jes'rimon##8659
  accept Jes'rimon's Payment to Jediga##3563 |goto Orgrimmar 55.52,34.08
step
  talk Jes'rimon##8659
  accept Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08
step
  note Bring 8 White Ravasaur Claws to Jes'rimon in Orgrimmar.
  collect 8 Bone-Bladed Weapons##11477 |q 4300 |goto Orgrimmar 55.52,34.08
step
  talk Royal Overseer Bauhaus##10781
  accept The Jeremiah Blues##5049 |goto Undercity 69.79,43.16
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21 |tip {turninat}Azshara
step
  talk Elysa##2317
  accept Taretha's Gift##508 |goto Alterac Mountains 39.3,14.31
step
  only Mage
  talk Thurston Xane##3049
  accept Magecraft##8250 |goto Thunder Bluff 25.18,20.96
step
  only Priest
  talk High Priestess Laurena##376
  accept Cenarion Aid##8254 |goto Stormwind City 38.58,26.06
step
  talk Voggah Deathgrip##13817
  turnin The Battle for Alterac##7142 |goto Alterac Mountains 63.84,60.47
step
  talk Voggah Deathgrip##13817
  accept Hero of the Frostwolf##8272 |goto Alterac Mountains 63.84,60.47
step
  talk Chemist Fuely##10136
  turnin A Sample of Slime...##4293 |goto Undercity 47.45,73.35 |tip {turninat}Undercity
step
  talk Henchman Valik##2333
  turnin Valik##535 |goto Alterac Mountains 57.17,69.51
step
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3568 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3569 |goto Undercity 48.71,71.39
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.5,66.92 |tip {dropsfrom}Cyclonian
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Bring the voodoo feathers to Bath'rah the Windwatcher.
  collect Amber Voodoo Feather##20606 |q 8413 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Rogue
  talk Fahrad##6707
  turnin Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  talk Jes'rimon##8659
  turnin Bone-Bladed Weapons##4300 |goto Orgrimmar 55.52,34.08 |tip {turninat}Orgrimmar
step
  talk Jediga##8587
  turnin Magatha's Payment to Jediga##3562 |goto Azshara 22.56,51.42 |tip {turninat}Azshara
step
  talk Jediga##8587
  turnin Jes'rimon's Payment to Jediga##3563 |goto Azshara 22.56,51.42 |tip {turninat}Azshara
step
  talk Krusk##2229
  turnin Blackmoore's Legacy##506 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  only Mage
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09 |tip {turninat}Azshara
step
  talk Jeremiah Payson##8403
  turnin The Jeremiah Blues##5049 |goto Undercity 67.6,44.16 |tip {turninat}Undercity
step
  talk Krusk##2229
  turnin Taretha's Gift##508 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  only Priest
  talk Ogtinc##8405
  turnin Cenarion Aid##8254 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  talk Ol' Emma##3520
  accept Good Luck Charm##5050 |goto Stormwind City 52.37,42.13
step
  talk Voggah Deathgrip##13817
  turnin Hero of the Frostwolf##8272 |goto Alterac Mountains 63.84,60.47
step
  talk Thersa Windsong##8393
  turnin Seeping Corruption##3569 |goto Undercity 49.04,70.8 |tip {turninat}Undercity
step
  talk Chemist Cuely##8390
  accept Seeping Corruption##3570 |goto Undercity 48.71,71.39
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  talk Janice Felstone##10778
  turnin Good Luck Charm##5050 |goto Western Plaguelands 38.4,54.05 |tip {turninat}Western Plaguelands
step
  talk Chemist Cuely##8390
  turnin Seeping Corruption##3570 |goto Undercity 48.71,71.39 |tip {turninat}Undercity
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  note {travel}Azshara
  goto Azshara 11.37,78.17
]])
