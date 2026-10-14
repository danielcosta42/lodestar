-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Ashenvale (30-32)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Dustwallow Marsh (35-38)",
	rev = "c2441306",
}, [[
step
  talk Mathiel##6142
  accept Klockmort's Essentials##2925 |goto Darnassus 59.51,45.38
step
  talk Sentinel Melyria Frostshadow##3880
  accept The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
  talk Illiyana##3901
  accept Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 21.73,53.34
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Delgren the Purifier##3663
  accept Advice From Stormwind##78089 |goto Ashenvale 26.2,38.7
step
  note {fp}Daelyshia
  goto Ashenvale 34.41,47.99 |tip {vendor}
step
  only completed(1034)
  talk Pelturas Whitemoon##3894
  accept Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  note Go to the Howling Vale and study the Tome of Mel'Thandris, then return to Sentinel Melyria Frostshadow at Forest Song.
  collect Tome of Mel'Thandris##19027 |q 1022 |goto Ashenvale 50.49,39.13
step
  talk Shandrina##3955
  accept Slowing the Orc Advance##86757 |goto Ashenvale 49.48,67.09
step
  only completed(1030)
  talk Krolg##3897
  accept Raene's Cleansing##1045 |goto Ashenvale 50.84,75.08
step
  only completed(1034)
  note Retrieve a Fallen Moonstone from the Shadethicket Oracle, then bring it to Pelturas in Astranaar.
  collect Fallen Moonstone##5508 |q 1035 |goto Ashenvale 66.66,82.17 |tip {dropsfrom}Shadethicket Oracle
step
  only completed(1030)
  note Kill Ran Bloodtooth and 4 Bloodtooth Guards and return to Krolg near Lake Mystral.
  kill Ran Bloodtooth##3696 |q 1045 |goto Ashenvale 54.75,79.62
step
  only completed(1030)
  talk Krolg##3897
  turnin Raene's Cleansing##1045 |goto Ashenvale 50.84,75.08
step
  only completed(1030)
  talk Krolg##3897
  accept Raene's Cleansing##1046 |goto Ashenvale 50.84,75.08
step
  only completed(1030)
  note Bring Ran Bloodtooth's Skull and Dartol's Rod of Transformation to Raene Wolfrunner in Astranaar.
  collect Ran Bloodtooth's Skull##5388 |q 1046 |goto Ashenvale 54.75,79.62 |tip {dropsfrom}Ran Bloodtooth
step
  talk Anilia##3920
  turnin Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 78.33,44.82
step
  talk Anilia##3920
  accept The Branch of Cenarius##1031 |goto Ashenvale 78.33,44.82
step
  note Kill Geltharis and return the Branch of Cenarius to Illiyana at Forest Song.
  collect Branch of Cenarius##5461 |q 1031 |goto Ashenvale 77.99,42.42 |tip {dropsfrom}Geltharis
step
  only not NightElf not Gnome not Skyborne Paladin
  click Shattered Orb##409315
  accept Return to Delgren##78093 |goto Ashenvale 89.5,77
step
  talk Maseara Autumnmoon##221269
  accept Vengeful Trail##98417 |goto Ashenvale 86.25,45.81
step
  note Maseara Autumnmoon wants you to search west of Forest Song, amongst the Satyrnaar demons. Report any signs of her husband Kurothel upon your return.
  collect Vine-Wrapped Scroll##281014 |q 98417 |goto Ashenvale 86.25,45.81
step
  talk Maseara Autumnmoon##221269
  accept Shared Fury##98418 |goto Ashenvale 86.25,45.81
step
  only completed(1011)
  talk Kayneth Stillwind##3848
  accept Insane Druids##1012 |goto Ashenvale 85.24,44.71
step
  note Bring 6 Jagged Orc Swords and 4 Curved Orc Daggers to Shandrina.
  collect 6 Jagged Orcish Sword##279505 |q 86757 |goto Ashenvale 88.6,57.66 |tip {dropsfrom}Horde Grunt
step
  talk Maseara Autumnmoon##221269
  turnin Vengeful Trail##98417 |goto Ashenvale 86.25,45.81
step
  talk Sentinel Melyria Frostshadow##3880
  turnin The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
  talk Illiyana##3901
  turnin The Branch of Cenarius##1031 |goto Ashenvale 21.73,53.34
step
  talk Sentinel Melyria Frostshadow##3880
  accept Velinde Starsong##1037 |goto Ashenvale 22.23,52.98
step
  talk Illiyana##3901
  accept Satyr Slaying!##1032 |goto Ashenvale 21.73,53.34
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Delgren the Purifier##3663
  turnin Return to Delgren##78093 |goto Ashenvale 26.2,38.7
step
  only completed(1034)
  talk Pelturas Whitemoon##3894
  turnin Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
step
  only completed(1030)
  talk Raene Wolfrunner##3691
  turnin Raene's Cleansing##1046 |goto Ashenvale 36.62,49.58
step
  talk Shandrina##3955
  turnin Slowing the Orc Advance##86757 |goto Ashenvale 49.48,67.09
step
  only completed(1011)
  note Kill the druids: Taneel Darkwood, Uthil Mooncall, Mavoris Cloudsbreak; then return to Kayneth Stillwind in Forest Song.
  kill Taneel Darkwood##3940 |q 1012 |goto Ashenvale 77.18,73.99
step
  note Bring 16 Satyr Horns to Illiyana in Forest Song.
  collect 16 Satyr Horns##5481 |q 1032 |goto Ashenvale 78.4,45.12 |tip {dropsfrom}Xavian Rogue, Xavian Betrayer, Xavian Felsworn
step
  note Kill 5 Xavian Rogues, 5 Felsworn, 5 Betrayers, and 5 Hellcallers.
  kill Xavian Felsworn##3755 |q 98418 |goto Ashenvale 78.92,45.78
step
  only completed(1011)
  talk Kayneth Stillwind##3848
  turnin Insane Druids##1012 |goto Ashenvale 85.24,44.71
step
  talk Maseara Autumnmoon##221269
  turnin Shared Fury##98418 |goto Ashenvale 86.25,45.81
step
  talk Illiyana##3901
  turnin Satyr Slaying!##1032 |goto Ashenvale 21.73,53.34
step
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Essentials##2925 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Katherine the Pure##5492
  turnin Advice From Stormwind##78089 |goto Stormwind City 48.48,49.09 |tip {turninat}Stormwind City
step
  only Warrior completed(1718)
  talk Klannoc Macleod##6236
  accept The Affray##1719 |goto The Barrens 68.62,49.16
step
  only Warlock
  talk Strahad Farsan##6251
  accept Tome of the Cabal##1758 |goto The Barrens 62.63,35.5
step
  only Warlock completed(1805,1804)
  talk Strahad Farsan##6251
  accept The Binding##1795 |goto The Barrens 62.63,35.5
step
  only Warlock
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45
step
  only Warlock
  note Bring Robes of the Arcana to Menara Voidrender in the Barrens.
  collect Robes of Arcana##5770 |q 1796 |goto The Barrens 62.51,35.45
step
  only Warlock completed(4782)
  talk Menara Voidrender##6266
  accept Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45
step
  only Warrior completed(1718)
  note Kill Big Will, then speak to Klannoc Macleod on Fray Island.
  kill Big Will##6238 |q 1719 |goto The Barrens 68.61,48.72
step
  only Warlock completed(1805,1804)
  note Using the Tome of the Cabal, summon and subdue a felhunter, then return the Tome of the Cabal to Strahad Farsan in Ratchet.
  use Summoned Felhunter##6268 |q 1795 |goto The Barrens 62.6,35.31 |tip {useit}
step
  only Warlock completed(4782)
  note Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.
  collect 10 Vial of Hatefury Blood##6989 |q 4783 |goto Desolace 73.55,19.11 |tip {dropsfrom}Hatefury Rogue, Hatefury Trickster, Hatefury Felsworn
step
  only Warrior completed(1718)
  talk Klannoc Macleod##6236
  turnin The Affray##1719 |goto The Barrens 68.62,49.16 |tip {turninat}The Barrens
step
  only Warlock
  talk Krom Stoutarm##6294
  turnin Tome of the Cabal##1758 |goto Ironforge 74.19,9.39 |tip {turninat}Ironforge
step
  only Warlock completed(1805,1804)
  talk Strahad Farsan##6251
  turnin The Binding##1795 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##1796 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Warlock completed(4782)
  talk Menara Voidrender##6266
  turnin Components for the Enchanted Gold Bloodrobe##4783 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde Starsong##1037 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  talk Thyn'tel Bladeweaver##8026
  accept Velinde's Effects##1038 |goto Darnassus 61.77,39.18
step
  note Search through Velinde's chest for her journal, then return it along with the key to Thyn'tel Bladeweaver in Darnassus.
  collect Velinde's Journal##5520 |q 1038 |goto Darnassus 62.29,83.29 |tip {dropsfrom}Velinde's Locker
step
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde's Effects##1038 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  talk Thyn'tel Bladeweaver##8026
  accept The Barrens Port##1039 |goto Darnassus 61.77,39.18
step
  talk Wharfmaster Dizzywig##3453
  turnin The Barrens Port##1039 |goto The Barrens 63.35,38.45 |tip {turninat}The Barrens
step
  note {travel}Dustwallow Marsh
  goto Dustwallow Marsh 66.46,45.15
]])
