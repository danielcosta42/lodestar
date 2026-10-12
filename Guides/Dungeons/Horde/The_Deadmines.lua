-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/The Deadmines", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "50f35b83",
}, [[
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.33,40.97
step
  only Undead Paladin
  note Speak with Trevan Rol in the Sepulcher and bring him the materials he requires.
  collect Whitestone Oak Lumber##6994 |q 95036 |goto The Deadmines - Dungeon -1,-1 |tip {dropsfrom}Goblin Woodcarver
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.34,41.12
]])
