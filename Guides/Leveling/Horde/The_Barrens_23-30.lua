-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Barrens (23-30)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Thousand Needles (27-35)",
}, [[
step
  talk Korran##3428
  accept Egg Hunt##868 |goto The Barrens 51.07,29.63
step
  only completed(6981)
  talk Falla Sagewind##8418
  accept In Nightmares##3369 |goto The Barrens 48.18,32.78
step
  only Shaman
  talk Islen Waterseer##5901
  accept Call of Water##1530 |goto The Barrens 65.83,43.78
step
  kill Lakota'mani##3474 |goto The Barrens 47.41,51.29 |tip Loot the quest item here — it starts the quest.
  accept Lakota'mani##883 |goto The Barrens 47.41,51.29
step
  note {fp}Omusa Thunderhorn
  goto The Barrens 44.45,59.15 |tip {vendor}
step
  talk Grunt Logmar##5911
  accept Wrongly Blamed, Justly Corrected##97250 |goto The Barrens 44.62,59.27
step
  kill Owatanka##3473 |goto The Barrens 49.2,61.6 |tip Loot the quest item here — it starts the quest.
  accept Owatanka##884 |goto The Barrens 49.2,61.6
step
  talk Tatternack Steelforge##3433
  accept Weapons of Choice##893 |goto The Barrens 45.1,57.68
step
  only completed(5052)
  talk Mangletooth##3430
  accept Betrayal from Within##879 |goto The Barrens 44.55,59.26
step
  talk Jorn Skyseer##3387
  turnin Lakota'mani##883 |goto The Barrens 44.86,59.14
step
  talk Jorn Skyseer##3387
  turnin Owatanka##884 |goto The Barrens 44.86,59.14
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1530 |goto The Barrens 43.42,77.41
step
  only Shaman
  talk Brine##5899
  accept Call of Water##1535 |goto The Barrens 43.42,77.41
step
  talk Gann Stonespire##3341
  accept Gann's Reclamation##843 |goto The Barrens 45.89,77
step
  kill Silithid Harvester##3253 |goto The Barrens 42,70 |tip Loot the quest item here — it starts the quest.
  accept The Harvester##897 |goto The Barrens 42,70
step
  click Burned-Out Remains##415106
  accept Stepping Stones##79192 |goto The Barrens 46.34,73.96
step
  kill Washte Pawne##3472 |goto The Barrens 44.81,78.88 |tip Loot the quest item here — it starts the quest.
  accept Washte Pawne##885 |goto The Barrens 44.81,78.88
step
  kill Aean Swiftriver##5797 |goto The Barrens 46,70 |elite |tip Loot the quest item here — it starts the quest.
  accept The Runed Scroll##3513 |goto The Barrens 46,70
step
  note Bring 12 Silithid Eggs and the Digging Claw to Korran at the Crossroads.
  collect 12 Silithid Egg##5058 |q 868 |goto The Barrens 45.1,72.18 |tip {dropsfrom}Silithid Mound
step
  only completed(5052)
  note Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
  collect Kuz's Skull##5074 |q 879 |goto The Barrens 45.12,80.07 |tip {dropsfrom}Kuz
step
  note Bring a Razormane Backstabber, a Charred Razormane Wand and a Razormane War Shield to Tatternack Steelforge at Camp Taurajo in the Barrens.
  collect Razormane Backstabber##5093 |q 893 |goto The Barrens 43.97,80.51 |tip {dropsfrom}Razormane Pathfinder, Razormane Stalker
step
  only Shaman
  note Fill the Empty Brown Waterskin at the watering hole below Brine's hut and return it to her in the Barrens.
  collect Filled Brown Waterskin##7769 |q 1535 |goto The Barrens 44.28,76.75 |tip {dropsfrom}Quilboar Watering Hole
step
  note Slay Alliance soldiers encroaching into the Barrens at the border to Dustwallow Marsh, then return to Grunt Logmar at Camp Taurajo.
  kill Encroaching Soldier##268622 |q 97250 |goto The Barrens 48.7,77.49
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1535 |goto The Barrens 43.42,77.41
step
  note Gann Stonespire wants you to kill 15 Bael'dun Excavators and 5 Bael'dun Foremen.
  talk Bael'dun Excavator##3374 |q 843 |goto The Barrens 47.61,85.33
step
  only completed(1062)
  talk Seereth Stonebreak##4049
  accept Shredding Machines##1068 |goto The Barrens 35.26,27.88
step
  talk Kadrak##8582
  turnin The Runed Scroll##3513 |goto The Barrens 48.12,5.42
step
  only Rogue completed(2458)
  talk Taskmaster Fizzule##7233
  accept Mission: Possible But Not Probable##2478 |goto The Barrens 55.44,5.56
step
  only Rogue completed(2458)
  note Steal Silixiz's Tower Key from Foreman Silixiz, then kill two Mutated Venture Co. Drones, two Venture Co. Patrollers, and two Venture Co. Lookouts.
  kill Mutated Venture Co. Drone##7310 |q 2478 |goto The Barrens 54.72,5.75
step
  talk Korran##3428
  turnin Egg Hunt##868 |goto The Barrens 51.07,29.63
step
  only completed(5052)
  talk Mangletooth##3430
  turnin Betrayal from Within##879 |goto The Barrens 44.55,59.26
step
  talk Jorn Skyseer##3387
  turnin Washte Pawne##885 |goto The Barrens 44.86,59.14
step
  talk Tatternack Steelforge##3433
  turnin Weapons of Choice##893 |goto The Barrens 45.1,57.68
step
  talk Jorn Skyseer##3387
  turnin The Harvester##897 |goto The Barrens 44.86,59.14
step
  talk Grunt Logmar##5911
  turnin Wrongly Blamed, Justly Corrected##97250 |goto The Barrens 44.62,59.27
step
  only completed(5052)
  talk Mangletooth##3430
  accept Betrayal from Within##906 |goto The Barrens 44.55,59.26
step
  only completed(913)
  talk Jorn Skyseer##3387
  accept Mahren Skyseer##874 |goto The Barrens 44.86,59.14
step
  talk Gann Stonespire##3341
  turnin Gann's Reclamation##843 |goto The Barrens 45.89,77
step
  talk Gann Stonespire##3341
  accept Revenge of Gann##846 |goto The Barrens 45.89,77
step
  note Gann Stonespire wants you to bring him 6 vials of Nitroglycerin, 6 bundles of Wood Pulp, and 6 samples of Sodium Nitrate.
  collect Nitroglycerin##5017 |q 846 |goto The Barrens 49.18,84.13 |tip {dropsfrom}Bael'dun Soldier, Bael'dun Rifleman, Bael'dun Officer
step
  only completed(5052)
  talk Thork##3429
  turnin Betrayal from Within##906 |goto The Barrens 51.5,30.87
step
  only completed(1094)
  talk Sputtervalve##3442
  accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
  only completed(913)
  talk Mahren Skyseer##3388
  turnin Mahren Skyseer##874 |goto The Barrens 65.84,43.86
step
  only completed(913)
  talk Mahren Skyseer##3388
  accept Isha Awak##873 |goto The Barrens 65.84,43.86
step
  only completed(913)
  note Bring the Heart of Isha Awak to Mahren Skyseer.
  collect Heart of Isha Awak##5104 |q 873 |goto The Barrens 64.2,50.6 |tip {dropsfrom}Isha Awak
step
  only completed(913)
  talk Mahren Skyseer##3388
  turnin Isha Awak##873 |goto The Barrens 65.84,43.86
step
  talk Gann Stonespire##3341
  turnin Revenge of Gann##846 |goto The Barrens 45.89,77
step
  talk Gann Stonespire##3341
  accept Revenge of Gann##849 |goto The Barrens 45.89,77
step
  note Destroy the flying machine at Bael Modan and return to Gann Stonespire.
  collect Bael Modan Flying Machine##3644 |q 849 |goto The Barrens 46.97,85.63
step
  talk Gann Stonespire##3341
  turnin Revenge of Gann##849 |goto The Barrens 45.89,77
step
  only not Orc not Tauren not Skyborne Mage completed(1945)
  talk Kil'hala##3484
  accept Nether-lace Garment##1946 |goto The Barrens 52.2,31.7
step
  only not Orc not Tauren not Skyborne Mage completed(1945)
  talk Kil'hala##3484
  turnin Nether-lace Garment##1946 |goto The Barrens 52.2,31.7
step
  only Rogue completed(2458)
  talk Shenthul##3401
  turnin Mission: Possible But Not Probable##2478 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  turnin Stepping Stones##79192 |goto Stonetalon Mountains 40.79,52.61 |tip {turninat}Stonetalon Mountains
step
  only completed(6981)
  talk Arch Druid Hamuul Runetotem##5769
  turnin In Nightmares##3369 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  only completed(1094)
  talk Ziz Fizziks##4201
  turnin Further Instructions##1095 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Feegly the Exiled##3421
  accept The Tear of the Moons##857 |goto The Barrens 48.97,86.31
step
  talk Jorn Skyseer##3387
  accept Melor Sends Word##1130 |goto The Barrens 44.86,59.14
step
  only Warrior completed(1824)
  talk Thun'grim Firegaze##5878
  accept Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  talk Regthar Deathgate##3389
  accept The Kolkar of Desolace##1362 |goto The Barrens 45.34,28.41
step
  only Warrior
  talk Torm Ragetotem##3041
  accept The Islander##1718 |goto Thunder Bluff 57.24,87.37
step
  only Warlock
  talk Gan'rul Bloodeye##5875
  accept Seeking Strahad##2996 |goto Orgrimmar 48.25,45.28
step
  talk Korran##3428
  accept The Swarm Grows##1145 |goto The Barrens 51.07,29.63
step
  only Warlock not completed(4736) not completed(4738) not completed(4739) not haveq(4736) not haveq(4738) not haveq(4739)
  talk Zevrost##3326
  accept In Search of Menara Voidrender##4737 |goto Orgrimmar 48.47,45.43
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  only Warlock completed(4782)
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only completed(1062)
  note Kill the shredders XT:4 and XT:9, then return to Seereth Stonebreak at the border of the Stonetalon Mountains and the Barrens.
  kill XT:4##4073 |q 1068 |goto Stonetalon Mountains 67.2,46.69
step
  note Feegly the Exiled wants you to retrieve for him the Tear of the Moons.
  collect Tear of the Moons##5038 |q 857 |goto The Barrens 49.13,84.25 |tip {dropsfrom}General Twinbraid's Strongbox
step
  only Warrior completed(1824)
  note Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston.
  collect Smoky Iron Ingot##7126 |q 1838 |goto Stonetalon Mountains 71.76,60.29 |tip {dropsfrom}Windshear Vermin, Windshear Digger, Windshear Tunnel Rat
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626 |goto The Barrens 47.3,89.89 |elite
step
  only Warlock completed(4782)
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  collect 10 Vial of Hatefury Blood##6989 |q 4783 |goto Desolace 73.55,19.11 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
step
  only completed(1062)
  talk Seereth Stonebreak##4049
  turnin Shredding Machines##1068 |goto The Barrens 35.26,27.88
step
  talk Feegly the Exiled##3421
  turnin The Tear of the Moons##857 |goto The Barrens 48.97,86.31
step
  talk Melor Stonehoof##3441
  turnin Melor Sends Word##1130 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1824)
  talk Thun'grim Firegaze##5878
  turnin Brutal Armor##1838 |goto The Barrens 57.23,30.34
step
  talk Felgur Twocuts##5395
  turnin The Kolkar of Desolace##1362 |goto Desolace 56.19,59.57 |tip {turninat}Desolace
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Islander##1718 |goto The Barrens 68.62,49.16
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Seeking Strahad##2996 |goto The Barrens 62.63,35.5
step
  talk Belgrom Rockmaul##4485
  turnin The Swarm Grows##1145 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  only Warlock not completed(4736) not completed(4738) not completed(4739) not haveq(4736) not haveq(4738) not haveq(4739)
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4737 |goto The Barrens 62.51,35.45
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  only Warlock completed(4782)
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only completed(1094)
  talk Ziz Fizziks##4201
  accept Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  talk Tatternack Steelforge##3433
  accept A New Ore Sample##1153 |goto The Barrens 45.1,57.68
step
  talk Kadrak##8582
  accept Horde Presence##3514 |goto The Barrens 48.12,5.42
step
  only Warrior completed(1824)
  talk Thun'grim Firegaze##5878
  accept Brutal Hauberk##1848 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warlock
  talk Strahad Farsan##6251
  accept Tome of the Cabal##1801 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring Robes of the Arcana to Menara Voidrender in the Barrens.
  collect Robes of Arcana##5770 |q 1796 |goto The Barrens 62.51,35.45
step
  only completed(1094)
  note Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
  collect Gerenzo's Mechanical Arm##5736 |q 1096 |goto Stonetalon Mountains 64.49,40.25 |tip {dropsfrom}Gerenzo Wrenchwhistle
step
  note Find an Unrefined Ore Sample on a Gravelsnout Digger or Surveyor and bring it to Tatternack Steelforge at Camp Taurajo in the Barrens.
  collect Unrefined Ore Sample##5842 |q 1153 |goto Thousand Needles 11.85,21.31 |tip {dropsfrom}Gravelsnout Digger, Gravelsnout Surveyor, Gibblesnik
step
  note Kill the leader of the Talon Den, Rynthariel the Keymaster.
  talk Rynthariel the Keymaster##8518 |q 3514 |goto Stonetalon Mountains 29.71,16.91
step
  only Warrior
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  talk Big Will##6238 |q 1719 |goto The Barrens 68.61,48.72
step
  only completed(1094)
  talk Ziz Fizziks##4201
  turnin Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  talk Tatternack Steelforge##3433
  turnin A New Ore Sample##1153 |goto The Barrens 45.1,57.68
step
  talk Kadrak##8582
  turnin Horde Presence##3514 |goto The Barrens 48.12,5.42
step
  only Warrior completed(1824)
  talk Thun'grim Firegaze##5878
  turnin Brutal Hauberk##1848 |goto The Barrens 57.23,30.34
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warlock
  talk Jorah Annison##6293
  turnin Tome of the Cabal##1801 |goto Undercity 75.92,37.89 |tip {turninat}Undercity
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warrior completed(1824)
  talk Thun'grim Firegaze##5878
  accept Ula'elek and the Brutal Gauntlets##1839 |goto The Barrens 57.23,30.34
step
  only Warrior completed(1824)
  talk Thun'grim Firegaze##5878
  accept Orm Stonehoof and the Brutal Helm##1840 |goto The Barrens 57.23,30.34
step
  only Warrior completed(1824)
  talk Thun'grim Firegaze##5878
  accept Velora Nitely and the Brutal Legguards##1841 |goto The Barrens 57.23,30.34
step
  only Warrior completed(1824)
  talk Orm Stonehoof##6410
  accept Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98
step
  only Warrior completed(1824)
  note Bring a Galvanized Horn to Orm Stonehoof in Thunder Bluff.
  collect Galvanized Horn##6840 |q 1844 |goto Stonetalon Mountains 33.64,74.66 |tip {dropsfrom}Chimaera Matriarch
step
  only Warrior completed(1824)
  talk Ula'elek##6408
  turnin Ula'elek and the Brutal Gauntlets##1839 |goto Durotar 56.31,74.33 |tip {turninat}Durotar
step
  only Warrior completed(1824)
  talk Orm Stonehoof##6410
  turnin Orm Stonehoof and the Brutal Helm##1840 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1824)
  talk Velora Nitely##6411
  turnin Velora Nitely and the Brutal Legguards##1841 |goto Undercity 62.14,39.14 |tip {turninat}Undercity
step
  only Warrior completed(1824)
  talk Orm Stonehoof##6410
  turnin Chimaeric Horn##1844 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  note {travel}Thousand Needles
  goto Thousand Needles 32.24,22.17
]])
