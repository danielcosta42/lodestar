-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Teldrassil (48-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Tanaris (50-54)",
	rev = "5048c460",
}, [[
step
  ding 43
step
  note {fp}Vesprystus
  goto Teldrassil 58.4,94.02 |tip {vendor}
step
  only haveq(2939)
  note Talk to Daryn Lightwind in Rut'theran Village.
  talk Daryn Lightwind##7907
  turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23
step
  only haveq(3022)
  note Bring the Carefully-packed Crate to Erelas Ambersky in Rut'theran Village.
  talk Erelas Ambersky##7916
  turnin Handle With Care##3022 |goto Teldrassil 55.5,92.05
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
  only haveq(3378)
  talk Astarii Starseeker##4090
  turnin Prayer to Elune##3378 |goto Darnassus 38.33,80.95 |tip {turninat}Darnassus
step
  only not completed(1015) not completed(1019) not haveq(1015) not haveq(1019) level>=54
  talk Herald Moonstalker##10878
  accept The New Frontier##1047 |goto Darnassus 47.81,81.97
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
  only completed(2939)
  note Take the letter to Curgle Cranklehop in Tanaris.
  talk Curgle Cranklehop##7763
  turnin The Borrower##2941 |goto Tanaris 52.36,26.91 |tip {turninat}Tanaris
step
  note {travel}Tanaris
  goto Tanaris 30,70
]])
