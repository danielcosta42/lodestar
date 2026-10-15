-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Teldrassil (48-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Un'Goro Crater (50-55)",
	rev = "4621658d",
}, [[
step
  ding 43
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
  note Ask Daryn Lightwind if you may borrow her book.
  talk Daryn Lightwind##7907
  turnin Feralas: A History##2940 |goto Teldrassil 55.41,92.23
step
  only completed(2939)
  talk Daryn Lightwind##7907
  accept The Borrower##2941 |goto Teldrassil 55.41,92.23
step
  only not completed(5249) not haveq(5249) level>=53
  talk Daryn Lightwind##7907
  accept Starfall##5250 |goto Teldrassil 55.41,92.23
step
  only completed(2944)
  note Deliver the book to Troyas Moonbreeze in Feathermoon Stronghold.
  talk Troyas Moonbreeze##7764
  turnin Return to Troyas##2943 |goto Feralas 31.78,45.5 |tip {turninat}Feralas
step
  only completed(2944)
  talk Troyas Moonbreeze##7764
  accept The Stave of Equinex##2879 |goto Feralas 31.78,45.5
step
  only completed(2944)
  note Energize Troyas' Stave and find the Equinex Monolith.
  collect Stave of Equinex##9306 |q 2879 |goto Feralas 38.83,13.17 |tip {dropsfrom}Equinex Monolith
step
  only completed(2944)
  turnin The Stave of Equinex##2879 |goto Feralas 38.83,13.17 |tip {turninat}Feralas
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
  only not completed(3789) not completed(3790) not haveq(3789) not haveq(3790) level>=47
  talk Innkeeper Saelienne##6735
  accept Assisting Arch Druid Staghelm##3763 |goto Darnassus 67.42,15.65
step
  only not completed(3789) not completed(3790) not haveq(3789) not haveq(3790) haveq(3763)
  note Speak with Arch Druid Fandral Staghelm in Darnassus.
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3763 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only not completed(1015) not completed(1019) not haveq(1015) not haveq(1019) level>=54
  talk Herald Moonstalker##10878
  accept The New Frontier##1047 |goto Darnassus 47.81,81.97
step
  only level>=54
  talk Herald Moonstalker##10878
  accept Feathermoon Stronghold##7494 |goto Darnassus 47.81,81.97
step
  only not completed(1015) not completed(1019) not haveq(1015) not haveq(1019) haveq(1047)
  note Speak with Arch Druid Fandral Staghelm at the Cenarion Enclave of Darnassus about the Cenarion Circle's call to explore the frontiers of Kalimdor.
  talk Arch Druid Fandral Staghelm##3516
  turnin The New Frontier##1047 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  only completed(1047) level>=54
  talk Arch Druid Fandral Staghelm##3516
  accept The New Frontier##6761 |goto Darnassus 34.81,9.26
step
  only haveq(6761)
  note Speak with Mathrengyl Bearwalker at the Cenarion Enclave of Darnassus.
  talk Mathrengyl Bearwalker##4217
  turnin The New Frontier##6761 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only haveq(7494)
  note Speak with Latronicus Moonspear at the Feathermoon Stronghold in Feralas.
  talk Latronicus Moonspear##7877
  turnin Feathermoon Stronghold##7494 |goto Feralas 30.38,46.17 |tip {turninat}Feralas
step
  only completed(2939)
  note Take the letter to Curgle Cranklehop in Tanaris.
  talk Curgle Cranklehop##7763
  turnin The Borrower##2941 |goto Tanaris 52.36,26.91 |tip {turninat}Tanaris
step
  note {travel}Darnassus
  goto Darnassus 34.81,9.26
]])
