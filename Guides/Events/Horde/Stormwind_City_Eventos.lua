-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Stormwind City (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Innkeeper Allison##6740
  accept Flexing for Nougat##8356 |goto Stormwind City 52.62,65.7
step
  talk Alliance Brigadier General##15351
  accept Call to Arms: Alterac Valley##11336 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  accept Call to Arms: Eye of the Storm##11337 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  accept Call to Arms: Warsong Gulch##11338 |goto Stormwind City 82.91,14.16
step
  talk Lieutenant Orrin##16478
  accept Investigate the Scourge of Stormwind##9260 |goto Stormwind City 63.79,75.47
step
  talk Innkeeper Allison##6740
  turnin Flexing for Nougat##8356 |goto Stormwind City 52.62,65.7
step
  talk Alliance Brigadier General##15351
  turnin Call to Arms: Alterac Valley##11336 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  turnin Call to Arms: Eye of the Storm##11337 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  turnin Call to Arms: Warsong Gulch##11338 |goto Stormwind City 82.91,14.16
step
  talk Lieutenant Orrin##16478
  turnin Investigate the Scourge of Stormwind##9260 |goto Stormwind City 63.79,75.47
]])
