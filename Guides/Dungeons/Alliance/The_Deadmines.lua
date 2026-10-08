-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/The Deadmines", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "69c256fb",
}, [[
step
  talk Wilder Thistlenettle##656
  accept Collecting Memories##168 |goto Stormwind City 70.31,40.82
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
step
  talk Shoni the Shilent##6579
  accept Underground Assault##2040 |goto Stormwind City 62.63,34.11
step
  talk Wilder Thistlenettle##656
  accept Oh Brother. . .##167 |goto Stormwind City 70.31,40.82
step
  kill Edwin VanCleef##639 |goto The Deadmines - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Unsent Letter##373 |goto The Deadmines - Dungeon -1,-1
step
  note Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind.
  kill Skeletal Miner##623 |goto Westfall 41.61,81.67 |elite
  collect 4 Miners' Union Card##1894 |q 168 |goto Westfall 41.61,81.67
step
  note Retrieve the Gnoam Sprecklesprocket from the Deadmines and return it to Shoni the Shilent in Stormwind.
  collect Gnoam Sprecklesprocket##7365 |q 2040 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Sneed's Shredder
step
  note Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind.
  kill Foreman Thistlenettle##626 |goto Westfall 42.22,82.61 |elite
  collect Thistlenettle's Badge##1875 |q 167 |goto Westfall 42.22,82.61
step
  talk Wilder Thistlenettle##656
  turnin Collecting Memories##168 |goto Stormwind City 70.31,40.82
step
  note Gryan Stoutmantle wants you to talk to Wiley in Lakeshire.
  talk Wiley the Black##266
  turnin The Defias Brotherhood##65 |goto Redridge Mountains 21.39,45.35
step
  talk Shoni the Shilent##6579
  turnin Underground Assault##2040 |goto Stormwind City 62.63,34.11
step
  talk Wilder Thistlenettle##656
  turnin Oh Brother. . .##167 |goto Stormwind City 70.31,40.82
step
  note Deliver the Letter to the City Architect to Baros Alexston in Stormwind.
  talk Baros Alexston##1646
  turnin The Unsent Letter##373 |goto Stormwind City 57.74,47.86
step
  talk Wiley the Black##266
  accept The Defias Brotherhood##132 |goto Redridge Mountains 21.39,45.35
step
  note Take Wiley's Note to Gryan Stoutmantle in Westfall.
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
step
  note Take Wiley's Note to Mathias Shaw in Stormwind.
  talk Master Mathias Shaw##332
  turnin The Defias Brotherhood##135 |goto Stormwind City 78.31,70.74
step
  talk Master Mathias Shaw##332
  accept The Defias Brotherhood##141 |goto Stormwind City 78.31,70.74
step
  note Take Shaw's report to Gryan Stoutmantle in Westfall.
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  note Track down the Defias Messenger in Westfall and bring his message to Stoutmantle.
  collect A Mysterious Message##1381 |q 142 |goto Westfall 45.1,69.33 |tip {dropsfrom}Defias Messenger
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  talk The Defias Traitor##467
  accept The Defias Brotherhood##155 |goto Westfall 55.68,47.5
step
  note Escort the Defias Traitor to the secret hideout of the Defias Brotherhood. Once the Defias Traitor shows you where VanCleef and his men are hiding out, return to Gryan Stoutmantle with the information.
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
step
  talk Scout Riell##820
  accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##166 |goto Westfall 56.33,47.52
step
  note Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas.
  collect Red Silk Bandana##915 |q 214 |goto The Deadmines - Dungeon -1,-1 |tip {dropsfrom}Defias Henchman, Defias Miner, Defias Conjurer
step
  note Kill Edwin VanCleef and bring his head to Gryan Stoutmantle.
  collect Head of VanCleef##3637 |q 166 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Edwin VanCleef
step
  talk Scout Riell##820
  turnin Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##166 |goto Westfall 56.33,47.52
]])
