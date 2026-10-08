-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hillsbrad Foothills (22-30)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (32-40)",
}, [[
step
  only completed(1064)
  talk Apothecary Zamah##3419
  accept Journey to Tarren Mill##1065 |goto Thunder Bluff 22.81,20.89
step
  talk Morbin Lightbane##266484
  accept Light's Justice##92421 |goto Undercity 57.78,89.34
step
  note Collect 25 Intact Limbs within The Ruins of Lordaeron for Morbin Lightbane in the Undercity.
  collect 25 Intact Limbs##268580 |q 92421 |goto Undercity 57.78,89.34 |tip {dropsfrom}Skeleton, Cadaver, Ragged Ghoul
step
  talk Theodore Griffs##11835
  accept The New Plague##95216 |goto Undercity 46.31,71.91
step
  note Collect the Highly Toxic Strain from Witherfang in Ruins of Lordaeron for Theodore Griffs in Undercity.
  collect Highly Toxic Strain##275443 |q 95216 |goto Undercity 46.31,71.91 |tip {dropsfrom}Witherfang
step
  note {fp}Zarise
  goto Hillsbrad Foothills 60.14,18.62 |tip {vendor}
step
  only completed(1064)
  talk Apothecary Lydon##2216
  turnin Journey to Tarren Mill##1065 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##496 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Krusk##2229
  accept The Rescue##498 |goto Hillsbrad Foothills 63.24,20.66
step
  click WANTED##1763
  accept WANTED: Syndicate Personnel##549 |goto Hillsbrad Foothills 62.63,20.75
step
  only completed(1064)
  talk Apothecary Lydon##2216
  accept Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  note Apothecary Lydon of Tarren Mill wants 10 Gray Bear Tongues and some Creeper Ichor.
  collect Gray Bear Tongue##3476 |q 496 |goto Hillsbrad Foothills 59.07,32.75 |tip {dropsfrom}Gray Bear, Vicious Gray Bear, Elder Gray Bear
step
  note Krusk in Tarren Mill needs you to free Drull and Tog'thar from Durnholde Keep.
  collect Locked ball and chain##1721 |q 498 |goto Hillsbrad Foothills 75.33,41.5
step
  note Bring 10 vials of Mountain Lion Blood to Apothecary Lydon in Tarren Mill.
  collect 10 Mountain Lion Blood##3496 |q 501 |goto Hillsbrad Foothills 53.42,39.28 |tip {dropsfrom}Starving Mountain Lion, Feral Mountain Lion, Mountain Lion
step
  note Kill 10 Syndicate Rogues and 10 Syndicate Watchmen. Return to High Executor Darthalia in Tarren Mill for your reward.
  kill Syndicate Rogue##2260 |q 549 |goto Hillsbrad Foothills 79.28,46.37
step
  only completed(1064)
  note Bring 5 Vials of Innocent Blood to Apothecary Lydon in Tarren Mill.
  collect 5 Vial of Innocent Blood##5620 |q 1066 |goto Hillsbrad Foothills 78.73,43.51 |tip {dropsfrom}Syndicate Shadow Mage
step
  note Kill 6 Hillsbrad Farmhands, 6 Hillsbrad Farmers, Farmer Ray and Farmer Getz and report back to Darthalia in Tarren Mill.
  talk Hillsbrad Farmer##2266 |q 527 |goto Hillsbrad Foothills 34.79,38.52
step
  talk Deathstalker Lesh##2214
  accept Time To Strike##494 |goto Hillsbrad Foothills 20.79,47.4
step
  talk High Executor Darthalia##2215
  turnin Time To Strike##494 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Apothecary Lydon##2216
  turnin Elixir of Suffering##496 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Krusk##2229
  turnin The Rescue##498 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Apothecary Lydon##2216
  turnin Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  turnin WANTED: Syndicate Personnel##549 |goto Hillsbrad Foothills 62.33,20.45
step
  only completed(1064)
  talk Apothecary Lydon##2216
  turnin Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##499 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(1064)
  talk Apothecary Lydon##2216
  accept Return to Thunder Bluff##1067 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Pain##502 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Samsa##2418
  accept Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  talk Umpi##2230
  turnin Elixir of Suffering##499 |goto Hillsbrad Foothills 61.55,19.14
step
  only Undead Paladin
  talk Ott##3539
  accept Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  talk Ott##3539
  accept The Moonsilver Blade##95126 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  talk Ott##3539
  turnin Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  talk Stanley##2274
  turnin Elixir of Pain##502 |goto Hillsbrad Foothills 32.66,35.32
step
  note Kill 15 Hillsbrad Peasants and report back to Darthalia in Tarren Mill.
  talk Hillsbrad Peasant##2267 |q 528 |goto Hillsbrad Foothills 34.06,45.69
step
  note Deathguard Samsa of Tarren Mill wants 30 Hillsbrad Human Skulls.
  collect Hillsbrad Human Skull##3692 |q 546 |goto Hillsbrad Foothills 33.22,34.76 |tip {dropsfrom}Farmer Ray, Syndicate Shadow Mage, Syndicate Rogue
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Samsa##2418
  turnin Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  note Kill Blacksmith Verringtan and 4 Hillsbrad Apprentice Blacksmiths.
  talk Blacksmith Verringtan##2404 |q 529 |goto Hillsbrad Foothills 32.11,44.42
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  note Kill Magistrate Burnside and 5 Hillsbrad Councilmen. Destroy the Hillsbrad Proclamation. Steal the Hillsbrad Town Registry. Report back to Darthalia in Tarren Mill afterwards.
  talk Magistrate Burnside##2335 |q 532 |goto Hillsbrad Foothills 29.67,41.64
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  click Dangerous!##2008
  accept Dangerous!##567 |goto Hillsbrad Foothills 62.56,19.66
step
  note Bring 6 Mudsnout Blossoms to Apothecary Lydon in Tarren Mill.
  collect 6 Mudsnout Blossoms##3502 |q 509 |goto Hillsbrad Foothills 64.56,61.25 |tip {dropsfrom}Mudsnout Blossom
step
  note High Executor Darthalia of Tarren Mill is offering a bounty on Clerk Horrace Whitesteed, Citizen Wilkes, Miner Hackett and Farmer Kalaba.
  talk Clerk Horrace Whitesteed##2448 |q 567 |goto Hillsbrad Foothills 29.51,42.41
step
  note Kill Foreman Bonds and 10 Hillsbrad Miners and report back to Darthalia in Tarren Mill.
  talk Foreman Bonds##2305 |q 539 |goto Hillsbrad Foothills 31.21,56.01
step
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  turnin Dangerous!##567 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##513 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Morbin Lightbane##266484
  turnin Light's Justice##92421 |goto Undercity 57.78,89.34 |tip {turninat}Undercity
step
  talk Theodore Griffs##11835
  turnin The New Plague##95216 |goto Undercity 46.31,71.91 |tip {turninat}Undercity
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin The Moonsilver Blade##95126 |goto Silverpine Forest 43.4,41 |tip {turninat}Silverpine Forest
step
  only Rogue completed(2478)
  talk Shenthul##3401
  accept Hinott's Assistance##2479 |goto Orgrimmar 43.05,53.74
step
  only not Orc not Tauren not Skyborne Mage
  talk Anastasia Hartwell##4568
  accept Speak with Deino##1943 |goto Undercity 85.14,10.03
step
  talk Deathguard Humbert##2419
  accept Humbert's Sword##547 |goto Hillsbrad Foothills 62.76,20.21
step
  only Warlock completed(1801)
  talk Jorah Annison##6293
  accept Tome of the Cabal##1803 |goto Undercity 75.92,37.89
step
  note Retrieve Deathguard Humbert's sword from Dun Garok and return it to him in Tarren Mill.
  kill Dun Garok Mountaineer##2344 |goto Hillsbrad Foothills 71.58,79.57 |elite
  collect Humbert's Sword##3693 |q 547 |goto Hillsbrad Foothills 71.58,79.57
step
  only Warlock completed(1801)
  note Retrieve the Moldy Tome and Tattered Manuscript for Jorah Annison in the Undercity.
  collect Moldy Tome##6931 |q 1803 |goto Hillsbrad Foothills 27.78,72.79 |tip {dropsfrom}Tome of the Cabal
step
  only Rogue completed(2478)
  talk Serge Hinott##2391
  turnin Hinott's Assistance##2479 |goto Hillsbrad Foothills 61.63,19.19
step
  only not Orc not Tauren not Skyborne Mage
  talk Deino##5885
  turnin Speak with Deino##1943 |goto Orgrimmar 38.45,86.13 |tip {turninat}Orgrimmar
step
  talk Deathguard Humbert##2419
  turnin Humbert's Sword##547 |goto Hillsbrad Foothills 62.76,20.21
step
  only Warlock completed(1801)
  talk Jorah Annison##6293
  turnin Tome of the Cabal##1803 |goto Undercity 75.92,37.89 |tip {turninat}Undercity
step
  talk Master Apothecary Faranell##2055
  turnin Elixir of Agony##513 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  only Rogue completed(2478)
  talk Serge Hinott##2391
  accept Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  only Rogue completed(2478)
  talk Serge Hinott##2391
  turnin Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  only completed(1064)
  talk Apothecary Zamah##3419
  turnin Return to Thunder Bluff##1067 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Master Apothecary Faranell##2055
  accept Elixir of Agony##515 |goto Undercity 48.82,69.28
step
  note Bring the Mudsnout Mixture, a Strong Troll's Blood Potion, 5 Daggerspine Scales and 5 Torn Fin Eyes to Apothecary Lydon in Tarren Mill.
  collect Strong Troll's Blood Potion##3388 |q 515 |goto Undercity 48.82,69.28
step
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##515 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring a keg of Shindigger Stout to Apothecary Lydon in Tarren Mill.
  collect Keg of Shindigger Stout##3517 |q 517 |goto Hillsbrad Foothills 72.02,81.16
step
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##524 |goto Hillsbrad Foothills 61.44,19.06
step
  turnin Elixir of Agony##524 |goto Hillsbrad Foothills 62.81,18.73
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##541 |goto Hillsbrad Foothills 62.33,20.45
step
  note Travel to Dun Garok and kill 8 Mountaineers, 4 Riflemen, 2 Priests and Captain Ironhill and report back to Darthalia in Tarren Mill.
  talk Dun Garok Mountaineer##2344 |q 541 |goto Hillsbrad Foothills 71.58,79.57
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##541 |goto Hillsbrad Foothills 62.33,20.45
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 62.33,20.45
]])
