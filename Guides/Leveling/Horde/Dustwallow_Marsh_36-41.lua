-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Dustwallow Marsh (36-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Arathi Highlands (34-44)",
}, [[
step
  note {fp}Shardi
  goto Dustwallow Marsh 35.56,31.88 |tip {vendor}
step
  talk Overlord Mok'Morokk##4500
  accept Overlord Mok'Morokk's Concern##1166 |goto Dustwallow Marsh 36.29,31.41
step
  talk Tharg##4502
  accept Army of the Black Dragon##1168 |goto Dustwallow Marsh 37.37,31.39
step
  talk Draz'Zilb##4501
  accept Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  talk Nazeer Bloodpike##4791
  accept Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  accept The Troll Witchdoctor##1240 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  accept Report to Zor##1262 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  accept The Black Shield##1321 |goto Dustwallow Marsh 36.42,31.88
step
  talk Balandar Brightstar##17095
  accept Twilight of the Dawn Runner##9437 |goto Dustwallow Marsh 35.86,31.74
step
  talk Krog##4926
  accept Inspecting the Ruins##11124 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  accept More than Coincidence##11200 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  accept The Grimtotem Plot##11201 |goto Dustwallow Marsh 36.42,31.88
step
  talk Nazeer Bloodpike##4791
  accept Check Up on Tabetha##11213 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  accept Help Mudsprocket##11215 |goto Dustwallow Marsh 35.21,30.66
step
  talk Draz'Zilb##4501
  accept The Hermit of Witch Hill##11225 |goto Dustwallow Marsh 37.15,33.09
step
  note Kill 9 Theramore Infiltrators, then return to Nazeer Bloodpike in Brackenwall Village.
  kill Theramore Infiltrator##4834 |q 1201 |goto Dustwallow Marsh 39.62,26.4
step
  talk Inspector Tarem##23567
  turnin Inspecting the Ruins##11124 |goto Dustwallow Marsh 29.79,47.67
step
  talk Tabetha##6546
  turnin Check Up on Tabetha##11213 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  accept Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  only Druid
  talk Tabetha##6546
  accept Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  talk Apprentice Morlann##23600
  accept Direhorn Raiders##11156 |goto Dustwallow Marsh 46.1,57.43
step
  talk Apprentice Garion##23601
  accept The Grimtotem Weapon##11169 |goto Dustwallow Marsh 46.05,57.24
step
  talk Apprentice Morlann##23600
  accept The Zeppelin Crash##11172 |goto Dustwallow Marsh 46.1,57.43
step
  talk Apprentice Garion##23601
  accept The Reagent Thief##11173 |goto Dustwallow Marsh 46.05,57.24
step
  talk Tabetha##6546
  accept Help for Mudsprocket##11211 |goto Dustwallow Marsh 46.06,57.09
step
  talk Moxie Steelgrille##23797
  turnin The Zeppelin Crash##11172 |goto Dustwallow Marsh 53.57,56.92
step
  talk Moxie Steelgrille##23797
  accept Corrosion Prevention##11174 |goto Dustwallow Marsh 53.57,56.92
step
  talk Moxie Steelgrille##23797
  accept Secure the Cargo!##11207 |goto Dustwallow Marsh 53.57,56.92
step
  note Moxie Steelgrille wants you to dissolve 10 oozes and report back to her at Beezil's Wreck.
  kill Moxie Steelgrille##23797 |q 11174 |goto Dustwallow Marsh 53.57,56.92
step
  talk Nat Pagle##12919
  accept Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.76,60.17
step
  talk Drazzit Dripvalve##23572
  turnin Help for Mudsprocket##11211 |goto Dustwallow Marsh 42.33,72.93
step
  talk Drazzit Dripvalve##23572
  turnin Help Mudsprocket##11215 |goto Dustwallow Marsh 42.33,72.93
step
  talk Brogg##23579
  accept Bloodfen Feathers##11158 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  accept Spirits of Stonemaul Hold##11159 |goto Dustwallow Marsh 41.86,73.97
step
  talk Gizzix Grimegurgle##23570
  accept Catch a Dragon by the Tail##11217 |goto Dustwallow Marsh 41.54,72.99
step
  note Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
  kill Firemane Scout##4329 |q 1168 |goto Dustwallow Marsh 43.27,66.1
step
  only Warlock
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  talk Emberstrife##10321
  accept The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  talk "Swamp Eye" Jarl##4792
  turnin The Hermit of Witch Hill##11225 |goto Dustwallow Marsh 55.44,26.27
step
  talk "Swamp Eye" Jarl##4792
  accept Marsh Frog Legs##1218 |goto Dustwallow Marsh 55.44,26.27
step
  talk Mordant Grimsby##23843
  accept What's Haunting Witch Hill?##11180 |goto Dustwallow Marsh 55.58,26.14
step
  note Balandar Brightstar in Brackenwall Village wants you to reclaim the Dawn Runner Cargo and rescue his first mate Ithania from forces of Theramore at North Point Tower.
  kill Ithania##17119 |q 9437 |goto Dustwallow Marsh 46.63,24.47
step
  talk Overlord Mok'Morokk##4500
  turnin Overlord Mok'Morokk's Concern##1166 |goto Dustwallow Marsh 36.29,31.41
step
  talk Tharg##4502
  turnin Army of the Black Dragon##1168 |goto Dustwallow Marsh 37.37,31.39
step
  talk Draz'Zilb##4501
  turnin Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  talk Mudcrush Durtfeet##4503
  turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  talk Do'gol##5087
  turnin The Black Shield##1321 |goto Dustwallow Marsh 36.53,30.79
step
  talk Nazeer Bloodpike##4791
  turnin Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  turnin More than Coincidence##11200 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  turnin The Grimtotem Plot##11201 |goto Dustwallow Marsh 36.42,31.88
step
  talk Kin'weelay##2519
  turnin The Troll Witchdoctor##1240 |goto Stranglethorn Vale 32.27,27.71 |tip {turninat}Stranglethorn Vale
step
  talk Balandar Brightstar##17095
  turnin Twilight of the Dawn Runner##9437 |goto Dustwallow Marsh 35.86,31.74
step
  talk Zor Lonetree##4047
  turnin Report to Zor##1262 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1170 |goto Dustwallow Marsh 37.15,33.09
step
  talk Nazeer Bloodpike##4791
  accept The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  talk Do'gol##5087
  accept The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk Krog##4926
  accept Seek Out Tabetha##11203 |goto Dustwallow Marsh 36.42,31.88
step
  talk Apprentice Morlann##23600
  turnin Direhorn Raiders##11156 |goto Dustwallow Marsh 46.1,57.43
step
  only Warlock
  talk Tabetha##6546
  turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  turnin Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  turnin Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  talk Apprentice Garion##23601
  turnin The Grimtotem Weapon##11169 |goto Dustwallow Marsh 46.05,57.24
step
  only Warlock
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Apprentice Garion##23601
  turnin The Reagent Thief##11173 |goto Dustwallow Marsh 46.05,57.24
step
  talk Tabetha##6546
  turnin Seek Out Tabetha##11203 |goto Dustwallow Marsh 46.06,57.09
step
  only Druid
  talk Tabetha##6546
  turnin Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Druid
  talk Tabetha##6546
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  accept Raze Direhorn Post!##11205 |goto Dustwallow Marsh 46.06,57.09
step
  note Burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post, then return to Tabetha at her farm.
  kill North Tent##23751 |q 11205 |goto Dustwallow Marsh 46.6,45.93
step
  talk Moxie Steelgrille##23797
  turnin Corrosion Prevention##11174 |goto Dustwallow Marsh 53.57,56.92
step
  talk Moxie Steelgrille##23797
  turnin Secure the Cargo!##11207 |goto Dustwallow Marsh 53.57,56.92
step
  talk Moxie Steelgrille##23797
  accept Delivery for Drazzit##11208 |goto Dustwallow Marsh 53.57,56.92
step
  talk Nat Pagle##12919
  turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.76,60.17
step
  talk Brogg##23579
  turnin Bloodfen Feathers##11158 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  turnin Spirits of Stonemaul Hold##11159 |goto Dustwallow Marsh 41.86,73.97
step
  talk Drazzit Dripvalve##23572
  turnin Delivery for Drazzit##11208 |goto Dustwallow Marsh 42.33,72.93
step
  talk Gizzix Grimegurgle##23570
  turnin Catch a Dragon by the Tail##11217 |goto Dustwallow Marsh 41.54,72.99
step
  talk Brogg##23579
  accept Banner of the Stonemaul##11160 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  accept The Essence of Enmity##11161 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  accept Challenge to the Black Flight##11162 |goto Dustwallow Marsh 41.86,73.97
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  talk Mordant Grimsby##23843
  turnin What's Haunting Witch Hill?##11180 |goto Dustwallow Marsh 55.58,26.14
step
  talk "Swamp Eye" Jarl##4792
  turnin Marsh Frog Legs##1218 |goto Dustwallow Marsh 55.44,26.27
step
  only Druid
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  talk Mordant Grimsby##23843
  accept The Witch's Bane##11181 |goto Dustwallow Marsh 55.58,26.14
step
  talk Overlord Mok'Morokk##4500
  turnin The Brood of Onyxia##1170 |goto Dustwallow Marsh 36.29,31.41
step
  talk Do'gol##5087
  turnin The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk Nazeer Bloodpike##4791
  turnin The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  talk Overlord Mok'Morokk##4500
  accept The Brood of Onyxia##1171 |goto Dustwallow Marsh 36.29,31.41
step
  talk Do'gol##5087
  accept The Black Shield##1323 |goto Dustwallow Marsh 36.53,30.79
step
  only Warlock
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  turnin Raze Direhorn Post!##11205 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  accept Justice Dispensed##11206 |goto Dustwallow Marsh 46.06,57.09
step
  talk Brogg##23579
  turnin Banner of the Stonemaul##11160 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  turnin The Essence of Enmity##11161 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  turnin Challenge to the Black Flight##11162 |goto Dustwallow Marsh 41.86,73.97
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept Ascension...##6601 |goto Dustwallow Marsh 56.66,87.72
step
  talk Mordant Grimsby##23843
  turnin The Witch's Bane##11181 |goto Dustwallow Marsh 55.58,26.14
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  talk Rokaro##10182
  turnin Ascension...##6601 |goto Feralas 46.39,18.24 |tip {turninat}Feralas
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  talk Mordant Grimsby##23843
  accept Cleansing Witch Hill##11183 |goto Dustwallow Marsh 55.58,26.14
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1171 |goto Dustwallow Marsh 37.15,33.09
step
  talk Krog##4926
  turnin The Black Shield##1323 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  turnin Justice Dispensed##11206 |goto Dustwallow Marsh 36.42,31.88
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  talk Krog##4926
  accept The Black Shield##1276 |goto Dustwallow Marsh 36.42,31.88
step
  only Warlock
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  note Draz'Zilb in Brackenwall Village wants you to destroy 5 Eggs of Onyxia.
  collect Egg of Onyxia##20359 |q 1172 |goto Dustwallow Marsh 53.56,75.96
step
  talk Mosarn##4943
  turnin The Black Shield##1276 |goto Thunder Bluff 54.01,80.77 |tip {turninat}Thunder Bluff
step
  talk Mordant Grimsby##23843
  turnin Cleansing Witch Hill##11183 |goto Dustwallow Marsh 55.58,26.14
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  only Warlock
  talk Tabetha##6546
  turnin Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  turnin Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  note {travel}Arathi Highlands
  goto Arathi Highlands 74.24,33.92
]])
