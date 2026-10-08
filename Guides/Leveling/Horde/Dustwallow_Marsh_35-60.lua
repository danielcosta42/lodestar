-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Dustwallow Marsh (35-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stranglethorn Vale (35-47)",
}, [[
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
  note Draz'Zilb in Brackenwall Village would like you to bring him 15 Searing Tongues and 15 Searing Hearts.
  collect Searing Tongue##5840 |q 1169 |goto Dustwallow Marsh 45.6,73 |tip {dropsfrom}Searing Hatchling, Searing Whelp
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  note Mudcrush Durtfeet in northern Dustwallow wants 12 Mirefin Heads.
  collect Mirefin Head##5847 |q 1177 |goto Dustwallow Marsh 59.89,9.48 |tip {dropsfrom}Mirefin Oracle, Mirefin Coastrunner, Mirefin Warrior
step
  talk Nazeer Bloodpike##4791
  accept Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  accept Report to Zor##1262 |goto Dustwallow Marsh 35.21,30.66
step
  click Hoofprints##21015
  accept Suspicious Hoofprints##1268 |goto Dustwallow Marsh 29.7,47.64
step
  click Theramore Guard Badge##21042
  accept Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 29.83,48.24
step
  note Kill 9 Theramore Infiltrators, then return to Nazeer Bloodpike in Brackenwall Village.
  kill Theramore Infiltrator##4834 |q 1201 |goto Dustwallow Marsh 39.62,26.4
step
  talk "Swamp Eye" Jarl##4792
  accept Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 3 Soothing Spices to "Swamp Eye" Jarl in Dustwallow Marsh.
  buy 3 Soothing Spices##3713 |q 1218 |goto Duskwood 73.8,45.1
step
  click Loose Dirt##20985
  accept The Lost Report##1238 |goto Dustwallow Marsh 55.44,25.92
step
  click Musty Scroll##2555
  accept Cortello's Riddle##626 |goto Dustwallow Marsh 31.11,66.14
step
  click Black Shield##20992
  accept The Black Shield##1251 |goto Dustwallow Marsh 29.63,48.62
step
  only Mage
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Bring 1 Jade and the Bolt Charged Bramble to Tabetha in Dustwallow Marsh.
  collect 1 Jade##1529 |q 1948 |goto Arathi Highlands 50.28,64.63 |tip {dropsfrom}Tin Vein, Gold Vein, Iron Deposit
step
  only Mage
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
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
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
step
  note Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
  kill Firemane Scout##4329 |q 1168 |goto Dustwallow Marsh 43,67.6
step
  talk Krog##4926
  turnin The Black Shield##1251 |goto Dustwallow Marsh 36.42,31.88
step
  talk Overlord Mok'Morokk##4500
  turnin Overlord Mok'Morokk's Concern##1166 |goto Dustwallow Marsh 36.29,31.41
step
  talk Zor Lonetree##4047
  turnin Report to Zor##1262 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  talk Tharg##4502
  turnin Army of the Black Dragon##1168 |goto Dustwallow Marsh 37.37,31.39
step
  talk Draz'Zilb##4501
  turnin Identifying the Brood##1169 |goto Dustwallow Marsh 37.15,33.09
step
  talk Nazeer Bloodpike##4791
  turnin Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  turnin Suspicious Hoofprints##1268 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  turnin Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 36.42,31.88
step
  talk Nazeer Bloodpike##4791
  turnin The Lost Report##1238 |goto Dustwallow Marsh 35.21,30.66
step
  talk Mudcrush Durtfeet##4503
  turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
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
  talk Ogron##4983
  accept Questioning Reethe##1273 |goto Dustwallow Marsh 40.96,36.69
step
  talk Krog##4926
  accept The Black Shield##1321 |goto Dustwallow Marsh 36.42,31.88
step
  talk "Swamp Eye" Jarl##4792
  turnin Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  turnin Cortello's Riddle##626 |goto The Hinterlands 80.79,46.82 |tip {turninat}The Hinterlands
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring 40 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
  collect 40 Unpopped Darkmist Eye##5884 |q 1206 |goto Dustwallow Marsh 32.46,21.9 |tip {dropsfrom}Darkmist Spider, Darkmist Lurker, Darkmist Recluse
step
  click Loose Dirt##20985
  accept The Severed Head##1239 |goto Dustwallow Marsh 55.44,25.92
step
  only Mage
  talk Tabetha##6546
  turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  talk Tabetha##6546
  turnin Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  talk Overlord Mok'Morokk##4500
  turnin The Brood of Onyxia##1170 |goto Dustwallow Marsh 36.29,31.41
step
  talk Nazeer Bloodpike##4791
  turnin The Severed Head##1239 |goto Dustwallow Marsh 35.21,30.66
step
  talk Do'gol##5087
  turnin The Black Shield##1321 |goto Dustwallow Marsh 36.53,30.79
step
  talk Nazeer Bloodpike##4791
  turnin The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  turnin Questioning Reethe##1273 |goto Dustwallow Marsh 36.42,31.88
step
  talk Overlord Mok'Morokk##4500
  accept The Brood of Onyxia##1171 |goto Dustwallow Marsh 36.29,31.41
step
  talk Nazeer Bloodpike##4791
  accept The Troll Witchdoctor##1240 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  accept The Black Shield##1276 |goto Dustwallow Marsh 36.42,31.88
step
  talk Do'gol##5087
  accept The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  note Acquire 6 Acidic Venom Sacs for Do'gol in Brackenwall Village.
  collect 6 Acidic Venom Sac##5959 |q 1322 |goto Dustwallow Marsh 42.08,48.32 |tip {dropsfrom}Darkfang Lurker, Darkfang Creeper, Darkfang Spider
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
  only Mage
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Mosarn##4943
  turnin The Black Shield##1276 |goto Thunder Bluff 54.01,80.77 |tip {turninat}Thunder Bluff
step
  only Mage
  talk Tabetha##6546
  accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  note Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh.
  collect Obsidian Power Source##8053 |q 1956 |goto Uldaman - Dungeon -1,-1 |elite |tip {dropsfrom}Obsidian Sentinel
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1171 |goto Dustwallow Marsh 37.15,33.09
step
  talk Kin'weelay##2519
  turnin The Troll Witchdoctor##1240 |goto Stranglethorn Vale 32.27,27.71 |tip {turninat}Stranglethorn Vale
step
  talk Do'gol##5087
  turnin The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  talk Do'gol##5087
  accept The Black Shield##1323 |goto Dustwallow Marsh 36.53,30.79
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  only Mage
  talk Tabetha##6546
  turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  note Draz'Zilb in Brackenwall Village wants you to destroy 5 Eggs of Onyxia.
  collect Egg of Onyxia##20359 |q 1172 |goto Dustwallow Marsh 53.56,75.96
step
  only Mage
  note Kill 12 Mana Surges in the allowed time limit.
  kill Mana Surge##6550 |q 1957 |goto Dustwallow Marsh 45.83,56.94
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  talk Krog##4926
  turnin The Black Shield##1323 |goto Dustwallow Marsh 36.42,31.88
step
  only Mage
  talk Tabetha##6546
  turnin Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  turnin Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 35.66,10.53
]])
