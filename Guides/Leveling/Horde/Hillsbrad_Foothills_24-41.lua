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
  talk High Executor Darthalia##2215
  turnin Time To Strike##494 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##496 |goto Hillsbrad Foothills 61.44,19.06
step
  note Apothecary Lydon of Tarren Mill wants 10 Gray Bear Tongues and some Creeper Ichor.
  get Elixir of Suffering |q 496 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Krusk##2229
  accept The Rescue##498 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Apothecary Lydon##2216
  accept Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring 10 vials of Mountain Lion Blood to Apothecary Lydon in Tarren Mill.
  get Elixir of Pain |q 501 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Krusk##2229
  accept Lord Aliden Perenolde##507 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring 6 Mudsnout Blossoms to Apothecary Lydon in Tarren Mill.
  get Elixir of Agony |q 509 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring a keg of Shindigger Stout to Apothecary Lydon in Tarren Mill.
  get Elixir of Agony |q 517 |goto Hillsbrad Foothills 61.44,19.06
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
  get Prison Break In |q 544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Deathguard Samsa##2418
  accept Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  note Deathguard Samsa of Tarren Mill wants 30 Hillsbrad Human Skulls.
  get Souvenirs of Death |q 546 |goto Hillsbrad Foothills 62.11,19.7
step
  talk Deathguard Humbert##2419
  accept Humbert's Sword##547 |goto Hillsbrad Foothills 62.76,20.21
step
  note Retrieve Deathguard Humbert's sword from Dun Garok and return it to him in Tarren Mill.
  get Humbert's Sword |q 547 |goto Hillsbrad Foothills 62.76,20.21
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  note Retrieve Helcular's Rod from the Yeti and bring it back to Novice Thaivand in Tarren Mill.
  get Helcular's Revenge |q 552 |goto Hillsbrad Foothills 63.88,19.66
step
  talk Keeper Bel'varil##2437
  accept Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  note Bring 10 Worn Stone Tokens to Keeper Bel'varil in Tarren Mill.
  get Stone Tokens |q 556 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Tallow##2770
  accept The Hammer May Fall##676 |goto Hillsbrad Foothills 61.87,19.57
step
  talk Apothecary Lydon##2216
  accept Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring 5 Vials of Innocent Blood to Apothecary Lydon in Tarren Mill.
  get Blood of Innocents |q 1066 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Krusk##2229
  accept Regthar Deathgate##1361 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Apothecary Lydon##2216
  accept Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring an Undamaged Venom Sac to Apothecary Lydon in Tarren Mill.
  get Undamaged Venom Sac |q 2934 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Christoph Jeffcoat##2393
  accept Soothing Turtle Bisque##7321 |goto Hillsbrad Foothills 62.29,19.04
step
  note Bring 10 pieces of Turtle Meat and some Soothing Spices to Christoph Jeffcoat in Tarren Mill.
  get Soothing Turtle Bisque |q 7321 |goto Hillsbrad Foothills 62.29,19.04
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
  note Kill Lord Aliden Perenolde and ask his mistress, Elysa, about Taretha's pendant.
  kill Lord Aliden Perenolde##2423 |q 507 |goto Alterac Mountains 39.32,14.58
step
  talk Lieutenant Farren Orinelle##2228
  turnin Farren's Proof##561 |goto Hillsbrad Foothills 51.46,58.39
step
  note Kill 10 Crushridge Maulers for Melisara in Tarren Mill.
  kill Crushridge Mauler##2254 |q 518 |goto Alterac Mountains 43.11,46.87
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
  talk Apothecary Lydon##2216
  turnin Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
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
  get The Crown of Will |q 519 |goto Hillsbrad Foothills 62.63,20.65
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
  get Infiltration |q 533 |goto Hillsbrad Foothills 63.24,20.66
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
  get Bracers of Binding |q 557 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Apothecary Lydon##2216
  accept Return to Thunder Bluff##1067 |goto Hillsbrad Foothills 61.44,19.06
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
  turnin Helcular's Revenge##553 |goto Hillsbrad Foothills 52.75,53.37
step
  talk Master Gadrin##3188
  turnin Consult Master Gadrin##2935 |goto Durotar 55.95,74.72 |tip {turninat}Durotar
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
  get The Crown of Will |q 520 |goto Hillsbrad Foothills 62.63,20.65
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
