-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Alterac Mountains (34-36)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Desolace (33-42)",
}, [[
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Stranglethorn Vale 33.28,26.45
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Mastering the Elements##8411 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Bring the elements earth, air, fire and water to Bath'rah the Windwatcher.
  collect Elemental Air##7069 |q 8411 |goto Westfall 42.75,49.32 |tip {dropsfrom}Dust Devil, Thundering Exile, Cyclonian
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Find Grant's Mace on one of the skeletons in Raven Hill Cemetery then return to Sirra Von'Indie in Darkshire for more information.
  collect Grant's Mace##281146 |q 79362 |goto Duskwood 23.06,47.92 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend, Skeletal Healer
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  collect Sealed Azure Bag##19775 |q 8234 |goto Azshara 44.21,22.54 |tip {dropsfrom}Timbermaw Shaman, Blackmaw Shaman
step
  talk Horde Warbringer##15350
  accept For Great Honor##8367 |goto Alterac Mountains 63.09,59.87
step
  note Bring 3 Alterac Valley Marks of Honor, 3 Arathi Basin Marks of Honor and 3 Warsong Gulch Marks of Honor to a Horde Warbringer outside the battlegrounds.
  collect 3 Warsong Gulch Mark of Honor##20558 |q 8367 |goto Alterac Mountains 63.09,59.87
step
  talk Henchman Valik##2333
  accept Valik##535 |goto Alterac Mountains 57.17,69.51
step
  note Bring a mug of Southshore Stout to Valik in the Syndicate camp.
  collect Southshore Stout##3703 |q 535 |goto Alterac Mountains 59.3,69.76 |tip {dropsfrom}Drunken Footpad
step
  talk Auld Stonespire##4451
  accept A Vengeful Fate##1102 |goto Thunder Bluff 35.97,59.92
step
  note Bring Razorflank's Heart to Auld Stonespire in Thunder Bluff.
  collect Razorflank's Heart##5793 |q 1102 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Charlga Razorflank
step
  talk Parqual Fintallas##4488
  accept Test of Lore##1160 |goto Undercity 57.8,65.42
step
  note Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity.
  collect Beginnings of the Undead Threat##5861 |q 1160 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Parqual Fintallas##4488
  accept Final Passage##1394 |goto Undercity 57.8,65.42
step
  talk Varimathras##2425
  accept An Unholy Alliance##6521 |goto Undercity 56.25,92.2
step
  note Bring Ambassador Malcin's Head to Varimathras in the Undercity.
  kill Ambassador Malcin##12865 |goto The Barrens 48.4,95.4 |elite
  collect Ambassador Malcin's Head##17009 |q 6521 |goto The Barrens 48.4,95.4
step
  only Shaman
  note Defeat 7 Defias Night Blades and 7 Defias Enchanters in Addle's Stead then return to Sirra Von'Indi in Darkshire for more information.
  kill Defias Night Blade##909 |q 79363 |goto Duskwood 23.9,73.32
step
  talk Dorn Plainstalker##2986
  turnin Final Passage##1394 |goto Thousand Needles 53.95,41.49 |tip {turninat}Thousand Needles
step
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
step
  talk Genavie Callow##4486
  accept To Steal From Thieves##1164 |goto Undercity 63.83,49.45
step
  note Bring Kenata, Fardel, and Marcel Dabyrie's Heads to Genavie Callow in Undercity.
  collect Kenata's Head##5830 |q 1164 |goto Arathi Highlands 56.38,36.09 |tip {dropsfrom}Kenata Dabyrie
step
  talk Nogg##3412
  accept Rig Wars##2841 |goto Orgrimmar 75.99,25.41
step
  note Retrieve the Rig Blueprints and Thermaplugg's Safe Combination from Gnomeregan and bring them to Nogg in Orgrimmar.
  collect Rig Blueprints##9153 |q 2841 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Thermaplugg's Safe
step
  talk Sovik##3413
  accept Chief Engineer Scooty##2842 |goto Orgrimmar 75.49,25.36
step
  talk Nogg##3412
  accept Nogg's Ring Redo##2950 |goto Orgrimmar 75.99,25.41
step
  note Bring the Brilliant Gold Ring, a Silver Bar, a Moss Agate, and 30 silver coins to Nogg in Orgrimmar.
  collect Silver Bar##2842 |q 2950 |goto Orgrimmar 75.99,25.41 |tip {dropsfrom}Battered Chest, Tattered Chest
step
  only Warlock
  talk Zevrost##3326
  accept Knowledge of the Orb of Orahil##4967 |goto Orgrimmar 48.47,45.43
step
  only Warlock
  talk Kaal Soulreaper##4563
  accept Knowledge of the Orb of Orahil##4969 |goto Undercity 86.21,15.93
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21 |tip {turninat}Azshara
step
  talk Elysa##2317
  accept Taretha's Gift##508 |goto Alterac Mountains 39.3,14.31
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Mastering the Elements##8411 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  kill Cyclonian##6239 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Bring the pieces for the spirit totem to Bath'rah the Windwatcher.
  collect Bloodshot Spider Eye##20610 |q 8412 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Carrion Lurker, Venom Mist Lurker
step
  talk Horde Warbringer##15350
  turnin For Great Honor##8367 |goto Alterac Mountains 63.09,59.87
step
  talk Parqual Fintallas##4488
  turnin Test of Lore##1160 |goto Undercity 57.8,65.42 |tip {turninat}Undercity
step
  talk Henchman Valik##2333
  turnin Valik##535 |goto Alterac Mountains 57.17,69.51
step
  talk Scooty##7853
  turnin Chief Engineer Scooty##2842 |goto Stranglethorn Vale 27.6,77.48 |tip {turninat}Stranglethorn Vale
step
  talk Auld Stonespire##4451
  turnin A Vengeful Fate##1102 |goto Thunder Bluff 35.97,59.92 |tip {turninat}Thunder Bluff
step
  talk Varimathras##2425
  turnin An Unholy Alliance##6521 |goto Undercity 56.25,92.2 |tip {turninat}Undercity
step
  talk Nogg##3412
  turnin Nogg's Ring Redo##2950 |goto Orgrimmar 75.99,25.41 |tip {turninat}Orgrimmar
step
  talk Genavie Callow##4486
  turnin To Steal From Thieves##1164 |goto Undercity 63.83,49.45 |tip {turninat}Undercity
step
  talk Nogg##3412
  turnin Rig Wars##2841 |goto Orgrimmar 75.99,25.41 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4967 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4969 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Krusk##2229
  turnin Blackmoore's Legacy##506 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  talk Krusk##2229
  turnin Taretha's Gift##508 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  note Bring the voodoo feathers to Bath'rah the Windwatcher.
  collect Amber Voodoo Feather##20606 |q 8413 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Gasher, Zul'Lor
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  note {travel}Desolace
  goto Desolace 56.19,59.57
]])
