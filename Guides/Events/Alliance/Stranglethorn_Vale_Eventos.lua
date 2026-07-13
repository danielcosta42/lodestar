-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Stranglethorn Vale (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Krazek##773
  accept Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
step
  talk Krazek##773
  accept The Haunted Isle##616 |goto Stranglethorn Vale 26.94,77.21
step
  talk Hank the Hammer##7798
  accept The Origins of Smithing##2758 |goto Stormwind City 55.8,15.99
step
  talk Ambassador Ardalan##7826
  accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
  talk Vinchaxa##15070
  accept A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  note Bring six Golden Scale Bracers to Hank the Hammer in Stormwind.
  get The Origins of Smithing |q 2758 |goto Stormwind City 55.8,15.99
step
  talk Krazek##773
  turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
step
  talk Baron Revilgaz##2496
  turnin The Haunted Isle##616 |goto Stranglethorn Vale 27.23,76.87
step
  talk Hank the Hammer##7798
  turnin The Origins of Smithing##2758 |goto Stormwind City 55.8,15.99
step
  talk Fallen Hero of the Horde##7572
  turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.14
step
  talk Vinchaxa##15070
  turnin A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  talk Baron Revilgaz##2496
  accept The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
step
  talk Hank the Hammer##7798
  accept In Search of Galvan##2759 |goto Stormwind City 55.8,15.99
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Baron Revilgaz##2496
  turnin The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
step
  talk McGavan##7794
  turnin In Search of Galvan##2759 |goto Stranglethorn Vale 28.87,75.42
step
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk McGavan##7794
  accept The Mithril Order##2760 |goto Stranglethorn Vale 28.87,75.42
step
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 55.05,55.73
step
  talk Galvan the Ancient##7802
  turnin The Mithril Order##2760 |goto Stranglethorn Vale 50.62,20.48
step
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
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
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
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
  talk Galvan the Ancient##7802
  turnin Smelt On, Smelt Off##2761 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Great Silver Deceiver##2762 |goto Stranglethorn Vale 50.62,20.48
step
  talk Galvan the Ancient##7802
  turnin The Art of the Imbue##2763 |goto Stranglethorn Vale 50.62,20.48
step
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702
step
  talk Galvan the Ancient##7802
  accept Expert Blacksmith!##2765 |goto Stranglethorn Vale 50.62,20.48
step
  talk Corporal Thund Splithoof##7750
  accept Heroes of Old##2701
step
  talk Galvan the Ancient##7802
  turnin Expert Blacksmith!##2765 |goto Stranglethorn Vale 50.62,20.48
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
