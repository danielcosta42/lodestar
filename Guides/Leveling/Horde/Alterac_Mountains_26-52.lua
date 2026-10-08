-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Alterac Mountains (26-52)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Arathi Highlands (34-40)",
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
  talk Sharlindra##2227
  accept The Crown of Will##495 |goto Undercity 57.63,93.8
step
  talk Henchman Valik##2333
  accept Valik##535 |goto Alterac Mountains 57.17,69.51
step
  note Bring a mug of Southshore Stout to Valik in the Syndicate camp.
  collect Southshore Stout##3703 |q 535 |goto Alterac Mountains 59.3,69.76 |tip {dropsfrom}Drunken Footpad
step
  only Shaman
  note Defeat 7 Defias Night Blades and 7 Defias Enchanters in Addle's Stead then return to Sirra Von'Indi in Darkshire for more information.
  kill Defias Night Blade##909 |q 79363 |goto Duskwood 23.9,73.32
step
  talk Melisara##2278
  turnin The Crown of Will##495 |goto Hillsbrad Foothills 62.63,20.65 |tip {turninat}Hillsbrad Foothills
step
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
step
  talk Dran Droffers##6986
  accept Necklace Recovery##2283 |goto Orgrimmar 59.49,36.57
step
  note Look for a valuable necklace within the Uldaman dig site and bring it back to Dran Droffers in Orgrimmar. The necklace may be damaged.
  collect Shattered Necklace##7666 |q 2283 |goto Badlands 47.6,11 |tip {dropsfrom}Shadowforge Surveyor, Shadowforge Ruffian, Shadowforge Digger
step
  only Warlock
  talk Zevrost##3326
  accept Summon Felsteed##3631 |goto Orgrimmar 48.47,45.43
step
  only Warlock
  talk Kaal Soulreaper##4563
  accept Summon Felsteed##4489 |goto Undercity 86.21,15.93
step
  talk Zor Lonetree##4047
  accept Service to the Horde##7541 |goto Orgrimmar 38.93,38.4
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21 |tip {turninat}Azshara
step
  talk Elysa##2317
  accept Taretha's Gift##508 |goto Alterac Mountains 39.3,14.31
step
  talk Gerrig Bonegrip##2786
  accept Forbidden Knowledge##737 |goto Ironforge 50.83,5.62
step
  only Mage
  talk Ursyn Ghull##3048
  accept Return to the Marsh##1953 |goto Thunder Bluff 25.7,14.19
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
  talk Theldurin the Lost##2785
  turnin Forbidden Knowledge##737 |goto Badlands 51.39,76.87 |tip {turninat}Badlands
step
  only Mage
  talk Tabetha##6546
  turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  talk Henchman Valik##2333
  turnin Valik##535 |goto Alterac Mountains 57.17,69.51
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Summon Felsteed##4489 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  talk Dran Droffers##6986
  turnin Necklace Recovery##2283 |goto Orgrimmar 59.49,36.57 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Summon Felsteed##3631 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  talk Zor Lonetree##4047
  turnin Service to the Horde##7541 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  talk Krusk##2229
  turnin Blackmoore's Legacy##506 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  talk Krusk##2229
  turnin Taretha's Gift##508 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  talk Dran Droffers##6986
  accept Necklace Recovery, Take 2##2284 |goto Orgrimmar 59.49,36.57
step
  talk Remains of a Paladin##6912
  turnin Necklace Recovery, Take 2##2284 |goto Uldaman - Dungeon -1,-1 |tip {turninat}Uldaman - Dungeon
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
  note {travel}Arathi Highlands
  goto Arathi Highlands 74.24,33.92
]])
