-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Class/Alliance/Mage", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "522d3f4b",
}, [[
step
  talk Sten Stoutarm##658
  accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  note Sten Stoutarm would like 8 pieces of Tough Wolf Meat.
  collect Tough Wolf Meat##750 |q 179 |goto Elwynn Forest 49.41,37.75 |tip {dropsfrom}Timber Wolf, Young Wolf, Ragged Timber Wolf
step
  talk Sten Stoutarm##658
  turnin Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.2
step
  only Gnome Mage
  talk Sten Stoutarm##658
  accept Glyphic Memorandum##3114 |goto Dun Morogh 29.93,71.2
step
  only Gnome Mage
  note Read the Glyphic Memorandum and speak to Marryk Nurribit inside Anvilmar above Coldridge Valley.
  talk Marryk Nurribit##944
  turnin Glyphic Memorandum##3114 |goto Dun Morogh 28.71,66.37
step
  talk Deputy Willem##823
  accept A Threat Within##783 |goto Elwynn Forest 48.17,42.94
step
  note Speak with Marshal McBride.
  talk Marshal McBride##197
  turnin A Threat Within##783 |goto Elwynn Forest 48.92,41.61
step
  talk Marshal McBride##197
  accept Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  note Kill 10 Kobold Vermin, then return to Marshal McBride.
  kill Kobold Vermin##6 |q 7 |goto Elwynn Forest 49.17,36.55
step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto Elwynn Forest 48.92,41.61
step
  only Human Mage
  talk Marshal McBride##197
  accept Glyphic Letter##3104 |goto Elwynn Forest 48.92,41.61
step
  only Human Mage
  note Read the Glyphic Letter and speak to Khelden Bremen inside Northshire Abbey.
  talk Khelden Bremen##198
  turnin Glyphic Letter##3104 |goto Elwynn Forest 49.66,39.4
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
  only Skyborne Mage
  talk Rorian the Dayseeker##251361
  accept A Student of the Arcane##92481 |goto Zephras Isle 42.1,23.49
step
  only Skyborne Mage
  note Examine the Glowing Recall Crystal, then speak with Dorii Brightwhisper in Thendal Grove.
  talk Dorii Brightwhisper##251379
  turnin A Student of the Arcane##92481 |goto Zephras Isle 41.59,23.66
step
  only Gnome Mage not completed(1861) not haveq(1861)
  talk Magis Sparkmantle##1228
  accept Speak with Bink##1879 |goto Dun Morogh 47.5,52.08
step
  only Gnome Mage not completed(1861) not haveq(1861)
  note Speak with Bink in Ironforge.
  talk Bink##5144
  turnin Speak with Bink##1879 |goto Ironforge 27.25,8.3
step
  only Human Mage not completed(1880) not haveq(1880)
  talk Zaldimar Wefhellt##328
  accept Speak with Jennea##1860 |goto Elwynn Forest 43.25,66.19
step
  only Human Mage not completed(1880) not haveq(1880)
  note Speak with Jennea Cannon in Stormwind.
  talk Jennea Cannon##5497
  turnin Speak with Jennea##1860 |goto Stormwind City 49.56,85.8
step
  only Gnome Mage not completed(1861) not haveq(1861)
  talk Bink##5144
  accept Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3
step
  only Gnome Mage not completed(1861) not haveq(1861)
  note Bring Bink her Mage-tastic Gizmonitor.
  collect Mage-tastic Gizmonitor##7226 |q 1880 |goto Dun Morogh 27.72,36.42 |tip {dropsfrom}Bink's Toolbox
step
  only Gnome Mage not completed(1861) not haveq(1861)
  talk Bink##5144
  turnin Mage-tastic Gizmonitor##1880 |goto Ironforge 27.25,8.3
step
  only not Dwarf not NightElf not Gnome Mage not completed(1880) not haveq(1880)
  talk Jennea Cannon##5497
  accept Mirror Lake##1861 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Gnome Mage not completed(1880) not haveq(1880)
  note Bring a Mirror Lake sample to Jennea Cannon in Stormwind.
  collect Mirror Lake Water Sample##7206 |q 1861 |goto Elwynn Forest 28.57,61.39 |tip {dropsfrom}Mirror Lake Waterwall
step
  only not Dwarf not NightElf not Gnome Mage not completed(1880) not haveq(1880)
  talk Jennea Cannon##5497
  turnin Mirror Lake##1861 |goto Stormwind City 49.56,85.8
step
  only Skyborne Mage
  talk Anathamaas Aetherwind##252373
  accept Speak with Belann##93791 |goto Zephras Isle 65.97,80.46
step
  only Skyborne Mage
  note Speak with Belann Windwood in Valanaar.
  talk Belann Windwood##256507
  turnin Speak with Belann##93791 |goto Zephras Isle 62.91,77.38
step
  only Skyborne Mage
  talk Belann Windwood##256507
  accept Boughs in the Wind##93797 |goto Zephras Isle 62.91,77.38
step
  only Skyborne Mage
  note Bring a Wind-Infused Bough to Belann Windwood in Valanaar.
  collect Wind-Infused Bough##262668 |q 93797 |goto Zephras Isle 48.7,67.7
step
  only Skyborne Mage
  talk Belann Windwood##256507
  turnin Boughs in the Wind##93797 |goto Zephras Isle 62.91,77.38
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Zaldimar Wefhellt##328
  accept Report to Jennea##1919 |goto Elwynn Forest 43.25,66.19
step
  only not Dwarf not NightElf not Skyborne Mage
  note Speak with Jennea Cannon in Stormwind.
  talk Jennea Cannon##5497
  turnin Report to Jennea##1919 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Jennea Cannon##5497
  accept Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage
  note Obtain a Cantation of Manifestation and a Chest of Containment coffers from behind Jennea Cannon. Bring 3 Filled Containment Coffers to Jennea at the Wizard's Sanctum.
  collect 3 Filled Containment Coffer##7292 |q 1920 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Jennea Cannon##5497
  turnin Investigate the Blue Recluse##1920 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Jennea Cannon##5497
  accept Gathering Materials##1921 |goto Stormwind City 49.56,85.8
step
  only not Dwarf not NightElf not Skyborne Mage
  note Bring 10 Linen Cloth and the 6 Charged Rift Gems to Wynne Larson in Stormwind.
  collect 10 Linen Cloth##2589 |q 1921 |goto Alterac Mountains 21.33,64.35 |tip {dropsfrom}Hidden Strongbox, Battered Chest, Tattered Chest
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  turnin Gathering Materials##1921 |goto Stormwind City 51.84,83.51
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  accept Manaweave Robe##1941 |goto Stormwind City 51.84,83.51
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  turnin Manaweave Robe##1941 |goto Stormwind City 51.84,83.51
step
  only Mage
  talk Garion Wendell##211033
  accept Research Access##97286 |goto Stormwind City 49,86.44
step
  only Mage
  talk Garion Wendell##211033
  turnin Research Access##97286 |goto Stormwind City 49,86.44
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Bink##5144
  accept High Sorcerer Andromath##1939 |goto Ironforge 27.25,8.3
step
  only not Dwarf not NightElf not Skyborne Mage
  note Speak with High Sorcerer Andromath.
  talk High Sorcerer Andromath##5694
  turnin High Sorcerer Andromath##1939 |goto Stormwind City 48.71,87.62
step
  only not Dwarf not NightElf not Skyborne Mage
  talk High Sorcerer Andromath##5694
  accept Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 48.71,87.62
step
  only not Dwarf not NightElf not Skyborne Mage
  note Bring Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind.
  collect Ur's Treatise on Shadow Magic##7266 |q 1938 |goto Redridge Mountains 73.77,47.61
step
  only not Dwarf not NightElf not Skyborne Mage
  talk High Sorcerer Andromath##5694
  turnin Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 48.71,87.62
step
  only not Dwarf not NightElf not Skyborne Mage
  talk High Sorcerer Andromath##5694
  accept Pristine Spider Silk##1940 |goto Stormwind City 48.71,87.62
step
  only not Dwarf not NightElf not Skyborne Mage
  note Bring 8 Pristine Spider Silk to Wynne Larson in Stormwind.
  collect 8 Pristine Spider Silk##7267 |q 1940 |goto Duskwood 32.82,51.72 |tip {dropsfrom}Black Widow Hatchling, Carrion Recluse
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  turnin Pristine Spider Silk##1940 |goto Stormwind City 51.84,83.51
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  accept Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Wynne Larson##1309
  turnin Astral Knot Garment##1942 |goto Stormwind City 51.84,83.51
step
  only Mage
  talk Bink##5144
  accept Journey to the Marsh##1947 |goto Ironforge 27.25,8.3
step
  only Mage
  note Speak with Tabetha.
  talk Tabetha##6546
  turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Speak with Magus Tirth in the Shimmering Flats.
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7
step
  only Mage
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  only Mage
  note Find the phrase to Tirth's strongbox, then return to Tirth.
  talk "Plucky" Johnson##6626 |q 1950 |goto Thousand Needles 79.61,75.63
step
  only Mage
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  only Mage
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Bring 1 Jade and the Bolt Charged Bramble to Tabetha in Dustwallow Marsh.
  collect 1 Jade##1529 |q 1948 |goto Arathi Highlands 48.32,64.36 |tip {dropsfrom}Tin Vein, Gold Vein, Iron Deposit
step
  only Mage
  talk Tabetha##6546
  turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Bink##5144
  accept Return to the Marsh##1953 |goto Ironforge 27.25,8.3
step
  only Mage
  note Speak with Tabetha.
  talk Tabetha##6546
  turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Mage
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  only Mage
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh.
  collect Obsidian Power Source##8053 |q 1956 |goto Uldaman - Dungeon -1,-1 |elite |tip {dropsfrom}Obsidian Sentinel
step
  only Mage
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Kill 12 Mana Surges in the allowed time limit.
  kill Mana Surge##6550 |q 1957 |goto Dustwallow Marsh 45.83,56.94
step
  only Mage
  talk Tabetha##6546
  turnin Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  turnin Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Magus Tirth##6548
  accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.7
step
  only Mage
  note Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
  collect Rituals of Power##7274 |q 1951 |goto Scarlet Monastery - Dungeon -1,-1
step
  only Mage
  talk Tabetha##6546
  turnin Rituals of Power##1951 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Speak with Tabetha after her ritual.
  talk Tabetha##6546
  turnin Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Archmage Xylem##8379
  accept Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Mage
  note Bring 10 Glittering Dust to Archmage Xylem.
  collect 10 Glittering Dust##20028 |q 8251 |goto Azshara 58.02,28.18 |tip {dropsfrom}Blood Elf Surveyor, Blood Elf Reclaimer, Blood Elf Defender
step
  only Mage
  talk Archmage Xylem##8379
  turnin Magic Dust##8251 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Mage
  note Collect 6 Enchanted Coral and return them to Archmage Xylem.
  collect 6 Enchanted Coral##20029 |q 8252 |goto Azshara 44.37,53.93 |tip {dropsfrom}Spitelash Siren
step
  only Mage
  talk Archmage Xylem##8379
  turnin The Siren's Coral##8252 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Mage
  note Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem.
  collect Arcane Shard##20085 |q 8253 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Morphaz
step
  only Mage
  talk Archmage Xylem##8379
  turnin Destroy Morphaz##8253 |goto Azshara 29.25,40.21
step
  only Mage
  talk Maginor Dumas##331
  accept Magecraft##8250 |goto Stormwind City 49.25,87.77
step
  only Mage
  note Seek out Sanath Lim-yo and gain passage to see Archmage Xylem.
  talk Sanath Lim-yo##8395
  turnin Magecraft##8250 |goto Azshara 28.11,50.09
step
  only Mage
  collect A Dusty Tome##179547 |goto Dire Maul - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Arcanist's Cookbook##7500 |goto Dire Maul - Dungeon -1,-1
step
  only Mage
  note Return the book to its rightful owners.
  talk Lorekeeper Kildrath##14383
  turnin The Arcanist's Cookbook##7500 |goto Dire Maul - Dungeon -1,-1
step
  only Mage
  talk Deliana##16013
  accept An Earnest Proposition##8907 |goto Ironforge 43.53,52.64
step
  only Mage
  note Acquire 15 Winterspring Blood Samples and 20 gold and bring them along with a set of Magister's Bindings to Deliana in Ironforge.
  collect 15 Winterspring Blood Sample##21928 |q 8907 |goto Winterspring 51.65,11.34 |tip {dropsfrom}Frostsaber Cub, Frostsaber, Frostsaber Stalker
step
  only Mage
  talk Deliana##16013
  turnin An Earnest Proposition##8907 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept A Supernatural Device##8922 |goto Ironforge 43.53,52.64
step
  note Bring the Sealed Blood Container to Mux Manascrambler inside Gadgetzan in Tanaris.
  talk Mux Manascrambler##16014
  turnin A Supernatural Device##8922 |goto Tanaris 52.47,27.23
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
  accept Return to Deliana##8977 |goto Tanaris 52.47,27.23
step
  note Bring the Extra-Dimensional Ghost Revealer to Deliana in Ironforge.
  talk Deliana##16013
  turnin Return to Deliana##8977 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  accept Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  only Mage
  note Bring a Magister's Belt and a set of Magister's Gloves to Deliana in Ironforge.
  collect Magister's Belt##16685 |q 8932 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Smolderthorn Mystic, Thuzadin Shadowcaster, Thuzadin Necromancer
step
  only Mage
  talk Deliana##16013
  turnin Just Compensation##8932 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
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
  only Mage
  talk Anthion Harmon##16016
  accept Anthion's Parting Words##8953 |goto Eastern Plaguelands 26.11,11.3
step
  only Mage
  note Return to Deliana in Ironforge with a set of Magister's Boots, Magister's Leggings and Magister's Mantle.
  collect Magister's Boots##16682 |q 8953 |goto Stratholme - Dungeon -1,-1 |elite |tip {dropsfrom}Hearthsinger Forresten
step
  only Mage
  talk Deliana##16013
  turnin Anthion's Parting Words##8953 |goto Ironforge 43.53,52.64
step
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  note Travel to Blackrock Mountain and use the Extra-Dimensional Ghost Revealer to find Bodley near Blackrock Spire.
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960 |goto Eastern Kingdoms - the continent map 48.9,63.93
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
  accept Back to the Beginning##8997 |goto Eastern Kingdoms - the continent map 48.9,63.93
step
  note Speak with Deliana at The High Seat in Ironforge.
  talk Deliana##16013
  turnin Back to the Beginning##8997 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Deliana##16013
  accept Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Mage
  note Give Deliana your Magister's Crown and Magister's Robes.
  collect Magister's Crown##16686 |q 9001 |goto Scholomance - Dungeon -1,-1 |elite |tip {dropsfrom}Darkmaster Gandling
step
  only Mage
  talk Deliana##16013
  turnin Saving the Best for Last##9001 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Jennea Cannon##5497
  accept Magma or Lava?##84396 |goto Stormwind City 49.56,85.8
step
  only Mage
  talk Jennea Cannon##5497
  turnin Magma or Lava?##84396 |goto Stormwind City 49.56,85.8
step
  only Mage
  talk Archmage Xylem##8379
  accept Warlord Krellian##9362 |goto Azshara 29.25,40.21
step
  only Mage
  note Retrieve the Prismatic Shell for Archmage Xylem. The Archmage resides in a tower atop the cliffs of Azshara.
  collect Prismatic Shell##23250 |q 9362 |goto Azshara 41.02,53.05 |tip {dropsfrom}Warlord Krellian, Scalebeard
step
  only Mage
  talk Archmage Xylem##8379
  turnin Warlord Krellian##9362 |goto Azshara 29.25,40.21
step
  only Mage
  talk Archmage Xylem##8379
  accept Fragmented Magic##9364 |goto Azshara 29.25,40.21
step
  only Mage
  note Polymorph the Spitelash of Azshara and kill the clones that appear several seconds later. When you have slain 50 Polymorph Clones, return to Archmage Xylem in Azshara.
  talk Polymorph Clone##16479 |q 9364 |goto Azshara 36.16,54.59
step
  only Mage
  talk Archmage Xylem##8379
  turnin Fragmented Magic##9364 |goto Azshara 29.25,40.21
step
  only Mage
  talk Lorekeeper Lydros##14368
  accept Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
step
  only Mage
  note Travel to the Warpwood Quarter of Dire Maul and slay the water elemental, Hydrospawn. Return to Lorekeeper Lydros in the Athenaeum with the Hydrospawn Essence.
  collect Hydrospawn Essence##18299 |q 7463 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Hydrospawn
step
  only Mage
  talk Lorekeeper Lydros##14368
  turnin Arcane Refreshment##7463 |goto Dire Maul - Dungeon -1,-1
]])
