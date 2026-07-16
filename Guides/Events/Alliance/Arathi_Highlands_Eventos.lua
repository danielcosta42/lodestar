-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Arathi Highlands (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Phin Odelic##2711
  accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.35,59.05
step
  talk Professor Phizzlethorpe##2768
  accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55
step
  talk Field Marshal Oslight##14983
  accept Control Four Bases##8114 |goto Arathi Highlands 45.82,45.46
step
  talk Field Marshal Oslight##14983
  accept Control Five Bases##8115 |goto Arathi Highlands 45.82,45.46
step
  talk Quae##2712
  turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.18,53.85
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
step
  talk Field Marshal Oslight##14983
  turnin Control Four Bases##8114 |goto Arathi Highlands 45.82,45.46
step
  talk Field Marshal Oslight##14983
  turnin Control Five Bases##8115 |goto Arathi Highlands 45.82,45.46
step
  talk Quae##2712
  accept Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  note Find the Forsaken Courier and bring back her Sealed Folder to Quae near the Go'Shek Farm.
  collect Sealed Folder##4482 |q 658 |goto Arathi Highlands 52.47,61.53 |tip {dropsfrom}Forsaken Courier, Alterac Granite
step
  note Doctor Draxlegauge in Faldir's Cove wants you to collect 10 Elven Gems and return the Goggles of Gem Hunting once you are done.
  collect 10 Elven Gem##4492 |q 666 |goto Arathi Highlands 22.43,89.37 |tip {dropsfrom}Calcified Elven Gem
step
  talk Quae##2712
  turnin Hints of a New Plague?##658 |goto Arathi Highlands 60.18,53.85
step
  talk Doctor Draxlegauge##2774
  turnin Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
  talk Quae##2712
  accept Hints of a New Plague?##657 |goto Arathi Highlands 60.18,53.85
step
  talk Doctor Draxlegauge##2774
  accept Sunken Treasure##668 |goto Arathi Highlands 33.86,80.45
step
  talk Kinelory##2713
  turnin Hints of a New Plague?##657 |goto Arathi Highlands 60.24,53.92
step
  talk Shakes O'Breen##2610
  turnin Sunken Treasure##668 |goto Arathi Highlands 32.28,81.38
step
  talk Kinelory##2713
  accept Hints of a New Plague?##660 |goto Arathi Highlands 60.24,53.92
step
  talk Shakes O'Breen##2610
  accept Sunken Treasure##669 |goto Arathi Highlands 32.28,81.38
step
  talk Quae##2712
  turnin Hints of a New Plague?##660 |goto Arathi Highlands 60.18,53.85
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
