-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Zul'Farrak", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Tran'rek##7876
  accept Scarab Shells##2865 |goto Tanaris 51.57,26.76
step
  talk Trenton Lighthammer##7804
  accept Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  talk Tabetha##6546
  accept Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  talk Chief Engineer Bilgewhizzle##7407
  accept Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  talk Wizzle Brassbolts##4453
  accept Gahz'rilla##2770 |goto Thousand Needles 78.14,77.12
step
  note Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
  use Screecher Spirit##8612 |q 3520 |goto Feralas 46.82,48.47 |tip {useit}
step
  note Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan.
  collect 5 Uncracked Scarab Shell##9238 |q 2865 |goto Zul'Farrak - Dungeon -1,-1 |tip {dropsfrom}Scarab
step
  note Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan.
  collect 20 Troll Temper##9523 |q 3042 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Sandfury Shadowcaster, Sandfury Blood Drinker, Sandfury Witch Doctor
step
  note Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh.
  collect Tiara of the Deep##9234 |q 2846 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Hydromancer Velratha
step
  note Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan.
  collect Divino-matic Rod##8548 |q 2768 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Sergeant Bly
step
  note Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats.
  collect Gahz'rilla's Electrified Scale##8707 |q 2770 |goto Zul'Farrak - Dungeon -1,-1 |tip {dropsfrom}Gahz'rilla
step
  talk Yeh'kinya##8579
  turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Tran'rek##7876
  turnin Scarab Shells##2865 |goto Tanaris 51.57,26.76
step
  talk Trenton Lighthammer##7804
  turnin Troll Temper##3042 |goto Tanaris 51.41,28.75
step
  talk Tabetha##6546
  turnin Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
step
  talk Chief Engineer Bilgewhizzle##7407
  turnin Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
step
  talk Wizzle Brassbolts##4453
  turnin Gahz'rilla##2770 |goto Thousand Needles 78.14,77.12
step
  talk Yeh'kinya##8579
  accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  note Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
  collect First Mosh'aru Tablet##10660 |q 3527 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Theka the Martyr, Theka the Martyr Shapeshift
step
  talk Yeh'kinya##8579
  turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
]])
