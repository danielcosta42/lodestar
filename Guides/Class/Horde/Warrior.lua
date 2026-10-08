-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Horde/Warrior", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "5854ffaa",
}, [[
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  talk Mottled Boar##3098 |q 788 |goto Durotar 44.49,65.1
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  only Orc Warrior
  talk Gornek##3143
  accept Simple Parchment##2383 |goto Durotar 42.06,68.33
step
  only Orc Warrior
  note Read the Simple Parchment and speak to Frang in the Valley of Trials.
  talk Frang##3153
  turnin Simple Parchment##2383 |goto Durotar 42.89,69.44
step
  only Troll Warrior
  talk Gornek##3143
  accept Simple Tablet##3065 |goto Durotar 42.06,68.33
step
  only Troll Warrior
  note Read the Simple Tablet and speak to Frang in the Valley of Trials.
  talk Frang##3153
  turnin Simple Tablet##3065 |goto Durotar 42.89,69.44
step
  talk Grull Hawkwind##2980
  accept The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  note Grull Hawkwind in Camp Narache wants you to bring him 7 Plainstrider Feathers and 7 pieces of Plainstrider Meat.
  collect Plainstrider Meat##4739 |q 747 |goto Mulgore 47.2,81.46 |tip {dropsfrom}Plainstrider
step
  talk Grull Hawkwind##2980
  turnin The Hunt Begins##747 |goto Mulgore 44.47,77.5
step
  only Tauren Warrior
  talk Grull Hawkwind##2980
  accept Simple Note##3091 |goto Mulgore 44.47,77.5
step
  only Tauren Warrior
  note Read the Simple Note and speak to Harutt Thunderhorn in Camp Narache.
  talk Harutt Thunderhorn##3059
  turnin Simple Note##3091 |goto Mulgore 43.75,76.72
step
  talk Shadow Priest Sarvis##1569
  accept The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  note Shadow Priest Sarvis wants you to kill 8 Mindless Zombies and 8 Wretched Zombies.
  talk Mindless Zombie##1501 |q 364 |goto Tirisfal Glades 32.28,63.63
step
  talk Shadow Priest Sarvis##1569
  turnin The Mindless Ones##364 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Warrior
  talk Shadow Priest Sarvis##1569
  accept Simple Scroll##3095 |goto Tirisfal Glades 30.84,66.2
step
  only Undead Warrior
  note Read the Simple Scroll and speak to Dannal Stern in Deathknell.
  talk Dannal Stern##2119
  turnin Simple Scroll##3095 |goto Tirisfal Glades 32.69,65.56
step
  talk Ailee Farheart##251362
  accept Coming of Age##92460 |goto Zephras Isle 42.82,23.37
step
  note Speak with Rorian the Dayseeker in Thendal Grove.
  talk Rorian the Dayseeker##251361
  turnin Coming of Age##92460 |goto Zephras Isle 42.1,23.49
step
  talk Rorian the Dayseeker##251361
  accept Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  note Slay 8 Vuldren Juveniles in Thendal Grove.
  talk Juvenile Vuldren##250873 |q 92461 |goto Zephras Isle 44.71,26.43
step
  talk Rorian the Dayseeker##251361
  turnin Harmony in Balance##92461 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Warrior
  talk Rorian the Dayseeker##251361
  accept The Warrior's Path##92532 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Warrior
  note Read the Crumpled Note you've been given, then seek out Blademaster Ren inside the Thendal Village watchtower.
  talk Blademaster Ren##251964
  turnin The Warrior's Path##92532 |goto Zephras Isle 43.68,24.17
step
  only Warrior not completed(1819) not haveq(1819)
  talk Torm Ragetotem##3041
  accept Veteran Uzzek##1505 |goto Thunder Bluff 57.24,87.37
step
  only Warrior not completed(1819) not haveq(1819)
  note Speak with Uzzek at Far Watch Post.
  talk Uzzek##5810
  turnin Veteran Uzzek##1505 |goto The Barrens 61.38,21.12
step
  only Warrior not completed(1498) not haveq(1498)
  talk Austil de Mon##2131
  accept Speak with Dillinger##1818 |goto Tirisfal Glades 61.85,52.54
step
  only Warrior not completed(1498) not haveq(1498)
  note Speak with Deathguard Dillinger in Brill.
  talk Deathguard Dillinger##1496
  turnin Speak with Dillinger##1818 |goto Tirisfal Glades 58.2,51.45
step
  only Warrior not completed(1819) not haveq(1819)
  talk Uzzek##5810
  accept Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  only Warrior not completed(1819) not haveq(1819)
  note Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.
  collect 5 Singed Scale##6486 |q 1498 |goto Durotar 39.15,29.29 |tip {dropsfrom}Thunder Lizard, Lightning Hide
step
  only Warrior not completed(1819) not haveq(1819)
  talk Uzzek##5810
  turnin Path of Defense##1498 |goto The Barrens 61.38,21.12
step
  only Warrior
  talk Uzzek##5810
  accept Thun'grim Firegaze##1502 |goto The Barrens 61.38,21.12
step
  only Warrior
  note Speak with Thun'grim Firegaze in the Barrens.
  talk Thun'grim Firegaze##5878
  turnin Thun'grim Firegaze##1502 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.
  collect Forged Steel Bars##6534 |q 1503 |goto The Barrens 55.05,26.65 |tip {dropsfrom}Stolen Iron Chest
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Forged Steel##1503 |goto The Barrens 57.23,30.34
step
  only Undead Warrior
  talk Deathguard Dillinger##1496
  accept Speak with Coleman##1820 |goto Tirisfal Glades 58.2,51.45
step
  only Undead Warrior
  note Speak with Coleman Farthing.
  talk Coleman Farthing##1500
  turnin Speak with Coleman##1820 |goto Tirisfal Glades 61.72,52.29
step
  only Undead Warrior
  talk Coleman Farthing##1500
  accept Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  only Undead Warrior
  note Bring Coleman Farthing the Agamand Family Axe, the Agamand Family Sword, the Agamand Family Mace and the Agamand Family dagger.
  collect Agamand Family Axe##7567 |q 1821 |goto Tirisfal Glades 51.68,25.69 |tip {dropsfrom}Agamand Weapon Rack
step
  only Undead Warrior
  talk Coleman Farthing##1500
  turnin Agamand Heirlooms##1821 |goto Tirisfal Glades 61.72,52.29
step
  only Undead Warrior
  talk Coleman Farthing##1500
  accept Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
step
  only Undead Warrior
  talk Coleman Farthing##1500
  turnin Heirloom Weapon##1822 |goto Tirisfal Glades 61.72,52.29
step
  only Skyborne Warrior
  talk Seena Skybreaker##252377
  accept The Skybreaker Bulwark##94003 |goto Zephras Isle 59.87,72.82
step
  only Skyborne Warrior
  note Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.
  collect Skybreaker Bulwark##263993 |q 94003 |goto Zephras Isle 36.05,33.53 |tip {dropsfrom}Zaal Stormshield
step
  only Skyborne Warrior
  talk Seena Skybreaker##252377
  turnin The Skybreaker Bulwark##94003 |goto Zephras Isle 59.87,72.82
step
  only Warrior
  talk Torm Ragetotem##3041
  accept Speak with Ruga##1823 |goto Thunder Bluff 57.24,87.37
step
  only Warrior
  note Speak with Ruga Ragetotem.
  talk Ruga Ragetotem##6394
  turnin Speak with Ruga##1823 |goto The Barrens 44.67,59.42
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Bring 5 twitching antennae to Ruga Ragetotem at Camp Taurajo
  collect 5 Twitching Antenna##7119 |q 1824 |goto The Barrens 45.23,70.16 |tip {dropsfrom}Silithid Creeper, Silithid Grub, Silithid Swarmer
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Speak with Thun'grim##1825 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Speak with Thun'grim Firegaze in the Barrens.
  talk Thun'grim Firegaze##5878
  turnin Speak with Thun'grim##1825 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston.
  collect Smoky Iron Ingot##7126 |q 1838 |goto Stonetalon Mountains 71.76,60.29 |tip {dropsfrom}Windshear Vermin, Windshear Digger, Windshear Tunnel Rat
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Brutal Hauberk##1848 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Thun'grim Firegaze##5878
  turnin Brutal Hauberk##1848 |goto The Barrens 57.23,30.34
step
  only not Undead not Tauren not Skyborne Warrior
  talk Ula'elek##6408
  accept Satyr Hooves##1842 |goto Durotar 56.31,74.33
step
  only not Undead not Tauren not Skyborne Warrior
  note Bring 7 Uncloven Satyr Hooves to Ula'elek at Sen'jin Village in Durotar.
  collect 7 Uncloven Satyr Hoof##7128 |q 1842 |goto Ashenvale 78.4,45.12 |tip {dropsfrom}Xavian Rogue, Xavian Betrayer, Xavian Felsworn
step
  only not Undead not Tauren not Skyborne Warrior
  talk Ula'elek##6408
  turnin Satyr Hooves##1842 |goto Durotar 56.31,74.33
step
  only not Undead not Tauren not Skyborne Warrior
  talk Ula'elek##6408
  accept Brutal Gauntlets##1843 |goto Durotar 56.31,74.33
step
  only not Undead not Tauren not Skyborne Warrior
  talk Ula'elek##6408
  turnin Brutal Gauntlets##1843 |goto Durotar 56.31,74.33
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Ula'elek and the Brutal Gauntlets##1839 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Speak with Ula'elek in Durotar.
  talk Ula'elek##6408
  turnin Ula'elek and the Brutal Gauntlets##1839 |goto Durotar 56.31,74.33
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Orm Stonehoof and the Brutal Helm##1840 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Speak with Orm Stonehoof in Thunder Bluff.
  talk Orm Stonehoof##6410
  turnin Orm Stonehoof and the Brutal Helm##1840 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Thun'grim Firegaze##5878
  accept Velora Nitely and the Brutal Legguards##1841 |goto The Barrens 57.23,30.34
step
  only Warrior
  note Speak with Velora Nitely in the Undercity.
  talk Velora Nitely##6411
  turnin Velora Nitely and the Brutal Legguards##1841 |goto Undercity 62.14,39.14
step
  only Warrior
  talk Orm Stonehoof##6410
  accept Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  note Bring a Galvanized Horn to Orm Stonehoof in Thunder Bluff.
  collect Galvanized Horn##6840 |q 1844 |goto Stonetalon Mountains 33.64,74.66 |tip {dropsfrom}Chimaera Matriarch
step
  only Warrior
  talk Orm Stonehoof##6410
  turnin Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Orm Stonehoof##6410
  accept Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Orm Stonehoof##6410
  turnin Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  only Warrior
  talk Velora Nitely##6411
  accept Dragonmaw Shinbones##1846 |goto Undercity 62.14,39.14
step
  only Warrior
  note Bring 8 Sturdy Dragonmaw Shinbones to Velora Nitely in the Undercity.
  collect 8 Sturdy Dragonmaw Shinbone##7134 |q 1846 |goto Wetlands 45.83,45.42 |tip {dropsfrom}Dragonmaw Raider, Dragonmaw Swamprunner, Dragonmaw Centurion
step
  only Warrior
  talk Velora Nitely##6411
  turnin Dragonmaw Shinbones##1846 |goto Undercity 62.14,39.14
step
  only Warrior
  talk Velora Nitely##6411
  accept Brutal Legguards##1847 |goto Undercity 62.14,39.14
step
  only Warrior
  talk Velora Nitely##6411
  turnin Brutal Legguards##1847 |goto Undercity 62.14,39.14
step
  only Warrior
  talk Torm Ragetotem##3041
  accept The Islander##1718 |goto Thunder Bluff 57.24,87.37
step
  only Warrior
  note Speak with Klannoc Macleod.
  talk Klannoc Macleod##6236
  turnin The Islander##1718 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  talk Big Will##6238 |q 1719 |goto The Barrens 68.61,48.72
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Windwatcher##1791 |goto The Barrens 68.62,49.16
step
  only Warrior
  note Speak with Bath'rah the Windwatcher.
  talk Bath'rah the Windwatcher##6176
  turnin The Windwatcher##1791 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  click Bath'rah's Cauldron##89931
  accept Essence of the Exile##1714 |goto Alterac Mountains 79.32,66.8
step
  only Warrior
  collect Thundering Charm##4480 |q 1714 |goto Arathi Highlands 78.55,37.77 |tip {dropsfrom}Drywhisker Kobold, Drywhisker Surveyor, Drywhisker Digger
step
  only Warrior
  turnin Essence of the Exile##1714 |goto Alterac Mountains 79.32,66.8
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Stranglethorn Vale 33.84,23.75
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
step
  only Warrior
  talk Torm Ragetotem##3041
  accept A Troubled Spirit##8417 |goto Thunder Bluff 57.24,87.37
step
  only Warrior
  note Speak with the Fallen Hero of the Horde at the entrance to the Blasted Lands.
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 50.2,38.6
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.08,35.24
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  note Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde.
  collect Amber Voodoo Feather##20606 |q 8425 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
step
  only Warrior
  note Return the book to its rightful owners.
  talk Lorekeeper Kildrath##14383
  turnin Codex of Defense##7499 |goto Dire Maul - Dungeon -1,-1
step
  only Warrior
  talk Mokvar##16012
  accept An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Acquire 15 Silithus Venom Samples and 20 gold and bring them along with a set of Bracers of Valor to Mokvar in Orgrimmar.
  collect 15 Silithus Venom Sample##22381 |q 8920 |goto Silithus 59.92,28.13 |tip {dropsfrom}Stonelash Scorpid, Stonelash Pincer, Stonelash Flayer
step
  only Warrior
  talk Mokvar##16012
  turnin An Earnest Proposition##8920 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note Take the Sealed Venom Container to Mux Manascrambler in Gadgetzan.
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8923 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  note Return to Mux Manascrambler in Gadgetzan with 1 Delicate Arcanite Converter, 4 Greater Eternal Essence, 10 Stonescale Oil, 25 Volcanic Ash and 40 gold.
  collect Delicate Arcanite Converter##16006 |q 8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  turnin The Ectoplasmic Distiller##8921 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  note Use the Ectoplasmic Distiller near incorporeal undead to collect 12 Scorched Ectoplasms in Silithus, 12 Frozen Ectoplasms in Winterspring and 12 Stable Ectoplasms in the Eastern Plaguelands. Bring them along with the Ectoplasmic Distiller back to Mux Manascrambler in Gadgetzan.
  collect 12 Scorched Ectoplasm##21937 |q 8924 |goto Silithus 62.65,52.84 |tip {dropsfrom}Tortured Druid, Tortured Sentinel
step
  talk Mux Manascrambler##16014
  turnin Hunting for Ectoplasm##8924 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  note Find Magma Lord Bokk in the Burning Steppes, obtain his Magma Core and bring it to Mux Manascrambler in Gadgetzan.
  collect Magma Core##21938 |q 8925 |goto Burning Steppes 35.39,57.76 |tip {dropsfrom}Magma Lord Bokk
step
  talk Mux Manascrambler##16014
  turnin A Portable Power Source##8925 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  note Search for an imp inside a cave at the entrance of Darkwhisper Gorge in southern Winterspring, purchase a Fel Elemental Rod and return to Mux Manascrambler in Gadgetzan.
  buy Fel Elemental Rod##21939 |q 8928 |goto Winterspring 58.87,78.39
step
  talk Mux Manascrambler##16014
  turnin A Shifty Merchant##8928 |goto Tanaris 52.47,27.23
step
  talk Mux Manascrambler##16014
  accept Return to Mokvar##8978 |goto Tanaris 52.47,27.23
step
  note Return to Mokvar in Orgrimmar with the Extra-Dimensional Ghost Revealer.
  talk Mokvar##16012
  turnin Return to Mokvar##8978 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  accept Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Bring a Belt of Valor and a set of Gauntlets of Valor to Mokvar in Orgrimmar.
  collect Belt of Valor##16736 |q 8944 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Smolderthorn Berserker, Patchwork Horror, Bile Spewer
step
  only Warrior
  talk Mokvar##16012
  turnin Just Compensation##8944 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept In Search of Anthion##8930 |goto Orgrimmar 34.95,38.29
step
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8930 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Dead Man's Plea##8945 |goto Eastern Plaguelands 26.11,11.3
step
  note Go into Stratholme and rescue Ysida Harmon from Baron Rivendare.
  talk Ysida Harmon##16031 |q 8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  turnin Dead Man's Plea##8945 |goto Stratholme - Dungeon -1,-1
step
  talk Ysida Harmon##16031
  accept Proof of Life##8946 |goto Stratholme - Dungeon -1,-1
step
  note Bring Ysida's Locket to Anthion Harmon in Eastern Plaguelands.
  talk Anthion Harmon##16016
  turnin Proof of Life##8946 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Anthion Harmon##16016
  accept Anthion's Old Friend##8948 |goto Eastern Plaguelands 26.11,11.3
step
  note Take the incomplete Banner of Provocation to Falrin Treeshaper at the library in Dire Maul.
  talk Falrin Treeshaper##16032
  turnin Anthion's Old Friend##8948 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  note Collect 25 Ogre Warbeads from Ogres inside Dire Maul or Blackrock Spire and return to Falrin Treeshaper inside the Athenaeum in Dire Maul.
  collect 25 Ogre Warbeads##21982 |q 8949 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip {dropsfrom}Highlord Omokk, Spirestone Battle Mage, Spirestone Mystic
step
  talk Falrin Treeshaper##16032
  turnin Falrin's Vendetta##8949 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  note Bring the following to Falrin Treeshaper inside Dire Maul: 1 Jeering Spectre's Essence, 4 Dark Runes and 8 Large Brilliant Shards.
  collect Jeering Spectre's Essence##22224 |q 8950 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Eldreth Sorcerer, Eldreth Apparition, Eldreth Spirit
step
  talk Falrin Treeshaper##16032
  turnin The Instigator's Enchantment##8950 |goto Dire Maul - Dungeon -1,-1
step
  talk Falrin Treeshaper##16032
  accept The Challenge##9015 |goto Dire Maul - Dungeon -1,-1
step
  note Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet.
  kill Theldren##16059 |q 9015 |goto Blackrock Depths - Dungeon -1,-1 |elite
step
  talk Anthion Harmon##16016
  turnin The Challenge##9015 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##9022 |goto Eastern Plaguelands 26.11,11.3
step
  only Warrior
  note Return to Mokvar in Orgimmar with a set of Boots of Valor, Legplates of Valor and Spaulders of Valor.
  collect Boots of Valor##16734 |q 9022 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Kirtonos the Herald
step
  only Warrior
  talk Mokvar##16012
  turnin Anthion's Parting Words##9022 |goto Orgrimmar 34.95,38.29
step
  talk Mokvar##16012
  accept Bodley's Unfortunate Fate##9032 |goto Orgrimmar 34.95,38.29
step
  note Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##9032 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather the Incendicite of Incendius, the Ember of Emberseer and the Cinder of Cynders, along with a Hallowed Brazier, and return them to Bodley inside Blackrock Mountain.
  collect Incendicite of Incendius##21987 |q 8961 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Lord Incendius
step
  talk Bodley##16033
  turnin Three Kings of Flame##8961 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  accept Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  note Acquire Druidical Remains and return them to Bodley inside Blackrock Mountain.
  kill Hive'Regal Ambusher##11730 |goto Silithus 58.08,86.89 |elite
  collect Druidical Remains##22226 |q 8962 |goto Silithus 58.08,86.89
step
  only not completed(8963) not completed(8964) not completed(8965) not haveq(8963) not haveq(8964) not haveq(8965)
  talk Bodley##16033
  turnin Components of Importance##8962 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  accept The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8966 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not completed(8967) not completed(8968) not completed(8969) not haveq(8967) not haveq(8968) not haveq(8969)
  talk Bodley##16033
  turnin The Left Piece of Lord Valthalak's Amulet##8966 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 20 Bloodkelp from the Strashaz naga and then return to Bodley inside Blackrock Mountain.
  collect 20 Bloodkelp##22094 |q 8970 |goto Dustwallow Marsh 76.94,19.81 |tip {dropsfrom}Strashaz Warrior, Strashaz Serpent Guard, Strashaz Myrmidon
step
  talk Bodley##16033
  turnin I See Alcaz Island In Your Future...##8970 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  accept More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  note Acquire a Starbreeze Village Relic and return it to Bodley inside Blackrock Mountain.
  kill Frostmaul Giant##7428 |goto Winterspring 62.56,69.55 |elite
  collect Starbreeze Village Relic##22227 |q 8985 |goto Winterspring 62.56,69.55
step
  only not completed(8986) not completed(8987) not completed(8988) not haveq(8986) not haveq(8987) not haveq(8988)
  talk Bodley##16033
  turnin More Components of Importance##8985 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  accept The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  note Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning.
  kill Mor Grayhoof##16080 |q 8989 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only not completed(8990) not completed(8991) not completed(8992) not haveq(8990) not haveq(8991) not haveq(8992)
  talk Bodley##16033
  turnin The Right Piece of Lord Valthalak's Amulet##8989 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain.
  collect 40 Blackrock Bracer##22138 |q 8994 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Scarshield Sentry, Scarshield Acolyte, Scarshield Legionnaire
step
  talk Bodley##16033
  turnin Final Preparations##8994 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Mea Culpa, Lord Valthalak##8995 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak.
  use Lord Valthalak##16042 |q 8995 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {useit}
step
  talk Spirit of Lord Valthalak##16073
  turnin Mea Culpa, Lord Valthalak##8995 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Spirit of Lord Valthalak##16073
  accept Return to Bodley##8996 |goto Blackrock Spire - Dungeon -1,-1
step
  note Return to Bodley inside Blackrock Mountain and give him the Brazier of Beckoning.
  collect Brazier of Beckoning##22056 |q 8996 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Bodley##16033
  turnin Return to Bodley##8996 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  talk Bodley##16033
  accept Back to the Beginning##8998 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Speak with Mokvar at Grommash Hold in Orgrimmar's Valley of Wisdom.
  talk Mokvar##16012
  turnin Back to the Beginning##8998 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  talk Mokvar##16012
  accept Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  only Warrior
  note Give Mokvar your Helm of Valor and Breastplate of Valor.
  collect Helm of Valor##16731 |q 9013 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Warrior
  talk Mokvar##16012
  turnin Saving the Best for Last##9013 |goto Orgrimmar 34.95,38.29
step
  talk Commander Mar'alith##15181
  accept Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  note Commander Mar'alith at Cenarion Hold in Silithus wants you to question the inhabitants of Bronzebeard's Encampment. You will find Bronzebeard's Encampment south of Cenarion Hold.
  talk Frankal Stonebridge##15171 |q 8304 |goto Silithus 40.81,88.86
step
  talk Commander Mar'alith##15181
  turnin Dearest Natalia##8304 |goto Silithus 49.2,34.18
step
  talk Rutgar Glyphshaper##15170
  accept Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment in Silithus wants you to venture to Hive'Ashi, Hive'Zora, and Hive'Regal and recover Glyphed Rubbings from the Glyphed Crystals of each hive.
  collect Hive'Ashi Rubbing##20455 |q 8309 |goto Silithus 50.87,26.76 |tip {dropsfrom}Hive'Ashi Glyphed Crystal
step
  talk Rutgar Glyphshaper##15170
  turnin Glyph Chasing##8309 |goto Silithus 41.28,88.45
step
  talk Frankal Stonebridge##15171
  accept Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  note Frankal Stonebridge at Bronzebeard's Encampment in Silithus wants you to recover a Hive'Zora Silithid Brain, Hive'Ashi Silithid Brain, and a Hive'Regal Silithid Brain. Return to Frankal when you have completed this task.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect Hive'Ashi Silithid Brain##20457 |q 8310 |goto Silithus 50.21,40.97
step
  talk Frankal Stonebridge##15171
  turnin Breaking the Code##8310 |goto Silithus 40.81,88.86
step
  talk Rutgar Glyphshaper##15170
  accept Unraveling the Mystery##8314 |goto Silithus 41.28,88.45
step
  note Rutgar Glyphshaper at Bronzebeard's Encampment wants you to deliver the Glyphed Crystal Prism to Geologist Larksbane at the Cenarion Hold in Silithus.
  talk Geologist Larksbane##15183
  turnin Unraveling the Mystery##8314 |goto Silithus 49.67,37.46
step
  talk Geologist Larksbane##15183
  accept The Calling##8315 |goto Silithus 49.67,37.46
step
  note Geologist Larksbane at Cenarion Hold in Silithus wants you to recover the Crystal Unlocking Mechanism from the Qiraji Emissary.
  kill Emissary Roman'khan##14862 |goto Silithus 48.77,58.14 |raid
  collect Crystal Unlocking Mechanism##20465 |q 8315 |goto Silithus 48.77,58.14
step
  talk Geologist Larksbane##15183
  turnin The Calling##8315 |goto Silithus 49.67,37.46
step
  only Warrior
  talk Geologist Larksbane##15183
  accept Armaments of War##8316 |goto Silithus 49.67,37.46
step
  only Warrior
  talk Geologist Larksbane##15183
  turnin Armaments of War##8316 |goto Silithus 49.67,37.46
]])
