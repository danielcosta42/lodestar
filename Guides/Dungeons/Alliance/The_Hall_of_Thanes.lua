-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/The Hall of Thanes", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "64f87c69",
}, [[
step
  kill Dark Iron Spy##6123 |goto Dun Morogh 77.36,61.31 |tip Loot the quest item here — it starts the quest.
  accept Underground Map##96391 |goto Dun Morogh 77.36,61.31
step
  talk Thom Filch##265003
  accept Important Heirlooms##96403 |goto Ironforge 32.29,44.93
step
  talk Afadra Dunwall##264943
  accept The Restless Dead##96394 |goto Ironforge 33.1,47.9
step
  collect Treaty of Understanding##673474 |goto The Hall of Thanes - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept The Treaty of Understanding##98423 |goto The Hall of Thanes - Dungeon -1,-1
step
  note Collect 8 Dwarven Heirlooms from the Hall of Thanes.
  collect 8 Dwarven Heirloom##274289 |q 96403 |goto The Hall of Thanes - Dungeon -1,-1
step
  note Kill 15 Enraged Apparitions, 10 Tormented Souls and put the spirit of Anvilmar to rest.
  kill Enraged Apparition##263389 |q 96394 |goto The Hall of Thanes - Dungeon -1,-1
step
  note Deliver the Dark Iron Map to Earthseer Farsen in Dun Morogh.
  talk Earthseer Farsen##264936
  turnin Underground Map##96391 |goto Dun Morogh 64.87,58.47
step
  talk Thom Filch##265003
  turnin Important Heirlooms##96403 |goto Ironforge 32.29,44.93
step
  talk Afadra Dunwall##264943
  turnin The Restless Dead##96394 |goto Ironforge 33.1,47.9
step
  note Deliver the Treaty of Understanding to Magni Bronzebeard in Ironforge.
  talk King Magni Bronzebeard##2784
  turnin The Treaty of Understanding##98423 |goto Ironforge 39.09,56.2
step
  talk Earthseer Farsen##264936
  accept Old Ironforge Incursion##96393 |goto Dun Morogh 64.87,58.47
step
  note Enter the Hall of Thanes beneath Old Ironforge and claim the Head of Durgen Dirgehammer.
  collect Durgen Dirgehammer's Head##274286 |q 96393 |goto The Hall of Thanes - Dungeon -1,-1 |tip {dropsfrom}Durgen Dirgehammer
step
  talk King Magni Bronzebeard##2784
  turnin Old Ironforge Incursion##96393 |goto Ironforge 39.09,56.2
]])
