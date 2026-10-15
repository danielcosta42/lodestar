-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (54-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "da835576",
}, [[
step
  ding 51
step
  only haveq(4183)
  note Travel to Lakeshire and deliver Helendis Riverhorn's Letter to Magistrate Solomon.
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 24.9,44.45
step
  only completed(4183)
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 24.9,44.45
step
  talk Tamelyn Aldridge##256389 |tip Buy Advertising License Application: it starts the quest.
  accept Sign Me Up!##95816 |goto Redridge Mountains 10.64,71.24
step
  note Bring the completed form to Elaine Compton in Redridge Mountains.
  collect Massive Pile of Completed Forms##270897 |q 95816 |goto Redridge Mountains 10.64,71.24
step
  talk Elaine Compton##256391
  turnin Sign Me Up!##95816 |goto Redridge Mountains 10.32,70.99
step
  only completed(4183)
  note Travel to Stormwind and deliver Solomon's Plea to Highlord Bolvar Fordragon.
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only level>=56
  talk Highlord Bolvar Fordragon##1748
  accept The First and the Last##6182 |goto Stormwind City 80.21,38.35
step
  only completed(4183)
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  only completed(4183)
  note Speak with Highlord Bolvar Fordragon after speaking with Lady Katrana Prestor.
  talk Lady Katrana Prestor##1749 |q 4185 |goto Stormwind City 80.1,38.17
step
  only completed(4183)
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only completed(4183)
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 80.21,38.35
step
  only haveq(6182)
  note Speak with Mathias Shaw in Old Town Stormwind. He resides in the Barracks.
  talk Master Mathias Shaw##332
  turnin The First and the Last##6182 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(6182) level>=56
  talk Master Mathias Shaw##332
  accept Honor the Dead##6183 |goto Stormwind City 78.31,70.74
step
  only haveq(6183)
  note Speak with Mathias Shaw again if you wish to accept his task.
  talk Master Mathias Shaw##332
  turnin Honor the Dead##6183 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(6183) level>=56
  talk Master Mathias Shaw##332
  accept Flint Shadowmore##6184 |goto Stormwind City 78.31,70.74
step
  only completed(6402)
  talk Reginald Windsor##12580
  accept The Great Masquerade##6403 |goto Stormwind City 73.61,91.05
step
  only Mage
  talk Jennea Cannon##5497
  accept Magma or Lava?##84396 |goto Stormwind City 49.56,85.8
step
  only Mage
  talk Jennea Cannon##5497
  turnin Magma or Lava?##84396 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  only completed(6402)
  note Follow Reginald Windsor through Stormwind. Protect him from harm!
  talk Highlord Bolvar Fordragon##1748
  turnin The Great Masquerade##6403 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Melnan Darkstone##14842
  accept The Darkmoon Faire##7905 |goto Ironforge 29.65,75.25
step
  note Deliver the Free Ticket Voucher to Gelvas Grimgate, located inside the Darkmoon Faire carnival.
  talk Gelvas Grimegate##14828
  turnin The Darkmoon Faire##7905 |goto Elwynn Forest 41.5,68.87 |tip {turninat}Elwynn Forest
step
  only haveq(6184)
  note Travel to Chillwind Camp in the Western Plaguelands and meet up with your contact, Flint Shadowmore.
  talk Flint Shadowmore##12425
  turnin Flint Shadowmore##6184 |goto Western Plaguelands 43.61,84.51 |tip {turninat}Western Plaguelands
step
  only completed(6184) level>=56
  talk Flint Shadowmore##12425
  accept The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
step
  only completed(4183)
  note Take Bolvar's Decree to Magistrate Solomon in Lakeshire.
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 24.9,44.45
step
  only completed(4183)
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 24.9,44.45
step
  only haveq(6185)
  note Scour the Eastern Plaguelands for clues as to the "Blightcaller" and the missing SI:7 agents. If you find any SI:7 Insignias, return them to Flint Shadowmore at Chillwind Camp.
  collect SI:7 Insignia (Rutger)##16003 |q 6185/1 |goto Eastern Plaguelands 24.28,68.11 |tip {dropsfrom}Mangled Human Remains
  collect SI:7 Insignia (Turyen)##16002 |q 6185/3 |goto Eastern Plaguelands 24.28,63.65 |tip {dropsfrom}Mangled Human Remains
  collect SI:7 Insignia (Fredo)##16001 |q 6185 |goto Eastern Plaguelands 22.79,63.72 |tip {dropsfrom}Mangled Human Remains
step
  only haveq(6185)
  talk Flint Shadowmore##12425
  turnin The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51 |tip {turninat}Western Plaguelands
step
  only completed(6185) level>=56
  talk Flint Shadowmore##12425
  accept The Blightcaller Cometh##6186 |goto Western Plaguelands 43.61,84.51
step
  only completed(4183)
  note Speak with Marshal Maxwell in the Burning Steppes.
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  only completed(4183)
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  only completed(4183)
  note Speak with Ragged John to learn of Marshal Windsor's fate and return to Marshal Maxwell when you have completed this task.
  talk Ragged John##9563 |q 4224 |goto Burning Steppes 65.01,23.76
step
  only completed(4183)
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  only haveq(6186)
  note Return to Stormwind and inform Highlord Bolvar Fordragon of the fate of Nathanos Marris.
  talk Highlord Bolvar Fordragon##1748
  turnin The Blightcaller Cometh##6186 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
]])
