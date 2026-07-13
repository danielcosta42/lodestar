-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Stranglethorn Vale (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Krazek##773
  accept Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
step
  talk Sovik##3413
  accept Chief Engineer Scooty##2842 |goto Orgrimmar 75.49,25.36
step
  talk Aturk the Anvil##7792
  accept The Old Ways##2756 |goto Orgrimmar 80.94,23.32
step
  talk Nimboya##2497
  accept Grim Message##2932 |goto Stranglethorn Vale 32.16,27.72
step
  talk Fallen Hero of the Horde##7572
  accept Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  talk Vinchaxa##15070
  accept A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  note Bring four Steel Breastplates and four Steel Plate Helms to Aturk the Anvil in Orgrimmar.
  get The Old Ways |q 2756 |goto Orgrimmar 80.94,23.32
step
  talk Krazek##773
  turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
step
  talk Scooty##7853
  turnin Chief Engineer Scooty##2842 |goto Stranglethorn Vale 27.6,77.48
step
  talk Aturk the Anvil##7792
  turnin The Old Ways##2756 |goto Orgrimmar 80.94,23.32
step
  talk Nimboya##2497
  turnin Grim Message##2932 |goto Stranglethorn Vale 32.16,27.72
step
  talk Fallen Hero of the Horde##7572
  turnin Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.14
step
  talk Vinchaxa##15070
  turnin A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  talk Scooty##7853
  accept Gnomer-gooooone!##2843 |goto Stranglethorn Vale 27.6,77.48
step
  talk Ox##7793
  accept Booty Bay or Bust!##2757 |goto Orgrimmar 80.45,23.52
step
  talk Fallen Hero of the Horde##7572
  accept The Disgraced One##2621 |goto Swamp of Sorrows 34.29,66.14
step
  talk Scooty##7853
  turnin Gnomer-gooooone!##2843 |goto Stranglethorn Vale 27.6,77.48
step
  talk McGavan##7794
  turnin Booty Bay or Bust!##2757 |goto Stranglethorn Vale 28.87,75.42
step
  talk Dispatch Commander Ruag##7623
  turnin The Disgraced One##2621 |goto Swamp of Sorrows 47.79,54.94
step
  talk McGavan##7794
  accept The Mithril Order##2760 |goto Stranglethorn Vale 28.87,75.42
step
  talk Dispatch Commander Ruag##7623
  accept The Missing Orders##2622 |goto Swamp of Sorrows 47.79,54.94
step
  talk Galvan the Ancient##7802
  turnin The Mithril Order##2760 |goto Stranglethorn Vale 50.62,20.48
step
  talk Bengor##7643
  turnin The Missing Orders##2622 |goto Swamp of Sorrows 44.97,57.37
step
  talk Galvan the Ancient##7802
  accept Smelt On, Smelt Off##2761 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept The Great Silver Deceiver##2762 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept The Art of the Imbue##2763 |goto Stranglethorn Vale 50.62,20.48
step
  talk Bengor##7643
  accept The Swamp Talker##2623 |goto Swamp of Sorrows 44.97,57.37
step
  note Bring forty Mithril Bars and forty Iron Bars to Galvan the Ancient in Stranglethorn.
  get Smelt On, Smelt Off |q 2761 |goto Stranglethorn Vale 50.62,20.48
step
  note Bring forty Mithril Bars and five Truesilver Bars to Galvan the Ancient in Stranglethorn.
  get The Great Silver Deceiver |q 2762 |goto Stranglethorn Vale 50.62,20.48
step
  note Bring forty Mithril Bars and four Citrines to Galvan the Ancient in Stranglethorn.
  get The Art of the Imbue |q 2763 |goto Stranglethorn Vale 50.62,20.48
step
  note Retrieve the Warchief's Orders and return them to the Fallen Hero of the Horde.
  kill Swamp Talker##950 |q 2623 |goto Swamp of Sorrows 62.6,88.07
step
  talk Galvan the Ancient##7802
  turnin Smelt On, Smelt Off##2761 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Great Silver Deceiver##2762 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Art of the Imbue##2763 |goto Stranglethorn Vale 50.62,20.48
step
  talk Fallen Hero of the Horde##7572
  turnin The Swamp Talker##2623 |goto Swamp of Sorrows 34.29,66.14
step
  talk Galvan the Ancient##7802
  accept Expert Blacksmith!##2765 |goto Stranglethorn Vale 50.62,20.48
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Galvan the Ancient##7802
  turnin Expert Blacksmith!##2765 |goto Stranglethorn Vale 50.62,20.48
step
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 55.05,55.73
step
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
step
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702
step
  talk Corporal Thund Splithoof##7750
  accept Heroes of Old##2701
step
  turnin Heroes of Old##2701 |goto Swamp of Sorrows 33.26,66.22
step
  talk Fallen Hero of the Horde##7572
  accept Kirith##2721 |goto Swamp of Sorrows 34.29,66.14
step
  talk Spirit of Kirith##7729
  turnin Kirith##2721
step
  talk Spirit of Kirith##7729
  accept The Cover of Darkness##2743
step
  talk Fallen Hero of the Horde##7572
  turnin The Cover of Darkness##2743 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Demon Hunter##2744 |goto Swamp of Sorrows 34.29,66.14
step
  talk Loramus Thalipedes##7783
  turnin The Demon Hunter##2744 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept Loramus##3141 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  turnin Loramus##3141 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  turnin Breaking the Ward##3508 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept The Name of the Beast##3509 |goto Azshara 60.82,66.35
step
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3509 |goto Azshara 77.13,42.79
step
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  note Slay Hetaera and bring back Hetaera's Bloodied Head, Hetaera's Beaten Head, and Hetaera's Bruised Head to Lord Arkkoroc.
  kill Hetaera##6140 |q 3510 |goto Azshara 56.73,44.79
step
  talk Lord Arkkoroc##6134
  turnin The Name of the Beast##3510 |goto Azshara 77.13,42.79
step
  talk Lord Arkkoroc##6134
  accept The Name of the Beast##3511 |goto Azshara 77.13,42.79
step
  talk Loramus Thalipedes##7783
  turnin The Name of the Beast##3511 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept Azsharite##3602 |goto Azshara 60.82,66.35
step
  note Recover twenty Crystallized Azsharite from southern Azshara. You may use the Felhound to assist you in 'sniffing' out the location of cleverly hidden deposits.
  collect Azsharite Formation##152620 |q 3602 |goto Azshara 53.52,78.4
step
  talk Loramus Thalipedes##7783
  turnin Azsharite##3602 |goto Azshara 60.82,66.35
step
  talk Loramus Thalipedes##7783
  accept The Formation of Felbane##3621 |goto Azshara 60.82,66.35
step
  talk Galvan the Ancient##7802
  turnin The Formation of Felbane##3621 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  accept Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin Enchanted Azsharite Fel Weaponry##3625 |goto Stranglethorn Vale 50.62,20.48
]])
