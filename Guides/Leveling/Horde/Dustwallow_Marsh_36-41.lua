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
  note Overlord Mok'Morokk in Brackenwall Village wants you to retrieve his grog, snuff and strongbox in Dustwallow Swamp.
  collect Mok'Morokk's Snuff##5834 |q 1166 |goto Dustwallow Marsh 44.53,66.04
step
  talk Tharg##4502
  accept Army of the Black Dragon##1168 |goto Dustwallow Marsh 37.37,31.39
step
  talk Draz'Zilb##4501
  accept Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  note Draz'Zilb in Brackenwall Village would like you to bring him 7 Searing Tongues and 7 Searing Hearts.
  collect Searing Tongue##5840 |q 1169 |goto Dustwallow Marsh 45.79,72.13 |tip {dropsfrom}Searing Hatchling, Searing Whelp
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  note Mudcrush Durtfeet in northern Dustwallow wants 8 Mirefin Heads.
  collect Mirefin Head##5847 |q 1177 |goto Dustwallow Marsh 57.44,15.53 |tip {dropsfrom}Mirefin Puddlejumper, Mirefin Murloc, Mirefin Warrior
step
  talk Nazeer Bloodpike##4791
  accept Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  accept Report to Zor##1262 |goto Dustwallow Marsh 35.21,30.66
step
  talk Balandar Brightstar##17095
  accept Twilight of the Dawn Runner##9437 |goto Dustwallow Marsh 35.86,31.74
step
  talk Krog##4926
  accept Inspecting the Ruins##11124 |goto Dustwallow Marsh 36.42,31.88
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
  talk Sage Truthseeker##3978
  accept Compendium of the Fallen##1049 |goto Thunder Bluff 34.4,46.87
step
  note Retrieve the Compendium of the Fallen from the Monastery in Tirisfal Glades and return to Sage Truthseeker in Thunder Bluff.
  collect Compendium of the Fallen##5535 |q 1049 |goto Thunder Bluff 34.4,46.87
step
  click Black Shield##20992
  accept The Black Shield##1251 |goto Dustwallow Marsh 29.63,48.62
step
  click Suspicious Hoofprint##187273
  accept Suspicious Hoofprints##1268 |goto Dustwallow Marsh 29.7,47.64
step
  click Theramore Guard Badge##21042
  accept Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 29.83,48.24
step
  talk Tabetha##6546
  turnin Check Up on Tabetha##11213 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Bring 1 Jade and the Bolt Charged Bramble to Tabetha in Dustwallow Marsh.
  collect 1 Jade##1529 |q 1948 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Rock Elemental, Harvest Reaper
step
  only Mage
  talk Tabetha##6546
  accept Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 79.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  talk Tabetha##6546
  accept Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  note Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh.
  collect Tiara of the Deep##9234 |q 2846 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Hydromancer Velratha
step
  only Warlock
  talk Tabetha##6546
  accept Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 4961 |elite
step
  talk Apprentice Morlann##23600
  accept Direhorn Raiders##11156 |goto Dustwallow Marsh 46.1,57.43
step
  talk Apprentice Garion##23601
  accept The Grimtotem Weapon##11169 |goto Dustwallow Marsh 46.05,57.24
step
  note Apprentice Garion at Tabetha's Farm wants you to test the Captured Totem on 10 Mottled Drywallow Crocolisks or Drywallow Daggermaws.
  kill Captured Totem##23811 |q 11169
step
  talk Apprentice Morlann##23600
  accept The Zeppelin Crash##11172 |goto Dustwallow Marsh 46.1,57.43
step
  talk Apprentice Garion##23601
  accept The Reagent Thief##11173 |goto Dustwallow Marsh 46.05,57.24
step
  note Bring 6 vials of Marsh Venom to Apprentice Garion at Tabetha's Farm.
  collect 6 Marsh Venom##33103 |q 11173 |goto Dustwallow Marsh 41.06,53.62 |tip {dropsfrom}Noxious Shredder, Darkfang Creeper
step
  kill Apothecary Cylla##23881 |goto Dustwallow Marsh 47.22,46.59 |tip Loot the quest item here — it starts the quest.
  accept Signs of Treachery?##11186 |goto Dustwallow Marsh 47.22,46.59
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
  note Moxie Steelgrille at Beezil's Wreck wants you to recover 8 pieces of Zeppelin Cargo.
  collect Zeppelin Cargo##33163 |q 11207 |goto Dustwallow Marsh 51.69,55.91
step
  note Moxie Steelgrille wants you to dissolve 10 oozes and report back to her at Beezil's Wreck.
  kill Moxie Steelgrille##23797 |q 11174 |goto Dustwallow Marsh 53.57,56.92
step
  talk Nat Pagle##12919
  accept Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.76,60.17
step
  note Nat Pagle wants you to catch the following fish:
  collect Feralas Ahi##16967 |q 6607 |goto Dustwallow Marsh 58.76,60.17
step
  talk Drazzit Dripvalve##23572
  turnin Help for Mudsprocket##11211 |goto Dustwallow Marsh 42.33,72.93
step
  talk Drazzit Dripvalve##23572
  turnin Help Mudsprocket##11215 |goto Dustwallow Marsh 42.33,72.93
step
  talk Sharlindra##2227
  accept The Crown of Will##495 |goto Undercity 57.63,93.8
step
  click Musty Scroll##2555
  accept Cortello's Riddle##626 |goto Dustwallow Marsh 31.1,66.14
step
  only Mage
  talk Jennea Cannon##5497
  accept Journey to the Marsh##1947 |goto Stormwind City 38.62,79.3
step
  talk Warlord Gorchuk##15700
  accept Fifteen Signets for War Supplies##8853 |goto Orgrimmar 34.92,74.89
step
  collect Fifteen Signets for War Supplies##21438 |q 8853 |goto Orgrimmar 34.92,74.89
step
  talk Brogg##23579
  accept Bloodfen Feathers##11158 |goto Dustwallow Marsh 41.86,73.97
step
  note Bring 5 Bloodfen Feathers to Brogg at Mudsprocket.
  collect 5 Bloodfen Feather##33085 |q 11158 |goto Dustwallow Marsh 33.57,66.81 |tip {dropsfrom}Bloodfen Razormaw, Bloodfen Lashtail, Goreclaw the Ravenous
step
  talk Brogg##23579
  accept Spirits of Stonemaul Hold##11159 |goto Dustwallow Marsh 41.86,73.97
step
  note Brogg, at Mudsprocket, wants you to put 10 Stonemaul Spirits to rest.
  kill Stonemaul Spirit##23786 |q 11159
step
  click Wanted Poster##186426
  accept WANTED: Goreclaw the Ravenous##11184 |goto Dustwallow Marsh 41.75,73.13
step
  talk Gizzix Grimegurgle##23570
  accept Catch a Dragon by the Tail##11217 |goto Dustwallow Marsh 41.54,72.99
step
  note Gizzix Grimegurgle at Mudsprocket wants you to bring him 8 Wyrmtail stalks.
  collect Wyrmtail##33175 |q 11217 |goto Dustwallow Marsh 46.45,75.86 |tip {dropsfrom}Searing Whelp, Drywallow Daggermaw, Wyrmtail
step
  note Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
  kill Firemane Scout##4329 |q 1168 |goto Dustwallow Marsh 43.27,66.1
step
  note Kill Goreclaw the Ravenous and report to Drazzit Dripvalve at Mudsprocket.
  kill Goreclaw the Ravenous##23873 |q 11184 |goto Dustwallow Marsh 32.17,65.66
step
  talk "Swamp Eye" Jarl##4792
  turnin The Hermit of Witch Hill##11225 |goto Dustwallow Marsh 55.44,26.27
step
  talk Melisara##2278
  turnin The Crown of Will##495 |goto Hillsbrad Foothills 62.63,20.65 |tip {turninat}Hillsbrad Foothills
step
  talk "Swamp Eye" Jarl##4792
  accept Marsh Frog Legs##1218 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 10 Marsh Frog Legs to "Swamp Eye" Jarl in Dustwallow Marsh.
  collect 10 Marsh Frog Leg##33202 |q 1218 |goto Dustwallow Marsh 56.18,27.25 |tip {dropsfrom}Giant Marsh Frog
step
  click Loose Dirt##20985
  accept The Lost Report##1238 |goto Dustwallow Marsh 55.44,25.92
step
  talk Mordant Grimsby##23843
  accept What's Haunting Witch Hill?##11180 |goto Dustwallow Marsh 55.58,26.14
step
  note Mordant Grimsby at Swamplight Manor wants you to gather information from 10 Risen Husks or Risen Spirits.
  kill Restless Apparition##23861 |q 11180
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
  talk Nazeer Bloodpike##4791
  turnin Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  turnin Signs of Treachery?##11186 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  turnin The Lost Report##1238 |goto Dustwallow Marsh 35.21,30.66
step
  talk Balandar Brightstar##17095
  turnin Twilight of the Dawn Runner##9437 |goto Dustwallow Marsh 35.86,31.74
step
  talk Krog##4926
  turnin The Black Shield##1251 |goto Dustwallow Marsh 36.42,31.88
step
  talk Zor Lonetree##4047
  turnin Report to Zor##1262 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  talk Krog##4926
  turnin Suspicious Hoofprints##1268 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  turnin Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 36.42,31.88
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1170 |goto Dustwallow Marsh 37.15,33.09
step
  talk Nazeer Bloodpike##4791
  accept The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  note Bring the Captain's Documents to Nazeer Bloodpike in Brackenwall Village.
  collect Captain's Documents##5882 |q 1202 |goto Dustwallow Marsh 71.53,51.19 |tip {dropsfrom}Captain's Footlocker
step
  talk Krog##4926
  accept The Black Shield##1321 |goto Dustwallow Marsh 36.42,31.88
step
  talk Sage Truthseeker##3978
  turnin Compendium of the Fallen##1049 |goto Thunder Bluff 34.4,46.87 |tip {turninat}Thunder Bluff
step
  talk Apprentice Morlann##23600
  turnin Direhorn Raiders##11156 |goto Dustwallow Marsh 46.1,57.43
step
  only Mage
  talk Tabetha##6546
  turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  turnin Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  turnin Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
step
  talk Apprentice Garion##23601
  turnin The Grimtotem Weapon##11169 |goto Dustwallow Marsh 46.05,57.24
step
  only Mage
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Apprentice Garion##23601
  turnin The Reagent Thief##11173 |goto Dustwallow Marsh 46.05,57.24
step
  only Warlock
  talk Tabetha##6546
  turnin Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |elite
step
  only Warlock
  talk Tabetha##6546
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
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
  only Mage
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  talk Nat Pagle##12919
  turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.76,60.17
step
  turnin Cortello's Riddle##626 |goto The Hinterlands 80.79,46.82 |tip {turninat}The Hinterlands
step
  talk Brogg##23579
  turnin Bloodfen Feathers##11158 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  turnin Spirits of Stonemaul Hold##11159 |goto Dustwallow Marsh 41.86,73.97
step
  talk Drazzit Dripvalve##23572
  turnin WANTED: Goreclaw the Ravenous##11184 |goto Dustwallow Marsh 42.33,72.93
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
  note Retrieve the Stonemaul Banner and bring it to Brogg at Mudsprocket.
  collect Stonemaul Banner##33086 |q 11160 |goto Dustwallow Marsh 53.32,73.93 |tip {dropsfrom}Firemane Scalebane, Stonemaul Clan Banner
step
  talk Brogg##23579
  accept The Essence of Enmity##11161 |goto Dustwallow Marsh 41.86,73.97
step
  note Bring 10 Black Dragonkin Essences to Brogg at Mudsprocket.
  collect 10 Black Dragonkin Essence##33087 |q 11161 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  accept Challenge to the Black Flight##11162 |goto Dustwallow Marsh 41.86,73.97
step
  note Plant the Stonemaul Banner near the entrance to Onyxia's Lair, then return to Brogg at Mudsprocket.
  kill Smolderwing##23789 |q 11162
step
  talk Mordant Grimsby##23843
  turnin What's Haunting Witch Hill?##11180 |goto Dustwallow Marsh 55.58,26.14
step
  talk "Swamp Eye" Jarl##4792
  turnin Marsh Frog Legs##1218 |goto Dustwallow Marsh 55.44,26.27
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 20 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
  collect 20 Unpopped Darkmist Eye##5884 |q 1206 |goto Dustwallow Marsh 32.46,21.9 |tip {dropsfrom}Darkmist Spider, Darkmist Hatchling, Darkmist Recluse
step
  click Loose Dirt##20985
  accept The Severed Head##1239 |goto Dustwallow Marsh 55.44,25.92
step
  talk Mordant Grimsby##23843
  accept The Witch's Bane##11181 |goto Dustwallow Marsh 55.58,26.14
step
  note Bring 9 sprigs of Witchbane to Mordant Grimsby at Swamplight Manor.
  collect 9 Witchbane##33112 |q 11181 |goto Dustwallow Marsh 55.33,26.3 |tip {dropsfrom}Risen Spirit, Risen Husk, Witchbane
step
  talk Overlord Mok'Morokk##4500
  turnin The Brood of Onyxia##1170 |goto Dustwallow Marsh 36.29,31.41
step
  talk Do'gol##5087
  turnin The Black Shield##1321 |goto Dustwallow Marsh 36.53,30.79
step
  talk Nazeer Bloodpike##4791
  turnin The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  turnin The Severed Head##1239 |goto Dustwallow Marsh 35.21,30.66
step
  talk Overlord Mok'Morokk##4500
  accept The Brood of Onyxia##1171 |goto Dustwallow Marsh 36.29,31.41
step
  talk Nazeer Bloodpike##4791
  accept The Troll Witchdoctor##1240 |goto Dustwallow Marsh 35.21,30.66
step
  talk Do'gol##5087
  accept The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  note Acquire 5 Acidic Venom Sacs for Do'gol in Brackenwall Village.
  collect 5 Acidic Venom Sac##5959 |q 1322 |goto Dustwallow Marsh 32.46,21.9 |tip {dropsfrom}Darkmist Spider, Darkmist Recluse, Darkmist Silkspinner
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
  talk Brogg##23579
  turnin Banner of the Stonemaul##11160 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  turnin Challenge to the Black Flight##11162 |goto Dustwallow Marsh 41.86,73.97
step
  talk Brogg##23579
  turnin The Essence of Enmity##11161 |goto Dustwallow Marsh 41.86,73.97
step
  talk Mordant Grimsby##23843
  turnin The Witch's Bane##11181 |goto Dustwallow Marsh 55.58,26.14
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring Razorspine's Sword to "Swamp Eye" Jarl at Swamplight Manor.
  collect Razorspine's Sword##33110 |q 1203 |goto Dustwallow Marsh 57.78,19.74 |tip {dropsfrom}Razorspine
step
  talk Mordant Grimsby##23843
  accept Cleansing Witch Hill##11183 |goto Dustwallow Marsh 55.58,26.14
step
  note Mordant Grimsby at Swamplight Manor wants you to plant the torch at the end of the dock and defeat anything that appears.
  kill Zelfrax##23864 |q 11183
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1171 |goto Dustwallow Marsh 37.15,33.09
step
  talk Do'gol##5087
  turnin The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk Kin'weelay##2519
  turnin The Troll Witchdoctor##1240 |goto Stranglethorn Vale 32.27,27.71 |tip {turninat}Stranglethorn Vale
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  talk Do'gol##5087
  accept The Black Shield##1323 |goto Dustwallow Marsh 36.53,30.79
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
  kill Mana Surge##6550 |q 1957
step
  note Draz'Zilb in Brackenwall Village wants you to destroy 5 Eggs of Onyxia.
  collect Egg of Onyxia##20359 |q 1172 |goto Dustwallow Marsh 53.56,75.96
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
  talk Krog##4926
  turnin The Black Shield##1323 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  accept The Black Shield##1276 |goto Dustwallow Marsh 36.42,31.88
step
  only Mage
  talk Tabetha##6546
  turnin Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  talk Mosarn##4943
  turnin The Black Shield##1276 |goto Thunder Bluff 54.01,80.77 |tip {turninat}Thunder Bluff
step
  talk Mosarn##4943
  accept Return to Krog##11204 |goto Thunder Bluff 54.01,80.77
step
  talk Krog##4926
  turnin Return to Krog##11204 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  accept More than Coincidence##11200 |goto Dustwallow Marsh 36.42,31.88
step
  note Krog at Brackenwall Village wants you to bring him 7 Blackhoof Armaments.
  collect Blackhoof Armaments##33071 |q 11200 |goto Dustwallow Marsh 44.59,26.34 |tip {dropsfrom}Drywallow Crocolisk, Withervine Creeper, Grimtotem Breaker
step
  talk Krog##4926
  accept The Grimtotem Plot##11201 |goto Dustwallow Marsh 36.42,31.88
step
  note Bring the Grimtotem Battle Plan to Krog at Brackenwall Village.
  collect Grimtotem Battle Plan##33051 |q 11201 |goto Dustwallow Marsh 36.42,31.88
step
  only Mage
  talk Tabetha##6546
  turnin Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  talk Krog##4926
  turnin More than Coincidence##11200 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  turnin The Grimtotem Plot##11201 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  accept Seek Out Tabetha##11203 |goto Dustwallow Marsh 36.42,31.88
step
  talk Tabetha##6546
  turnin Seek Out Tabetha##11203 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  accept Raze Direhorn Post!##11205 |goto Dustwallow Marsh 46.06,57.09
step
  note Burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post, then return to Tabetha at her farm.
  kill North Tent##23751 |q 11205 |goto Dustwallow Marsh 46.6,45.93
step
  talk Tabetha##6546
  turnin Raze Direhorn Post!##11205 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  accept Justice Dispensed##11206 |goto Dustwallow Marsh 46.06,57.09
step
  talk Krog##4926
  turnin Justice Dispensed##11206 |goto Dustwallow Marsh 36.42,31.88
step
  note {travel}Arathi Highlands
  goto Arathi Highlands 74.24,33.92
]])
