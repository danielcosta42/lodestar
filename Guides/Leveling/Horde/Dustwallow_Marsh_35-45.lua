-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Dustwallow Marsh (35-45)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Thousand Needles (37-41)",
}, [[
step
  note {fp}Shardi
  goto Dustwallow Marsh 35.56,31.88 |tip {vendor}
step
  talk Nazeer Bloodpike##4791
  accept Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  click Black Shield##20992
  accept The Black Shield##1251 |goto Dustwallow Marsh 29.63,48.62
step
  click Hoofprints##21015
  accept Suspicious Hoofprints##1268 |goto Dustwallow Marsh 29.7,47.64
step
  talk Mudcrush Durtfeet##4503
  accept Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  click Theramore Guard Badge##21042
  accept Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 29.83,48.24
step
  note Kill 9 Theramore Infiltrators, then return to Nazeer Bloodpike in Brackenwall Village.
  talk Theramore Infiltrator##4834 |q 1201 |goto Dustwallow Marsh 38.95,26.4
step
  talk Nazeer Bloodpike##4791
  turnin Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  turnin The Black Shield##1251 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  turnin Suspicious Hoofprints##1268 |goto Dustwallow Marsh 36.42,31.88
step
  talk Krog##4926
  turnin Lieutenant Paval Reethe##1269 |goto Dustwallow Marsh 36.42,31.88
step
  talk Nazeer Bloodpike##4791
  accept The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  talk Krog##4926
  accept The Black Shield##1321 |goto Dustwallow Marsh 36.42,31.88
step
  talk Ogron##4983
  accept Questioning Reethe##1273 |goto Dustwallow Marsh 40.96,36.69
step
  talk Krog##4926
  turnin Questioning Reethe##1273 |goto Dustwallow Marsh 36.42,31.88
step
  talk Do'gol##5087
  turnin The Black Shield##1321 |goto Dustwallow Marsh 36.53,30.79
step
  talk Krog##4926
  accept The Black Shield##1276 |goto Dustwallow Marsh 36.42,31.88
step
  talk Do'gol##5087
  accept The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk "Stinky" Ignatz##4880
  accept Stinky's Escape##1270 |goto Dustwallow Marsh 46.88,17.52
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
  accept The Lost Report##1238 |goto Dustwallow Marsh 55.44,25.92
step
  talk "Swamp Eye" Jarl##4792
  turnin Soothing Spices##1218 |goto Dustwallow Marsh 55.44,26.27
step
  talk "Swamp Eye" Jarl##4792
  accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
  note Bring the Captain's Documents to Nazeer Bloodpike in Brackenwall Village.
  collect Captain's Documents##5882 |q 1202 |goto Dustwallow Marsh 71.53,51.19 |tip {dropsfrom}Captain's Footlocker
step
  note Acquire 6 Acidic Venom Sacs for Do'gol in Brackenwall Village.
  collect 6 Acidic Venom Sac##5959 |q 1322 |goto Dustwallow Marsh 40.82,48.32 |tip {dropsfrom}Darkfang Lurker, Darkfang Creeper, Darkfang Spider
step
  talk Mudcrush Durtfeet##4503
  turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.26
step
  talk Nazeer Bloodpike##4791
  turnin The Theramore Docks##1202 |goto Dustwallow Marsh 35.21,30.66
step
  talk Nazeer Bloodpike##4791
  turnin The Lost Report##1238 |goto Dustwallow Marsh 35.21,30.66
step
  talk Do'gol##5087
  turnin The Black Shield##1322 |goto Dustwallow Marsh 36.53,30.79
step
  talk Do'gol##5087
  accept The Black Shield##1323 |goto Dustwallow Marsh 36.53,30.79
step
  only completed(1261)
  talk Nazeer Bloodpike##4791
  accept Report to Zor##1262 |goto Dustwallow Marsh 35.21,30.66
step
  note Bring 40 Unpopped Darkmist Eyes to "Swamp Eye" Jarl at the Swamplight Manor.
  collect 40 Unpopped Darkmist Eye##5884 |q 1206 |goto Dustwallow Marsh 32.32,22.29 |tip {dropsfrom}Darkmist Spider, Darkmist Lurker, Darkmist Recluse
step
  talk Krog##4926
  turnin The Black Shield##1323 |goto Dustwallow Marsh 36.42,31.88
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
  click Loose Dirt##20985
  accept The Severed Head##1239 |goto Dustwallow Marsh 55.44,25.92
step
  talk "Swamp Eye" Jarl##4792
  turnin Jarl Needs a Blade##1203 |goto Dustwallow Marsh 55.44,26.27
step
  only Warlock completed(1799) completed(4962)
  talk Tabetha##6546
  accept Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock completed(1799) completed(4962)
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 4961 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  only Warlock completed(1799) completed(4962)
  talk Tabetha##6546
  turnin Cleansing of the Orb of Orahil##4961 |goto Dustwallow Marsh 46.06,57.09
step
  only Warlock completed(1799) completed(4962)
  talk Tabetha##6546
  accept Returning the Cleansed Orb##4976 |goto Dustwallow Marsh 46.06,57.09
step
  talk Nazeer Bloodpike##4791
  turnin The Severed Head##1239 |goto Dustwallow Marsh 35.21,30.66
step
  talk Mebok Mizzyrix##3446
  turnin Stinky's Escape##1270 |goto The Barrens 62.37,37.62 |tip {turninat}The Barrens
step
  only completed(1261)
  talk Zor Lonetree##4047
  turnin Report to Zor##1262 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  only Mage
  talk Ursyn Ghull##3048
  accept Journey to the Marsh##1947 |goto Thunder Bluff 25.7,14.19
step
  only Mage
  talk Ursyn Ghull##3048
  accept Return to the Marsh##1953 |goto Thunder Bluff 25.7,14.19
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
  talk Melor Stonehoof##3441
  accept Deadmire##1205 |goto Thunder Bluff 61.54,80.92
step
  talk Anastasia Hartwell##4568
  accept Tabetha's Task##2861 |goto Undercity 85.14,10.03
step
  only completed(4974)
  talk Thrall##4949
  accept What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  only completed(6570)
  talk Emberstrife##10321
  accept The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  only completed(6570)
  talk Emberstrife##10321
  accept The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  note Overlord Mok'Morokk in Brackenwall Village wants you to retrieve his grog, snuff and strongbox in Dustwallow Swamp.
  collect Mok'Morokk's Snuff##5834 |q 1166 |goto Dustwallow Marsh 44.53,66.04
step
  note Tharg in Brackenwall Village wants you to kill 10 Firemane Scouts, 10 Firemane Ash Tails, and 5 Firemane Scalebanes.
  kill Firemane Scout##4329 |q 1168 |goto Dustwallow Marsh 42.4,67.8
step
  note Draz'Zilb in Brackenwall Village would like you to bring him 15 Searing Tongues and 15 Searing Hearts.
  collect Searing Tongue##5840 |q 1169 |goto Dustwallow Marsh 45.4,73 |tip {dropsfrom}Searing Hatchling, Searing Whelp
step
  note Bring Deadmire's Tooth to Melor in Thunder Bluff.
  collect Deadmire's Tooth##5945 |q 1205 |goto Dustwallow Marsh 50.2,52.7 |tip {dropsfrom}Deadmire
step
  only completed(6570)
  note You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.
  kill Scryer##10664 |goto Winterspring 52.71,55.89 |elite
  collect The Skull of Scryer##16869 |q 6582 |goto Winterspring 52.71,55.89
step
  only completed(6570)
  note Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.
  kill Chronalis##8197 |goto Tanaris 64.16,48.49 |elite
  collect The Skull of Chronalis##16871 |q 6584 |goto Tanaris 64.16,48.49
step
  only Mage
  talk Tabetha##6546
  turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09
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
  talk Melor Stonehoof##3441
  turnin Deadmire##1205 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  talk Tabetha##6546
  turnin Tabetha's Task##2861 |goto Dustwallow Marsh 46.06,57.09
step
  only completed(4974)
  talk Thrall##4949
  turnin What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  only completed(6570)
  talk Emberstrife##10321
  turnin The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  only completed(6570)
  talk Emberstrife##10321
  turnin The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  only Warlock completed(1799) completed(4962)
  talk Menara Voidrender##6266
  turnin Returning the Cleansed Orb##4976 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Mage
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1170 |goto Dustwallow Marsh 37.15,33.09
step
  only completed(4974)
  talk Thrall##4949
  accept The Champion of the Horde##6567 |goto Orgrimmar 31.73,37.82
step
  only Mage
  note Bring 1 Jade and the Bolt Charged Bramble to Tabetha in Dustwallow Marsh.
  collect 1 Jade##1529 |q 1948 |goto Dustwallow Marsh 30.92,65.84 |tip {dropsfrom}Tin Vein, Gold Vein, Iron Deposit
step
  only Mage
  note Bring an Infernal Orb to Tabetha in Dustwallow Marsh.
  collect Infernal Orb##7291 |q 1954 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Mage
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  only Mage
  talk Tabetha##6546
  turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
step
  only Mage
  talk Tabetha##6546
  turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
step
  talk Overlord Mok'Morokk##4500
  turnin The Brood of Onyxia##1170 |goto Dustwallow Marsh 36.29,31.41
step
  only completed(4974)
  talk Rexxar##10182
  turnin The Champion of the Horde##6567 |goto Desolace 54,2 |tip {turninat}Desolace
step
  talk Mosarn##4943
  turnin The Black Shield##1276 |goto Thunder Bluff 54.01,80.77 |tip {turninat}Thunder Bluff
step
  only Mage
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  only Mage
  talk Tabetha##6546
  accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Overlord Mok'Morokk##4500
  accept The Brood of Onyxia##1171 |goto Dustwallow Marsh 36.29,31.41
step
  only Mage
  note Find the phrase to Tirth's strongbox, then return to Tirth.
  talk "Plucky" Johnson##6626 |q 1950 |goto Thousand Needles 79.61,75.63
step
  only Mage
  note Kill the Demon of the Orb, then speak with Tabetha.
  kill Demon of the Orb##6549 |q 1955 |goto Dustwallow Marsh 45.79,56.97 |elite
step
  only Mage
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7 |tip {turninat}Thousand Needles
step
  only Mage
  talk Tabetha##6546
  turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1171 |goto Dustwallow Marsh 37.15,33.09
step
  talk Draz'Zilb##4501
  accept The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  note Draz'Zilb in Brackenwall Village wants you to destroy 5 Eggs of Onyxia.
  collect Egg of Onyxia##20359 |q 1172 |goto Dustwallow Marsh 56.65,75.41
step
  talk Draz'Zilb##4501
  turnin The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.09
step
  talk Overlord Mok'Morokk##4500
  accept Challenge Overlord Mok'Morokk##1173 |goto Dustwallow Marsh 36.29,31.41
step
  talk Draz'Zilb##4501
  turnin Challenge Overlord Mok'Morokk##1173 |goto Dustwallow Marsh 37.15,33.09
step
  note {travel}Thousand Needles
  goto Thousand Needles 80.18,75.88
]])
