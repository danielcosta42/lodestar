-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Uldaman", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "b6e7674a",
}, [[
step
  talk Wizzle Brassbolts##4453
  accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Fizzle Brassbolts##4454
  accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  only Mage
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Dran Droffers##6986
  accept Necklace Recovery##2283 |goto Orgrimmar 59.49,36.57
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Armor##2854 |goto Feralas 74.43,42.91
step
  click Human Remains##176090
  accept Hot Fiery Death##5103 |goto Blackrock Spire - Dungeon -1,-1
step
  note Bring 9 Hardened Tortoise Shells to Wizzle Brassbolts in the Shimmering Flats.
  collect 9 Hardened Tortoise Shell##5795 |q 1105 |goto Thousand Needles 74.69,56.36 |tip {dropsfrom}Sparkleshell Tortoise, Sparkleshell Snapper, Sparkleshell Borer
step
  note Bring 6 Salty Scorpid Venoms to Fizzle Brassbolts in the Shimmering Flats.
  collect 6 Salty Scorpid Venom##5794 |q 1104 |goto Thousand Needles 82.76,79.73 |tip {dropsfrom}Scorpid Terror, Scorpid Reaver, Vile Sting
step
  only Mage
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  note Look for a valuable necklace within the Uldaman dig site and bring it back to Dran Droffers in Orgrimmar. The necklace may be damaged.
  collect Shattered Necklace##7666 |q 2283 |goto Badlands 48.2,11 |tip {dropsfrom}Shadowforge Surveyor, Shadowforge Ruffian, Shadowforge Digger
step
  note Bring 10 Thick Leather to Jangdor Swiftstrider in Camp Mojache.
  buy 10 Thick Leather##4304 |q 2854 |goto Elwynn Forest 41.2,69.9
step
  talk Wizzle Brassbolts##4453
  turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Fizzle Brassbolts##4454
  turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  only Mage
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Dran Droffers##6986
  turnin Necklace Recovery##2283 |goto Orgrimmar 59.49,36.57
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Armor##2854 |goto Feralas 74.43,42.91
step
  talk Malyfous Darkhammer##10637
  turnin Hot Fiery Death##5103 |goto Winterspring 60.99,38.78
step
  talk Fizzle Brassbolts##4454
  accept Martek the Exiled##1106 |goto Thousand Needles 78.06,77.13
step
  only Mage
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Dran Droffers##6986
  accept Necklace Recovery, Take 2##2284 |goto Orgrimmar 59.49,36.57
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Shoulders##2855 |goto Feralas 74.43,42.91
step
  talk Malyfous Darkhammer##10637
  accept Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  only Mage
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  note Bring 6 Thick Armor Kits and a Wildvine to Jangdor Swiftstrider in Camp Mojache.
  collect 6 Thick Armor Kit##8173 |q 2855 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Olaf
step
  note Bring Malyfous Darkhammer 6 Enchanted Thorium Bars, 2 Essence of Fire, and 4 Star Rubies. You will also need to turn in your Unfired Plate Gauntlets.
  collect Unfired Plate Gauntlets##12812 |q 5124 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Martek the Exiled##4618
  turnin Martek the Exiled##1106 |goto Badlands 42.22,52.69
step
  only Mage
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Remains of a Paladin##6912
  turnin Necklace Recovery, Take 2##2284 |goto Uldaman - Dungeon -1,-1
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Shoulders##2855 |goto Feralas 74.43,42.91
step
  talk Malyfous Darkhammer##10637
  turnin Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  only Mage
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  talk Remains of a Paladin##6912
  accept Translating the Journal##2318 |goto Uldaman - Dungeon -1,-1
step
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  collect 10 Indurium Flake##5797 |q 1108 |goto Badlands 49.89,68.38 |tip {dropsfrom}Stonevault Basher, Stonevault Shaman, Stonevault Bonesnapper
step
  only Mage
  note Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh.
  collect Obsidian Power Source##8053 |q 1956 |goto Uldaman - Dungeon -1,-1 |elite |tip {dropsfrom}Obsidian Sentinel
step
  talk Martek the Exiled##4618
  turnin Indurium##1108 |goto Badlands 42.22,52.69
step
  only Mage
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2318 |goto Badlands 2.42,46.06
step
  talk Martek the Exiled##4618
  accept News for Fizzle##1137 |goto Badlands 42.22,52.69
step
  talk Jarkal Mossmeld##6868
  accept Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Fizzle Brassbolts##4454
  turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Pozzik##4630
  accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
step
  talk Jarkal Mossmeld##6868
  accept Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
step
  note Recover all three gems and a power source for the necklace from Uldaman, and then bring them to Jarkal Mossmeld in Kargath. Jarkal believes a power source might be found on the strongest construct present in Uldaman.
  collect Shattered Necklace Ruby##7669 |q 2339 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Shadowforge Cache
step
  turnin Keeping Pace##1190 |goto Thousand Needles 77.21,77.39
step
  talk Jarkal Mossmeld##6868
  turnin Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
step
  click Rizzle's Unguarded Plans##20805
  accept Rizzle's Schematics##1194 |goto Thousand Needles 77.21,77.39
step
  talk Pozzik##4630
  turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
  talk Pozzik##4630
  accept Indurium Ore##1192 |goto Thousand Needles 80.18,75.88
step
  collect Indurium Ore##5833 |q 1192 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Shadowforge Relic Hunter, Stonevault Cave Lurker, Stonevault Oracle
step
  talk Pozzik##4630
  turnin Indurium Ore##1192 |goto Thousand Needles 80.18,75.88
]])
