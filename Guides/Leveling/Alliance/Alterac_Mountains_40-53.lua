-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (40-53)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Blasted Lands (50-55)",
	rev = "f265c009",
}, [[
step
  ding 31
step
  only level>=40
  talk Count Remington Ridgewell##2285
  accept The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  collect Worn Wooden Chest##1765 |goto Alterac Mountains 39.18,14.66 |tip Loot the quest item here — it starts the quest.
  accept The Ensorcelled Parchment##551 |goto Alterac Mountains 39.18,14.66
step
  only haveq(543)
  note Bring the Perenolde Tiara to Remington Ridgewell in Stormwind.
  kill Grel'borg the Miser##2417 |q 543 |goto Alterac Mountains 35.58,54.42 |elite
  collect Perenolde Tiara##3684 |q 543 |goto Alterac Mountains 35.58,54.42
step
  only level>=40
  talk Archmage Timear##31439
  accept Ancient Gurubashi Secrets##97130 |goto Alterac Mountains 15.37,74.09
step
  only haveq(97130)
  note Recover an Ancient Gurubashi Idol from the Drowned City.
  collect Ancient Gurubashi Idol##276894 |q 97130 |goto Alterac Mountains 15.37,74.09 |elite |tip {dropsfrom}Deathless Marrow
step
  only haveq(97130)
  talk Archmage Timear##31439
  turnin Ancient Gurubashi Secrets##97130 |goto Alterac Mountains 15.37,74.09
step
  only level>=45
  talk Ranath Nightstride##268425
  accept Vengeance of the Highborne##96771 |goto Alterac Mountains 17.8,65.95
step
  only haveq(96771)
  note Travel to Krol'dok Stronghold and slay Zalfan Moonshadow.
  kill Zalfan Moonshadow##268423 |q 96771 |elite
step
  only haveq(96771)
  talk Ranath Nightstride##268425
  turnin Vengeance of the Highborne##96771 |goto Alterac Mountains 17.8,65.95
step
  only level>=53
  talk Archmage Lan'dalock##20735
  accept The Dragon's Journal##96772 |goto Alterac Mountains 15.3,73.93
step
  only haveq(96772)
  note Recover Zarla's Journal from the depths of Alcaz Prison.
  collect Zarla's Journal##276890 |q 96772 |goto Alterac Mountains 15.3,73.93 |elite |tip {dropsfrom}Blazeroar
step
  only haveq(96772)
  talk Archmage Lan'dalock##20735
  turnin The Dragon's Journal##96772 |goto Alterac Mountains 15.3,73.93
step
  only level>=45
  talk Orphan Matron Aria##34365
  accept The Orphan##96797 |goto Alterac Mountains 21.62,73.18
step
  only haveq(543)
  talk Count Remington Ridgewell##2285
  turnin The Perenolde Tiara##543 |goto Stormwind City 76.94,47.83 |tip {turninat}Stormwind City
step
  only Rogue level>=50
  talk Osborne the Night Man##918
  accept A Simple Request##8233 |goto Stormwind City 77.43,65.31
step
  only not completed(96376) not completed(96379) not haveq(96376) not haveq(96379) level>=48
  talk Renzik "The Shiv"##6946
  accept State Secrets##96377 |goto Stormwind City 78.29,71.14
step
  only not completed(96376) not completed(96379) not haveq(96376) not haveq(96379) haveq(96377)
  collect Document Box##274041 |q 96377 |goto Stormwind City 78.29,71.14
step
  only not completed(96376) not completed(96379) not haveq(96376) not haveq(96379) haveq(96377)
  talk Renzik "The Shiv"##6946
  turnin State Secrets##96377 |goto Stormwind City 78.29,71.14 |tip {turninat}Stormwind City
step
  note Take the Ensorcelled Parchment to Loremaster Dibbs in Southshore.
  talk Loremaster Dibbs##2277
  turnin The Ensorcelled Parchment##551 |goto Hillsbrad Foothills 50.57,57.09 |tip {turninat}Hillsbrad Foothills
step
  talk Loremaster Dibbs##2277
  accept Stormpike's Deciphering##554 |goto Hillsbrad Foothills 50.57,57.09
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
  only Rogue haveq(8233)
  note Speak with Lord Jorach Ravenholdt in Ravenholdt Manor.
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88
step
  only haveq(2990)
  note Bring Sharpbeak's Feather to Thadius Grimshade in the Blasted Lands.
  talk Thadius Grimshade##8022
  turnin Thadius Grimshade##2990 |goto Blasted Lands 66.9,19.47 |tip {turninat}Blasted Lands
step
  only haveq(96797)
  note Travel to Nethergarde Keep in the Blasted Lands and locate Sergeant Danneth.
  talk Lieutenant Connar##266524
  turnin The Orphan##96797 |goto Blasted Lands 66.07,19.4 |tip {turninat}Blasted Lands
step
  only haveq(2977)
  note Speak with Historian Karnik in Ironforge.
  talk Historian Karnik##2916
  turnin Return to Ironforge##2977 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  only level>=45
  talk Historian Karnik##2916
  accept Passing the Burden##3448 |goto Ironforge 77.54,11.82
step
  only completed(2977) level>=45
  talk Historian Karnik##2916
  accept A Future Task##2964 |goto Ironforge 77.54,11.82
step
  note Take the Ensorcelled Parchment to Prospector Stormpike in Ironforge.
  talk Prospector Stormpike##1356
  turnin Stormpike's Deciphering##554 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  only completed(2977) haveq(2964)
  note Speak with High Explorer Magellas in Ironforge.
  talk High Explorer Magellas##5387
  turnin A Future Task##2964 |goto Ironforge 69.93,18.55 |tip {turninat}Ironforge
step
  only haveq(3448)
  note Speak to Tymor in Ironforge.
  talk Tymor##8507
  turnin Passing the Burden##3448 |goto Ironforge 30.96,4.83 |tip {turninat}Ironforge
step
  only level>=45
  talk Tymor##8507
  accept An Easy Pickup##3450 |goto Ironforge 30.96,4.83
step
  only haveq(3450)
  note Speak to Xiggs Fuselighter in Ironforge.
  talk Xiggs Fuselighter##8517
  turnin An Easy Pickup##3450 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  only completed(3450) level>=45
  talk Xiggs Fuselighter##8517
  accept Signal for Pickup##3451 |goto Ironforge 70.87,94.56
step
  only haveq(3451)
  note Speak to Xiggs Fuselighter and get a Standard Issue Flare Gun from him in Ironforge.
  talk Xiggs Fuselighter##8517
  turnin Signal for Pickup##3451 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  note {travel}Blasted Lands
  goto Blasted Lands 50.55,14.2
]])
