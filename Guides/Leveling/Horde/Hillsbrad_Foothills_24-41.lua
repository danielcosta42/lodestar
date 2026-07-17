-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hillsbrad Foothills (24-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Desolace (33-42)",
}, [[
step
  note {fp}Zarise
  goto Hillsbrad Foothills 60.14,18.62 |tip {vendor}
step
  talk Deathstalker Lesh##2214
  accept Time To Strike##494 |goto Hillsbrad Foothills 20.79,47.4
step
  talk Marshal Redpath##2263
  accept Farren's Proof##561 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Master Apothecary Faranell##2055
  accept Going, Going, Guano!##1109 |goto Undercity 48.82,69.28
step
  note Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity.
  collect 1 Going, Going, Guano!##5801 |q 1109 |goto Undercity 48.82,69.28
step
  only Warlock
  talk Zevrost##3326
  accept In Search of Menara Voidrender##4737 |goto Orgrimmar 48.47,45.43
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4737 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk High Executor Darthalia##2215
  turnin Time To Strike##494 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##496 |goto Hillsbrad Foothills 61.44,19.06
step
  note Apothecary Lydon of Tarren Mill wants 10 Gray Bear Tongues and some Creeper Ichor.
  collect Gray Bear Tongue##3476 |q 496 |goto Hillsbrad Foothills 58.08,32.75 |tip {dropsfrom}Gray Bear, Vicious Gray Bear, Elder Gray Bear
step
  talk Krusk##2229
  accept The Rescue##498 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Apothecary Lydon##2216
  accept Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring 10 vials of Mountain Lion Blood to Apothecary Lydon in Tarren Mill.
  collect 10 Mountain Lion Blood##3496 |q 501 |goto Hillsbrad Foothills 52.65,39.28 |tip {dropsfrom}Starving Mountain Lion, Feral Mountain Lion, Mountain Lion
step
  talk Krusk##2229
  accept Lord Aliden Perenolde##507 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring 6 Mudsnout Blossoms to Apothecary Lydon in Tarren Mill.
  collect 6 Mudsnout Blossoms##3502 |q 509 |goto Hillsbrad Foothills 64.56,61.26 |tip {dropsfrom}Mudsnout Blossom
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring a keg of Shindigger Stout to Apothecary Lydon in Tarren Mill.
  collect Keg of Shindigger Stout##3517 |q 517 |goto Hillsbrad Foothills 72.02,80.88
step
  talk Melisara##2278
  accept The Crown of Will##518 |goto Hillsbrad Foothills 62.63,20.65
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Magus Wordeen Voidglare##2410
  accept Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  note Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
  collect Bloodstone Wedge##3691 |q 544 |goto Alterac Mountains 19.91,85.97 |tip {dropsfrom}Dermot
step
  talk Deathguard Samsa##2418
  accept Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  note Deathguard Samsa of Tarren Mill wants 30 Hillsbrad Human Skulls.
  collect Hillsbrad Human Skull##3692 |q 546 |goto Hillsbrad Foothills 33.22,34.76 |tip {dropsfrom}Farmer Ray, Syndicate Shadow Mage, Syndicate Rogue
step
  talk Deathguard Humbert##2419
  accept Humbert's Sword##547 |goto Hillsbrad Foothills 62.76,20.21
step
  note Retrieve Deathguard Humbert's sword from Dun Garok and return it to him in Tarren Mill.
  collect Humbert's Sword##3693 |q 547 |goto Hillsbrad Foothills 71.58,79.62 |tip {dropsfrom}Dun Garok Mountaineer, Dun Garok Rifleman, Dun Garok Priest
step
  click WANTED##1763
  accept WANTED: Syndicate Personnel##549 |goto Hillsbrad Foothills 62.63,20.75
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  note Retrieve Helcular's Rod from the Yeti and bring it back to Novice Thaivand in Tarren Mill.
  collect Helcular's Rod##3708 |q 552 |goto Hillsbrad Foothills 44.92,31.77 |tip {dropsfrom}Cave Yeti, Ferocious Yeti, Mountain Yeti
step
  talk Keeper Bel'varil##2437
  accept Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  note Bring 10 Worn Stone Tokens to Keeper Bel'varil in Tarren Mill.
  collect 10 Worn Stone Token##3714 |q 556 |goto Alterac Mountains 19.0,84.06 |tip {dropsfrom}Dalaran Shield Guard, Dalaran Theurgist, Dalaran Summoner
step
  click WANTED##1763
  accept WANTED: Baron Vardus##566 |goto Hillsbrad Foothills 62.63,20.75
step
  note Kill Baron Vardus and deliver his head to High Executor Darthalia in Tarren Mill.
  collect Head of Baron Vardus##3626 |q 566 |goto Alterac Mountains 47.83,17.11 |tip {dropsfrom}Baron Vardus
step
  click Dangerous!##2008
  accept Dangerous!##567 |goto Hillsbrad Foothills 62.56,19.66
step
  talk Tallow##2770
  accept The Hammer May Fall##676 |goto Hillsbrad Foothills 61.87,19.57
step
  talk Apothecary Lydon##2216
  accept Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring 5 Vials of Innocent Blood to Apothecary Lydon in Tarren Mill.
  collect 5 Vial of Innocent Blood##5620 |q 1066 |goto Hillsbrad Foothills 78.99,43.42 |tip {dropsfrom}Syndicate Shadow Mage
step
  talk Belgrom Rockmaul##4485
  accept The Swarm Grows##1146 |goto Orgrimmar 75.23,34.24
step
  talk Krusk##2229
  accept Regthar Deathgate##1361 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Orokk Omosh##7790
  accept Barbaric Battlements##2751 |goto Orgrimmar 79.24,22.4
step
  note Bring two Patterned Bronze Bracers, two Bronze Greatswords, and two Sharp Claws to Orokk Omosh in Orgrimmar.
  collect Patterned Bronze Bracers##2868 |q 2751 |goto Orgrimmar 79.24,22.4
step
  talk Apothecary Lydon##2216
  accept Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring an Undamaged Venom Sac to Apothecary Lydon in Tarren Mill.
  collect Undamaged Venom Sac##9322 |q 2934 |goto The Hinterlands 34.36,70.66 |tip {dropsfrom}Witherbark Broodguard
step
  only Warlock
  talk Kaal Soulreaper##4563
  accept In Search of Menara Voidrender##4739 |goto Undercity 86.21,15.93
step
  talk Christoph Jeffcoat##2393
  accept Soothing Turtle Bisque##7321 |goto Hillsbrad Foothills 62.29,19.04
step
  note Bring 10 pieces of Turtle Meat and some Soothing Spices to Christoph Jeffcoat in Tarren Mill.
  collect 10 Turtle Meat##3712 |q 7321 |goto Alterac Mountains 30.81,45.85 |tip {dropsfrom}Snapjaw, Saltwater Snapjaw, Sparkleshell Tortoise
step
  note Kill 10 Syndicate Rogues and 10 Syndicate Watchmen. Return to High Executor Darthalia in Tarren Mill for your reward.
  kill Syndicate Rogue##2260 |q 549 |goto Hillsbrad Foothills 78.71,45.6
step
  note Krusk in Tarren Mill needs you to free Drull and Tog'thar from Durnholde Keep.
  collect Locked ball and chain##1721 |q 498 |goto Hillsbrad Foothills 75.33,41.5
step
  talk Regthar Deathgate##3389
  turnin Regthar Deathgate##1361 |goto The Barrens 45.34,28.41 |tip {turninat}The Barrens
step
  note Kill 6 Hillsbrad Farmhands, 6 Hillsbrad Farmers, Farmer Ray and Farmer Getz and report back to Darthalia in Tarren Mill.
  kill Hillsbrad Farmer##2266 |q 527 |goto Hillsbrad Foothills 33.8,38.62
step
  note Kill 8 Boulderfist Ogres and 10 Boulderfist Enforcers, then find Drum Fel in the Hammerfall outpost in Arathi Highlands.
  kill Boulderfist Ogre##2562 |q 676 |goto Arathi Highlands 34.69,45.29
step
  note High Executor Darthalia of Tarren Mill is offering a bounty on Clerk Horrace Whitesteed, Citizen Wilkes, Miner Hackett and Farmer Kalaba.
  kill Clerk Horrace Whitesteed##2448 |q 567 |goto Hillsbrad Foothills 29.51,42.41
step
  note Kill Lord Aliden Perenolde and ask his mistress, Elysa, about Taretha's pendant.
  kill Lord Aliden Perenolde##2423 |q 507 |goto Alterac Mountains 39.32,14.58
step
  talk Master Apothecary Faranell##2055
  turnin Going, Going, Guano!##1109 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Lieutenant Farren Orinelle##2228
  turnin Farren's Proof##561 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Moktar Krin##4483
  turnin The Swarm Grows##1146 |goto Thousand Needles 67.58,63.94 |tip {turninat}Thousand Needles
step
  talk Master Apothecary Faranell##2055
  accept Hearts of Zeal##1113 |goto Undercity 48.82,69.28
step
  note Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal.
  collect Hearts of Zeal##5805 |q 1113 |goto Undercity 48.82,69.28
step
  note Kill 10 Crushridge Maulers for Melisara in Tarren Mill.
  kill Crushridge Mauler##2254 |q 518 |goto Alterac Mountains 43.11,46.87
step
  only Warlock
  talk Menara Voidrender##6266
  turnin In Search of Menara Voidrender##4739 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Melisara##2278
  turnin The Crown of Will##518 |goto Hillsbrad Foothills 62.63,20.65
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Christoph Jeffcoat##2393
  turnin Soothing Turtle Bisque##7321 |goto Hillsbrad Foothills 62.29,19.04
step
  talk Magus Wordeen Voidglare##2410
  turnin Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Deathguard Samsa##2418
  turnin Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  talk Deathguard Humbert##2419
  turnin Humbert's Sword##547 |goto Hillsbrad Foothills 62.76,20.21
step
  talk Drum Fel##2771
  turnin The Hammer May Fall##676 |goto Arathi Highlands 74.24,33.92 |tip {turninat}Arathi Highlands
step
  talk High Executor Darthalia##2215
  turnin WANTED: Syndicate Personnel##549 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Novice Thaivand##2429
  turnin Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  talk Apothecary Lydon##2216
  turnin Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Keeper Bel'varil##2437
  turnin Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
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
  turnin WANTED: Baron Vardus##566 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  turnin Dangerous!##567 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Apothecary Lydon##2216
  turnin Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Orokk Omosh##7790
  turnin Barbaric Battlements##2751 |goto Orgrimmar 79.24,22.4 |tip {turninat}Orgrimmar
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##499 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Pain##502 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##513 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Melisara##2278
  accept The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  note Kill Targ, Muckrake, and Glommus and bring their heads to Melisara in Tarren Mill.
  collect Targ's Head##3550 |q 519 |goto Alterac Mountains 39.57,52.83 |tip {dropsfrom}Targ
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##524 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Krusk##2229
  accept Infiltration##533 |goto Hillsbrad Foothills 63.24,20.66
step
  note Retrieve information about Gol'dir's whereabouts for Krusk in Tarren Mill.
  collect Syndicate Missive##3601 |q 533 |goto Alterac Mountains 57.71,68.04 |tip {dropsfrom}Syndicate Footpad, Syndicate Thief
step
  talk Magus Wordeen Voidglare##2410
  accept Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##553 |goto Hillsbrad Foothills 63.88,19.66
step
  talk Keeper Bel'varil##2437
  accept Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
step
  note Bring 4 Bracers of Earth Binding to Keeper Bel'varil in Tarren Mill.
  collect 4 Bracers of Earth Binding##3715 |q 557 |goto Alterac Mountains 19.91,64.34 |tip {dropsfrom}Elemental Slave
step
  talk Apothecary Lydon##2216
  accept Return to Thunder Bluff##1067 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Orokk Omosh##7790
  accept On Iron Pauldrons##2752 |goto Orgrimmar 79.24,22.4
step
  note Bring four Bronze Battleaxes and four Bronze Warhammers to Orokk Omosh in Orgrimmar.
  collect Bronze Battle Axe##7958 |q 2752 |goto Orgrimmar 79.24,22.4
step
  talk Apothecary Lydon##2216
  accept Consult Master Gadrin##2935 |goto Hillsbrad Foothills 61.44,19.06
step
  note Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
  kill Dalaran Summoner##2358 |q 545 |goto Alterac Mountains 19.4,74.92
step
  talk Apothecary Zamah##3419
  turnin Return to Thunder Bluff##1067 |goto Thunder Bluff 22.81,20.89 |tip {turninat}Thunder Bluff
step
  talk Stanley##2274
  turnin Elixir of Pain##502 |goto Hillsbrad Foothills 32.66,35.32
step
  talk Elysa##2317
  turnin Lord Aliden Perenolde##507 |goto Alterac Mountains 39.3,14.31 |tip {turninat}Alterac Mountains
step
  note Kill 15 Hillsbrad Peasants and report back to Darthalia in Tarren Mill.
  kill Hillsbrad Peasant##2267 |q 528 |goto Hillsbrad Foothills 34.69,45.43
step
  note Charge the Rod of Helcular with the powers of the Flame of Azel, Flame of Veraz and the Flame of Uzel.
  collect Flame of Azel##1768 |q 553 |goto Hillsbrad Foothills 43.89,28.06
step
  talk Master Apothecary Faranell##2055
  turnin Elixir of Agony##513 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Master Apothecary Faranell##2055
  turnin Hearts of Zeal##1113 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  turnin Helcular's Revenge##553 |goto Hillsbrad Foothills 52.75,53.37
step
  talk Master Gadrin##3188
  turnin Consult Master Gadrin##2935 |goto Durotar 55.95,74.72 |tip {turninat}Durotar
step
  talk Orokk Omosh##7790
  turnin On Iron Pauldrons##2752 |goto Orgrimmar 79.24,22.4 |tip {turninat}Orgrimmar
step
  talk Melisara##2278
  turnin The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  turnin Elixir of Agony##524 |goto Hillsbrad Foothills 62.81,18.73
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Krusk##2229
  turnin Infiltration##533 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Magus Wordeen Voidglare##2410
  turnin Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Keeper Bel'varil##2437
  turnin Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Umpi##2230
  turnin Elixir of Suffering##499 |goto Hillsbrad Foothills 61.55,19.14
step
  talk Melisara##2278
  accept The Crown of Will##520 |goto Hillsbrad Foothills 62.63,20.65
step
  note Kill Mug'Thol, and return his head with the Crown of Will to Melisara in Tarren Mill.
  collect Mug'thol's Head##3553 |q 520 |goto Alterac Mountains 35.68,54.25 |tip {dropsfrom}Mug'thol
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  note Kill Blacksmith Verringtan and 4 Hillsbrad Apprentice Blacksmiths.
  kill Blacksmith Verringtan##2404 |q 529 |goto Hillsbrad Foothills 32.11,44.42
step
  talk Melisara##2278
  turnin The Crown of Will##520 |goto Hillsbrad Foothills 62.63,20.65
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Melisara##2278
  accept The Crown of Will##521 |goto Hillsbrad Foothills 62.63,20.65
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  note Kill Magistrate Burnside and 4 Hillsbrad Councilmen. Destroy the Hillsbrad Proclamation. Steal the Hillsbrad Town Registry. Report back to Darthalia in Tarren Mill afterwards.
  kill Magistrate Burnside##2335 |q 532 |goto Hillsbrad Foothills 29.67,41.64
step
  talk Sharlindra##2227
  turnin The Crown of Will##521 |goto Undercity 57.63,93.8 |tip {turninat}Undercity
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  note Kill Foreman Bonds and 10 Hillsbrad Miners and report back to Darthalia in Tarren Mill.
  kill Foreman Bonds##2305 |q 539 |goto Hillsbrad Foothills 31.21,56.01
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##541 |goto Hillsbrad Foothills 62.33,20.45
step
  note Travel to Dun Garok and kill 8 Mountaineers, 4 Riflemen, 2 Priests and Captain Ironhill and report back to Darthalia in Tarren Mill.
  kill Dun Garok Mountaineer##2344 |q 541 |goto Hillsbrad Foothills 71.58,79.62
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##541 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##550 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Varimathras##2425
  turnin Battle of Hillsbrad##550 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  note {travel}Desolace
  goto Desolace 56.19,59.57
]])
