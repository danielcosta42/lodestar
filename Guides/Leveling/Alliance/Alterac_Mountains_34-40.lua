-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (34-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Swamp of Sorrows (35-42)",
	rev = "947ce85f",
}, [[
step
  click Syndicate Documents##1740
  accept Foreboding Plans##510 |goto Alterac Mountains 58.32,67.92
step
  click Syndicate Documents##1740
  accept Encrypted Letter##511 |goto Alterac Mountains 58.32,67.92
step
  only completed(602)
  talk Archmage Ansirem Runeweaver##2543
  accept Ansirem's Key##603 |goto Alterac Mountains 18.84,78.49
step
  collect Worn Wooden Chest##1765 |goto Alterac Mountains 39.18,14.66 |tip Loot the quest item here — it starts the quest.
  accept The Ensorcelled Parchment##551 |goto Alterac Mountains 39.18,14.66
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791)
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Alterac Mountains 25.95,43.98
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791)
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  kill Cyclonian##6239 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  talk Magistrate Henry Maleb##2276
  turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11 |tip {turninat}Hillsbrad Foothills
step
  talk Loremaster Dibbs##2277
  turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  only completed(602)
  talk Catelyn the Blade##2542
  turnin Ansirem's Key##603 |goto Stranglethorn Vale 27.28,77.53 |tip {turninat}Stranglethorn Vale
step
  talk Loremaster Dibbs##2277
  turnin The Ensorcelled Parchment##551 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  talk Count Remington Ridgewell##2285
  accept The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83
step
  note Bring the Perenolde Tiara to Remington Ridgewell in Stormwind.
  kill Grel'borg the Miser##2417 |goto Alterac Mountains 35.58,54.42 |elite
  collect Perenolde Tiara##3684 |q 543 |goto Alterac Mountains 35.58,54.42
step
  talk Count Remington Ridgewell##2285
  turnin The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83 |tip {turninat}Stormwind City
step
  talk Loremaster Dibbs##2277
  accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Magistrate Henry Maleb##2276
  accept Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(602)
  talk Catelyn the Blade##2542
  accept "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53
step
  talk Loremaster Dibbs##2277
  accept Stormpike's Deciphering##554 |goto Hillsbrad Foothills 50.57,57.09
step
  note Bring 7 Alterac Signet Rings to Magistrate Maleb in Southshore.
  collect 7 Alterac Signet Ring##3505 |q 512 |goto Alterac Mountains 60.76,43.88 |tip {dropsfrom}Syndicate Spy, Syndicate Sentry, Syndicate Saboteur
step
  only completed(602)
  note Get Catelyn's dagger from "Pretty Boy" Duncan.
  collect Catelyn's Blade##4027 |q 610 |goto Stranglethorn Vale 27.39,69.42 |tip {dropsfrom}"Pretty Boy" Duncan
step
  talk Prospector Stormpike##1356
  turnin Letter to Stormpike##514 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Magistrate Henry Maleb##2276
  turnin Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11 |tip {turninat}Hillsbrad Foothills
step
  only completed(602)
  talk Catelyn the Blade##2542
  turnin "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53 |tip {turninat}Stranglethorn Vale
step
  talk Prospector Stormpike##1356
  turnin Stormpike's Deciphering##554 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Prospector Stormpike##1356
  accept Further Mysteries##525 |goto Ironforge 74.64,11.74
step
  only completed(602)
  talk Catelyn the Blade##2542
  accept The Curse of the Tides##611 |goto Stranglethorn Vale 27.28,77.53
step
  only completed(602)
  note Destroy the Altar of the Tides with Catelyn's Blade, kill Gazban and bring the Stone of the Tides and Catelyn's Blade back to Baron Revilgaz.
  collect Stone of the Tides##4034 |q 611 |goto Stranglethorn Vale 24.97,23.58 |tip {dropsfrom}Gazban
step
  talk Magistrate Henry Maleb##2276
  turnin Further Mysteries##525 |goto Hillsbrad Foothills 48.14,59.11 |tip {turninat}Hillsbrad Foothills
step
  only completed(602)
  talk Baron Revilgaz##2496
  turnin The Curse of the Tides##611 |goto Stranglethorn Vale 27.23,76.87 |tip {turninat}Stranglethorn Vale
step
  talk Magistrate Henry Maleb##2276
  accept Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
step
  note Kill 4 Argus Shadow Mages.
  kill Argus Shadow Mage##2318 |q 537 |goto Alterac Mountains 62.34,40.58
step
  talk Magistrate Henry Maleb##2276
  turnin Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11 |tip {turninat}Hillsbrad Foothills
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 25.98,31.4
]])
