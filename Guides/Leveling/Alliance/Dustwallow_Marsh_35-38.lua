-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dustwallow Marsh (35-38)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Thousand Needles (30-41)",
}, [[
step
  note {fp}Baldruc
  goto Dustwallow Marsh 67.48,51.3 |tip {vendor}
step
  talk Fiora Longears##4456
  accept Journey to Astranaar##1133 |goto Dustwallow Marsh 66.46,45.15
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
  only completed(1264)
  talk Archmage Tervosh##4967
  turnin The Missing Diplomat##1265 |goto Dustwallow Marsh 66.42,49.26
step
  talk Captain Garran Vimes##4944
  turnin They Call Him Smiling Jim##1282 |goto Dustwallow Marsh 68.21,48.62
step
  only completed(1264)
  talk Archmage Tervosh##4967
  accept The Missing Diplomat##1266 |goto Dustwallow Marsh 66.42,49.26
step
  click Black Shield##20992
  accept The Black Shield##1253 |goto Dustwallow Marsh 29.63,48.62
step
  click Hoofprints##21015
  accept Suspicious Hoofprints##1284 |goto Dustwallow Marsh 29.7,47.64
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  only completed(1264)
  talk Private Hendel##4966
  turnin The Missing Diplomat##1266 |goto Dustwallow Marsh 45.24,24.65
step
  talk "Stinky" Ignatz##4880
  accept Stinky's Escape##1222 |goto Dustwallow Marsh 46.88,17.52
step
  note Mudcrush Durtfeet in northern Dustwallow wants 12 Mirefin Heads.
  collect Mirefin Head##5847 |q 1177 |goto Dustwallow Marsh 59.6,9.48 |tip {dropsfrom}Mirefin Oracle, Mirefin Coastrunner, Mirefin Warrior
step
  talk "Swamp Eye" Jarl##4792
  accept Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 3 Soothing Spices to "Swamp Eye" Jarl in Dustwallow Marsh.
  buy 3 Soothing Spices##3713 |q 1218 |goto Duskwood 73.8,45.1
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
  talk Theramore Lieutenant##4947
  turnin The Orc Report##1219 |goto Dustwallow Marsh 68,48
step
  talk Morgan Stern##4794
  turnin Stinky's Escape##1222 |goto Dustwallow Marsh 66.34,45.47
step
  talk Captain Garran Vimes##4944
  turnin The Black Shield##1253 |goto Dustwallow Marsh 68.21,48.62
step
  talk Captain Garran Vimes##4944
  turnin Suspicious Hoofprints##1284 |goto Dustwallow Marsh 68.21,48.62
step
  talk Theramore Lieutenant##4947
  accept Captain Vimes##1220 |goto Dustwallow Marsh 68,48
step
  talk Captain Garran Vimes##4944
  accept The Black Shield##1319 |goto Dustwallow Marsh 68.21,48.62
step
  talk Morgan Stern##4794
  accept Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
  talk Captain Garran Vimes##4944
  turnin Captain Vimes##1220 |goto Dustwallow Marsh 68.21,48.62
step
  talk Caz Twosprocket##4941
  turnin The Black Shield##1319 |goto Dustwallow Marsh 64.75,50.43
step
  talk Caz Twosprocket##4941
  accept The Black Shield##1320 |goto Dustwallow Marsh 64.75,50.43
step
  talk Captain Garran Vimes##4944
  turnin The Black Shield##1320 |goto Dustwallow Marsh 68.21,48.62
step
  only Mage completed(1947)
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  talk Mudcrush Durtfeet##4503
  turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  only completed(1264)
  talk Private Hendel##4966
  accept The Missing Diplomat##1324 |goto Dustwallow Marsh 45.24,24.65
step
  note Bring 40 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
  collect 40 Unpopped Darkmist Eye##5884 |q 1206 |goto Dustwallow Marsh 32.32,22.29 |tip {dropsfrom}Darkmist Spider, Darkmist Lurker, Darkmist Recluse
step
  only completed(1264)
  note Defeat Private Hendel in Dustwallow Marsh.
  talk Private Hendel##4966 |q 1324 |goto Dustwallow Marsh 45.24,24.65
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring a Moonsteel Broadsword to Jarl in Dustwallow Marsh.
  collect Moonsteel Broadsword##3853 |q 1203 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 8 Forked Mudrock Tongues to Morgan Stern in Theramore.
  collect 8 Forked Mudrock Tongue##5883 |q 1204 |goto Dustwallow Marsh 62,24.8 |tip {dropsfrom}Mudrock Tortoise, Mudrock Spikeshell, Mudrock Burrower
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  talk Morgan Stern##4794
  turnin Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
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
  talk Lady Jaina Proudmoore##4968
  turnin The Missing Diplomat##1267 |goto Dustwallow Marsh 66.27,49.04
step
  only Mage completed(1947)
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock completed(4961)
  talk Tabetha##6546
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
step
  click Theramore Guard Badge##21042
  accept Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh 29.83,48.24
step
  only Mage completed(1947)
  note Bring 1 Jade and the Bolt Charged Bramble to Tabetha in Dustwallow Marsh.
  collect 1 Jade##1529 |q 1948 |goto Dustwallow Marsh 30.92,65.84 |tip {dropsfrom}Tin Vein, Gold Vein, Iron Deposit
step
  talk Captain Garran Vimes##4944
  turnin Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh 68.21,48.62
step
  talk Captain Garran Vimes##4944
  accept Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh 68.21,48.62
step
  talk Adjutant Tesoran##4948
  turnin Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh 68.05,48.11
step
  talk Adjutant Tesoran##4948
  accept Daelin's Men##1285 |goto Dustwallow Marsh 68.05,48.11
step
  talk Captain Garran Vimes##4944
  turnin Daelin's Men##1285 |goto Dustwallow Marsh 68.21,48.62
step
  talk Captain Garran Vimes##4944
  accept The Deserters##1286 |goto Dustwallow Marsh 68.21,48.62
step
  only Mage completed(1947)
  talk Tabetha##6546
  turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  talk Balos Jacken##5089
  turnin The Deserters##1286 |goto Dustwallow Marsh 36.09,54.31
step
  talk Balos Jacken##5089
  accept The Deserters##1287 |goto Dustwallow Marsh 36.09,54.31
step
  talk Captain Garran Vimes##4944
  turnin The Deserters##1287 |goto Dustwallow Marsh 68.21,48.62
step
  talk Shindrell Swiftfire##3845
  turnin Journey to Astranaar##1133 |goto Ashenvale 34.67,48.84 |tip {turninat}Ashenvale
step
  only Mage completed(1947)
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  only Warlock completed(4961)
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Archmage Tervosh##4967
  accept Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
step
  note Bring 10 Highperch Venom Sacs to Fiora Longears in Theramore.
  collect 10 Highperch Venom Sac##5809 |q 1135 |goto Thousand Needles 11.8,37.8 |tip {dropsfrom}Highperch Wyvern, Highperch Consort, Highperch Patriarch
step
  only Mage
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  note Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh.
  kill Shadowshard Rumbler##11777 |goto Desolace 27.23,57.68 |elite
  collect 10 Shadowshard Fragment##17756 |q 7070 |goto Desolace 27.23,57.68
step
  talk Fiora Longears##4456
  turnin Highperch Venom##1135 |goto Dustwallow Marsh 66.46,45.15
step
  only Mage
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Archmage Tervosh##4967
  turnin Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
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
  note {travel}Darnassus
  goto Darnassus 59.51,45.38
]])
