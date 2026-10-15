-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dustwallow Marsh (35-38)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Thousand Needles (30-41)",
	rev = "6ff13d84",
}, [[
step
  ding 34
step
  note {fp}Baldruc
  goto Dustwallow Marsh 67.48,51.3 |tip {vendor}
step
  talk Fiora Longears##4456
  accept Highperch Venom##1135 |goto Dustwallow Marsh 66.46,45.15
step
  only completed(1264)
  talk Commander Samaul##4964
  accept The Missing Diplomat##1265 |goto Dustwallow Marsh 68.02,48.71
step
  talk Guard Byron##4921
  accept They Call Him Smiling Jim##1282 |goto Dustwallow Marsh 66.15,46.07
step
  note Speak with Captain Garran Vimes on the top floor of Foothold Citadel.
  talk Captain Garran Vimes##4944
  turnin They Call Him Smiling Jim##1282 |goto Dustwallow Marsh 68.21,48.62
step
  only completed(1264)
  note Search Sentry Point for any sign of Private Hendel.
  goto Dustwallow Marsh 59.92,40.9 |tip Sentry Point explored
step
  talk "Swamp Eye" Jarl##4792
  accept Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 3 Soothing Spices to "Swamp Eye" Jarl in Dustwallow Marsh.
  talk Helenia Olden##4897
  buy 3 Soothing Spices##3713 |q 1218 |goto Dustwallow Marsh 66.44,51.46
step
  click Loose Dirt##20985
  accept The Orc Report##1219 |goto Dustwallow Marsh 55.44,25.92
step
  talk "Swamp Eye" Jarl##4792
  turnin Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 40 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
  collect 40 Unpopped Darkmist Eye##5884 |q 1206 |goto Dustwallow Marsh 32.32,22.29 |tip {dropsfrom}Darkmist Spider, Darkmist Lurker, Darkmist Recluse
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  click Black Shield##20992
  accept The Black Shield##1253 |goto Dustwallow Marsh 29.63,48.62
step
  click Hoofprints##21015
  accept Suspicious Hoofprints##1284 |goto Dustwallow Marsh 29.7,47.64
step
  note Bring the Spy's Report to a Theramore Lieutenant.
  talk Theramore Lieutenant##4947
  turnin The Orc Report##1219 |goto Dustwallow Marsh 68,48
step
  note Bring the Blackened Iron Shield to Captain Garran Vimes in Theramore.
  talk Captain Garran Vimes##4944
  turnin The Black Shield##1253 |goto Dustwallow Marsh 68.21,48.62
step
  only completed(1264)
  talk Archmage Tervosh##4967
  turnin The Missing Diplomat##1265 |goto Dustwallow Marsh 66.42,49.26
step
  note Report about the suspicious prints at the Shady Rest Inn to Captain Garran Vimes in Theramore.
  talk Captain Garran Vimes##4944
  turnin Suspicious Hoofprints##1284 |goto Dustwallow Marsh 68.21,48.62
step
  talk Theramore Lieutenant##4947
  accept Captain Vimes##1220 |goto Dustwallow Marsh 68,48
step
  talk Captain Garran Vimes##4944
  accept The Black Shield##1319 |goto Dustwallow Marsh 68.21,48.62
step
  only completed(1264)
  talk Archmage Tervosh##4967
  accept The Missing Diplomat##1266 |goto Dustwallow Marsh 66.42,49.26
step
  note Bring the Spy's Report to Captain Garran Vimes.
  talk Captain Garran Vimes##4944
  turnin Captain Vimes##1220 |goto Dustwallow Marsh 68.21,48.62
step
  note Show the Blackened Iron Shield to Caz Twosprocket in Theramore.
  talk Caz Twosprocket##4941
  turnin The Black Shield##1319 |goto Dustwallow Marsh 64.75,50.43
step
  talk Caz Twosprocket##4941
  accept The Black Shield##1320 |goto Dustwallow Marsh 64.75,50.43
step
  note Speak with Captain Garran Vimes in Theramore.
  talk Captain Garran Vimes##4944
  turnin The Black Shield##1320 |goto Dustwallow Marsh 68.21,48.62
step
  talk Morgan Stern##4794
  accept Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 8 Forked Mudrock Tongues to Morgan Stern in Theramore.
  collect 8 Forked Mudrock Tongue##5883 |q 1204 |goto Dustwallow Marsh 62,24.8 |tip {dropsfrom}Mudrock Tortoise, Mudrock Spikeshell, Mudrock Burrower
step
  note Mudcrush Durtfeet in northern Dustwallow wants 12 Mirefin Heads.
  collect 12 Mirefin Head##5847 |q 1177 |goto Dustwallow Marsh 57.52,15.68 |tip {dropsfrom}Mirefin Coastrunner, Mirefin Puddlejumper, Mirefin Muckdweller
step
  talk "Stinky" Ignatz##4880
  accept Stinky's Escape##1222 |goto Dustwallow Marsh 46.88,17.52
step
  note Escort "Stinky" Ignatz, then speak with Morgan Stern in Theramore.
  goto Dustwallow Marsh 48.87,24.58 |tip Help Stinky find Bogbean Leaves
step
  only completed(1264)
  note Find Private Hendel in Dustwallow Marsh.
  talk Private Hendel##4966
  turnin The Missing Diplomat##1266 |goto Dustwallow Marsh 45.24,24.65
step
  only completed(1264)
  talk Private Hendel##4966
  accept The Missing Diplomat##1324 |goto Dustwallow Marsh 45.24,24.65
step
  only completed(1264)
  note Defeat Private Hendel in Dustwallow Marsh.
  kill Private Hendel##4966 |q 1324 |goto Dustwallow Marsh 45.24,24.65
step
  talk Mudcrush Durtfeet##4503
  turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  only Mage completed(1947)
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  talk Morgan Stern##4794
  turnin Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
  talk Morgan Stern##4794
  turnin Stinky's Escape##1222 |goto Dustwallow Marsh 66.34,45.47
step
  only completed(1264)
  talk Archmage Tervosh##4967
  turnin The Missing Diplomat##1324 |goto Dustwallow Marsh 66.42,49.26
step
  only completed(1264)
  talk Lady Jaina Proudmoore##4968
  accept The Missing Diplomat##1267 |goto Dustwallow Marsh 66.27,49.04
step
  only completed(1264)
  note Speak to Jaina Proudmore in Dustwallow Swamp.
  talk Lady Jaina Proudmoore##4968
  turnin The Missing Diplomat##1267 |goto Dustwallow Marsh 66.27,49.04
step
  click Theramore Guard Badge##21042
  accept Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh 29.83,48.24
step
  note Bring Reethe's Badge to Captain Garran Vimes in Theramore.
  talk Captain Garran Vimes##4944
  turnin Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh 68.21,48.62
step
  talk Captain Garran Vimes##4944
  accept Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh 68.21,48.62
step
  note Find out more about Reethe from Adjutant Tesoran in Theramore.
  talk Adjutant Tesoran##4948
  turnin Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh 68.05,48.11
step
  talk Adjutant Tesoran##4948
  accept Daelin's Men##1285 |goto Dustwallow Marsh 68.05,48.11
step
  note Return the information about Reethe to Captain Garran Vimes in Theramore.
  talk Captain Garran Vimes##4944
  turnin Daelin's Men##1285 |goto Dustwallow Marsh 68.21,48.62
step
  talk Captain Garran Vimes##4944
  accept The Deserters##1286 |goto Dustwallow Marsh 68.21,48.62
step
  note Get information about Reethe from Balos Jacken and the deserters in Dustwallow Marsh.
  talk Balos Jacken##5089
  turnin The Deserters##1286 |goto Dustwallow Marsh 36.09,54.31
step
  talk Balos Jacken##5089
  accept The Deserters##1287 |goto Dustwallow Marsh 36.09,54.31
step
  only Mage level>=35
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock completed(4961) level>=35
  talk Tabetha##6546
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
step
  note Speak with Captain Garran Vimes in Theramore about Reethe.
  talk Captain Garran Vimes##4944
  turnin The Deserters##1287 |goto Dustwallow Marsh 68.21,48.62
step
  note Bring 10 Highperch Venom Sacs to Fiora Longears in Theramore.
  collect 10 Highperch Venom Sac##5809 |q 1135 |goto Thousand Needles 11.8,37.8 |tip {dropsfrom}Highperch Wyvern, Highperch Consort, Highperch Patriarch
step
  talk Fiora Longears##4456
  turnin Highperch Venom##1135 |goto Dustwallow Marsh 66.46,45.15
step
  only Mage haveq(1954)
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Mage haveq(1954)
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock completed(4961) haveq(4976)
  note Return the Cleansed Infernal Orb to Menara Voidrender in the Barrens.
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Mage completed(1947)
  note Speak with Magus Tirth in the Shimmering Flats.
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  note {travel}Thousand Needles
  goto Thousand Needles 78.06,77.13
]])
