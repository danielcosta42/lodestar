-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Alliance/Onyxia's Lair (Alliance)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "c3d04df8",
}, [[
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 91.67,35.54
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 24.9,44.45
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 24.9,44.45
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 80.21,38.35
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  note Speak with Highlord Bolvar Fordragon after speaking with Lady Katrana Prestor.
  talk Lady Katrana Prestor##1749 |q 4185 |goto Stormwind City 80.1,38.17
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 80.21,38.35
step
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 24.9,44.45
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 24.9,44.45
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  note Speak with Ragged John to learn of Marshal Windsor's fate and return to Marshal Maxwell when you have completed this task.
  talk Ragged John##9563 |q 4224 |goto Burning Steppes 65.01,23.76
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept Marshal Windsor##4241 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  turnin Abandoned Hope##4242 |goto Burning Steppes 84.74,69.02
step
  kill Anvilrage Overseer##8889 |goto Blackrock Depths - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Marshal Windsor##9023
  turnin A Crumpled Up Note##4264 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Marshal Windsor##9023
  accept A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -1,-1
step
  note Return Marshal Windsor's Lost Information.
  collect Marshal Windsor's Lost Information##11464 |q 4282 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}General Angerforge
step
  talk Marshal Windsor##9023
  turnin A Shred of Hope##4282 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Marshal Windsor##9023
  accept Jail Break!##4322 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  turnin Jail Break!##4322 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept Stormwind Rendezvous##6402 |goto Burning Steppes 84.74,69.02
step
  talk Reginald Windsor##12580
  turnin Stormwind Rendezvous##6402 |goto Stormwind City 73.61,91.05
step
  talk Reginald Windsor##12580
  accept The Great Masquerade##6403 |goto Stormwind City 73.61,91.05
step
  talk Highlord Bolvar Fordragon##1748
  turnin The Great Masquerade##6403 |goto Stormwind City 80.21,38.35
step
  talk Highlord Bolvar Fordragon##1748
  accept The Dragon's Eye##6501 |goto Stormwind City 80.21,38.35
step
  talk Haleh##10929
  turnin The Dragon's Eye##6501 |goto Winterspring 54.55,51.2
step
  talk Haleh##10929
  accept Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
step
  note You must retrieve the Blood of the Black Dragon Champion from General Drakkisath. Drakkisath can be found in his throne room behind the Halls of Ascension in Blackrock Spire.
  collect Blood of the Black Dragon Champion##16663 |q 6502 |goto Blackrock Spire - Dungeon -1,-1 |raid |tip {dropsfrom}General Drakkisath
step
  talk Haleh##10929
  turnin Drakefire Amulet##6502 |goto Winterspring 54.55,51.2
]])
