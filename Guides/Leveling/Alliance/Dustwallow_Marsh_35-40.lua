-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dustwallow Marsh (35-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Arathi Highlands (35-44)",
}, [[
step
  note {fp}Baldruc
  goto Dustwallow Marsh 67.48,51.3 |tip {vendor}
step
  talk "Swamp Eye" Jarl##4792
  accept Marsh Frog Legs##1218 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 10 Marsh Frog Legs to "Swamp Eye" Jarl in Dustwallow Marsh.
  collect 10 Marsh Frog Leg##33202 |q 1218 |goto Dustwallow Marsh 56.18,27.25 |tip {dropsfrom}Giant Marsh Frog
step
  talk Mordant Grimsby##23843
  accept What's Haunting Witch Hill?##11180 |goto Dustwallow Marsh 55.58,26.14
step
  note Mordant Grimsby at Swamplight Manor wants you to gather information from 10 Risen Husks or Risen Spirits.
  kill Restless Apparition##23861 |q 11180
step
  talk Sergeant Lukas##23723
  accept Raptor Captor##11146 |goto Dustwallow Marsh 46.66,23.05
step
  note Sergeant Lukas at North Point Tower wants you to capture 6 raptors. You can capture either Bloodfen Raptors or Bloodfen Screechers.
  use Invis Raptor Credit##23727 |q 11146 |goto Dustwallow Marsh 41.5,11.78 |tip {useit}
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  note Mudcrush Durtfeet in northern Dustwallow wants 8 Mirefin Heads.
  collect Mirefin Head##5847 |q 1177 |goto Dustwallow Marsh 57.44,15.53 |tip {dropsfrom}Mirefin Puddlejumper, Mirefin Murloc, Mirefin Warrior
step
  only Warlock
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  note Bring 1 Jade and the Bolt Charged Bramble to Tabetha in Dustwallow Marsh.
  collect 1 Jade##1529 |q 1948 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Rock Elemental, Harvest Reaper
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
  only Warlock
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 79.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  talk Tabetha##6546
  accept Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  note Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh.
  collect Tiara of the Deep##9234 |q 2846 |goto Zul'Farrak - Dungeon -1,-1 |tip {dropsfrom}Hydromancer Velratha
step
  only Druid
  talk Tabetha##6546
  accept Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Druid
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
  collect Zeppelin Cargo##33163 |q 11207 |goto Dustwallow Marsh 51.69,55.91 |tip {dropsfrom}Zeppelin Cargo
step
  note Moxie Steelgrille wants you to dissolve 10 oozes and report back to her at Beezil's Wreck.
  kill Moxie Steelgrille##23797 |q 11174 |goto Dustwallow Marsh 53.57,56.92
step
  only Warlock
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  talk Nat Pagle##12919
  accept Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.76,60.17
step
  note Nat Pagle wants you to catch the following fish:
  collect Feralas Ahi##16967 |q 6607 |goto Dustwallow Marsh 58.76,60.17
step
  talk Morgan Stern##4794
  accept Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
  note Bring 8 Forked Mudrock Tongues to Morgan Stern in Theramore.
  collect 8 Forked Mudrock Tongue##5883 |q 1204 |goto Dustwallow Marsh 62.14,15.72 |tip {dropsfrom}Mudrock Tortoise, Mudrock Spikeshell, Mudrock Burrower
step
  talk Captain Garran Vimes##4944
  accept Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh 68.21,48.62
step
  talk Commander Samaul##4964
  accept The Missing Diplomat##1265 |goto Dustwallow Marsh 68.02,48.71
step
  talk Guard Byron##4921
  accept They Call Him Smiling Jim##1282 |goto Dustwallow Marsh 66.15,46.07
step
  talk Captain Garran Vimes##4944
  accept The Black Shield##1319 |goto Dustwallow Marsh 68.21,48.62
step
  talk Archmage Tervosh##4967
  accept Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
step
  note Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh.
  collect 10 Shadowshard Fragment##17756 |q 7070 |goto Desolace 27.99,57.01 |tip {dropsfrom}Shadowshard Rumbler, Shadowshard Smasher
step
  talk Calia Hastings##23566
  accept Traitors Among Us##11126 |goto Dustwallow Marsh 68.33,51.04
step
  talk Sergeant Amelyn##23835
  accept This Old Lighthouse##11191 |goto Dustwallow Marsh 68.25,51.81
step
  talk Guard Byron##4921
  accept Tabetha's Farm##11212 |goto Dustwallow Marsh 66.15,46.07
step
  talk Lieutenant Aden##23951
  accept Mission to Mudsprocket##11214 |goto Dustwallow Marsh 65.07,47.13
step
  note Confront 5 Deserter Agitators and return to Calia Hastings near the docks in Theramore.
  kill Deserter Agitator##23602 |q 11126 |goto Dustwallow Marsh 66.87,50.07
step
  talk Captain Wymor##5086
  accept Defias in Dustwallow?##11137 |goto Dustwallow Marsh 59.67,41.08
step
  note Obtain the Defias Orders from Garn Mathers and bring them to Captain Wymor at Sentry Point.
  collect Defias Orders##33037 |q 11137 |goto Dustwallow Marsh 63.9,29.05 |tip {dropsfrom}Garn Mathers
step
  talk Drazzit Dripvalve##23572
  turnin Help for Mudsprocket##11211 |goto Dustwallow Marsh 42.33,72.93
step
  talk Drazzit Dripvalve##23572
  turnin Mission to Mudsprocket##11214 |goto Dustwallow Marsh 42.33,72.93
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
  talk Gizzix Grimegurgle##23570
  accept Catch a Dragon by the Tail##11217 |goto Dustwallow Marsh 41.54,72.99
step
  note Gizzix Grimegurgle at Mudsprocket wants you to bring him 8 Wyrmtail stalks.
  collect Wyrmtail##33175 |q 11217 |goto Dustwallow Marsh 46.45,75.86 |tip {dropsfrom}Searing Whelp, Drywallow Daggermaw, Wyrmtail
step
  talk Mordant Grimsby##23843
  turnin What's Haunting Witch Hill?##11180 |goto Dustwallow Marsh 55.58,26.14
step
  talk "Swamp Eye" Jarl##4792
  turnin Marsh Frog Legs##1218 |goto Dustwallow Marsh 55.44,26.27
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 20 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
  collect 20 Unpopped Darkmist Eye##5884 |q 1206 |goto Dustwallow Marsh 32.46,21.9 |tip {dropsfrom}Darkmist Spider, Darkmist Hatchling, Darkmist Recluse
step
  talk Mordant Grimsby##23843
  accept The Witch's Bane##11181 |goto Dustwallow Marsh 55.58,26.14
step
  note Bring 9 sprigs of Witchbane to Mordant Grimsby at Swamplight Manor.
  collect 9 Witchbane##33112 |q 11181 |goto Dustwallow Marsh 55.33,26.3 |tip {dropsfrom}Risen Spirit, Risen Husk, Witchbane
step
  talk Sergeant Lukas##23723
  turnin Raptor Captor##11146 |goto Dustwallow Marsh 46.66,23.05
step
  talk Sergeant Lukas##23723
  accept Prisoners of the Grimtotems##11145 |goto Dustwallow Marsh 46.66,23.05
step
  talk Sergeant Lukas##23723
  accept Unleash the Raptors##11147 |goto Dustwallow Marsh 46.66,23.05
step
  note Sergeant Lukas at North Point Tower wants you to free 5 Theramore Prisoners.
  kill Theramore Prisoner##23720 |q 11145 |goto Dustwallow Marsh 41.48,11.9
step
  note Sergeant Lukas at North Point Tower wants you to place the Raptor Bait near the windmill in Blackhoof Village.
  kill Invis Raptor Credit##23727 |q 11147 |goto Dustwallow Marsh 41.5,11.78
step
  talk Mudcrush Durtfeet##4503
  turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
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
  turnin Tabetha's Farm##11212 |goto Dustwallow Marsh 46.06,57.09
step
  only Druid
  talk Tabetha##6546
  turnin Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |elite
step
  only Druid
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
  talk Nat Pagle##12919
  turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.76,60.17
step
  talk Captain Garran Vimes##4944
  turnin They Call Him Smiling Jim##1282 |goto Dustwallow Marsh 68.21,48.62
step
  talk Archmage Tervosh##4967
  turnin Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
step
  talk Caz Twosprocket##4941
  turnin The Black Shield##1319 |goto Dustwallow Marsh 64.75,50.43
step
  talk Morgan Stern##4794
  turnin Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
  talk Babs Fizzletorque##23892
  turnin This Old Lighthouse##11191 |goto Dustwallow Marsh 72.11,47.05
step
  talk Adjutant Tesoran##4948
  turnin Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh 68.05,48.11
step
  talk Archmage Tervosh##4967
  turnin The Missing Diplomat##1265 |goto Dustwallow Marsh 66.42,49.26
step
  talk Calia Hastings##23566
  turnin Traitors Among Us##11126 |goto Dustwallow Marsh 68.33,51.04
step
  talk Morgan Stern##4794
  accept ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
step
  note Bring 12 Pristine Crawler Legs to Morgan Stern in Theramore.
  collect 12 Pristine Crawler Leg##5938 |q 1258 |goto Swamp of Sorrows 83.23,14.77 |tip {dropsfrom}Silt Crawler, Monstrous Crawler
step
  talk Archmage Tervosh##4967
  accept The Missing Diplomat##1266 |goto Dustwallow Marsh 66.42,49.26
step
  talk Adjutant Tesoran##4948
  accept Daelin's Men##1285 |goto Dustwallow Marsh 68.05,48.11
step
  talk Caz Twosprocket##4941
  accept The Black Shield##1320 |goto Dustwallow Marsh 64.75,50.43
step
  talk Captain Garran Vimes##4944
  accept Inspecting the Ruins##11123 |goto Dustwallow Marsh 68.21,48.62
step
  talk Calia Hastings##23566
  accept Propaganda War##11128 |goto Dustwallow Marsh 68.33,51.04
step
  note Bring the Deserter Propaganda to Calia Hastings near the docks in Theramore.
  collect Deserter Propaganda##33008 |q 11128 |goto Dustwallow Marsh 67.94,58.72 |tip {dropsfrom}Deserter Propaganda
step
  talk Babs Fizzletorque##23892
  accept Thresher Oil##11192 |goto Dustwallow Marsh 72.11,47.05
step
  note Bring 4 containers of Thresher Oil to Babs Fizzletorque at the lighthouse near Theramore.
  collect 4 Thresher Oil##33126 |q 11192 |goto Dustwallow Marsh 71.13,55.44 |tip {dropsfrom}Young Murk Thresher
step
  talk Captain Wymor##5086
  turnin Defias in Dustwallow?##11137 |goto Dustwallow Marsh 59.67,41.08
step
  only Druid
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Captain Wymor##5086
  accept Renn McGill##11138 |goto Dustwallow Marsh 59.67,41.08
step
  talk Renn McGill##23569
  turnin Renn McGill##11138 |goto Dustwallow Marsh 63.74,17.04
step
  talk Renn McGill##23569
  accept Secondhand Diving Gear##11139 |goto Dustwallow Marsh 63.74,17.04
step
  note Bring the Tool Kit and Damaged Diving Gear to Renn McGill in the Dustwallow Marsh.
  collect Damaged Diving Gear##33038 |q 11139 |goto Dustwallow Marsh 62.33,18.23 |tip {dropsfrom}Damaged Diving Gear
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
  talk Sergeant Lukas##23723
  turnin Prisoners of the Grimtotems##11145 |goto Dustwallow Marsh 46.66,23.05
step
  talk Sergeant Lukas##23723
  turnin Unleash the Raptors##11147 |goto Dustwallow Marsh 46.66,23.05
step
  talk Private Hendel##4966
  turnin The Missing Diplomat##1266 |goto Dustwallow Marsh 45.24,24.65
step
  talk Private Hendel##4966
  accept The Missing Diplomat##1324 |goto Dustwallow Marsh 45.24,24.65
step
  talk Inspector Tarem##23567
  turnin Inspecting the Ruins##11123 |goto Dustwallow Marsh 29.79,47.67
step
  only Warlock
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  note Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh.
  collect Obsidian Power Source##8053 |q 1956 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Obsidian Sentinel
step
  talk Captain Garran Vimes##4944
  turnin Daelin's Men##1285 |goto Dustwallow Marsh 68.21,48.62
step
  talk Captain Garran Vimes##4944
  turnin The Black Shield##1320 |goto Dustwallow Marsh 68.21,48.62
step
  talk Archmage Tervosh##4967
  turnin The Missing Diplomat##1324 |goto Dustwallow Marsh 66.42,49.26
step
  talk Babs Fizzletorque##23892
  turnin Thresher Oil##11192 |goto Dustwallow Marsh 72.11,47.05
step
  talk Morgan Stern##4794
  turnin ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
step
  talk Calia Hastings##23566
  turnin Propaganda War##11128 |goto Dustwallow Marsh 68.33,51.04
step
  talk Archmage Tervosh##4967
  accept The Missing Diplomat##1267 |goto Dustwallow Marsh 66.42,49.26
step
  talk Captain Garran Vimes##4944
  accept The Deserters##1286 |goto Dustwallow Marsh 68.21,48.62
step
  talk Calia Hastings##23566
  accept Discrediting the Deserters##11133 |goto Dustwallow Marsh 68.33,51.04
step
  talk Babs Fizzletorque##23892
  accept Dastardly Denizens of the Deep##11193 |goto Dustwallow Marsh 72.11,47.05
step
  note Calia Hastings wants you to distribute the Altered Leaflets to 6 Theramore Guards, then report back to her near the docks in Theramore.
  kill Theramore Guard##4979 |q 11133 |goto Dustwallow Marsh 66.76,50.16
step
  talk Renn McGill##23569
  turnin Secondhand Diving Gear##11139 |goto Dustwallow Marsh 63.74,17.04
step
  talk Renn McGill##23569
  accept Recover the Cargo!##11140 |goto Dustwallow Marsh 63.74,17.04
step
  note Bring 6 Salvaged Strongboxes to Renn McGill in Dustwallow Marsh.
  collect 6 Salvaged Strongbox##33041 |q 11140 |goto Dustwallow Marsh 63.74,17.04
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
  talk Mordant Grimsby##23843
  turnin Cleansing Witch Hill##11183 |goto Dustwallow Marsh 55.58,26.14
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  talk Balos Jacken##5089
  turnin The Deserters##1286 |goto Dustwallow Marsh 36.09,54.31
step
  talk Balos Jacken##5089
  accept The Deserters##1287 |goto Dustwallow Marsh 36.09,54.31
step
  only Warlock
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  note Kill 12 Mana Surges in the allowed time limit.
  kill Mana Surge##6550 |q 1957
step
  talk Captain Garran Vimes##4944
  turnin The Deserters##1287 |goto Dustwallow Marsh 68.21,48.62
step
  talk "Dirty" Michael Crowe##23896
  turnin Dastardly Denizens of the Deep##11193 |goto Dustwallow Marsh 69.24,51.89
step
  talk Lady Jaina Proudmoore##4968
  turnin The Missing Diplomat##1267 |goto Dustwallow Marsh 66.27,49.04
step
  talk Calia Hastings##23566
  turnin Discrediting the Deserters##11133 |goto Dustwallow Marsh 68.33,51.04
step
  talk Calia Hastings##23566
  accept The End of the Deserters##11134 |goto Dustwallow Marsh 68.33,51.04
step
  talk Captain Garran Vimes##4944
  accept A Grim Connection##11143 |goto Dustwallow Marsh 68.21,48.62
step
  talk "Dirty" Michael Crowe##23896
  accept Is it Real?##11194 |goto Dustwallow Marsh 69.24,51.89
step
  note Capture Gavis Greyshield, then report to Calia Hastings near the docks in Theramore.
  use Gavis Greyshield##23941 |q 11134 |goto Dustwallow Marsh 76.21,56.95 |tip {useit}
step
  talk Renn McGill##23569
  turnin Recover the Cargo!##11140 |goto Dustwallow Marsh 63.74,17.04
step
  talk Renn McGill##23569
  accept Jaina Must Know##11141 |goto Dustwallow Marsh 63.74,17.04
step
  talk Captain Darill##23568
  turnin A Grim Connection##11143 |goto Dustwallow Marsh 46.62,24.6
step
  talk Captain Darill##23568
  accept Confirming the Suspicion##11144 |goto Dustwallow Marsh 46.62,24.6
step
  note Bring the Grimtotem Battle Plan to Captain Darill at North Point Tower.
  collect Grimtotem Battle Plan##33051 |q 11144 |goto Dustwallow Marsh 46.62,24.6
step
  talk Captain Darill##23568
  accept Arms of the Grimtotems##11148 |goto Dustwallow Marsh 46.62,24.6
step
  note Captain Darill at North Point Tower wants you to bring him 7 Blackhoof Armaments.
  collect Blackhoof Armaments##33071 |q 11148 |goto Dustwallow Marsh 44.59,26.34 |tip {dropsfrom}Drywallow Crocolisk, Withervine Creeper, Grimtotem Breaker
step
  only Warlock
  talk Tabetha##6546
  turnin Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  accept Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  talk Nat Pagle##12919
  turnin Is it Real?##11194 |goto Dustwallow Marsh 58.76,60.17
step
  talk Nat Pagle##12919
  accept Nat's Bargain##11209 |goto Dustwallow Marsh 58.76,60.17
step
  note Nat Pagle at Nat's Landing wants you to test his new fish bait.
  kill Lurking Shark##23928 |q 11209
step
  talk Lady Jaina Proudmoore##4968
  turnin Jaina Must Know##11141 |goto Dustwallow Marsh 66.27,49.04
step
  talk Calia Hastings##23566
  turnin The End of the Deserters##11134 |goto Dustwallow Marsh 68.33,51.04
step
  talk Lieutenant Aden##23951
  accept A Disturbing Development##11136 |goto Dustwallow Marsh 65.07,47.13
step
  talk Lady Jaina Proudmoore##4968
  accept Survey Alcaz Island##11142 |goto Dustwallow Marsh 66.27,49.04
step
  talk Sergeant Amelyn##23835
  accept The Hermit of Swamplight Manor##11177 |goto Dustwallow Marsh 68.25,51.81
step
  talk Captain Wymor##5086
  turnin A Disturbing Development##11136 |goto Dustwallow Marsh 59.67,41.08
step
  talk "Swamp Eye" Jarl##4792
  turnin The Hermit of Swamplight Manor##11177 |goto Dustwallow Marsh 55.44,26.27
step
  talk Captain Darill##23568
  turnin Confirming the Suspicion##11144 |goto Dustwallow Marsh 46.62,24.6
step
  talk Captain Darill##23568
  turnin Arms of the Grimtotems##11148 |goto Dustwallow Marsh 46.62,24.6
step
  talk Captain Darill##23568
  accept Tabetha's Assistance##11149 |goto Dustwallow Marsh 46.62,24.6
step
  talk Tabetha##6546
  turnin Tabetha's Assistance##11149 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock
  talk Tabetha##6546
  turnin Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  accept Raze Direhorn Post!##11150 |goto Dustwallow Marsh 46.06,57.09
step
  note Burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post, then return to Tabetha at her farm.
  kill North Tent##23751 |q 11150 |goto Dustwallow Marsh 46.6,45.93
step
  talk Nat Pagle##12919
  turnin Nat's Bargain##11209 |goto Dustwallow Marsh 58.76,60.17
step
  talk Nat Pagle##12919
  accept Oh, It's Real##11210 |goto Dustwallow Marsh 58.76,60.17
step
  talk Lady Jaina Proudmoore##4968
  turnin Survey Alcaz Island##11142 |goto Dustwallow Marsh 66.27,49.04
step
  talk Major Mills##23905
  turnin Oh, It's Real##11210 |goto Dustwallow Marsh 69.7,51.22
step
  talk Lady Jaina Proudmoore##4968
  accept Warn Bolvar!##11222 |goto Dustwallow Marsh 66.27,49.04
step
  talk Highlord Bolvar Fordragon##1748
  turnin Warn Bolvar!##11222 |goto Stormwind City 78.22,17.98 |tip {turninat}Stormwind City
step
  talk Tabetha##6546
  turnin Raze Direhorn Post!##11150 |goto Dustwallow Marsh 46.06,57.09
step
  talk Tabetha##6546
  accept Justice for the Hyals##11151 |goto Dustwallow Marsh 46.06,57.09
step
  talk Captain Garran Vimes##4944
  turnin Justice for the Hyals##11151 |goto Dustwallow Marsh 68.21,48.62
step
  talk Captain Garran Vimes##4944
  accept Peace at Last##11152 |goto Dustwallow Marsh 68.21,48.62
step
  note Captain Garran Vimes at Foothold Citadel wants you to lay the Wreath at the Hyal Family Monument.
  kill Lynn Hyal##23768 |q 11152
step
  talk Captain Garran Vimes##4944
  turnin Peace at Last##11152 |goto Dustwallow Marsh 68.21,48.62
step
  note {travel}Arathi Highlands
  goto Arathi Highlands 43.24,92.64
]])
