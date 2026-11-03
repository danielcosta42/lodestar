-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/The Deadmines", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "ee25abd0",
}, [[
step
  only Undead Paladin
  talk Lumina Windsinger##259620
  accept A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.4,40.99
step
  only Undead Paladin
  note Speak with Trevan Rol in the Sepulcher and bring him the materials he requires.
  collect Trevan's Weapon Notes##267454 |q 95036/1
  collect Whitestone Oak Lumber##6994 |q 95036/2 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Goblin Woodcarver
  collect Enchanted Silver Ingot##267361 |q 95036/3
  collect Purified Kor Gem##272448 |q 95036
step
  only Undead Paladin
  talk Trevan Rol##248840
  turnin A Moon-Kissed Blade##95036 |goto Silverpine Forest 43.4,41.1
]])
