-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Excavation Site: Wetlands", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "777dd46f",
}, [[
step
  talk Zaruk##2787
  accept Dragonmaw Rumors##95663 |goto Arathi Highlands 74.54,35.64
step
  kill Relic Guardian##260326 |goto Excavation Site: Wetlands - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Elder Knowledge##95664 |goto Excavation Site: Wetlands - Dungeon -1,-1
step
  talk Borstan##3368
  accept Changing Tastes##95697 |goto Orgrimmar 57.2,53.32
step
  note Take the Titan Relic to the Elder Rise in Thunder Bluff and look for someone who can tell you more about it.
  collect Titan Relic##270866 |q 95664 |goto Excavation Site: Wetlands - Dungeon -1,-1 |elite |tip {dropsfrom}Relic Guardian
step
  note Enter the Excavation Sites in the Wetlands and bring back Thicket Raptor Meat.
  collect Thicket Raptor Meat##271100 |q 95697 |goto Excavation Site: Wetlands - Dungeon -1,-1 |elite |tip {dropsfrom}Shadetooth, Thicket Lurker, Thicket Hunter
step
  note Travel to the Wetlands and meet the Deathstalker Agent in the hills above the Dragonmaw camp.
  talk Deathstalker Agent##13155
  turnin Dragonmaw Rumors##95663 |goto Wetlands 51.48,59.3
step
  talk Bashana Runetotem##9087
  turnin Elder Knowledge##95664 |goto Thunder Bluff 71.06,34.19
step
  talk Borstan##3368
  turnin Changing Tastes##95697 |goto Orgrimmar 57.2,53.32
step
  talk Bashana Runetotem##9087
  accept Earthen Echo##98823 |goto Thunder Bluff 71.06,34.19
step
  talk Deathstalker Agent##13155
  accept Open the Maw##95682 |goto Wetlands 51.48,59.3
step
  note Slay the Dragonmaw forces within the Excavation Site and return to the Deathstalker Agent outside with anything you recover.
  kill Dragonmaw Saboteur##275045 |q 95682 |goto Excavation Site: Wetlands - Dungeon -1,-1 |elite
step
  note Bring the Titan Relic to Muln Earthfury at the Skywatcher Plateau in northwest Mulgore.
  talk Muln Earthfury##259118
  turnin Earthen Echo##98823 |goto Mulgore 33.41,22.59
step
  talk Deathstalker Agent##13155
  turnin Open the Maw##95682 |goto Wetlands 51.48,59.3
]])
