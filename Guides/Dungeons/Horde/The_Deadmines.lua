-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/The Deadmines", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "1c0cf9ea",
}, [[
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  note Speak with Trevan Rol in the Sepulcher and bring him the materials he requires.
  collect Trevan's Weapon Notes##267454 |q 95036 |goto Silverpine Forest 43.2,40.8
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.4,41
]])
