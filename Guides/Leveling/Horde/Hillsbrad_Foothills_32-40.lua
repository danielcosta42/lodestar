-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hillsbrad Foothills (32-40)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Alterac Mountains (34-40)",
}, [[
step
  note {fp}Zarise
  goto Hillsbrad Foothills 60.14,18.62 |tip {vendor}
step
  only completed(541)
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##550 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Keeper Bel'varil##2437
  accept Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Tallow##2770
  accept The Hammer May Fall##676 |goto Hillsbrad Foothills 61.87,19.57
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  only completed(498)
  talk Krusk##2229
  accept Infiltration##533 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Magus Wordeen Voidglare##2410
  accept Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  note Retrieve Helcular's Rod from the Yeti and bring it back to Novice Thaivand in Tarren Mill.
  collect Helcular's Rod##3708 |q 552 |goto Hillsbrad Foothills 45.28,31.24 |tip {dropsfrom}Cave Yeti, Ferocious Yeti, Mountain Yeti
step
  talk Novice Thaivand##2429
  turnin Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
  talk Novice Thaivand##2429
  accept Helcular's Revenge##553 |goto Hillsbrad Foothills 63.88,19.66
step
  note Charge the Rod of Helcular with the powers of the Flame of Azel, Flame of Veraz and the Flame of Uzel.
  collect Flame of Azel##1768 |q 553 |goto Hillsbrad Foothills 43.89,28.06
step
  turnin Helcular's Revenge##553 |goto Hillsbrad Foothills 52.75,53.37
step
  only completed(541)
  talk Varimathras##2425
  turnin Battle of Hillsbrad##550 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  talk Sharlindra##2227
  accept The Crown of Will##495 |goto Undercity 57.63,93.8
step
  only completed(549)
  click WANTED##1763
  accept WANTED: Baron Vardus##566 |goto Hillsbrad Foothills 62.63,20.75
step
  note Bring 10 Worn Stone Tokens to Keeper Bel'varil in Tarren Mill.
  collect 10 Worn Stone Token##3714 |q 556 |goto Alterac Mountains 19,84.35 |tip {dropsfrom}Dalaran Shield Guard, Dalaran Theurgist, Dalaran Summoner
step
  note Kill 8 Boulderfist Ogres and 10 Boulderfist Enforcers, then find Drum Fel in the Hammerfall outpost in Arathi Highlands.
  kill Boulderfist Ogre##2562 |q 676 |goto Arathi Highlands 35.7,45.27
step
  only completed(498)
  note Retrieve information about Gol'dir's whereabouts for Krusk in Tarren Mill.
  collect Syndicate Missive##3601 |q 533 |goto Alterac Mountains 57.71,67.64 |tip {dropsfrom}Syndicate Footpad, Syndicate Thief
step
  note Find the traitors and recover their artifacts, then return to Magus Voidglare in Tarren Mill.
  collect Bloodstone Wedge##3691 |q 544 |goto Alterac Mountains 19.91,85.97 |tip {dropsfrom}Dermot
step
  only completed(549)
  note Kill Baron Vardus and deliver his head to High Executor Darthalia in Tarren Mill.
  collect Head of Baron Vardus##3626 |q 566 |goto Alterac Mountains 56.28,26.7 |tip {dropsfrom}Baron Vardus
step
  talk Keeper Bel'varil##2437
  turnin Stone Tokens##556 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Drum Fel##2771
  turnin The Hammer May Fall##676 |goto Arathi Highlands 74.24,33.92 |tip {turninat}Arathi Highlands
step
  only completed(498)
  talk Krusk##2229
  turnin Infiltration##533 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Magus Wordeen Voidglare##2410
  turnin Prison Break In##544 |goto Hillsbrad Foothills 61.6,20.85
step
  talk Melisara##2278
  turnin The Crown of Will##495 |goto Hillsbrad Foothills 62.63,20.65
step
  only completed(549)
  talk High Executor Darthalia##2215
  turnin WANTED: Baron Vardus##566 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Keeper Bel'varil##2437
  accept Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Magus Wordeen Voidglare##2410
  accept Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  only completed(498)
  talk Krusk##2229
  accept Gol'dir##503 |goto Hillsbrad Foothills 63.24,20.66
step
  talk Melisara##2278
  accept The Crown of Will##518 |goto Hillsbrad Foothills 62.63,20.65
step
  note Bring 4 Bracers of Earth Binding to Keeper Bel'varil in Tarren Mill.
  collect 4 Bracers of Earth Binding##3715 |q 557 |goto Alterac Mountains 21.78,64.34 |tip {dropsfrom}Elemental Slave
step
  note Kill 6 Dalaran Summoners and 12 Elemental Slaves, then return to Magus Voidglare in Tarren Mill.
  talk Dalaran Summoner##2358 |q 545 |goto Alterac Mountains 18.88,74.92
step
  only completed(498)
  note Free Gol'dir then return to Krusk in Tarren Mill.
  talk Gol'dir##2316 |q 503 |goto Alterac Mountains 59.96,43.74
step
  note Kill 10 Crushridge Maulers for Melisara in Tarren Mill.
  kill Crushridge Mauler##2254 |q 518 |goto Alterac Mountains 43.11,46.89 |elite
step
  talk Keeper Bel'varil##2437
  turnin Bracers of Binding##557 |goto Hillsbrad Foothills 61.5,20.93
step
  talk Magus Wordeen Voidglare##2410
  turnin Dalaran Patrols##545 |goto Hillsbrad Foothills 61.6,20.85
step
  only completed(498)
  talk Gol'dir##2316
  turnin Gol'dir##503 |goto Alterac Mountains 59.96,43.74 |tip {turninat}Alterac Mountains
step
  talk Melisara##2278
  turnin The Crown of Will##518 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Melisara##2278
  accept The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  note Kill Targ, Muckrake, and Glommus and bring their heads to Melisara in Tarren Mill.
  kill Targ##2420 |goto Alterac Mountains 39.57,52.89 |elite
  collect Targ's Head##3550 |q 519 |goto Alterac Mountains 39.57,52.89
step
  talk Melisara##2278
  turnin The Crown of Will##519 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Melisara##2278
  accept The Crown of Will##520 |goto Hillsbrad Foothills 62.63,20.65
step
  note Kill Mug'Thol, and return his head with the Crown of Will to Melisara in Tarren Mill.
  kill Mug'thol##2257 |goto Alterac Mountains 35.68,54.25 |elite
  collect Mug'thol's Head##3553 |q 520 |goto Alterac Mountains 35.68,54.25
step
  talk Melisara##2278
  turnin The Crown of Will##520 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Melisara##2278
  accept The Crown of Will##521 |goto Hillsbrad Foothills 62.63,20.65
step
  talk Sharlindra##2227
  turnin The Crown of Will##521 |goto Undercity 57.63,93.8 |tip {turninat}Undercity
step
  note {travel}Alterac Mountains
  goto Alterac Mountains 80.5,66.92
]])
