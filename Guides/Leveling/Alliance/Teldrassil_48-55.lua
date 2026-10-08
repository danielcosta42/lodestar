-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Teldrassil (48-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Un'Goro Crater (50-55)",
	rev = "c7267052",
}, [[
step
  note {fp}Vesprystus
  goto Teldrassil 58.4,94.02 |tip {vendor}
step
  only completed(2939)
  click Feralas: A History##142958
  accept Feralas: A History##2940 |goto Teldrassil 55.22,91.46
step
  only completed(2944)
  talk Daryn Lightwind##7907
  accept Return to Troyas##2943 |goto Teldrassil 55.41,92.23
step
  only completed(2939)
  talk Daryn Lightwind##7907
  turnin Feralas: A History##2940 |goto Teldrassil 55.41,92.23
step
  only completed(2939)
  talk Daryn Lightwind##7907
  accept The Borrower##2941 |goto Teldrassil 55.41,92.23
step
  only not completed(5249) not haveq(5249)
  talk Daryn Lightwind##7907
  accept Starfall##5250 |goto Teldrassil 55.41,92.23
step
  only completed(2944)
  talk Troyas Moonbreeze##7764
  turnin Return to Troyas##2943 |goto Feralas 31.78,45.5 |tip {turninat}Feralas
step
  only not completed(5249) not haveq(5249)
  talk Wynd Nightchaser##11079
  turnin Starfall##5250 |goto Winterspring 51.97,30.39 |tip {turninat}Winterspring
step
  only not completed(3789) not completed(3790) not haveq(3789) not haveq(3790)
  talk Innkeeper Saelienne##6735
  accept Assisting Arch Druid Staghelm##3763 |goto Darnassus 67.42,15.65
step
  only not completed(1015) not completed(1019) not haveq(1015) not haveq(1019)
  talk Herald Moonstalker##10878
  accept The New Frontier##1047 |goto Darnassus 47.81,81.97
step
  talk Herald Moonstalker##10878
  accept Feathermoon Stronghold##7494 |goto Darnassus 47.81,81.97
step
  only not completed(3789) not completed(3790) not haveq(3789) not haveq(3790)
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3763 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only not completed(1015) not completed(1019) not haveq(1015) not haveq(1019)
  talk Arch Druid Fandral Staghelm##3516
  turnin The New Frontier##1047 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Latronicus Moonspear##7877
  turnin Feathermoon Stronghold##7494 |goto Feralas 30.38,46.17 |tip {turninat}Feralas
step
  only completed(2939)
  talk Curgle Cranklehop##7763
  turnin The Borrower##2941 |goto Tanaris 52.36,26.91 |tip {turninat}Tanaris
step
  only completed(2944)
  talk Troyas Moonbreeze##7764
  accept The Stave of Equinex##2879 |goto Feralas 31.78,45.5
step
  talk Arch Druid Fandral Staghelm##3516
  accept The New Frontier##6761 |goto Darnassus 34.81,9.26
step
  only completed(2944)
  note Energize Troyas' Stave and find the Equinex Monolith.
  collect Stave of Equinex##9306 |q 2879 |goto Feralas 38.83,13.17 |tip {dropsfrom}Equinex Monolith
step
  only completed(2944)
  turnin The Stave of Equinex##2879 |goto Feralas 38.83,13.17 |tip {turninat}Feralas
step
  talk Mathrengyl Bearwalker##4217
  turnin The New Frontier##6761 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only completed(2944)
  click Equinex Monolith##144063
  accept The Morrow Stone##2942 |goto Feralas 38.83,13.17
step
  only completed(2944)
  note Return the Sparkling Stone and the Stave of Equinex to Troyas Moonbreeze in Feathermoon Stronghold.
  collect A Sparkling Stone##9307 |q 2942 |goto Feralas 38.83,13.17
step
  only completed(2944)
  talk Troyas Moonbreeze##7764
  turnin The Morrow Stone##2942 |goto Feralas 31.78,45.5 |tip {turninat}Feralas
step
  note {travel}Darnassus
  goto Darnassus 34.81,9.26
]])
