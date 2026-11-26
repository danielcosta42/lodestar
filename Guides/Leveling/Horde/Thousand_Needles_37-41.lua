-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Thousand Needles (37-41)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Desolace (42-45)",
	rev = "66d7323e",
}, [[
step
  ding 36
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
  note Speak with Razzeric on the Shimmering Flats.
  talk Razzeric##4706
  turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
step
  only completed(1183)
  talk Razzeric##4706
  accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  only completed(1137)
  talk Pozzik##4630
  accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
step
  only completed(1137)
  note Have Zamek create a diversion, then steal Rizzle's plans for Pozzik on the Shimmering Flats.
  turnin Keeping Pace##1190 |goto Thousand Needles 77.21,77.39
step
  only completed(1137)
  click Rizzle's Unguarded Plans##20805
  accept Rizzle's Schematics##1194 |goto Thousand Needles 77.21,77.39
step
  only completed(1137)
  note Bring the Sample of Indurium Ore to Pozzik on the Shimmering Flats.
  talk Pozzik##4630
  turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
  only completed(1119) not completed(1121) not haveq(1121)
  talk Kravel Koalbeard##4452
  accept Get the Gnomes Drunk##1120 |goto Thousand Needles 77.79,77.27
step
  only completed(1119) not completed(1121) not haveq(1121)
  note Bring the Fool's Stout to the Gnome Pit Boss.
  talk Gnome Pit Boss##4495
  turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
  only completed(1176)
  note Speak to Gazlowe in Ratchet.
  talk Gazlowe##3391
  turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23 |tip {turninat}The Barrens
step
  only completed(1262)
  talk Zor Lonetree##4047
  accept Service to the Horde##7541 |goto Orgrimmar 38.93,38.4
step
  only completed(1262)
  talk Zor Lonetree##4047
  turnin Service to the Horde##7541 |goto Orgrimmar 38.93,38.4 |tip {turninat}Orgrimmar
step
  only Warlock not completed(4487) not completed(4488) not completed(4489) not haveq(4487) not haveq(4488) not haveq(4489) level>=40
  talk Zevrost##3326
  accept Summon Felsteed##3631 |goto Orgrimmar 48.47,45.43
step
  only Orc not completed(97018) not completed(97074) not completed(97170) not completed(97188) not completed(97200) not completed(97203) not completed(97204) not completed(97205) not haveq(97018) not haveq(97074) not haveq(97170) not haveq(97188) not haveq(97200) not haveq(97203) not haveq(97204) not haveq(97205) level>=40
  talk Kildar##4752
  accept Learning to Ride##97194 |goto Orgrimmar 69.41,13.1
step
  only Orc not completed(97018) not completed(97074) not completed(97170) not completed(97188) not completed(97200) not completed(97203) not completed(97204) not completed(97205) not haveq(97018) not haveq(97074) not haveq(97170) not haveq(97188) not haveq(97200) not haveq(97203) not haveq(97204) not haveq(97205) haveq(97194)
  note Learn the Apprentice Riding skill from Kildar.
  talk Ogunaro Wolfrunner##3362
  turnin Learning to Ride##97194 |goto Orgrimmar 69.38,12.24 |tip {turninat}Orgrimmar
step
  only Orc not completed(95511) not completed(96982) not completed(96989) not completed(96996) not completed(96997) not completed(97017) not completed(97045) not completed(97046) not completed(97171) not completed(97446) not completed(98166) not completed(99326) not haveq(95511) not haveq(96982) not haveq(96989) not haveq(96996) not haveq(96997) not haveq(97017) not haveq(97045) not haveq(97046) not haveq(97171) not haveq(97446) not haveq(98166) not haveq(99326) level>=40
  talk Ogunaro Wolfrunner##3362
  accept Your First Riding Wolf##96994 |goto Orgrimmar 69.38,12.24
step
  only Orc not completed(95511) not completed(96982) not completed(96989) not completed(96996) not completed(96997) not completed(97017) not completed(97045) not completed(97046) not completed(97171) not completed(97446) not completed(98166) not completed(99326) not haveq(95511) not haveq(96982) not haveq(96989) not haveq(96996) not haveq(96997) not haveq(97017) not haveq(97045) not haveq(97046) not haveq(97171) not haveq(97446) not haveq(98166) not haveq(99326) haveq(96994)
  note Inspect the riding wolves to choose your first mount.
  kill Timber Riding Wolf##267301 |q 96994/3 |goto Orgrimmar 69.54,12.61
  kill Brown Riding Wolf##267299 |q 96994/1 |goto Orgrimmar 69.65,12.38
  kill Dire Riding Wolf##267300 |q 96994/2 |goto Orgrimmar 69.61,12.13
  kill Black Riding Wolf##267302 |q 96994 |goto Orgrimmar 69.49,11.92
step
  only Orc not completed(95511) not completed(96982) not completed(96989) not completed(96996) not completed(96997) not completed(97017) not completed(97045) not completed(97046) not completed(97171) not completed(97446) not completed(98166) not completed(99326) not haveq(95511) not haveq(96982) not haveq(96989) not haveq(96996) not haveq(96997) not haveq(97017) not haveq(97045) not haveq(97046) not haveq(97171) not haveq(97446) not haveq(98166) not haveq(99326) haveq(96994)
  talk Ogunaro Wolfrunner##3362
  turnin Your First Riding Wolf##96994 |goto Orgrimmar 69.38,12.24 |tip {turninat}Orgrimmar
step
  only Warlock not completed(4487) not completed(4488) not completed(4489) not haveq(4487) not haveq(4488) not haveq(4489) haveq(3631)
  note Speak to Strahad Farsan in the Barrens.
  talk Strahad Farsan##6251
  turnin Summon Felsteed##3631 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only completed(1183)
  note Retrieve the Seaforium Booster for Razzeric in the Shimmering Flats.
  collect Seaforium Booster##5862 |q 1187 |goto Dustwallow Marsh 54.07,56.49 |tip {dropsfrom}Gizmorium Shipping Crate
step
  only completed(1183)
  talk Razzeric##4706
  turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
step
  only completed(1183)
  talk Razzeric##4706
  accept Safety First##1188 |goto Thousand Needles 80.33,76.09
step
  note {travel}Shen'dralas
  goto Shen'dralas 43.65,34.32
]])
