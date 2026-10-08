-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Dustwallow Marsh (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Thomas##4982
  accept The Missing Diplomat##1274 |goto Stormwind City 49.64,44.48
step
  talk "Stinky" Ignatz##4880
  accept Stinky's Escape##1222 |goto Dustwallow Marsh 46.88,17.52
step
  talk Doctor Gustaf VanHowzen##12939
  accept Triage##6624 |goto Dustwallow Marsh 67.76,48.97
step
  talk Bishop DeLavey##4960
  turnin The Missing Diplomat##1274 |goto Stormwind City 80.24,44.07
step
  talk Morgan Stern##4794
  turnin Stinky's Escape##1222 |goto Dustwallow Marsh 66.34,45.47
step
  talk Doctor Gustaf VanHowzen##12939
  turnin Triage##6624 |goto Dustwallow Marsh 67.76,48.97
step
  talk Bishop DeLavey##4960
  accept The Missing Diplomat##1241 |goto Stormwind City 80.24,44.07
step
  talk Jorgen##4959
  turnin The Missing Diplomat##1241 |goto Stormwind City 76.29,85.12
step
  talk Jorgen##4959
  accept The Missing Diplomat##1242 |goto Stormwind City 76.29,85.12
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1242 |goto Stormwind City 66.03,74.1
step
  talk Elling Trias##482
  accept The Missing Diplomat##1243 |goto Stormwind City 66.03,74.1
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1243 |goto Duskwood 74.83,44.22
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  note Find the Defias Docket and return it to Watcher Backus in Duskwood.
  collect Defias Docket##5947 |q 1244 |goto Duskwood 23.92,72.07 |tip {dropsfrom}Defias Strongbox
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1245 |goto Duskwood 74.83,44.22
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1245 |goto Stormwind City 66.03,74.1
step
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 66.03,74.1
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 74.26,59.17
step
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17
step
  note Defeat Dashel Stonefist in Stormwind.
  kill Dashel Stonefist##4961 |q 1447 |goto Stormwind City 74.26,59.17
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17
step
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1247 |goto Stormwind City 74.26,59.17
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1247 |goto Stormwind City 66.03,74.1
step
  talk Elling Trias##482
  accept The Missing Diplomat##1248 |goto Stormwind City 66.03,74.1
step
  talk Mikhail##4963
  turnin The Missing Diplomat##1248 |goto Wetlands 10.6,60.77
step
  talk Mikhail##4963
  accept The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  note Subdue Tapoke Jahn before he escapes, and then return to Mikhail in Menethil.
  use Tapoke "Slim" Jahn##4962 |q 1249 |goto Wetlands 10.54,60.26 |tip {useit}
step
  talk Mikhail##4963
  turnin The Missing Diplomat##1249 |goto Wetlands 10.6,60.77
step
  talk Tapoke "Slim" Jahn##4962
  accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
  talk Mikhail##4963
  turnin The Missing Diplomat##1250 |goto Wetlands 10.6,60.77
step
  talk Mikhail##4963
  accept The Missing Diplomat##1264 |goto Wetlands 10.6,60.77
step
  talk Commander Samaul##4964
  turnin The Missing Diplomat##1264 |goto Dustwallow Marsh 68.02,48.71
step
  talk Commander Samaul##4964
  accept The Missing Diplomat##1265 |goto Dustwallow Marsh 68.02,48.71
step
  talk Archmage Tervosh##4967
  turnin The Missing Diplomat##1265 |goto Dustwallow Marsh 66.42,49.26
step
  talk Archmage Tervosh##4967
  accept The Missing Diplomat##1266 |goto Dustwallow Marsh 66.42,49.26
step
  talk Private Hendel##4966
  turnin The Missing Diplomat##1266 |goto Dustwallow Marsh 45.24,24.65
step
  talk Private Hendel##4966
  accept The Missing Diplomat##1324 |goto Dustwallow Marsh 45.24,24.65
step
  note Defeat Private Hendel in Dustwallow Marsh.
  kill Private Hendel##4966 |q 1324 |goto Dustwallow Marsh 45.24,24.65
step
  talk Archmage Tervosh##4967
  turnin The Missing Diplomat##1324 |goto Dustwallow Marsh 66.42,49.26
]])
