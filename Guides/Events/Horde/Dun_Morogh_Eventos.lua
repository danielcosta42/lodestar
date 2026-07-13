-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Dun Morogh (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Costumed Orphan Matron##24519
  accept Stop the Fires!##11131 |goto Dun Morogh 46.19,53.14
step
  talk Lieutenant Nevell##16484
  accept Investigate the Scourge of Ironforge##9261 |goto Dun Morogh 52.98,35.03
step
  note Collect three Dim Necrotic Stones from the Scourge outside Ironforge and investigate the glowing runic circles nearby their encampment.
  get Investigate the Scourge of Ironforge |q 9261 |goto Dun Morogh 52.98,35.03
step
  talk Costumed Orphan Matron##24519
  turnin Stop the Fires!##11131 |goto Dun Morogh 46.19,53.14
step
  talk Lieutenant Nevell##16484
  turnin Investigate the Scourge of Ironforge##9261 |goto Dun Morogh 52.98,35.03
]])
