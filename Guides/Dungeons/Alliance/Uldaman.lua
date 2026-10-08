-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Uldaman", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Wizzle Brassbolts##4453
  accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Fizzle Brassbolts##4454
  accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  click Crumpled Map##2868
  accept A Sign of Hope##720 |goto Badlands 53.03,33.94
step
  only Mage
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Prospector Stormpike##1356
  accept The Lost Dwarves##2398 |goto Ironforge 74.64,11.74
step
  kill Shadowforge Surveyor##4844 |goto Badlands 48.2,11 |tip Loot the quest item here — it starts the quest.
  accept The Shattered Necklace##2198 |goto Badlands 48.2,11
step
  talk Pratt McGrubben##7852
  accept Wild Leather Armor##2847 |goto Feralas 30.63,42.71
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
  note Bring 10 Thick Leather to Pratt McGrubben in Feathermoon Stronghold.
  buy 10 Thick Leather##4304 |q 2847 |goto Elwynn Forest 41.2,69.9
step
  talk Wizzle Brassbolts##4453
  turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
  talk Fizzle Brassbolts##4454
  turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
  talk Prospector Ryedol##2910
  turnin A Sign of Hope##720 |goto Badlands 53.42,43.39
step
  only Mage
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Baelog##6906
  turnin The Lost Dwarves##2398 |goto Uldaman - Dungeon -1,-1
step
  talk Talvash del Kissel##6826
  turnin The Shattered Necklace##2198 |goto Ironforge 36.38,3.61
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Armor##2847 |goto Feralas 30.63,42.71
step
  talk Malyfous Darkhammer##10637
  turnin Hot Fiery Death##5103 |goto Winterspring 60.99,38.78
step
  talk Fizzle Brassbolts##4454
  accept Martek the Exiled##1106 |goto Thousand Needles 78.06,77.13
step
  talk Prospector Ryedol##2910
  accept A Sign of Hope##721 |goto Badlands 53.42,43.39
step
  only Mage
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Talvash del Kissel##6826
  accept Lore for a Price##2199 |goto Ironforge 36.38,3.61
step
  talk Pratt McGrubben##7852
  accept Wild Leather Shoulders##2848 |goto Feralas 30.63,42.71
step
  talk Malyfous Darkhammer##10637
  accept Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  only Mage
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  note Bring five silver bars to Talvash del Kissel in Ironforge.
  collect Silver Bar##2842 |q 2199 |goto Ironforge 36.38,3.61 |tip {dropsfrom}Battered Chest, Tattered Chest
step
  note Bring 6 Thick Armor Kits and a Wildvine to Pratt McGrubben in Feathermoon Stronghold.
  collect 6 Thick Armor Kit##8173 |q 2848 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Olaf
step
  note Bring Malyfous Darkhammer 6 Enchanted Thorium Bars, 2 Essence of Fire, and 4 Star Rubies. You will also need to turn in your Unfired Plate Gauntlets.
  collect Unfired Plate Gauntlets##12812 |q 5124 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Martek the Exiled##4618
  turnin Martek the Exiled##1106 |goto Badlands 42.22,52.69
step
  talk Hammertoe Grez##2909
  turnin A Sign of Hope##721 |goto Badlands 37.9,10.59
step
  only Mage
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Talvash del Kissel##6826
  turnin Lore for a Price##2199 |goto Ironforge 36.38,3.61
step
  talk Pratt McGrubben##7852
  turnin Wild Leather Shoulders##2848 |goto Feralas 30.63,42.71
step
  talk Malyfous Darkhammer##10637
  turnin Fiery Plate Gauntlets##5124 |goto Winterspring 60.99,38.78
step
  talk Martek the Exiled##4618
  accept Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Hammertoe Grez##2909
  accept Amulet of Secrets##722 |goto Badlands 37.9,10.59
step
  only Mage
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  talk Talvash del Kissel##6826
  accept Back to Uldaman##2200 |goto Ironforge 36.38,3.61
step
  note Bring 10 Indurium Flakes to Martek the Exiled in the Badlands.
  collect 10 Indurium Flake##5797 |q 1108 |goto Badlands 49.89,68.38 |tip {dropsfrom}Stonevault Basher, Stonevault Shaman, Stonevault Bonesnapper
step
  note Find Hammertoe's Amulet and return it to him in Uldaman.
  kill Magregan Deepshadow##2932 |goto Badlands 38.99,19.73 |elite
  collect Hammertoe's Amulet##4635 |q 722 |goto Badlands 38.99,19.73
step
  only Mage
  note Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh.
  collect Obsidian Power Source##8053 |q 1956 |goto Uldaman - Dungeon -1,-1 |elite |tip {dropsfrom}Obsidian Sentinel
step
  talk Martek the Exiled##4618
  turnin Indurium##1108 |goto Badlands 42.22,52.69
step
  talk Hammertoe Grez##2909
  turnin Amulet of Secrets##722 |goto Badlands 37.9,10.59
step
  only Mage
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  talk Remains of a Paladin##6912
  turnin Back to Uldaman##2200 |goto Uldaman - Dungeon -1,-1
step
  talk Martek the Exiled##4618
  accept News for Fizzle##1137 |goto Badlands 42.22,52.69
step
  talk Hammertoe Grez##2909
  accept Prospect of Faith##723 |goto Badlands 37.9,10.59
step
  talk Remains of a Paladin##6912
  accept Find the Gems##2201 |goto Uldaman - Dungeon -1,-1
step
  note Find the ruby, sapphire, and topaz that are scattered throughout Uldaman. Once acquired, contact Talvash del Kissel remotely by using the Phial of Scrying he previously gave you.
  collect Shattered Necklace Ruby##7669 |q 2201 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Shadowforge Cache
step
  talk Fizzle Brassbolts##4454
  turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13
step
  talk Prospector Ryedol##2910
  turnin Prospect of Faith##723 |goto Badlands 53.42,43.39
step
  turnin Find the Gems##2201 |goto Uldaman - Dungeon -1,-1
step
  talk Prospector Ryedol##2910
  accept Prospect of Faith##724 |goto Badlands 53.42,43.39
step
  talk Pozzik##4630
  accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
step
  click Talvash's Scrying Bowl##112877
  accept Restoring the Necklace##2204 |goto Uldaman - Dungeon -1,-1
step
  note Obtain a power source from the most powerful construct you can find in Uldaman, and deliver it to Talvash del Kissel in Ironforge.
  collect Shattered Necklace Power Source##7672 |q 2204 |goto Uldaman - Dungeon -1,-1 |elite |tip {dropsfrom}Archaedas
step
  talk Historian Karnik##2916
  turnin Prospect of Faith##724 |goto Ironforge 77.54,11.82
step
  turnin Keeping Pace##1190 |goto Thousand Needles 77.21,77.39
step
  talk Talvash del Kissel##6826
  turnin Restoring the Necklace##2204 |goto Ironforge 36.38,3.61
step
  talk Historian Karnik##2916
  accept Passing Word of a Threat##725 |goto Ironforge 77.54,11.82
step
  click Rizzle's Unguarded Plans##20805
  accept Rizzle's Schematics##1194 |goto Thousand Needles 77.21,77.39
step
  talk Advisor Belgrum##2918
  turnin Passing Word of a Threat##725 |goto Ironforge 77.34,9.71
step
  talk Pozzik##4630
  turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
  talk Advisor Belgrum##2918
  accept Passing Word of a Threat##726 |goto Ironforge 77.34,9.71
step
  talk Pozzik##4630
  accept Indurium Ore##1192 |goto Thousand Needles 80.18,75.88
step
  collect Indurium Ore##5833 |q 1192 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Shadowforge Relic Hunter, Stonevault Cave Lurker, Stonevault Oracle
step
  talk Historian Karnik##2916
  turnin Passing Word of a Threat##726 |goto Ironforge 77.54,11.82
step
  talk Pozzik##4630
  turnin Indurium Ore##1192 |goto Thousand Needles 80.18,75.88
step
  talk Historian Karnik##2916
  accept An Ambassador of Evil##762 |goto Ironforge 77.54,11.82
step
  note Kill Ambassador Infernus in Angor Fortress and bring proof of his death to Advisor Belgrum in Ironforge.
  kill Ambassador Infernus##2745 |goto Badlands 42.1,28.88 |elite
  collect Ambassador Infernus' Bracer##4621 |q 762 |goto Badlands 42.1,28.88
step
  talk Advisor Belgrum##2918
  turnin An Ambassador of Evil##762 |goto Ironforge 77.34,9.71
step
  talk Advisor Belgrum##2918
  accept The Lost Tablets of Will##1139 |goto Ironforge 77.34,9.71
step
  note Find the Tablet of Will, and return them to Advisor Belgrum in Ironforge.
  collect Tablet of Will##5824 |q 1139 |goto Uldaman - Dungeon -1,-1
step
  talk Advisor Belgrum##2918
  turnin The Lost Tablets of Will##1139 |goto Ironforge 77.34,9.71
]])
