-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (33-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Hillsbrad Foothills (33-40)",
	rev = "56f0c416",
}, [[
step
  ding 31
step
  only Rogue
  talk Myrokos Silentform##13085
  accept Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
step
  only Rogue
  talk Myrokos Silentform##13085
  accept A Way In##96783 |goto Alterac Mountains 84.93,80.38
step
  only Rogue
  note Steal a Syndicate uniform from Northfold Manor to infiltrate Stromgarde Keep.
  turnin A Way In##96783 |goto Alterac Mountains 84.93,80.38
step
  click Syndicate Documents##1740
  accept Foreboding Plans##510 |goto Alterac Mountains 58.32,67.92
step
  click Syndicate Documents##1740
  accept Encrypted Letter##511 |goto Alterac Mountains 58.32,67.92
step
  talk Image of Archmage Modera##269127
  accept Starving Arcane##92457 |goto Alterac Mountains 14.3,59.57
step
  talk Image of Archmage Modera##269127
  accept Friend of the Kirin Tor##92459 |goto Alterac Mountains 14.3,59.57
step
  note Speak to Archmage Celindra in the City of Dalaran.
  talk Archmage Celindra##252085
  turnin Friend of the Kirin Tor##92459 |goto Alterac Mountains 14.15,60.05
step
  note Defeat 8 Seeking Remnants, 8 Saturated Remnants, and 8 Mana Echoes inside the City of Dalaran for Archmage Modera outside of Dalaran.
  kill Saturated Remnant##247001 |q 92457 |goto Alterac Mountains 14.2,68.4
step
  talk Image of Archmage Modera##269127
  turnin Starving Arcane##92457 |goto Alterac Mountains 14.3,59.57
step
  only Rogue
  talk Myrokos Silentform##13085
  accept What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Rogue
  note Steal Barton's Scouting Report by pickpocketing it from him. Then, bring the report to Myrokos Silentform at Ravenholdt Manor.
  kill Barton##266357 |q 96781 |goto Alterac Mountains 62.59,46.86
  collect Barton's Scouting Report##275482 |q 96781 |goto Alterac Mountains 62.59,46.86
step
  only Rogue
  talk Myrokos Silentform##13085
  turnin What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  collect Worn Wooden Chest##1765 |goto Alterac Mountains 39.18,14.66 |tip Loot the quest item here — it starts the quest.
  accept The Ensorcelled Parchment##551 |goto Alterac Mountains 39.18,14.66
step
  only Rogue
  note Find Lord Tomas inside Durnholde Keep, in Hillsbrad Foothills, and kill him. Then, return to Myrokos Silentform.
  kill Lord Tomas##266216 |q 96779 |goto Hillsbrad Foothills 79.1,45.73
step
  only Rogue
  talk Myrokos Silentform##13085
  turnin Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
step
  only completed(1222)
  talk Angus Stern##1141
  accept Feast at the Blue Recluse##1271 |goto Stormwind City 51.79,93.64
step
  only completed(1222)
  talk Angus Stern##1141
  turnin Feast at the Blue Recluse##1271 |goto Stormwind City 51.79,93.64 |tip {turninat}Stormwind City
step
  only level>=40
  talk Count Remington Ridgewell##2285
  accept The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83
step
  only haveq(543)
  note Bring the Perenolde Tiara to Remington Ridgewell in Stormwind.
  kill Grel'borg the Miser##2417 |q 543 |goto Alterac Mountains 35.58,54.42 |elite
  collect Perenolde Tiara##3684 |q 543 |goto Alterac Mountains 35.58,54.42
step
  only haveq(543)
  talk Count Remington Ridgewell##2285
  turnin The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83 |tip {turninat}Stormwind City
step
  only Warrior completed(1791)
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712/1 |goto Alterac Mountains 25.95,43.98
  collect Bloodscalp Tusk##3901 |q 1712/2 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
  collect Essence of the Exile##6851 |q 1712 |tip Crafted or bought.
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) level>=40
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) haveq(1713)
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  kill Cyclonian##6239 |q 1713 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  only Warrior completed(1791) haveq(1713)
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) completed(1713)
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) haveq(1792)
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  note Bring the Foreboding Plans to Magistrate Maleb in Southshore.
  talk Magistrate Henry Maleb##2276
  turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11 |tip {turninat}Hillsbrad Foothills
step
  note Bring the Encrypted Letter to Loremaster Dibbs in Southshore.
  talk Loremaster Dibbs##2277
  turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  note Take the Ensorcelled Parchment to Loremaster Dibbs in Southshore.
  talk Loremaster Dibbs##2277
  turnin The Ensorcelled Parchment##551 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 48.14,59.11
]])
