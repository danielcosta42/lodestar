-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Uldaman", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "40b8ecd2",
}, [[
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
  only Mage
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  talk Remains of a Paladin##6912
  accept Translating the Journal##2318 |goto Uldaman - Dungeon -1,-1
step
  only Mage
  note Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh.
  collect Obsidian Power Source##8053 |q 1956 |goto Uldaman - Dungeon -1,-1 |elite |tip {dropsfrom}Obsidian Sentinel
step
  only Mage
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2318 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  accept Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  turnin Translating the Journal##2338 |goto Badlands 2.42,46.06
step
  talk Jarkal Mossmeld##6868
  accept Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
step
  note Recover all three gems and a power source for the necklace from Uldaman, and then bring them to Jarkal Mossmeld in Kargath. Jarkal believes a power source might be found on the strongest construct present in Uldaman.
  collect Shattered Necklace Ruby##7669 |q 2339 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Shadowforge Cache
step
  talk Jarkal Mossmeld##6868
  turnin Find the Gems and Power Source##2339 |goto Badlands 2.42,46.06
]])
