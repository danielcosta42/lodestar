-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (54-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Eastern Plaguelands (56-60)",
}, [[
step
  only completed(4183)
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 24.9,44.45
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91899 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Apprentice Crate##248765 |q 91899 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91900 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Journeyman Crate##248766 |q 91900 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91904 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Apprentice Crate##248770 |q 91904 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  accept A Sealed Crate##91905 |goto Redridge Mountains 9.75,71.02
step
  collect Sealed Journeyman Crate##248771 |q 91905 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91899 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91900 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91904 |goto Redridge Mountains 9.75,71.02
step
  talk Marcy Baker##256390
  turnin A Sealed Crate##91905 |goto Redridge Mountains 9.75,71.02
step
  only completed(4183)
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Highlord Bolvar Fordragon##1748
  accept The First and the Last##6182 |goto Stormwind City 80.21,38.35
step
  only completed(6402)
  talk Reginald Windsor##12580
  accept The Great Masquerade##6403 |goto Stormwind City 73.61,91.05
step
  talk Melnan Darkstone##14842
  accept The Darkmoon Faire##7905 |goto Ironforge 29.65,75.25
step
  only Rogue completed(8977)
  talk Deliana##16013
  accept Just Compensation##8935 |goto Ironforge 43.53,52.64
step
  only completed(8951,8952,8953,8954,8955,8956,8958,8959)
  talk Deliana##16013
  accept Bodley's Unfortunate Fate##8960 |goto Ironforge 43.53,52.64
step
  only Mage
  talk Jennea Cannon##5497
  accept Magma or Lava?##84396 |goto Stormwind City 49.56,85.8
step
  only Rogue completed(8977)
  note Bring a Shadowcraft Belt and a set of Shadowcraft Gloves to Deliana in Ironforge.
  collect Shadowcraft Belt##16713 |q 8935 |goto Eastern Kingdoms - the continent map 49.12,64.1 |tip {dropsfrom}Scarshield Legionnaire, Firebrand Grunt, Scarshield Quartermaster
step
  talk Master Mathias Shaw##332
  turnin The First and the Last##6182 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(6402)
  talk Highlord Bolvar Fordragon##1748
  turnin The Great Masquerade##6403 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Gelvas Grimegate##14828
  turnin The Darkmoon Faire##7905 |goto Elwynn Forest 41.5,68.87 |tip {turninat}Elwynn Forest
step
  only Rogue completed(8977)
  talk Deliana##16013
  turnin Just Compensation##8935 |goto Ironforge 43.53,52.64 |tip {turninat}Ironforge
step
  only completed(8951,8952,8953,8954,8955,8956,8958,8959)
  talk Bodley##16033
  turnin Bodley's Unfortunate Fate##8960 |goto Eastern Kingdoms - the continent map 48.9,63.93 |tip {turninat}Eastern Kingdoms - the continent map
step
  only Mage
  talk Jennea Cannon##5497
  turnin Magma or Lava?##84396 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  only completed(4183)
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  talk Master Mathias Shaw##332
  accept Honor the Dead##6183 |goto Stormwind City 78.31,70.74
step
  only completed(4183)
  note Speak with Highlord Bolvar Fordragon after speaking with Lady Katrana Prestor.
  talk Lady Katrana Prestor##1749 |q 4185 |goto Stormwind City 80.1,38.17
step
  only completed(4183)
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  talk Master Mathias Shaw##332
  turnin Honor the Dead##6183 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  only completed(4183)
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 80.21,38.35
step
  talk Master Mathias Shaw##332
  accept Flint Shadowmore##6184 |goto Stormwind City 78.31,70.74
step
  only completed(4183)
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 24.9,44.45
step
  talk Flint Shadowmore##12425
  turnin Flint Shadowmore##6184 |goto Western Plaguelands 43.61,84.51 |tip {turninat}Western Plaguelands
step
  only completed(4183)
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 24.9,44.45
step
  talk Flint Shadowmore##12425
  accept The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
step
  note Scour the Eastern Plaguelands for clues as to the "Blightcaller" and the missing SI:7 agents. If you find any SI:7 Insignias, return them to Flint Shadowmore at Chillwind Camp.
  collect SI:7 Insignia (Rutger)##16003 |q 6185 |goto Eastern Plaguelands 24.28,68.11 |tip {dropsfrom}Mangled Human Remains
step
  only completed(4183)
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  talk Flint Shadowmore##12425
  turnin The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51 |tip {turninat}Western Plaguelands
step
  only completed(4183)
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Flint Shadowmore##12425
  accept The Blightcaller Cometh##6186 |goto Western Plaguelands 43.61,84.51
step
  only completed(4183)
  note Speak with Ragged John to learn of Marshal Windsor's fate and return to Marshal Maxwell when you have completed this task.
  talk Ragged John##9563 |q 4224 |goto Burning Steppes 65.01,23.76
step
  only completed(4183)
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  talk Highlord Bolvar Fordragon##1748
  turnin The Blightcaller Cometh##6186 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  note {travel}Eastern Plaguelands
  goto Eastern Plaguelands 31.15,77.98
]])
