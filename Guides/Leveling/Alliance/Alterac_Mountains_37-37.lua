-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (37-37)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Arathi Highlands (36-40)",
}, [[
step
  click Syndicate Documents##1740
  accept Foreboding Plans##510 |goto Alterac Mountains 58.32,67.92
step
  click Syndicate Documents##1740
  accept Encrypted Letter##511 |goto Alterac Mountains 58.32,67.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Stranglethorn Vale 33.28,26.45
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  collect Sealed Azure Bag##19775 |q 8234 |goto Azshara 44.21,22.54 |tip {dropsfrom}Timbermaw Shaman, Blackmaw Shaman
step
  talk Magistrate Henry Maleb##2276
  turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11 |tip {turninat}Hillsbrad Foothills
step
  talk Loremaster Dibbs##2277
  turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  talk Alliance Brigadier General##15351
  accept Concerted Efforts##8371 |goto Alterac Mountains 39.29,82.33
step
  note Bring 3 Alterac Valley Mark of Honor, 3 Arathi Basin Mark of Honor and 3 Warsong Gulch Mark of Honor to an Alliance Brigadier General outside the battlegrounds.
  collect 3 Alterac Valley Mark of Honor##20560 |q 8371 |goto Alterac Mountains 39.29,82.33
step
  talk Archmage Ansirem Runeweaver##2543
  accept Ansirem's Key##603 |goto Alterac Mountains 18.84,78.49
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21 |tip {turninat}Azshara
step
  collect Worn Wooden Chest##1765 |goto Alterac Mountains 39.18,14.66 |tip Loot the quest item here — it starts the quest.
  accept The Ensorcelled Parchment##551 |goto Alterac Mountains 39.18,14.66
step
  talk Belanaa Windveil##276170
  accept A Donation of Wool##99191 |goto Alterac Mountains 11.58,57.8
step
  collect Wool Cloth##2592 |q 99191 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Tattered Chest, Battered Chest
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
  kill Cyclonian##6239 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  talk Alliance Brigadier General##15351
  turnin Concerted Efforts##8371 |goto Alterac Mountains 39.29,82.33
step
  talk Loremaster Dibbs##2277
  turnin The Ensorcelled Parchment##551 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  talk Catelyn the Blade##2542
  turnin Ansirem's Key##603 |goto Stranglethorn Vale 27.28,77.53 |tip {turninat}Stranglethorn Vale
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
]])
