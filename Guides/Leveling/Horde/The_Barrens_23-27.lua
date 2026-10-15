-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Barrens (23-27)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (22-28)",
	rev = "5e9c24e4",
}, [[
step
  ding 22
step
  talk Korran##3428
  accept Egg Hunt##868 |goto The Barrens 51.07,29.63
step
  only completed(1062)
  talk Seereth Stonebreak##4049
  accept Shredding Machines##1068 |goto The Barrens 35.26,27.88
step
  only Rogue completed(2458) level>=24
  talk Taskmaster Fizzule##7233
  accept Mission: Possible But Not Probable##2478 |goto The Barrens 55.44,5.56
step
  only Rogue completed(2458) haveq(2478)
  note Steal Silixiz's Tower Key from Foreman Silixiz, then kill two Mutated Venture Co. Drones, two Venture Co. Patrollers, and two Venture Co. Lookouts.
  kill Mutated Venture Co. Drone##7310 |q 2478 |goto The Barrens 54.72,5.75
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
  note Bring the Hoof of Lakota'mani to Jorn at Camp Taurajo.
  talk Jorn Skyseer##3387
  turnin Lakota'mani##883 |goto The Barrens 44.86,59.14
step
  note Bring Owatanka's Tailspike to Jorn at Camp Taurajo.
  talk Jorn Skyseer##3387
  turnin Owatanka##884 |goto The Barrens 44.86,59.14
step
  only completed(5052)
  talk Mangletooth##3430
  accept Betrayal from Within##879 |goto The Barrens 44.55,59.26
step
  only Shaman
  note Find Brine in Southern Barrens.
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
  click Burned-Out Remains##415106
  accept Stepping Stones##79192 |goto The Barrens 46.41,73.96
step
  kill Washte Pawne##3472 |goto The Barrens 44.81,78.88 |tip Loot the quest item here — it starts the quest.
  accept Washte Pawne##885 |goto The Barrens 44.81,78.88
step
  note Bring 12 Silithid Eggs and the Digging Claw to Korran at the Crossroads.
  collect 12 Silithid Egg##5058 |q 868 |goto The Barrens 45.1,72.18 |tip {dropsfrom}Silithid Mound
step
  only completed(5052)
  note Kill Nak, Kuz, and Lok Orcbane and bring their skulls to Mangletooth at Camp Taurajo in the Barrens.
  collect Kuz's Skull##5074 |q 879/1 |goto The Barrens 45.12,80.07 |tip {dropsfrom}Kuz
  collect Nak's Skull##5073 |q 879/2 |goto The Barrens 43.75,83.26 |tip {dropsfrom}Nak
  collect Lok's Skull##5072 |q 879 |goto The Barrens 40.15,80.54 |tip {dropsfrom}Lok Orcbane
step
  note Bring a Razormane Backstabber, a Charred Razormane Wand and a Razormane War Shield to Tatternack Steelforge at Camp Taurajo in the Barrens.
  collect Razormane War Shield##5094 |q 893/3 |goto The Barrens 41.83,80.8 |tip {dropsfrom}Razormane Warfrenzy
  collect Charred Razormane Wand##5092 |q 893/2 |goto The Barrens 42.05,81.53 |tip {dropsfrom}Razormane Seer
  collect Razormane Backstabber##5093 |q 893 |goto The Barrens 43.97,80.51 |tip {dropsfrom}Razormane Pathfinder, Razormane Stalker
step
  only Shaman
  note Fill the Empty Brown Waterskin at the watering hole below Brine's hut and return it to her in the Barrens.
  collect Filled Brown Waterskin##7769 |q 1535 |goto The Barrens 44.28,76.75 |tip {dropsfrom}Quilboar Watering Hole
step
  note Slay Alliance soldiers encroaching into the Barrens at the border to Dustwallow Marsh, then return to Grunt Logmar at Camp Taurajo.
  kill Encroaching Soldier##268622 |q 97250/1 |goto The Barrens 48.77,77.21
  kill Outraged Pillager##268623 |q 97250 |goto The Barrens 48.86,77.29
step
  only Shaman
  talk Brine##5899
  turnin Call of Water##1535 |goto The Barrens 43.42,77.41
step
  note Gann Stonespire wants you to kill 15 Bael'dun Excavators and 5 Bael'dun Foremen.
  kill Bael'dun Excavator##3374 |q 843 |goto The Barrens 47.61,85.33
step
  talk Gann Stonespire##3341
  turnin Gann's Reclamation##843 |goto The Barrens 45.89,77
step
  only completed(5052)
  talk Mangletooth##3430
  turnin Betrayal from Within##879 |goto The Barrens 44.55,59.26
step
  note Bring Washte Pawne's Feather to Jorn Skyseer at Camp Taurajo.
  talk Jorn Skyseer##3387
  turnin Washte Pawne##885 |goto The Barrens 44.86,59.14
step
  talk Tatternack Steelforge##3433
  turnin Weapons of Choice##893 |goto The Barrens 45.1,57.68
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
  accept Revenge of Gann##846 |goto The Barrens 45.89,77
step
  note Gann Stonespire wants you to bring him 6 vials of Nitroglycerin, 6 bundles of Wood Pulp, and 6 samples of Sodium Nitrate.
  collect Nitroglycerin##5017 |q 846 |goto The Barrens 49.18,84.13 |tip {dropsfrom}Bael'dun Soldier, Bael'dun Rifleman, Bael'dun Officer
step
  talk Gann Stonespire##3341
  turnin Revenge of Gann##846 |goto The Barrens 45.89,77
step
  talk Gann Stonespire##3341
  accept Revenge of Gann##849 |goto The Barrens 45.89,77
step
  note Destroy the flying machine at Bael Modan and return to Gann Stonespire.
  click Bael Modan Flying Machine##3644 |q 849 |goto The Barrens 46.97,85.63
step
  talk Gann Stonespire##3341
  turnin Revenge of Gann##849 |goto The Barrens 45.89,77
step
  only completed(913)
  note Speak with Mahren Skyseer.
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
  only completed(1094)
  talk Sputtervalve##3442
  accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
  talk Korran##3428
  turnin Egg Hunt##868 |goto The Barrens 51.07,29.63
step
  only completed(5052)
  note Bring Lok's Skull to Thork at the Crossroads in the Barrens.
  talk Thork##3429
  turnin Betrayal from Within##906 |goto The Barrens 51.5,30.87
step
  only completed(6981)
  talk Falla Sagewind##8418
  accept In Nightmares##3369 |goto The Barrens 48.18,32.78
step
  only level>=25
  talk Tatternack Steelforge##3433
  accept A New Ore Sample##1153 |goto The Barrens 45.1,57.68
step
  talk Jorn Skyseer##3387
  accept Melor Sends Word##1130 |goto The Barrens 44.86,59.14
step
  talk Feegly the Exiled##3421
  accept The Tear of the Moons##857 |goto The Barrens 48.97,86.31
step
  note Feegly the Exiled wants you to retrieve for him the Tear of the Moons.
  collect Tear of the Moons##5038 |q 857 |goto The Barrens 49.13,84.25 |tip {dropsfrom}General Twinbraid's Strongbox
step
  talk Feegly the Exiled##3421
  turnin The Tear of the Moons##857 |goto The Barrens 48.97,86.31
step
  note You tear the note from the plank and read the scrawled writing.
  turnin Stepping Stones##79192 |goto Stonetalon Mountains 40.76,52.57 |tip {turninat}Stonetalon Mountains
step
  only completed(1094)
  note Bring the new orders to Ziz Fizziks in the Stonetalon Mountains.
  talk Ziz Fizziks##4201
  turnin Further Instructions##1095 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  only completed(1094)
  talk Ziz Fizziks##4201
  accept Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6
step
  only completed(1062)
  note Kill the shredders XT:4 and XT:9, then return to Seereth Stonebreak at the border of the Stonetalon Mountains and the Barrens.
  kill XT:9##4074 |q 1068/2 |goto Stonetalon Mountains 64.09,56.62
  kill XT:4##4073 |q 1068 |goto Stonetalon Mountains 67.2,46.69
step
  only completed(1094)
  note Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.
  collect Gerenzo's Mechanical Arm##5736 |q 1096 |goto Stonetalon Mountains 64.49,40.25 |tip {dropsfrom}Gerenzo Wrenchwhistle
step
  only completed(1094)
  talk Ziz Fizziks##4201
  turnin Gerenzo Wrenchwhistle##1096 |goto Stonetalon Mountains 58.99,62.6 |tip {turninat}Stonetalon Mountains
step
  only completed(1062)
  talk Seereth Stonebreak##4049
  turnin Shredding Machines##1068 |goto The Barrens 35.26,27.88
step
  only Rogue completed(2458) haveq(2478)
  talk Shenthul##3401
  turnin Mission: Possible But Not Probable##2478 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  only not Orc not Tauren not Skyborne Mage completed(1944) level>=26
  talk Deino##5885
  accept Laughing Sisters##1945 |goto Orgrimmar 38.45,86.13
step
  only not Orc not Tauren not Skyborne Mage completed(1944) haveq(1945)
  note Bring 12 Laughing Sister's Hairs to Kil'hala at the Crossroads.
  collect 12 Laughing Sister's Hair##7270 |q 1945 |goto Ashenvale 59.79,55.37 |tip {dropsfrom}Laughing Sister
step
  only not Orc not Tauren not Skyborne Mage completed(1944) haveq(1945)
  talk Kil'hala##3484
  turnin Laughing Sisters##1945 |goto The Barrens 52.2,31.7
step
  only not Orc not Tauren not Skyborne Mage completed(1944) completed(1945) level>=26
  talk Kil'hala##3484
  accept Nether-lace Garment##1946 |goto The Barrens 52.2,31.7
step
  only not Orc not Tauren not Skyborne Mage completed(1944) haveq(1946)
  talk Kil'hala##3484
  turnin Nether-lace Garment##1946 |goto The Barrens 52.2,31.7
step
  only haveq(1153)
  note Find an Unrefined Ore Sample on a Gravelsnout Digger or Surveyor and bring it to Tatternack Steelforge at Camp Taurajo in the Barrens.
  collect Unrefined Ore Sample##5842 |q 1153 |goto Thousand Needles 11.85,21.31 |tip {dropsfrom}Gravelsnout Digger, Gravelsnout Surveyor, Gibblesnik
step
  only haveq(1153)
  talk Tatternack Steelforge##3433
  turnin A New Ore Sample##1153 |goto The Barrens 45.1,57.68
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 61.44,19.06
]])
