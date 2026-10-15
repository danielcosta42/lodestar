-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Dustwallow Marsh (35-43)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (32-40)",
	rev = "b7c1cceb",
}, [[
step
  ding 33
step
  note {fp}Shardi
  goto Dustwallow Marsh 35.56,31.88 |tip {vendor}
step
  talk Nazeer Bloodpike##4791
  accept Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  note Kill 9 Theramore Infiltrators, then return to Nazeer Bloodpike in Brackenwall Village.
  kill Theramore Infiltrator##4834 |q 1201 |goto Dustwallow Marsh 38.95,26.4
step
  talk Nazeer Bloodpike##4791
  turnin Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  accept The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  click Black Shield##20992
  accept The Black Shield##1251 |goto Dustwallow Marsh 29.63,48.62
step
  click Hoofprints##21015
  accept Suspicious Hoofprints##1268 |goto Dustwallow Marsh 29.7,47.64
step
  click Theramore Guard Badge##21042
  accept Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 29.83,48.24
step
  talk "Swamp Eye" Jarl##4792
  accept Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 3 Soothing Spices to "Swamp Eye" Jarl in Dustwallow Marsh.
  talk Naal Mistrunner##3027
  buy 3 Soothing Spices##3713 |q 1218 |goto Thunder Bluff 50.99,52.45
step
  click Loose Dirt##20985
  accept The Lost Report##1238 |goto Dustwallow Marsh 55.44,25.92
step
  talk "Swamp Eye" Jarl##4792
  turnin Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  note Mudcrush Durtfeet in northern Dustwallow wants 12 Mirefin Heads.
  collect 12 Mirefin Head##5847 |q 1177 |goto Dustwallow Marsh 57.52,15.68 |tip {dropsfrom}Mirefin Coastrunner, Mirefin Puddlejumper, Mirefin Muckdweller
step
  talk "Stinky" Ignatz##4880
  accept Stinky's Escape##1270 |goto Dustwallow Marsh 46.88,17.52
step
  note Escort "Stinky" Ignatz, then speak with Mebok Mizzyrix in Ratchet.
  goto Dustwallow Marsh 48.87,24.58 |tip Help Stinky find Bogbean Leaves
step
  note Bring 40 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
  collect 40 Unpopped Darkmist Eye##5884 |q 1206 |goto Dustwallow Marsh 32.32,22.29 |tip {dropsfrom}Darkmist Spider, Darkmist Lurker, Darkmist Recluse
step
  talk Mudcrush Durtfeet##4503
  turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  note Bring the Spy's Report to Nazeer Bloodpike in Brackenwall Village.
  talk Nazeer Bloodpike##4791
  turnin The Lost Report##1238 |goto Dustwallow Marsh 35.21,30.66
step
  note Bring the Blackened Iron Shield to Krog in Brackenwall Village.
  talk Krog##4926
  turnin The Black Shield##1251 |goto Dustwallow Marsh 36.42,31.88
step
  note Report about the suspicious prints at the Shady Rest Inn to Krog in Brackenwall Village.
  talk Krog##4926
  turnin Suspicious Hoofprints##1268 |goto Dustwallow Marsh 36.42,31.88
step
  note Bring Reethe's Badge to Krog in Brackenwall Village.
  talk Krog##4926
  turnin Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  accept The Black Shield##1321 |goto Dustwallow Marsh 36.42,31.88
step
  only completed(1261)
  talk Nazeer Bloodpike##4791
  accept Report to Zor##1262 |goto Dustwallow Marsh 35.21,30.66
step
  note Show the Blackened Iron Shield to Do'gol in Brackenwall Village.
  talk Do'gol##5087
  turnin The Black Shield##1321 |goto Dustwallow Marsh 36.53,30.79
step
  talk Do'gol##5087
  accept The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk Ogron##4983
  accept Questioning Reethe##1273 |goto Dustwallow Marsh 40.96,36.69
step
  note Go with Ogron to speak with Reethe, then return to Krog in Brackenwall Village.
  goto Dustwallow Marsh 42.47,38.07 |tip Question Reethe with Ogron
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  click Loose Dirt##20985
  accept The Severed Head##1239 |goto Dustwallow Marsh 55.44,25.92
step
  note Acquire 6 Acidic Venom Sacs for Do'gol in Brackenwall Village.
  collect 6 Acidic Venom Sac##5959 |q 1322 |goto Dustwallow Marsh 56.01,23.25 |tip {dropsfrom}Darkfang Spider, Darkfang Venomspitter, Darkfang Creeper
step
  note Bring the Captain's Documents to Nazeer Bloodpike in Brackenwall Village.
  collect Captain's Documents##5882 |q 1202 |goto Dustwallow Marsh 71.53,51.19 |tip {dropsfrom}Captain's Footlocker
step
  talk Nazeer Bloodpike##4791
  turnin The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  note Bring the Defiant Orc Head to Nazeer Bloodpike in Brackenwall Village.
  talk Nazeer Bloodpike##4791
  turnin The Severed Head##1239 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  turnin Questioning Reethe##1273 |goto Dustwallow Marsh 36.42,31.88
step
  talk Do'gol##5087
  turnin The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk Krog##4926
  accept The Black Shield##1276 |goto Dustwallow Marsh 36.42,31.88
step
  talk Do'gol##5087
  accept The Black Shield##1323 |goto Dustwallow Marsh 36.53,30.79
step
  note Talk with Krog in Brackenwall Village.
  talk Krog##4926
  turnin The Black Shield##1323 |goto Dustwallow Marsh 36.42,31.88
step
  only level>=38
  talk Overlord Mok'Morokk##4500
  accept Overlord Mok'Morokk's Concern##1166 |goto Dustwallow Marsh 36.29,31.41
step
  only level>=38
  talk Tharg##4502
  accept Army of the Black Dragon##1168 |goto Dustwallow Marsh 37.37,31.39
step
  only level>=38
  talk Draz'Zilb##4501
  accept Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  only haveq(1166)
  note Overlord Mok'Morokk in Brackenwall Village wants you to retrieve his grog, snuff and strongbox in Dustwallow Swamp.
  collect Mok'Morokk's Grog##5835 |q 1166/2 |goto Dustwallow Marsh 38.66,65.57
  collect Mok'Morokk's Strongbox##5836 |q 1166/3 |goto Dustwallow Marsh 36.64,69.57
  collect Mok'Morokk's Snuff##5834 |q 1166 |goto Dustwallow Marsh 44.53,66.04
step
  only haveq(1168)
  note Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
  kill Firemane Ash Tail##4331 |q 1168/2 |goto Dustwallow Marsh 42.6,66.6
  kill Firemane Scout##4329 |q 1168/1 |goto Dustwallow Marsh 42.4,67.8
  kill Firemane Scalebane##4328 |q 1168 |goto Dustwallow Marsh 53.32,72.97
step
  only haveq(1169)
  note Draz'Zilb in Brackenwall Village would like you to bring him 15 Searing Tongues and 15 Searing Hearts.
  collect 15 Searing Tongue##5840 |q 1169 |goto Dustwallow Marsh 45.4,73 |tip {dropsfrom}Searing Hatchling, Searing Whelp
step
  only Warlock completed(1799) completed(4962) level>=40
  talk Tabetha##6546
  accept Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock completed(1799) completed(4962) haveq(4961)
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 4961 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  only Warlock completed(1799) completed(4962) haveq(4961)
  talk Tabetha##6546
  turnin Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock completed(1799) completed(4962) completed(4961) level>=35
  talk Tabetha##6546
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
step
  only haveq(1166)
  talk Overlord Mok'Morokk##4500
  turnin Overlord Mok'Morokk's Concern##1166 |goto Dustwallow Marsh 36.29,31.41
step
  only haveq(1168)
  talk Tharg##4502
  turnin Army of the Black Dragon##1168 |goto Dustwallow Marsh 37.37,31.39
step
  only haveq(1169)
  talk Draz'Zilb##4501
  turnin Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  only completed(1169) level>=38
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1170 |goto Dustwallow Marsh 37.15,33.09
step
  only haveq(1170)
  note Speak with Overlord Mok'Morokk in Brackenwall Village.
  talk Overlord Mok'Morokk##4500
  turnin The Brood of Onyxia##1170 |goto Dustwallow Marsh 36.29,31.41
step
  only completed(1170) level>=38
  talk Overlord Mok'Morokk##4500
  accept The Brood of Onyxia##1171 |goto Dustwallow Marsh 36.29,31.41
step
  only haveq(1171)
  note Speak with Draz'Zilb in Brackenwall Village.
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1171 |goto Dustwallow Marsh 37.15,33.09
step
  only completed(1171) level>=38
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  only haveq(1172)
  note Draz'Zilb in Brackenwall Village wants you to destroy 5 Eggs of Onyxia.
  click Egg of Onyxia##20359 |q 1172 |goto Dustwallow Marsh 56.65,75.41
step
  only haveq(1172)
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  only completed(1172) level>=38
  talk Overlord Mok'Morokk##4500
  accept Challenge Overlord Mok'Morokk##1173 |goto Dustwallow Marsh 36.29,31.41
step
  only haveq(1173)
  note Defeat Mok'Morokk and report the news to Draz'Zilb in Brackenwall Village.
  goto Dustwallow Marsh 36.41,31.43 |tip Drive Overlord Mok'Morokk from Brackenwall Village
step
  only haveq(1173)
  talk Draz'Zilb##4501
  turnin Challenge Overlord Mok'Morokk##1173 |goto Dustwallow Marsh 37.15,33.09
step
  talk Mebok Mizzyrix##3446
  turnin Stinky's Escape##1270 |goto The Barrens 62.37,37.62 |tip {turninat}The Barrens
step
  only Warlock completed(1799) completed(4962) haveq(4976)
  note Return the Cleansed Infernal Orb to Menara Voidrender in the Barrens.
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  note Show the Blackened Iron Shield to Mosarn in Thunder Bluff.
  talk Mosarn##4943
  turnin The Black Shield##1276 |goto Thunder Bluff 54.01,80.77 |tip {turninat}Thunder Bluff
step
  only level>=35
  talk Melor Stonehoof##3441
  accept Deadmire##1205 |goto Thunder Bluff 61.54,80.92
step
  only Mage
  talk Ursyn Ghull##3048
  accept Journey to the Marsh##1947 |goto Thunder Bluff 25.7,14.19
step
  only Mage level>=35
  talk Ursyn Ghull##3048
  accept Return to the Marsh##1953 |goto Thunder Bluff 25.7,14.19
step
  only Mage
  note Speak with Tabetha.
  talk Tabetha##6546
  turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage haveq(1953)
  note Speak with Tabetha.
  talk Tabetha##6546
  turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage level>=35
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only haveq(1205)
  note Bring Deadmire's Tooth to Melor in Thunder Bluff.
  collect Deadmire's Tooth##5945 |q 1205 |goto Dustwallow Marsh 50.2,52.7 |tip {dropsfrom}Deadmire
step
  only completed(1261)
  note Bring the Jeweled Pendant to Zor Lonetree in Orgrimmar.
  talk Zor Lonetree##4047
  turnin Report to Zor##1262 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  only level>=40
  talk Deino##5885
  accept Tabetha's Task##2861 |goto Orgrimmar 38.45,86.13
step
  only haveq(1205)
  talk Melor Stonehoof##3441
  turnin Deadmire##1205 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  only haveq(2861)
  note Speak with Tabetha in Dustwallow Marsh.
  talk Tabetha##6546
  turnin Tabetha's Task##2861 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Speak with Magus Tirth in the Shimmering Flats.
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
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
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  only Mage haveq(1954)
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Mage haveq(1954)
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage completed(1954) level>=40
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage haveq(1955)
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  only Mage haveq(1955)
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 62.76,20.21
]])
