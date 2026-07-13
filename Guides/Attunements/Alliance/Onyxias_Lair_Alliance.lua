-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Alliance/Onyxia's Lair (Alliance)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 89.47,35.54
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 29.99,44.45
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 29.99,44.45
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 78.22,17.98
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 78.22,17.98
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 78.22,17.98
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 78.22,17.98
step
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 29.99,44.45
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 29.99,44.45
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept Marshal Windsor##4241 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  turnin Abandoned Hope##4242 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Windsor##9023
  turnin A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  turnin A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Windsor##9023
  accept Jail Break!##4322 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Marshal Maxwell##9560
  turnin Jail Break!##4322 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept Stormwind Rendezvous##6402 |goto Burning Steppes 84.74,69.02
step
  talk Reginald Windsor##12580
  turnin Stormwind Rendezvous##6402
step
  talk Reginald Windsor##12580
  accept The Great Masquerade##6403
step
  talk Highlord Bolvar Fordragon##1748
  turnin The Great Masquerade##6403 |goto Stormwind City 78.22,17.98
step
  talk Highlord Bolvar Fordragon##1748
  accept The Dragon's Eye##6501 |goto Stormwind City 78.22,17.98
step
  talk Haleh##10929
  turnin The Dragon's Eye##6501 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  accept Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  turnin Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
]])
