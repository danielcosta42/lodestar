-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Thousand Needles (37-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Feralas (43-48)",
}, [[
step
  only completed(6628)
  talk Parqual Fintallas##4488
  accept Final Passage##1394 |goto Undercity 57.8,65.42
step
  only completed(1176)
  talk Pozzik##4630
  accept Goblin Sponsorship##1178 |goto Thousand Needles 80.18,75.88
step
  only completed(1183)
  talk Pozzik##4630
  accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
step
  only completed(1183)
  talk Razzeric##4706
  turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
step
  only completed(6628)
  talk Dorn Plainstalker##2986
  turnin Final Passage##1394 |goto Thousand Needles 53.95,41.49
step
  only completed(1176)
  talk Gazlowe##3391
  turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23 |tip {turninat}The Barrens
step
  only completed(1262)
  talk Zor Lonetree##4047
  accept Service to the Horde##7541 |goto Orgrimmar 38.93,38.4
step
  only completed(1137)
  talk Pozzik##4630
  accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
step
  only Warlock not completed(4487) not completed(4488) not completed(4489) not haveq(4487) not haveq(4488) not haveq(4489)
  talk Zevrost##3326
  accept Summon Felsteed##3631 |goto Orgrimmar 48.47,45.43
step
  only completed(1119) not completed(1121) not haveq(1121)
  talk Kravel Koalbeard##4452
  accept Get the Gnomes Drunk##1120 |goto Thousand Needles 77.79,77.27
step
  only completed(1262)
  talk Zor Lonetree##4047
  turnin Service to the Horde##7541 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  only completed(1137)
  turnin Keeping Pace##1190 |goto Thousand Needles 77.21,77.39
step
  only Warlock not completed(4487) not completed(4488) not completed(4489) not haveq(4487) not haveq(4488) not haveq(4489)
  talk Strahad Farsan##6251
  turnin Summon Felsteed##3631 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only completed(1119) not completed(1121) not haveq(1121)
  talk Gnome Pit Boss##4495
  turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
  only completed(1183)
  talk Razzeric##4706
  accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  only completed(1137)
  click Rizzle's Unguarded Plans##20805
  accept Rizzle's Schematics##1194 |goto Thousand Needles 77.21,77.39
step
  only completed(1183)
  note Retrieve the Seaforium Booster for Razzeric in the Shimmering Flats.
  collect Seaforium Booster##5862 |q 1187 |goto Dustwallow Marsh 54.07,56.49 |tip {dropsfrom}Gizmorium Shipping Crate
step
  only completed(1183)
  talk Razzeric##4706
  turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  only completed(1137)
  talk Pozzik##4630
  turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
  only completed(1183)
  talk Razzeric##4706
  accept Safety First##1188 |goto Thousand Needles 80.33,76.09
step
  only completed(1183)
  talk Shreev##4708
  turnin Safety First##1188 |goto Tanaris 50.96,27.24 |tip {turninat}Tanaris
step
  note {travel}Orgrimmar
  goto Orgrimmar 75.23,34.24
]])
