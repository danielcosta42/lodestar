-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Teldrassil (48-57)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Burning Steppes (52-60)",
}, [[
step
  note {fp}Seriadne
  goto Teldrassil 56.63,59.62 |tip {vendor}
step
  talk Crier Goodman##2198
  accept The New Frontier##1015 |goto Stormwind City 56.39,74.09
step
  talk Courier Hammerfall##10877
  accept The New Frontier##1019 |goto Ironforge 55.92,81.39
step
  talk Herald Moonstalker##10878
  accept The New Frontier##1047 |goto Darnassus 47.81,81.97
step
  click Feralas: A History##142958
  accept Feralas: A History##2940 |goto Teldrassil 55.22,91.46
step
  talk Daryn Lightwind##7907
  accept Return to Troyas##2943 |goto Teldrassil 55.41,92.23
step
  talk Curator Thorius##8256
  accept Dwarven Justice##3371 |goto Ironforge 71.5,15.74
step
  talk Erelas Ambersky##7916
  accept Favored of Elune?##3661 |goto Teldrassil 55.5,92.05
step
  note Collect 15 Wildkin Feathers from the Hinterlands for Erelas Ambersky in Rut'theran Village.
  collect 15 Wildkin Feather##10819 |q 3661 |goto The Hinterlands 34.07,52.92
step
  talk Innkeeper Saelienne##6735
  accept Assisting Arch Druid Staghelm##3763 |goto Darnassus 67.42,15.65
step
  talk Arch Druid Fandral Staghelm##3516
  accept Un'Goro Soil##3764 |goto Darnassus 34.81,9.26
step
  note Bring 20 Un'Goro Soil samples to Jenal at the Cenarion Enclave in Darnassus.
  collect 20 Un'Goro Soil##11018 |q 3764 |goto Un'Goro Crater 48.9,53.16 |tip {dropsfrom}Un'Goro Dirt Pile
step
  talk Gracina Spiritmight##7740
  accept March of the Silithid##4493 |goto Darnassus 41.83,85.62
step
  talk Gracina Spiritmight##7740
  accept Calm Before the Storm##4510 |goto Darnassus 41.83,85.62
step
  talk Erelas Ambersky##7916
  accept Wildkin of Elune##4902 |goto Teldrassil 55.5,92.05
step
  talk Herald Moonstalker##10878
  accept A Call to Arms: The Plaguelands!##5091 |goto Darnassus 47.81,81.97
step
  talk Daryn Lightwind##7907
  accept Starfall##5250 |goto Teldrassil 55.41,92.23
step
  talk Crier Goodman##2198
  accept Feathermoon Stronghold##7494 |goto Stormwind City 56.39,74.09
step
  only Hunter
  talk Dorion##4205
  accept The Hunter's Charm##8151 |goto Darnassus 42.21,7.27
step
  only Rogue
  talk Osborne the Night Man##918
  accept A Simple Request##8233 |goto Stormwind City 77.43,65.31
step
  talk Cenarion Emissary Jademoon##15187
  accept Taking Back Silithus##8275 |goto Ironforge 58.54,47.32
step
  only Warrior
  talk Kelv Sternhammer##5113
  accept A Troubled Spirit##8417 |goto Ironforge 70.34,90.65
step
  talk Wynd Nightchaser##11079
  turnin Starfall##5250 |goto Winterspring 51.97,30.39 |tip {turninat}Winterspring
step
  talk Alchemist Pestlezugg##5594
  turnin March of the Silithid##4493 |goto Tanaris 50.89,26.96 |tip {turninat}Tanaris
step
  talk Arch Druid Fandral Staghelm##3516
  turnin The New Frontier##1047 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Idriana##4155
  turnin Calm Before the Storm##4510 |goto Darnassus 39.39,42.44 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Wildkin of Elune##4902 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  talk Dying Archaeologist##8417
  turnin Dwarven Justice##3371 |goto Searing Gorge 41.14,25.56 |tip {turninat}Searing Gorge
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3763 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Jenal##9047
  turnin Un'Goro Soil##3764 |goto Darnassus 31.49,8.23 |tip {turninat}Darnassus
step
  talk Latronicus Moonspear##7877
  turnin Feathermoon Stronghold##7494 |goto Feralas 30.38,46.17 |tip {turninat}Feralas
step
  talk Erelas Ambersky##7916
  turnin Favored of Elune?##3661 |goto Teldrassil 55.5,92.05
step
  talk Windcaller Proudhorn##15191
  turnin Taking Back Silithus##8275 |goto Silithus 51.15,38.29 |tip {turninat}Silithus
step
  only Hunter
  talk Ogtinc##8405
  turnin The Hunter's Charm##8151 |goto Azshara 42.4,42.62 |tip {turninat}Azshara
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5091 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Arch Druid Fandral Staghelm##3516
  turnin The New Frontier##1015 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  turnin The New Frontier##1019 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Daryn Lightwind##7907
  turnin Feralas: A History##2940 |goto Teldrassil 55.41,92.23
step
  talk Troyas Moonbreeze##7764
  turnin Return to Troyas##2943 |goto Feralas 31.78,45.5 |tip {turninat}Feralas
step
  talk Erelas Ambersky##7916
  accept Moontouched Wildkin##978 |goto Teldrassil 55.5,92.05
step
  note Collect 10 Moontouched Feathers from Winterspring, then return to Erelas Ambersky in Rut'theran Village.
  collect 10 Moontouched Feather##12383 |q 978 |goto Winterspring 45.71,44.01
step
  talk Daryn Lightwind##7907
  accept The Borrower##2941 |goto Teldrassil 55.41,92.23
step
  talk Arch Druid Fandral Staghelm##3516
  accept Morrowgrain Research##3781 |goto Darnassus 34.81,9.26
step
  talk Arch Druid Fandral Staghelm##3516
  accept The New Frontier##6761 |goto Darnassus 34.81,9.26
step
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3781 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Erelas Ambersky##7916
  turnin Moontouched Wildkin##978 |goto Teldrassil 55.5,92.05
step
  talk Mathrengyl Bearwalker##4217
  turnin The New Frontier##6761 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Curgle Cranklehop##7763
  turnin The Borrower##2941 |goto Tanaris 52.36,26.91 |tip {turninat}Tanaris
step
  talk Erelas Ambersky##7916
  accept Find Ranshalla##979 |goto Teldrassil 55.5,92.05
step
  talk Mathrengyl Bearwalker##4217
  accept Morrowgrain Research##3785 |goto Darnassus 35.37,8.4
step
  note Use an Evergreen Pouch with a Packet of Tharlendis Seeds and two Un'Goro Soil samples to try and cultivate samples of Morrowgrain.
  collect Morrowgrain##11040 |q 3785 |goto Darnassus 35.37,8.4
step
  talk Mathrengyl Bearwalker##4217
  accept Rabine Saturna##6762 |goto Darnassus 35.37,8.4
step
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3785 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Ranshalla##10300
  turnin Find Ranshalla##979 |goto Winterspring 63.07,59.48 |tip {turninat}Winterspring
step
  talk Rabine Saturna##11801
  turnin Rabine Saturna##6762 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  note {travel}Burning Steppes
  goto Burning Steppes 65.15,23.91
]])
