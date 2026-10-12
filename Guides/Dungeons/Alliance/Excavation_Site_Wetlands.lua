-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Excavation Site: Wetlands", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "887b5073",
}, [[
step
  talk James Halloran##2094
  accept Highland Hides##98815 |goto Wetlands 8.55,55.74
step
  talk Llana##3970
  accept Seeking Caitlin##95737 |goto Ashenvale 34.98,48.46
step
  talk Rethiel the Greenwarden##1244
  accept Horrors in the Highland##95646 |goto Wetlands 56.37,40.4
step
  talk Prospector Whelgar##1077
  accept Prehistoric Prism##98824 |goto Wetlands 38.81,52.39
step
  note Return 4 Thicket Raptor Hides to James Halloran, the tanner, in Menethil Harbor.
  collect Thicket Raptor Hide##284845 |q 98815 |goto Wetlands 8.55,55.74 |tip {dropsfrom}Shadetooth, Thicket Lurker, Thicket Hunter
step
  note Kill a Highland Horror within Excavation Sites and bring its root core to Rethiel the Greenwarden in the Wetlands.
  collect Horrible Rootcore##270180 |q 95646 |goto Wetlands 49.49,59.69 |tip {dropsfrom}Highland Horror
step
  note Bring the Titan Relic to High Explorer Magellas in Ironforge's Hall of Explorers.
  collect Titan Relic##270865 |q 98824 |goto Wetlands 38.81,52.39 |tip {dropsfrom}Relic Guardian
step
  talk James Halloran##2094
  turnin Highland Hides##98815 |goto Wetlands 8.55,55.74
step
  note Speak with Caitlin Grassman in Menethil Harbor.
  talk Caitlin Grassman##1480
  turnin Seeking Caitlin##95737 |goto Wetlands 11.88,58.82
step
  talk Rethiel the Greenwarden##1244
  turnin Horrors in the Highland##95646 |goto Wetlands 56.37,40.4
step
  talk High Explorer Magellas##5387
  turnin Prehistoric Prism##98824 |goto Ironforge 69.93,18.55
]])
