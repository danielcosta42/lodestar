-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hillsbrad Foothills (22-28)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Thousand Needles (27-33)",
	rev = "14c77287",
}, [[
step
  ding 21
step
  talk Apothecary Renferrel##1937
  accept Journey to Hillsbrad Foothills##493 |goto Silverpine Forest 42.8,40.86
step
  only Warlock completed(1476) not completed(1507) not haveq(1507)
  talk Carendin Halgar##5675
  accept The Binding##1474 |goto Undercity 85.06,25.99
step
  only Warlock completed(1476) not completed(1507) not haveq(1507)
  note Using the Pure Hearts, summon and subdue a succubus, then return the Pure Hearts to Carendin Halgar in the Magic Quarter of the Undercity.
  use Summoned Succubus##5677 |q 1474 |tip {useit}
step
  only Undead Priest not completed(5644) not completed(5646) not haveq(5644) not haveq(5646)
  talk Aelthalyste##4606
  accept Dark Sacrifice##5679 |goto Undercity 49.26,17.12
step
  only Shaman completed(63)
  click Brazier of Everfount##113791
  accept Call of Water##100 |goto Silverpine Forest 38.26,44.56
step
  only hasitem(271343)
  use Note Scrap##271343 |tip It starts the quest.
  accept The Offering Stone##95884
step
  note {fp}Zarise
  goto Hillsbrad Foothills 60.14,18.62 |tip {vendor}
step
  note Deliver Apothecary Renferrel's findings to Apothecary Lydon in the town of Tarren Mill in the Hillsbrad Foothills.
  talk Apothecary Lydon##2216
  turnin Journey to Hillsbrad Foothills##493 |goto Hillsbrad Foothills 61.44,19.06
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
  only Rogue completed(2479)
  talk Serge Hinott##2391
  accept Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  only completed(1065)
  talk Apothecary Lydon##2216
  accept Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  only Rogue completed(2479)
  note Wait for Serge Hinott to complete the cure.
  talk Serge Hinott##2391
  turnin Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  note Krusk in Tarren Mill needs you to free Drull and Tog'thar from Durnholde Keep.
  click Locked ball and chain##1721 |q 498/1 |goto Hillsbrad Foothills 75.33,41.5
  click Locked ball and chain##1722 |q 498 |goto Hillsbrad Foothills 79.79,39.65
step
  note Kill 10 Syndicate Rogues and 10 Syndicate Watchmen. Return to High Executor Darthalia in Tarren Mill for your reward.
  kill Syndicate Watchman##2261 |q 549/2 |goto Hillsbrad Foothills 78.18,43.19
  kill Syndicate Rogue##2260 |q 549 |goto Hillsbrad Foothills 79.28,46.37
step
  only completed(1065)
  note Bring 5 Vials of Innocent Blood to Apothecary Lydon in Tarren Mill.
  collect 5 Vial of Innocent Blood##5620 |q 1066 |goto Hillsbrad Foothills 78.73,43.51 |tip {dropsfrom}Syndicate Shadow Mage
step
  talk Krusk##2229
  turnin The Rescue##498 |goto Hillsbrad Foothills 63.24,20.66
step
  talk High Executor Darthalia##2215
  turnin WANTED: Syndicate Personnel##549 |goto Hillsbrad Foothills 62.33,20.45
step
  only completed(1065)
  talk Apothecary Lydon##2216
  turnin Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(1065)
  talk Apothecary Lydon##2216
  accept Return to Thunder Bluff##1067 |goto Hillsbrad Foothills 61.44,19.06
step
  only level>=21
  talk Apothecary Lydon##2216
  accept Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  note Apothecary Lydon of Tarren Mill wants 10 Gray Bear Tongues and some Creeper Ichor.
  collect 10 Gray Bear Tongue##3476 |q 496/1 |goto Hillsbrad Foothills 59.07,32.75 |tip {dropsfrom}Gray Bear, Vicious Gray Bear, Elder Gray Bear
  collect Creeper Ichor##3477 |q 496 |goto Hillsbrad Foothills 59.56,35.19 |tip {dropsfrom}Forest Moss Creeper, Giant Moss Creeper, Elder Moss Creeper
step
  only haveq(501)
  note Bring 10 vials of Mountain Lion Blood to Apothecary Lydon in Tarren Mill.
  collect 10 Mountain Lion Blood##3496 |q 501 |goto Hillsbrad Foothills 53.42,39.28 |tip {dropsfrom}Starving Mountain Lion, Feral Mountain Lion, Mountain Lion
step
  note Kill 6 Hillsbrad Farmhands, 6 Hillsbrad Farmers, Farmer Ray and Farmer Getz and report back to Darthalia in Tarren Mill.
  kill Farmer Getz##2403 |q 527/4 |goto Hillsbrad Foothills 36.4,39.4
  kill Hillsbrad Farmer##2266 |q 527/1 |goto Hillsbrad Foothills 34.79,38.52
  kill Hillsbrad Farmhand##2360 |q 527/2 |goto Hillsbrad Foothills 33.83,40.09
  kill Farmer Ray##232 |q 527 |goto Hillsbrad Foothills 33.22,34.76
step
  talk Apothecary Lydon##2216
  turnin Elixir of Suffering##496 |goto Hillsbrad Foothills 61.44,19.06
step
  only haveq(501)
  talk Apothecary Lydon##2216
  turnin Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##499 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(501)
  talk Apothecary Lydon##2216
  accept Elixir of Pain##502 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Samsa##2418
  accept Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  note Give Umpi the Elixir of Suffering.
  talk Umpi##2230
  turnin Elixir of Suffering##499 |goto Hillsbrad Foothills 61.55,19.14
step
  only haveq(502)
  note Feed the Elixir of Pain to Stanley.
  talk Stanley##2274
  turnin Elixir of Pain##502 |goto Hillsbrad Foothills 32.66,35.32
step
  note Deathguard Samsa of Tarren Mill wants 30 Hillsbrad Human Skulls.
  collect 30 Hillsbrad Human Skull##3692 |q 546 |goto Hillsbrad Foothills 33.22,34.76 |tip {dropsfrom}Farmer Ray, Syndicate Shadow Mage, Syndicate Rogue
step
  talk Deathstalker Lesh##2214
  accept Time To Strike##494 |goto Hillsbrad Foothills 20.79,47.4
step
  note Kill 15 Hillsbrad Peasants and report back to Darthalia in Tarren Mill.
  kill Hillsbrad Peasant##2267 |q 528 |goto Hillsbrad Foothills 34.06,45.69
step
  note Travel to Tarren Mill to deliver Deathstalker Lesh's message to High Executor Darthalia.
  talk High Executor Darthalia##2215
  turnin Time To Strike##494 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Samsa##2418
  turnin Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  talk High Executor Darthalia##2215
  accept Scout Support##98094 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  only Paladin completed(95036)
  talk Trevan Rol##248840
  accept An Underrated Talent##95111 |goto Hillsbrad Foothills 60.43,26.3
step
  only Paladin completed(95036)
  note Speak with Ott and ask him to forge your blade.
  talk Ott##3539
  turnin An Underrated Talent##95111 |goto Hillsbrad Foothills 60.43,26.18
step
  only Paladin completed(95036)
  talk Ott##3539
  accept Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  only Paladin completed(95036)
  note Watch as Ott forges your blade.
  talk Ott##3539 |q 95125 |goto Hillsbrad Foothills 60.43,26.18
step
  only Paladin completed(95036)
  talk Ott##3539
  turnin Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  only Paladin completed(95036)
  talk Ott##3539
  accept The Moonsilver Blade##95126 |goto Hillsbrad Foothills 60.43,26.18
step
  only Paladin completed(95036)
  note Bring Ott's Masterwork to Trevan Rol in Silverpine Forest.
  talk Trevan Rol##248840
  turnin The Moonsilver Blade##95126 |goto Hillsbrad Foothills 60.43,26.3
step
  note High Executor Darthalia wants you to deliver updated orders to Deathstalker Masoj, south of Tarren Mill, outside of Dun Garok.
  talk Deathstalker Masoj##270438
  turnin Scout Support##98094 |goto Hillsbrad Foothills 64,53.82
step
  talk Deathstalker Masoj##270438
  accept Valuable Vantages##98095 |goto Hillsbrad Foothills 64,53.82
step
  note Deathstalker Masoj needs you to place the three Apothecary Vials on peaks around Hillsbrad Foothills and return to him.
  goto Hillsbrad Foothills 74.24,73.36 |q 98095/3
  goto Hillsbrad Foothills 71.52,30.38 |q 98095/2
  goto Alterac Mountains 38.58,95.09 |q 98095
step
  talk Deathstalker Masoj##270438
  turnin Valuable Vantages##98095 |goto Hillsbrad Foothills 64,53.82
step
  note Kill Blacksmith Verringtan and 4 Hillsbrad Apprentice Blacksmiths.
  kill Blacksmith Verringtan##2404 |q 529 |goto Hillsbrad Foothills 32.11,44.42
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  note Kill Magistrate Burnside and 5 Hillsbrad Councilmen. Destroy the Hillsbrad Proclamation. Steal the Hillsbrad Town Registry. Report back to Darthalia in Tarren Mill afterwards.
  kill Magistrate Burnside##2335 |q 532 |goto Hillsbrad Foothills 29.67,41.64
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  only level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  click Dangerous!##2008
  accept Dangerous!##567 |goto Hillsbrad Foothills 62.56,19.66
step
  note High Executor Darthalia of Tarren Mill is offering a bounty on Clerk Horrace Whitesteed, Citizen Wilkes, Miner Hackett and Farmer Kalaba.
  kill Citizen Wilkes##2449 |q 567/2 |goto Hillsbrad Foothills 32.62,39.79
  kill Clerk Horrace Whitesteed##2448 |q 567/1 |goto Hillsbrad Foothills 29.51,42.41
  kill Farmer Kalaba##2451 |q 567/4 |goto Hillsbrad Foothills 35.88,46.57
  kill Miner Hackett##2450 |q 567 |goto Hillsbrad Foothills 31.8,52.7
step
  note Kill Foreman Bonds and 10 Hillsbrad Miners and report back to Darthalia in Tarren Mill.
  kill Hillsbrad Miner##2269 |q 539/2 |goto Hillsbrad Foothills 30.44,55.62
  kill Foreman Bonds##2305 |q 539 |goto Hillsbrad Foothills 31.21,56.01
step
  only haveq(509)
  note Bring 6 Mudsnout Blossoms to Apothecary Lydon in Tarren Mill.
  collect 6 Mudsnout Blossoms##3502 |q 509 |goto Hillsbrad Foothills 64.56,61.25 |tip {dropsfrom}Mudsnout Blossom
step
  only haveq(509)
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  turnin Dangerous!##567 |goto Hillsbrad Foothills 62.33,20.45
step
  only completed(509) level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##513 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) haveq(517)
  note Bring a keg of Shindigger Stout to Apothecary Lydon in Tarren Mill.
  collect Keg of Shindigger Stout##3517 |q 517 |goto Hillsbrad Foothills 72.02,81.16
step
  only completed(515) haveq(517)
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) completed(517) level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##524 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) haveq(524)
  note Place the Tainted Keg on the rug for the captured farmers.
  turnin Elixir of Agony##524 |goto Hillsbrad Foothills 62.81,18.73
step
  only Warlock completed(1476) not completed(1507) not haveq(1507)
  talk Carendin Halgar##5675
  turnin The Binding##1474 |goto Undercity 85.06,25.99 |tip {turninat}Undercity
step
  only Undead Priest not completed(5644) not completed(5646) not haveq(5644) not haveq(5646)
  talk Aelthalyste##4606
  turnin Dark Sacrifice##5679 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Shaman completed(63)
  note Speak to the Minor Manifestation of Water in Silverpine Forest.
  talk Minor Manifestation of Water##5895
  turnin Call of Water##100 |goto Silverpine Forest 38.65,44.58 |tip {turninat}Silverpine Forest
step
  only Undead Paladin completed(95036) level>=26
  talk Lumina Windsinger##259620
  accept Old Fire-Eye##95140 |goto Silverpine Forest 43.4,40.99
step
  only haveq(95884)
  note Find the Offering Stone in Beren's Peril in Silverpine Forest.
  collect Note Scrap##271343 |q 95884 |goto Silverpine Forest 58.66,71.29 |tip {dropsfrom}Ravenclaw Guardian, Ravenclaw Drudger
step
  only haveq(95884)
  turnin The Offering Stone##95884 |goto Silverpine Forest 58.12,69.77 |tip {turninat}Silverpine Forest
step
  only completed(95884)
  click Offering Stone##645153
  accept The Tortured Soul##95883 |goto Silverpine Forest 58.12,69.77
step
  only haveq(95883)
  note Collect a Tortured Soul from the nearby undead in Beren's Peril in Silverpine Forest.
  collect Tortured Soul##271350 |q 95883 |goto Silverpine Forest 58.66,71.29 |tip {dropsfrom}Ravenclaw Guardian, Ravenclaw Drudger
step
  only haveq(95883)
  turnin The Tortured Soul##95883 |goto Silverpine Forest 58.12,69.77 |tip {turninat}Silverpine Forest
step
  only completed(95883) level>=23
  click Offering Stone##645153
  accept The Offering of Blood##95885 |goto Silverpine Forest 58.12,69.77
step
  only haveq(95885)
  note Use the Tortured Soul to give an offering of blood at the Offering Stone in Beren's Peril.
  kill Tortured Soul##212753 |q 95885 |goto Silverpine Forest 58.19,69.83 |elite
step
  only haveq(95885)
  turnin The Offering of Blood##95885 |goto Silverpine Forest 58.12,69.77 |tip {turninat}Silverpine Forest
step
  only Undead Paladin completed(95036) haveq(95140)
  note Use the Moonsilver Blade to destroy Old Fire-Eye in Silverpine Forest.
  kill Old Fire-Eye##259897 |q 95140 |goto Silverpine Forest 49.55,85.89 |elite
step
  only Undead Paladin completed(95036) haveq(95140)
  talk Lumina Windsinger##259620
  turnin Old Fire-Eye##95140 |goto Silverpine Forest 43.4,40.99 |tip {turninat}Silverpine Forest
step
  only not Undead not Skyborne Shaman hasitem(281147)
  use Grant's Shield##281147 |tip It starts the quest.
  accept Grant's Shield##79362
step
  only not Undead not Skyborne Shaman haveq(79362)
  note Find Grant's Mace on one of the skeletons in Raven Hill Cemetery then return to Sirra Von'Indie in Darkshire for more information.
  collect Grant's Mace##281146 |q 79362 |goto Duskwood 23.06,47.11 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend, Skeletal Healer
step
  only not Undead not Skyborne Shaman hasitem(281145)
  use Silvia's Sword##281145 |tip It starts the quest.
  accept Silvia's Sword##79363
step
  only not Undead not Skyborne Shaman haveq(79363)
  note Defeat 7 Defias Night Blades and 7 Defias Enchanters in Addle's Stead then return to Sirra Von'Indi in Darkshire for more information.
  kill Defias Night Blade##909 |q 79363/1 |goto Duskwood 23.37,73.31
  kill Defias Enchanter##910 |q 79363 |goto Duskwood 23.65,71.95
step
  only not Undead not Skyborne Shaman haveq(79362)
  talk Bath'rah the Windwatcher##6176
  turnin Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  only not Undead not Skyborne Shaman haveq(79363)
  talk Bath'rah the Windwatcher##6176
  turnin Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  note {travel}Thousand Needles
  goto Thousand Needles 53.95,41.49
]])
