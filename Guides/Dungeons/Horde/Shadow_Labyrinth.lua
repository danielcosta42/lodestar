-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Shadow Labyrinth", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Spy To'gun##18891
  accept The Soul Devices##10091 |goto Shadow Labyrinth - Dungeon -1,-1
step
  talk Spy Grik'tha##19496
  accept Find Spy To'gun##10178 |goto Terokkar Forest 39.94,72.28
step
  talk Nether-Stalker Mah'duun##24370
  accept Wanted: Malicious Instructors##11376 |goto Shattrath City 75.5,37.24
step
  note Steal 5 Soul Devices and deliver them to Spymistress Mehlisah Highcrown at the Terrace of the Light in Shattrath City.
  collect Soul Device##182940 |q 10091 |goto Shadow Labyrinth - Dungeon -1,-1
step
  note Destroy Murmur and inform Spymistress Mehlisah Highcrown at the Terrace of Light in Shattrath City of the events that have transpired inside the Shadow Labyrinth.
  kill Murmur##18708 |q 10095 |goto Shadow Labyrinth - Dungeon -1,-1
step
  note Nether-Stalker Mah'duun wants you to kill 3 Malicious Instructors. Return to him in Shattrath's Lower City once they all lie dead in order to collect the bounty.
  kill Malicious Instructor##18848 |q 11376 |goto Shadow Labyrinth - Dungeon -1,-1
step
  talk Spymistress Mehlisah Highcrown##18893
  turnin The Soul Devices##10091 |goto Shattrath City 50.24,45.36
step
  talk Spymistress Mehlisah Highcrown##18893
  turnin Into the Heart of the Labyrinth##10095 |goto Shattrath City 50.24,45.36
step
  talk Spy To'gun##18891
  turnin Find Spy To'gun##10178 |goto Shadow Labyrinth - Dungeon -1,-1
step
  talk Nether-Stalker Mah'duun##24370
  turnin Wanted: Malicious Instructors##11376 |goto Shattrath City 75.5,37.24
]])
