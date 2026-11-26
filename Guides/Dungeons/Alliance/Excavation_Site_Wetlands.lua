-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Excavation Site: Wetlands", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "48c6aa05",
}, [[
step
  talk Rethiel the Greenwarden##1244
  accept Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  talk James Halloran##2094
  accept Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  talk Llana##3970
  accept Seeking Caitlin##95737 |goto Ashenvale 34.98,48.46
step
  kill Relic Guardian##260326 |goto Excavation Site: Wetlands - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Lost Relic Carry##95810 |goto Excavation Site: Wetlands - Dungeon -1,-1
step
  note Kill 15 Mosshide Gnolls and 10 Mosshide Mongrels, then return to Rethiel the Greenwarden in the Wetlands.
  kill Mosshide Gnoll##1007 |q 276/1 |goto Wetlands 61.89,71.88
  kill Mosshide Mongrel##1008 |q 276 |goto Wetlands 60.74,64.31
step
  note Obtain 4 Young Crocolisk Skins for James Halloran in Menethil Harbor.
  collect 4 Young Crocolisk Skin##3397 |q 484 |goto Wetlands 55.11,45.65 |tip {dropsfrom}Young Wetlands Crocolisk
step
  note Bring the Titan Relic to Prospector Whelgar in the Wetlands excavation site.
  collect Titan Relic##270865 |q 95810 |goto Excavation Site: Wetlands - Dungeon -1,-1 |elite |tip {dropsfrom}Relic Guardian
step
  talk Rethiel the Greenwarden##1244
  turnin Tramping Paws##276 |goto Wetlands 56.37,40.4
step
  talk James Halloran##2094
  turnin Young Crocolisk Skins##484 |goto Wetlands 8.55,55.74
step
  note Speak with Caitlin Grassman in Menethil Harbor.
  talk Caitlin Grassman##1480
  turnin Seeking Caitlin##95737 |goto Wetlands 11.88,58.82
step
  talk Prospector Whelgar##1077
  turnin Lost Relic Carry##95810 |goto Wetlands 38.81,52.39
step
  talk Rethiel the Greenwarden##1244
  accept Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  talk James Halloran##2094
  accept Highland Hides##98815 |goto Wetlands 8.55,55.74
step
  talk Prospector Whelgar##1077
  accept Prehistoric Prism##98824 |goto Wetlands 38.81,52.39
step
  note Bring Rethiel the Greenwarden 9 Crude Flints.
  collect 9 Crude Flint##2611 |q 277 |goto Wetlands 61.2,58.26 |tip {dropsfrom}Mosshide Mistweaver, Mosshide Fenrunner, Mosshide Trapper
step
  note Return 4 Thicket Raptor Hides to James Halloran, the tanner, in Menethil Harbor.
  collect 4 Thicket Raptor Hide##284845 |q 98815 |goto Excavation Site: Wetlands - Dungeon -1,-1 |elite |tip {dropsfrom}Shadetooth, Thicket Lurker, Thicket Hunter
step
  talk Rethiel the Greenwarden##1244
  turnin Fire Taboo##277 |goto Wetlands 56.37,40.4
step
  talk James Halloran##2094
  turnin Highland Hides##98815 |goto Wetlands 8.55,55.74
step
  note Bring the Titan Relic to High Explorer Magellas in Ironforge's Hall of Explorers.
  talk High Explorer Magellas##5387
  turnin Prehistoric Prism##98824 |goto Ironforge 69.93,18.55
step
  talk Rethiel the Greenwarden##1244
  accept Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  note Kill 12 Fen Creepers, then return to Rethiel the Greenwarden in the Wetlands.
  kill Fen Creeper##1040 |q 275 |goto Wetlands 35.56,33.45
step
  talk Rethiel the Greenwarden##1244
  turnin Blisters on The Land##275 |goto Wetlands 56.37,40.4
step
  talk Rethiel the Greenwarden##1244
  accept Horrors in the Highland##95646 |goto Wetlands 56.37,40.4
step
  note Kill a Highland Horror within Excavation Sites and bring its root core to Rethiel the Greenwarden in the Wetlands.
  kill Highland Horror##260808 |q 95646 |goto Wetlands 49.38,60.33 |elite
  collect Horrible Rootcore##270180 |q 95646 |goto Wetlands 49.38,60.33
step
  talk Rethiel the Greenwarden##1244
  turnin Horrors in the Highland##95646 |goto Wetlands 56.37,40.4
]])
