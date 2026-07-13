-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Arathi Highlands (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Professor Phizzlethorpe##2768
  accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55
step
  talk Doctor Gregory Victor##12920
  accept Triage##6622 |goto Arathi Highlands 73.41,36.89
step
  talk Deathmaster Dwire##15021
  accept Take Four Bases##8121 |goto Arathi Highlands 73.25,29.73
step
  talk Deathmaster Dwire##15021
  accept Take Five Bases##8122 |goto Arathi Highlands 73.25,29.73
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
step
  talk Doctor Gregory Victor##12920
  turnin Triage##6622 |goto Arathi Highlands 73.41,36.89
step
  talk Deathmaster Dwire##15021
  turnin Take Four Bases##8121 |goto Arathi Highlands 73.25,29.73
step
  talk Deathmaster Dwire##15021
  turnin Take Five Bases##8122 |goto Arathi Highlands 73.25,29.73
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  note Doctor Draxlegauge in Faldir's Cove wants you to collect 10 Elven Gems and return the Goggles of Gem Hunting once you are done.
  collect Calcified Elven Gem##2712 |q 666 |goto Arathi Highlands 22.43,89.37
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##668 |goto Arathi Highlands 33.86,80.45
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##668 |goto Arathi Highlands 32.28,81.38
step
  talk Shakes O'Breen##2610
  accept Sunken Treasure##669 |goto Arathi Highlands 32.28,81.38
step
  talk Fleet Master Seahorn##2487
  turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01
step
  talk Fleet Master Seahorn##2487
  accept Sunken Treasure##670 |goto Stranglethorn Vale 27.17,77.01
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##670 |goto Arathi Highlands 32.28,81.38
step
  talk Shakes O'Breen##2610
  accept Death From Below##667 |goto Arathi Highlands 32.28,81.38
step
  talk Shakes O'Breen##2610
  turnin Death From Below##667 |goto Arathi Highlands 32.28,81.38
]])
