-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Stranglethorn Vale (37-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Feralas (45-51)",
}, [[
step
  note {fp}Thysta
  goto Stranglethorn Vale 32.54,29.35 |tip {vendor}
step
  talk Barnil Stonepot##716
  accept Chapter I##339 |goto Stranglethorn Vale 35.66,10.53
step
  note Bring pages 1, 4, 6, and 8 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter I.
  collect Green Hills of Stranglethorn - Page 1##2725 |q 339 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Barnil Stonepot##716
  accept Chapter II##340 |goto Stranglethorn Vale 35.66,10.53
step
  note Bring pages 10, 11, 14 and 16 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter II.
  collect Green Hills of Stranglethorn - Page 10##2734 |q 340 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Barnil Stonepot##716
  accept Chapter III##341 |goto Stranglethorn Vale 35.66,10.53
step
  note Bring pages 18, 20, 21and 24 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter III.
  collect Green Hills of Stranglethorn - Page 18##2742 |q 341 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Barnil Stonepot##716
  accept Chapter IV##342 |goto Stranglethorn Vale 35.66,10.53
step
  note Bring pages 25, 26, and 27 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter IV.
  collect Green Hills of Stranglethorn - Page 25##2749 |q 342 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Barnil Stonepot##716
  accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
step
  kill Bloodscalp Warrior##587 |goto Stranglethorn Vale 33.43,16.78 |tip Loot the quest item here — it starts the quest.
  accept Crystal in the Mountains##635 |goto Stranglethorn Vale 33.43,16.78
step
  talk Commander Aggro'gosh##2464
  accept The Defense of Grom'gol##568 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  note Far Seer Mok'thardin at the Grom'gol base camp wants 8 Shadowmaw Claws and a Pristine Tigress Fang.
  collect Shadowmaw Claw##3838 |q 570 |goto Stranglethorn Vale 40.73,34.82 |tip {dropsfrom}Shadowmaw Panther, Elder Shadowmaw Panther
step
  talk Nimboya##2497
  accept Hunt for Yenniku##581 |goto Stranglethorn Vale 32.16,27.72
step
  note Bring 9 Bloodscalp Tusks to Nimboya at the Grom'gol Base Camp.
  collect 9 Bloodscalp Tusk##3901 |q 581 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Kin'weelay##2519
  accept Bloody Bone Necklaces##596 |goto Stranglethorn Vale 32.27,27.71
step
  note Bring 25 Bloody Bone Necklaces to Kin'weelay at the Grom'gol Base Camp.
  collect 25 Bloody Bone Necklace##3915 |q 596 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Kin'weelay##2519
  accept The Vile Reef##629 |goto Stranglethorn Vale 32.27,27.71
step
  note Bring a Tablet Shard to Kin'weelay at the Grom'gol Base Camp.
  collect Tablet Shard##4094 |q 629 |goto Stranglethorn Vale 24.82,23.03 |tip {dropsfrom}Gri'lek the Wanderer
step
  talk Nimboya##2497
  accept Trollbane##638 |goto Stranglethorn Vale 32.16,27.72
step
  click Bubbling Cauldron##2076
  accept Marg Speaks##1261 |goto Stranglethorn Vale 32.22,27.6
step
  note Bring the Jeweled Pendant to Nazeer in Brackenwall Village.
  collect Jeweled Pendant##5942 |q 1261 |goto Dustwallow Marsh 56.68,46.15 |tip {dropsfrom}Muckshell Clacker, Muckshell Snapclaw, Muckshell Pincer
step
  talk Nemeth Hawkeye##17094
  accept Bloodscalp Insight##9436 |goto Stranglethorn Vale 31.97,28.61
step
  note Nemeth Hawkeye at Grom'gol Base Camp wants you to bring him a Bloodscalp Totem from a Bloodscalp Shaman.
  collect Bloodscalp Totem##23679 |q 9436 |goto Stranglethorn Vale 29.89,19.43 |tip {dropsfrom}Bloodscalp Shaman
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 15 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 568 |goto Stranglethorn Vale 35.62,23.72
step
  talk Nazeer Bloodpike##4791
  turnin Marg Speaks##1261 |goto Dustwallow Marsh 35.21,30.66 |tip {turninat}Dustwallow Marsh
step
  talk Sage Truthseeker##3978
  accept The Platinum Discs##2440 |goto Thunder Bluff 34.4,46.87
step
  talk Neeru Fireblade##3216
  accept Return to Witch Doctor Uzer'i##3122 |goto Orgrimmar 49.47,50.59
step
  talk Se'Jib##7871
  accept Tribal Leatherworking##5148 |goto Stranglethorn Vale 36.55,34.09
step
  note Bring a Wild Leather Vest and a Wild Leather Helmet to Se'Jib in Stranglethorn Vale.
  collect Wild Leather Vest##8211 |q 5148 |goto Stranglethorn Vale 36.55,34.09
step
  talk Zamja##3399
  accept To Gadgetzan You Go!##6611 |goto Orgrimmar 57.4,53.96
step
  talk Dirge Quikcleave##8125
  turnin To Gadgetzan You Go!##6611 |goto Tanaris 52.63,28.11 |tip {turninat}Tanaris
step
  talk Witch Doctor Uzer'i##8115
  turnin Return to Witch Doctor Uzer'i##3122 |goto Feralas 74.42,43.36 |tip {turninat}Feralas
step
  turnin Crystal in the Mountains##635 |goto Arathi Highlands 62.5,33.73 |tip {turninat}Arathi Highlands
step
  talk Zengu##2703
  turnin Trollbane##638 |goto Arathi Highlands 73.8,33.96 |tip {turninat}Arathi Highlands
step
  talk Oran Snakewrithe##7825
  accept Lines of Communication##2995 |goto Undercity 73.06,32.85
step
  talk Galvan the Ancient##7802
  accept Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
step
  talk Lumak##3332
  accept You Too Good.##6608 |goto Orgrimmar 69.8,29.21
step
  talk Oran Snakewrithe##7825
  accept Oran's Gratitude##8273 |goto Undercity 73.06,32.85
step
  talk Elder Starglade##15596
  accept Starglade the Elder##8716 |goto Stranglethorn Vale 53.08,18.45
step
  talk Ursyn Ghull##3048
  accept Tabetha's Task##2861 |goto Thunder Bluff 25.7,14.19
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  note Bring Jin'rokh the Breaker Primal Hakkari Bindings. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Bindings##19716 |q 8053 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  note Bring Jin'rokh the Breaker a Primal Hakkari Shawl. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Shawl##19721 |q 8054 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  note Bring Jin'rokh the Breaker a Primal Hakkari Tabard. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Tabard##19722 |q 8055 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Armsplint##19717 |q 8056 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Stanchion. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Stanchion##19718 |q 8057 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Armguards##8058 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  note Bring Jin'rokh the Breaker a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Armsplint##19717 |q 8058 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Wraps##8059 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Stanchion. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Stanchion##19718 |q 8059 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Wraps##8060 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  note Bring Al'tabim the All-Seeing Primal Hakkari Bindings. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Bindings##19716 |q 8060 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Wraps##8061 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  note Bring Al'tabim the All-Seeing a Primal Hakkari Stanchion. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Stanchion##19718 |q 8061 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  note Bring the following Paragons of Power from Zul'Gurub to Falthir the Sightless: A Primal Hakkari Bindings. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Bindings##19716 |q 8062 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Armsplint. You must also have a reputation equal to or greater than Friendly with the Zandalar Tribe.
  collect Primal Hakkari Armsplint##19717 |q 8063 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Sash. Maywiki of Zuldazar is located on Yojamba Isle, Stranglethorn Vale. You must also be Honored with Zandalar.
  collect Primal Hakkari Sash##19720 |q 8064 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  note Bring Maywiki of Zuldazar a Primal Hakkari Tabard. Maywiki of Zuldazar is located on Yojamba Isle, Stranglethorn Vale. You must also be Revered with Zandalar.
  collect Primal Hakkari Tabard##19722 |q 8065 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  note Bring the following Paragons of Power from Zul'Gurub to Falthir the Sightless: A Primal Hakkari Shawl. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Shawl##19721 |q 8066 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  note Bring the following Paragons of Power from Zul'Gurub to Falthir the Sightless: A Primal Hakkari Aegis. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Aegis##19724 |q 8067 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Mantle##8068 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  note Bring Al'tabim the All-Seeing a Primal Hakkari Shawl. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Shawl##19721 |q 8068 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Illusionist's Robes##8069 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  note Bring Al'tabim the All-Seeing a Primal Hakkari Kossack. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Kossack##19723 |q 8069 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Bindings##8070 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  note Bring Al'tabim the All-Seeing a Primal Hakkari Sash. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Sash##19720 |q 8070 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Confessor's Mantle##8071 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  note Bring Al'tabim the All-Seeing a Primal Hakkari Aegis. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Aegis##19724 |q 8071 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Girdle##19719 |q 8072 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  note Bring Falthir the Sightless a Primal Hakkari Aegis. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Aegis##19724 |q 8073 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Girdle##19719 |q 8074 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  note Bring Maywiki of Zuldazar a Primal Hakkari Tabard. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Tabard##19722 |q 8075 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Mantle##8076 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Sash. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Sash##19720 |q 8076 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Paragons of Power: The Demoniac's Robes##8077 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  note Bring Al'tabim the All-Seeing a Primal Hakkari Kossack. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Kossack##19723 |q 8077 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Belt##8078 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  note Bring Jin'rokh the Breaker a Primal Hakkari Girdle. You must also have a reputation equal to or greater than Honored with the Zandalar Tribe.
  collect Primal Hakkari Girdle##19719 |q 8078 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Paragons of Power: The Vindicator's Breastplate##8079 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  note Bring Jin'rokh the Breaker a Primal Hakkari Kossack. You must also have a reputation equal to or greater than Revered with the Zandalar Tribe.
  collect Primal Hakkari Kossack##19723 |q 8079 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir, High Priest Venoxis
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Exzhal##14910
  accept A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  note String 5 Channeler's Heads, then return the Collection of Troll Heads to Exzhal on Yojamba Isle.
  collect Gurubashi Head Collection##19880 |q 8201 |goto Stranglethorn Vale 15.26,15.5
step
  talk Kebok##737
  accept Bloodscalp Ears##189 |goto Stranglethorn Vale 27.0,77.13
step
  note Acquire 15 Bloodscalp Ears and return them to Kebok in Booty Bay.
  collect 15 Bloodscalp Ear##1519 |q 189 |goto Stranglethorn Vale 33.43,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
step
  talk Kebok##737
  accept Hostile Takeover##213 |goto Stranglethorn Vale 27.0,77.13
step
  note Retrieve 8 Tumbled Crystals and return them to Kebok in Booty Bay.
  collect 8 Tumbled Crystal##4106 |q 213 |goto Stranglethorn Vale 44.24,19.85 |tip {dropsfrom}Venture Co. Geologist
step
  talk Fin Fizracket##2486
  accept Stranglethorn Fever##348 |goto Stranglethorn Vale 27.61,76.74
step
  note Seek out Witch Doctor Unbagwa and have him summon Mokk the Savage. Bring the Heart of Mokk to Fin Fizracket.
  collect Heart of Mokk##2797 |q 348 |goto Stranglethorn Vale 27.61,76.74 |tip {dropsfrom}Mokk the Savage
step
  talk Drizzlik##2495
  accept Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
  note Bring 2 Large River Crocolisk Skins to Drizzlik in Booty Bay.
  collect 2 Large River Crocolisk Skin##4053 |q 575 |goto Stranglethorn Vale 36.85,10.51 |tip {dropsfrom}River Crocolisk
step
  talk Whiskey Slim##2491
  accept Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
  note Whiskey Slim in Booty Bay wants you to bring him the bottles of Pupellyverbos Port he lost.
  collect Pupellyverbos Port##3900 |q 580 |goto The Hinterlands 78.28,70.64
step
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.1,76.22
step
  talk Crank Fizzlebub##2498
  accept Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
  note Bring 10 Singing Crystal Shards to Crank Fizzlebub.
  collect 10 Singing Crystal Shard##3918 |q 605 |goto Stranglethorn Vale 34.68,6.74 |tip {dropsfrom}Stone Maw Basilisk, Crystal Spine Basilisk, Cold Eye Basilisk
step
  talk "Sea Wolf" MacKinley##2501
  accept Scaring Shaky##606 |goto Stranglethorn Vale 27.78,77.07
step
  note Bring 5 Mistvale Giblets to "Shaky" Phillipe in Booty Bay.
  collect 5 Mistvale Giblets##3919 |q 606 |goto Stranglethorn Vale 33.05,65.45 |tip {dropsfrom}Elder Mistvale Gorilla
step
  talk Privateer Bloads##2494
  accept Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
step
  note Bring 10 Bundles of Akiris Reed to Privateer Bloads in Booty Bay.
  collect 10 Akiris Reed##4029 |q 617 |goto Stranglethorn Vale 26.32,62.32 |tip {dropsfrom}Naga Explorer
step
  talk Crank Fizzlebub##2498
  accept Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
  note Bring 12 samples of Zanzil's Mixture to Crank Fizzlebub in Booty Bay.
  collect 12 Zanzil's Mixture##4016 |q 621 |goto Stranglethorn Vale 38.89,57.62 |tip {dropsfrom}Zanzil Zombie, Zanzil Hunter, Zanzil Witch Doctor
step
  talk Fleet Master Seahorn##2487
  accept Sunken Treasure##670 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Pretty Boy" Duncan##2545
  accept Avast Ye, Scallywag##1036 |goto Stranglethorn Vale 27.39,69.42
step
  talk Krazek##773
  accept Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
  note Bring 10 Specks of Dream Dust to Krazek in Booty Bay. Dream Dust is gathered from the dragon whelps of the Swamp of Sorrows.
  collect 10 Speck of Dream Dust##5803 |q 1116 |goto Swamp of Sorrows 14.31,62.67 |tip {dropsfrom}Adolescent Whelp, Dreaming Whelp, Green Wyrmkin
step
  talk Wharfmaster Lozgil##4631
  accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
step
  talk McGavan##7794
  accept The Mithril Order##2760 |goto Stranglethorn Vale 28.87,75.42
step
  talk Krazek##773
  accept Tran'rek##2864 |goto Stranglethorn Vale 26.94,77.21
step
  talk "Sea Wolf" MacKinley##2501
  accept Stoley's Debt##2872 |goto Stranglethorn Vale 27.78,77.07
step
  only Warlock
  talk Xizk Goodstitch##2670
  accept Components for the Enchanted Gold Bloodrobe##4782 |goto Stranglethorn Vale 28.71,76.89
step
  only Warlock
  talk Xizk Goodstitch##2670
  accept Fine Gold Thread##4785 |goto Stranglethorn Vale 28.71,76.89
step
  talk Captain Hecklebury Smotts##2500
  accept The Captain's Chest##8551 |goto Stranglethorn Vale 26.69,73.61
step
  note Bring Smotts' Chest to Hecklebury Smotts in Booty Bay.
  collect Smotts' Chest##3932 |q 8551 |goto Stranglethorn Vale 36.95,69.73 |tip {dropsfrom}Gorlash
step
  kill Mok'rash##1493 |goto Stranglethorn Vale 23.25,72.1 |tip Loot the quest item here — it starts the quest.
  accept The Monogrammed Sash##8552 |goto Stranglethorn Vale 23.25,72.1
step
  talk Elder Winterhoof##15576
  accept Winterhoof the Elder##8674 |goto Stranglethorn Vale 26.47,76.53
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##670 |goto Arathi Highlands 32.28,81.38 |tip {turninat}Arathi Highlands
step
  talk Tabetha##6546
  turnin Tabetha's Task##2861 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Nat Pagle##12919
  turnin You Too Good.##6608 |goto Dustwallow Marsh 58.76,60.17 |tip {turninat}Dustwallow Marsh
step
  talk Apothecary Zinge##5204
  accept Errand for Apothecary Zinge##232 |goto Undercity 50.14,67.97
step
  collect Half-Buried Bottle##2560 |goto Stranglethorn Vale 36.95,73.11 |tip Loot the quest item here — it starts the quest.
  accept Message in a Bottle##594 |goto Stranglethorn Vale 36.95,73.11
step
  talk Melor Stonehoof##3441
  accept Deadmire##1205 |goto Thunder Bluff 61.54,80.92
step
  note Bring Deadmire's Tooth to Melor in Thunder Bluff.
  collect Deadmire's Tooth##5945 |q 1205 |goto Dustwallow Marsh 47.54,54.75 |tip {dropsfrom}Deadmire
step
  talk Graham Van Talen##4586
  accept Goblin Engineering##3526 |goto Undercity 75.34,73.13
step
  talk Graham Van Talen##4586
  accept Gnome Engineering##3635 |goto Undercity 75.34,73.13
step
  talk Arnok##3373
  accept Horde Trauma##6623 |goto Orgrimmar 34.18,84.58
step
  talk Fleet Master Firallon##2546
  turnin Avast Ye, Scallywag##1036 |goto Stranglethorn Vale 30.58,90.63
step
  collect Cortello's Riddle##2554 |goto Stranglethorn Vale 30.64,88.6 |tip Loot the quest item here — it starts the quest.
  accept Cortello's Riddle##624 |goto Stranglethorn Vale 30.64,88.6
step
  talk Fleet Master Firallon##2546
  accept Avast Ye, Admiral!##4621 |goto Stranglethorn Vale 30.58,90.63
step
  talk Fleet Master Firallon##2546
  accept Dressing the Part##9272 |goto Stranglethorn Vale 30.58,90.63
step
  talk Hemet Nesingwary Jr.##715
  turnin Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.81
step
  talk Barnil Stonepot##716
  turnin Chapter I##339 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter II##340 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter III##341 |goto Stranglethorn Vale 35.66,10.53
step
  talk Barnil Stonepot##716
  turnin Chapter IV##342 |goto Stranglethorn Vale 35.66,10.53
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Barnil Stonepot##716
  accept The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
step
  note Collect the missing pages from The Green Hills of Stranglethorn manuscript. Once all four chapters are complete, return them to Barnil.
  collect Green Hills of Stranglethorn - Chapter I##2756 |q 338 |goto Stranglethorn Vale 35.66,10.53
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Young Stranglethorn Tigers.
  kill Young Stranglethorn Tiger##681 |q 185 |goto Stranglethorn Vale 35.07,12.11
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Young Panthers.
  kill Young Panther##683 |q 190 |goto Stranglethorn Vale 41.27,12.75
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##568 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##570 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  turnin Hunt for Yenniku##581 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  turnin Bloody Bone Necklaces##596 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  turnin The Vile Reef##629 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nemeth Hawkeye##17094
  turnin Bloodscalp Insight##9436 |goto Stranglethorn Vale 31.97,28.61
step
  talk Commander Aggro'gosh##2464
  accept The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  note Bring 10 Jungle Stalker Feathers to Far Seer Mok'thardin at the Grom'gol base camp.
  collect 10 Jungle Stalker Feather##3863 |q 572 |goto Stranglethorn Vale 28.88,44.1 |tip {dropsfrom}Jungle Stalker
step
  talk Nimboya##2497
  accept Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  note Bring 20 Shrunken Heads to Nimboya at the Grom'gol Base Camp.
  collect 20 Shrunken Head##1532 |q 582 |goto Stranglethorn Vale 23.37,10.29 |tip {dropsfrom}Bloodscalp Headhunter
step
  talk Kin'weelay##2519
  accept Split Bone Necklace##598 |goto Stranglethorn Vale 32.27,27.71
step
  note Bring 25 Split Bone Necklaces to Kin'weelay at the Grom'gol Base camp.
  collect 25 Split Bone Necklace##3916 |q 598 |goto Stranglethorn Vale 46.22,37.45 |tip {dropsfrom}Skullsplitter Warrior, Skullsplitter Hunter, Skullsplitter Witch Doctor
step
  talk Nemeth Hawkeye##17094
  accept An Unusual Patron##9457 |goto Stranglethorn Vale 31.97,28.61
step
  note Use the Gift of Naias near the Altar of Naias to summon the water elemental Naias. Defeat him and return to Nemeth Hawkeye at Grom'gol Base Camp with the Heart of Naias.
  collect Heart of Naias##23681 |q 9457 |goto Stranglethorn Vale 31.97,28.61 |tip {dropsfrom}Naias
step
  talk Se'Jib##7871
  turnin Tribal Leatherworking##5148 |goto Stranglethorn Vale 36.55,34.09
step
  turnin Cortello's Riddle##624 |goto Swamp of Sorrows 22.87,48.19 |tip {turninat}Swamp of Sorrows
step
  talk Alessandro Luca##7683
  turnin Errand for Apothecary Zinge##232 |goto Undercity 58.61,54.68 |tip {turninat}Undercity
step
  talk Bena Winterhoof##3009
  turnin The Platinum Discs##2440 |goto Thunder Bluff 46.62,33.17 |tip {turninat}Thunder Bluff
step
  talk Alessandro Luca##7683
  accept Errand for Apothecary Zinge##238 |goto Undercity 58.61,54.68
step
  note Commander Aggro'gosh of the Grom'gol base camp wants you to kill 10 Ogre Brutes and 5 Ogre Witch Doctors.
  kill Mosh'Ogg Brute##1142 |q 569 |goto Stranglethorn Vale 37.34,30.92
step
  note Oran Snakewrithe in Undercity wants you to travel to the Hinterlands and burn the Highvale Records, Highvale Report, and Highvale Notes.
  collect Highvale Records##144071 |q 2995 |goto The Hinterlands 31.99,46.82
step
  talk Elder Starglade##15596
  turnin Starglade the Elder##8716 |goto Stranglethorn Vale 53.08,18.45
step
  talk Galvan the Ancient##7802
  turnin Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
step
  talk Oran Snakewrithe##7825
  turnin Oran's Gratitude##8273 |goto Undercity 73.06,32.85 |tip {turninat}Undercity
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4782 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Galvan the Ancient##7802
  turnin The Mithril Order##2760 |goto Stranglethorn Vale 50.62,20.48
step
  talk Tran'rek##7876
  turnin Tran'rek##2864 |goto Tanaris 51.57,26.76 |tip {turninat}Tanaris
step
  talk Stoley##7881
  turnin Stoley's Debt##2872 |goto Tanaris 67.11,23.98 |tip {turninat}Tanaris
step
  talk Oran Snakewrithe##7825
  turnin Lines of Communication##2995 |goto Undercity 73.06,32.85 |tip {turninat}Undercity
step
  talk Nixx Sprocketspring##8126
  turnin Goblin Engineering##3526 |goto Tanaris 52.48,27.33 |tip {turninat}Tanaris
step
  talk Doctor Gregory Victor##12920
  turnin Horde Trauma##6623 |goto Arathi Highlands 73.41,36.89 |tip {turninat}Arathi Highlands
step
  talk Galvan the Ancient##7802
  accept Smelt On, Smelt Off##2761 |goto Stranglethorn Vale 50.62,20.48
step
  note Bring forty Mithril Bars and forty Iron Bars to Galvan the Ancient in Stranglethorn.
  collect Iron Bar##3575 |q 2761 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept The Great Silver Deceiver##2762 |goto Stranglethorn Vale 50.62,20.48
step
  note Bring forty Mithril Bars and five Truesilver Bars to Galvan the Ancient in Stranglethorn.
  collect Mithril Bar##3860 |q 2762 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept The Art of the Imbue##2763 |goto Stranglethorn Vale 50.62,20.48
step
  note Bring forty Mithril Bars and four Citrines to Galvan the Ancient in Stranglethorn.
  collect Mithril Bar##3860 |q 2763 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept Return to the Blasted Lands##3626 |goto Stranglethorn Vale 50.62,20.48
step
  talk Exzhal##14910
  turnin A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Armguards##8053 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Belt##8054 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Freethinker's Breastplate##8055 |goto Stranglethorn Vale 15.31,14.43
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Bracers##8056 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Bracers##8057 |goto Stranglethorn Vale 15.3,16.02
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Armguards##8058 |goto Stranglethorn Vale 15.31,14.43
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Wraps##8059 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Wraps##8060 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Wraps##8061 |goto Stranglethorn Vale 15.34,16.12
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Bracers##8062 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Bracers##8063 |goto Stranglethorn Vale 14.08,13.72
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Belt##8064 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Haruspex's Tunic##8065 |goto Stranglethorn Vale 15.3,16.02
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Belt##8066 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Predator's Mantle##8067 |goto Stranglethorn Vale 14.08,13.72
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Mantle##8068 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Illusionist's Robes##8069 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Bindings##8070 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Confessor's Mantle##8071 |goto Stranglethorn Vale 15.34,16.12
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Mantle##8072 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Paragons of Power: The Madcap's Tunic##8073 |goto Stranglethorn Vale 14.08,13.72
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Belt##8074 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Paragons of Power: The Augur's Hauberk##8075 |goto Stranglethorn Vale 15.3,16.02
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Mantle##8076 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Paragons of Power: The Demoniac's Robes##8077 |goto Stranglethorn Vale 15.34,16.12
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Belt##8078 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Paragons of Power: The Vindicator's Breastplate##8079 |goto Stranglethorn Vale 15.31,14.43
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  collect Strength of Mugamba##19574 |q 8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  collect Heathen's Brand##19579 |q 8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  collect The Eye of Zuldazar##19591 |q 8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  collect Pebble of Kajaro##19598 |q 8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  collect Kezan's Taint##19602 |q 8107 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  collect Enchanted South Seas Kelp##19610 |q 8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  collect Vision of Voodress##19606 |q 8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  collect Zandalarian Shadow Talisman##19614 |q 8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  collect Maelstrom's Tendril##19618 |q 8146 |goto Stranglethorn Vale 14.08,13.72
step
  note Hemet Nesingwary Jr. wants you to kill 10 Stranglethorn Raptors.
  kill Stranglethorn Raptor##685 |q 194 |goto Stranglethorn Vale 26.01,16.07
step
  talk Fallen Hero of the Horde##7572
  turnin Return to the Blasted Lands##3626 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Oglethorpe Obnoticus##7406
  turnin Gnome Engineering##3635 |goto Stranglethorn Vale 28.36,76.35
step
  talk Drizzlik##2495
  turnin Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
  talk Whiskey Slim##2491
  turnin Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
  turnin The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 27.28,69.52
step
  talk Krazek##773
  turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
  talk Crank Fizzlebub##2498
  turnin Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
  talk "Shaky" Phillipe##2502
  turnin Scaring Shaky##606 |goto Stranglethorn Vale 26.9,73.59
step
  talk Privateer Bloads##2494
  turnin Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
step
  talk Crank Fizzlebub##2498
  turnin Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1181 |goto Stranglethorn Vale 27.23,76.87
step
  only Warlock
  talk Xizk Goodstitch##2670
  turnin Fine Gold Thread##4785 |goto Stranglethorn Vale 28.71,76.89
step
  talk Kebok##737
  turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27.0,77.13
step
  talk Kebok##737
  turnin Hostile Takeover##213 |goto Stranglethorn Vale 27.0,77.13
step
  talk Fin Fizracket##2486
  turnin Stranglethorn Fever##348 |goto Stranglethorn Vale 27.61,76.74
step
  talk Captain Hecklebury Smotts##2500
  turnin The Captain's Chest##8551 |goto Stranglethorn Vale 26.69,73.61
step
  talk Captain Hecklebury Smotts##2500
  turnin The Monogrammed Sash##8552 |goto Stranglethorn Vale 26.69,73.61
step
  talk Elder Winterhoof##15576
  turnin Winterhoof the Elder##8674 |goto Stranglethorn Vale 26.47,76.53
step
  talk Kebok##737
  accept Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.0,77.13
step
  note Acquire 18 Skullsplitter Tusks and return them to Kebok.
  collect 18 Skullsplitter Tusk##1524 |q 209 |goto Stranglethorn Vale 46.22,37.45 |tip {dropsfrom}Skullsplitter Warrior, Skullsplitter Hunter, Skullsplitter Witch Doctor
step
  talk Dizzy One-Eye##2493
  accept Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.9
step
  note Dizzy One-Eye in Booty Bay wants you to retrieve his eye from the Bloodsail Buccaneers.
  collect Dizzy's Eye##3897 |q 576 |goto Stranglethorn Vale 32.34,71.67 |tip {dropsfrom}Bloodsail Raider, Bloodsail Mage, Bloodsail Swashbuckler
step
  talk Drizzlik##2495
  accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  note Bring 5 Snapjaw Crocolisks Skins to Drizzlik in Booty Bay.
  collect 5 Snapjaw Crocolisk Skin##4104 |q 577 |goto Stranglethorn Vale 40.15,22.18 |tip {dropsfrom}Snapjaw Crocolisk
step
  talk Deeg##2488
  accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  note Deeg in Booty Bay wants you to bring him 15 shares of Snuff.
  collect Snuff##3910 |q 587 |goto Stranglethorn Vale 32.34,71.67 |tip {dropsfrom}Bloodsail Raider, Bloodsail Mage, Bloodsail Swashbuckler
step
  click Bloodsail Correspondence##2083
  accept The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 27.28,69.52
step
  talk Crank Fizzlebub##2498
  accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  note Bring 10 Singing Blue Crystals to Crank Fizzlebub in Booty Bay.
  collect 10 Singing Blue Crystal##3917 |q 600 |goto Stranglethorn Vale 41.65,43.48 |tip {dropsfrom}Venture Co. Strip Miner, Venture Co. Foreman, Venture Co. Surveyor
step
  talk "Shaky" Phillipe##2502
  accept Return to MacKinley##607 |goto Stranglethorn Vale 26.9,73.59
step
  talk Krazek##773
  accept Rumors for Kravel##1117 |goto Stranglethorn Vale 26.94,77.21
step
  talk Baron Revilgaz##2496
  accept Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  note Bring the Fuel Regulator Blueprints to Baron Revilgaz in Booty Bay.
  collect Fuel Regulator Blueprints##5852 |q 1182 |goto Stranglethorn Vale 43.33,20.33 |tip {dropsfrom}Cozzle's Footlocker
step
  talk Oglethorpe Obnoticus##7406
  accept The Pledge of Secrecy##3642 |goto Stranglethorn Vale 28.36,76.35
step
  note If you agree to become a Gnome Engineer, then right-click on the Pledge of Secrecy and speak once more with Oglethrope Obnoticus in Booty bay.
  collect Oglethorpe's Signed Pledge##11282 |q 3642 |goto Stranglethorn Vale 28.36,76.35
step
  talk Captain Hecklebury Smotts##2500
  accept The Captain's Cutlass##8553 |goto Stranglethorn Vale 26.69,73.61
step
  note Slay Fleet Master Seahorn and Baron Revilgaz of Booty Bay, and then return to Fleet Master Firallon aboard the Crimson Veil off the coast of Stranglethorn Vale.
  kill Baron Revilgaz##2496 |q 4621 |goto Stranglethorn Vale 27.23,76.87
step
  talk Princess Poobah##2634
  turnin Message in a Bottle##594 |goto Stranglethorn Vale 38.53,80.58
step
  talk Kravel Koalbeard##4452
  turnin Rumors for Kravel##1117 |goto Thousand Needles 77.79,77.27 |tip {turninat}Thousand Needles
step
  talk Melor Stonehoof##3441
  turnin Deadmire##1205 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  talk Apothecary Zinge##5204
  turnin Errand for Apothecary Zinge##238 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  talk Apothecary Zinge##5204
  accept Into the Field##243 |goto Undercity 50.14,67.97
step
  talk Princess Poobah##2634
  accept Message in a Bottle##630 |goto Stranglethorn Vale 38.53,80.58
step
  note Slay King Mukla and return to Princess Poobah with the Key to free her.
  collect Shackle Key##4103 |q 630 |goto Stranglethorn Vale 40.95,83.9 |tip {dropsfrom}King Mukla
step
  talk Fleet Master Firallon##2546
  turnin Avast Ye, Admiral!##4621 |goto Stranglethorn Vale 30.58,90.63
step
  talk Fleet Master Firallon##2546
  turnin Dressing the Part##9272 |goto Stranglethorn Vale 30.58,90.63
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##185 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
  talk Barnil Stonepot##716
  turnin The Green Hills of Stranglethorn##338 |goto Stranglethorn Vale 35.66,10.53
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Panthers.
  kill Panther##736 |q 191 |goto Stranglethorn Vale 29.45,12.3
step
  talk Commander Aggro'gosh##2464
  turnin The Defense of Grom'gol##569 |goto Stranglethorn Vale 32.17,28.9
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##572 |goto Stranglethorn Vale 32.12,29.24
step
  talk Nimboya##2497
  turnin Headhunting##582 |goto Stranglethorn Vale 32.16,27.72
step
  talk Kin'weelay##2519
  turnin Split Bone Necklace##598 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nemeth Hawkeye##17094
  turnin An Unusual Patron##9457 |goto Stranglethorn Vale 31.97,28.61
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  note Bring an Aged Gorilla Sinew to Far Seer Mok'thardin in Grom'gol.
  collect Aged Gorilla Sinew##3862 |q 571 |goto Stranglethorn Vale 33.05,65.45 |tip {dropsfrom}Elder Mistvale Gorilla
step
  talk Nimboya##2497
  accept Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.16,27.72
step
  note Bring Gan'zulah's Head and Nezzliok's Head to the bubbling cauldron at the Grom'gol Base Camp.
  collect Gan'zulah's Head##3904 |q 584 |goto Stranglethorn Vale 23.44,8.12 |tip {dropsfrom}Gan'zulah
step
  note Hemet Nesingwary Jr. wants you to kill 10 Lashtail Raptors.
  kill Lashtail Raptor##686 |q 195 |goto Stranglethorn Vale 35.62,23.72
step
  talk Galvan the Ancient##7802
  turnin Smelt On, Smelt Off##2761 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Great Silver Deceiver##2762 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Art of the Imbue##2763 |goto Stranglethorn Vale 50.62,20.48
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Into the Field##243 |goto Tanaris 52.46,28.51 |tip {turninat}Tanaris
step
  talk Galvan the Ancient##7802
  accept Galvan's Finest Pupil##2764 |goto Stranglethorn Vale 50.62,20.48
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Stranglethorn Tigers.
  kill Stranglethorn Tiger##682 |q 186 |goto Stranglethorn Vale 46.08,14.4
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  collect Strength of Mugamba##19575 |q 8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  collect Heathen's Brand##19585 |q 8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  collect The Eye of Zuldazar##19592 |q 8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  collect Pebble of Kajaro##19599 |q 8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  collect Kezan's Taint##19603 |q 8108 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  collect Enchanted South Seas Kelp##19611 |q 8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  collect Vision of Voodress##19607 |q 8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  collect Zandalarian Shadow Talisman##19615 |q 8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  collect Maelstrom's Tendril##19619 |q 8147 |goto Stranglethorn Vale 14.08,13.72
step
  talk Oglethorpe Obnoticus##7406
  turnin The Pledge of Secrecy##3642 |goto Stranglethorn Vale 28.36,76.35
step
  talk Dizzy One-Eye##2493
  turnin Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.9
step
  talk Drizzlik##2495
  turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
  talk Deeg##2488
  turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
  talk First Mate Crazz##2490
  turnin The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 28.1,76.22
step
  talk Crank Fizzlebub##2498
  turnin Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
  talk "Sea Wolf" MacKinley##2501
  turnin Return to MacKinley##607 |goto Stranglethorn Vale 27.78,77.07
step
  talk Baron Revilgaz##2496
  turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
  talk Kebok##737
  turnin Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.0,77.13
step
  talk Sprogger##2594
  turnin The Captain's Cutlass##8553 |goto Stranglethorn Vale 26.66,73.64
step
  talk First Mate Crazz##2490
  accept The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 28.1,76.22
step
  talk "Sea Wolf" MacKinley##2501
  accept Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
  note Bring Maury's Clubbed Foot, Jon-Jon's Golden Spyglass, and Chucky's Huge Ring to "Sea Wolf" MacKinley in Booty Bay.
  collect Maury's Clubbed Foot##3924 |q 609 |goto Stranglethorn Vale 35.26,51.27 |tip {dropsfrom}Maury "Club Foot" Wilkins
step
  talk Drizzlik##2495
  accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  note Bring an Elder Crocolisk Skin to Drizzlik in Booty Bay.
  collect Elder Crocolisk Skin##4105 |q 628 |goto Stranglethorn Vale 29.83,25.48 |tip {dropsfrom}Elder Saltwater Crocolisk
step
  talk Baron Revilgaz##2496
  accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87
step
  talk Oglethorpe Obnoticus##7406
  accept Show Your Work##3643 |goto Stranglethorn Vale 28.36,76.35
step
  note Bring 6 Mithril Tubes, an Accurate Scope, and a 2 Advanced Target Dummies to Oglethorpe Obnoticus in Booty Bay.
  collect 6 Mithril Tube##10559 |q 3643 |goto Stranglethorn Vale 28.36,76.35
step
  talk Sprogger##2594
  accept Facing Negolash##8554 |goto Stranglethorn Vale 26.66,73.64
step
  note Bring 10 Barbecued Buzzard Wings and 5 bottles of Junglevine Wine to Captain Smotts' Lifeboat.
  collect 10 Smotts' Cutlass##3935 |q 8554 |goto Stranglethorn Vale 26.66,73.64 |tip {dropsfrom}Negolash
step
  talk Princess Poobah##2634
  turnin Message in a Bottle##630 |goto Stranglethorn Vale 38.53,80.58
step
  talk Pozzik##4630
  turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88 |tip {turninat}Thousand Needles
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##186 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill 10 Elder Stranglethorn Tigers.
  kill Elder Stranglethorn Tiger##1085 |q 187 |goto Stranglethorn Vale 33.53,18.86
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##571 |goto Stranglethorn Vale 32.12,29.24
step
  turnin Bloodscalp Clan Heads##584 |goto Stranglethorn Vale 32.22,27.6
step
  talk Far Seer Mok'thardin##2465
  accept Mok'thardin's Enchantment##573 |goto Stranglethorn Vale 32.12,29.24
step
  click Bubbling Cauldron##2076
  accept Speaking with Nezzliok##585 |goto Stranglethorn Vale 32.22,27.6
step
  note Bring a Balia'mah Trophy, a Ziata'jai Trophy and a Zul'Mamwe Trophy to the Bubbling Cauldron at the Grom'gol Base Camp.
  collect Balia'mah Trophy##3906 |q 585 |goto Stranglethorn Vale 46.13,32.33 |tip {dropsfrom}Balia'mah Trophy Skulls
step
  click Bubbling Cauldron##2076
  accept Speaking with Gan'zulah##586 |goto Stranglethorn Vale 32.22,27.6
step
  note Kill 8 Skullsplitter Hunters, 6 Skullsplitter Headhunters, and 4 Skullsplitter Berserkers.
  kill Skullsplitter Hunter##669 |q 586 |goto Stranglethorn Vale 45.79,42.4
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to kill 10 Shadowmaw Panthers.
  kill Shadowmaw Panther##684 |q 192 |goto Stranglethorn Vale 40.73,34.82
step
  note Hemet Nesingwary Jr. wants you to kill 10 Jungle Stalkers.
  kill Jungle Stalker##687 |q 196 |goto Stranglethorn Vale 28.88,44.1
step
  talk Trenton Lighthammer##7804
  turnin Galvan's Finest Pupil##2764 |goto Tanaris 51.41,28.75 |tip {turninat}Tanaris
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Warrior
  collect Strength of Mugamba##19576 |q 8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  collect Heathen's Brand##19586 |q 8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Priest
  collect The Eye of Zuldazar##19593 |q 8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  accept The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  collect Pebble of Kajaro##19600 |q 8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  collect Kezan's Taint##19604 |q 8109 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  accept Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Druid
  collect Enchanted South Seas Kelp##19612 |q 8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  accept The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  collect Vision of Voodress##19608 |q 8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Rogue
  collect Zandalarian Shadow Talisman##19616 |q 8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  collect Maelstrom's Tendril##19620 |q 8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk Oglethorpe Obnoticus##7406
  turnin Show Your Work##3643 |goto Stranglethorn Vale 28.36,76.35
step
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Sea Wolf" MacKinley##2501
  turnin Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
  talk Drizzlik##2495
  turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
  talk Captain Hecklebury Smotts##2500
  turnin Facing Negolash##8554 |goto Stranglethorn Vale 26.69,73.61
step
  talk Fleet Master Seahorn##2487
  accept The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Sea Wolf" MacKinley##2501
  accept Cracking Maury's Foot##613 |goto Stranglethorn Vale 27.78,77.07
step
  note Bring Maury's Key to "Sea Wolf" Mackinley in Booty Bay.
  collect Maury's Key##3930 |q 613 |goto Stranglethorn Vale 51.48,27.73 |tip {dropsfrom}Mosh'Ogg Mauler, Mosh'Ogg Shaman, Mosh'Ogg Lord
step
  note Far Seer Mok'thardin of Grom'gol needs Holy Spring Water. He also wants you to kill 10 Naga Explorers.
  kill Naga Explorer##1907 |q 573 |goto Stranglethorn Vale 26.32,62.32
step
  note Fleet Master Seahorn in Booty Bay wants you to kill 10 Bloodsail Swashbucklers and bring back the Bloodsail Charts and the Bloodsail Orders.
  kill Bloodsail Swashbuckler##1563 |q 604 |goto Stranglethorn Vale 26.91,82.4
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
  talk Ajeck Rouack##717
  accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  note Ajeck Rouack of Nesingwary's Expedition wants you to kill Sin'Dall and return with her paw.
  collect Paw of Sin'Dall##3879 |q 188 |goto Stranglethorn Vale 32.21,17.39 |tip {dropsfrom}Sin'Dall
step
  talk Sir S. J. Erlgadin##718
  accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  note Sir S. J. Erlgadin of Nesingwary's Expedition wants you to bring him the Fang of Bhag'thera.
  collect Fang of Bhag'thera##3876 |q 193 |goto Stranglethorn Vale 49.61,24.03 |tip {dropsfrom}Bhag'thera
step
  talk Hemet Nesingwary Jr.##715
  accept Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
step
  note Hemet Nesingwary Jr. wants you to kill Tethis, an elusive, dangerous raptor in Stranglethorn.
  collect Talon of Tethis##3877 |q 197 |goto Stranglethorn Vale 28.74,43.45 |tip {dropsfrom}Tethis
step
  talk Far Seer Mok'thardin##2465
  turnin Mok'thardin's Enchantment##573 |goto Stranglethorn Vale 32.12,29.24
step
  turnin Speaking with Nezzliok##585 |goto Stranglethorn Vale 32.22,27.6
step
  turnin Speaking with Gan'zulah##586 |goto Stranglethorn Vale 32.22,27.6
step
  click Bubbling Cauldron##2076
  accept The Fate of Yenniku##588 |goto Stranglethorn Vale 32.22,27.6
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Mage
  talk Al'tabim the All-Seeing##14903
  turnin The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Maywiki of Zuldazar##14904
  turnin Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Shaman
  talk Maywiki of Zuldazar##14904
  turnin The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
  talk "Sea Wolf" MacKinley##2501
  turnin Cracking Maury's Foot##613 |goto Stranglethorn Vale 27.78,77.07
step
  talk Fleet Master Seahorn##2487
  accept The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01
step
  note Fleet-Master Seahorn in Booty Bay wants you to kill Captain Stillwater, Captain Keelhaul and Fleet Master Firallon.
  kill Captain Stillwater##2550 |q 608 |goto Stranglethorn Vale 32.87,88.2
step
  talk Ajeck Rouack##717
  turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
  talk Sir S. J. Erlgadin##718
  turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
step
  talk Hemet Nesingwary Jr.##715
  turnin Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
step
  talk Hemet Nesingwary Jr.##715
  accept Big Game Hunter##208 |goto Stranglethorn Vale 35.66,10.81
step
  note Hemet Nesingwary Jr. wants you to bring him the head of King Bangalash, the great white tiger.
  kill King Bangalash##731 |goto Stranglethorn Vale 38.21,35.58 |elite
  collect Head of Bangalash##3880 |q 208 |goto Stranglethorn Vale 38.21,35.58
step
  talk Kin'weelay##2519
  turnin The Fate of Yenniku##588 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  accept The Singing Crystals##589 |goto Stranglethorn Vale 32.27,27.71
step
  note Bring 3 Pulsing Blue Shards to Kin'weelay at the Grom'gol Base Camp.
  collect 3 Pulsing Blue Shard##3911 |q 589 |goto Stranglethorn Vale 43.39,47.83 |tip {dropsfrom}Ironjaw Basilisk
step
  talk Fleet Master Seahorn##2487
  turnin The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01
step
  talk Hemet Nesingwary Jr.##715
  turnin Big Game Hunter##208 |goto Stranglethorn Vale 35.66,10.81
step
  talk Kin'weelay##2519
  turnin The Singing Crystals##589 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  accept The Mind's Eye##591 |goto Stranglethorn Vale 32.27,27.71
step
  note Bring the Mind's Eye to Kin'weelay at the Grom'gol Base Camp.
  collect Mind's Eye##3616 |q 591 |goto Stranglethorn Vale 52.93,27.6 |tip {dropsfrom}Mai'Zoth
step
  talk Kin'weelay##2519
  turnin The Mind's Eye##591 |goto Stranglethorn Vale 32.27,27.71
step
  talk Kin'weelay##2519
  accept Saving Yenniku##592 |goto Stranglethorn Vale 32.27,27.71
step
  note Bring the Filled Soul Gem to Nimboya.
  collect Filled Soul Gem##3913 |q 592 |goto Stranglethorn Vale 32.27,27.71
step
  talk Nimboya##2497
  turnin Saving Yenniku##592 |goto Stranglethorn Vale 32.16,27.72
step
  note {travel}Feralas
  goto Feralas 74.91,42.46
]])
