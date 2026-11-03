-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/The Deadmines", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "5c13aeed",
}, [[
step
  talk Alba Fairmoon##253092
  accept Testing the Wells##92742 |goto Westfall 52.48,52.97
step
  talk Alba Fairmoon##253092
  accept Murloc Gills##92744 |goto Westfall 52.48,52.97
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
  note Use the Well Water Sample Kit to collect samples from the wells at the Jansen Stead and the Molsen Farm.
  collect Jansen Stead Water Sample##254546 |q 92742/1 |goto Westfall 56.62,18.69 |tip {dropsfrom}Jansen Stead Water Well
  collect Molsen Farm Water Sample##254547 |q 92742 |goto Westfall 46.08,38.14 |tip {dropsfrom}Molsen Farm Water Well
step
  note Alba Fairmoon wants you to collect 7 Longshore Murloc Gills along the shoreline of Westfall.
  collect 7 Longshore Murloc Gill##254548 |q 92744 |goto Westfall 45.02,8.89 |tip {dropsfrom}Murloc Coastrunner, Murloc Raider, Murloc Minor Oracle
step
  note Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind.
  kill Skeletal Miner##623 |q 168 |goto Westfall 41.61,81.67 |elite
  collect 4 Miners' Union Card##1894 |q 168 |goto Westfall 41.61,81.67
step
  note Retrieve the Gnoam Sprecklesprocket from the Deadmines and return it to Shoni the Shilent in Stormwind.
  collect Gnoam Sprecklesprocket##7365 |q 2040 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Sneed's Shredder
step
  note Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind.
  kill Foreman Thistlenettle##626 |q 167 |goto Westfall 42.22,82.61 |elite
  collect Thistlenettle's Badge##1875 |q 167 |goto Westfall 42.22,82.61
step
  talk Alba Fairmoon##253092
  turnin Testing the Wells##92742 |goto Westfall 52.48,52.97
step
  talk Alba Fairmoon##253092
  turnin Murloc Gills##92744 |goto Westfall 52.48,52.97
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
  talk Alba Fairmoon##253092
  accept The State of the Mines##92745 |goto Westfall 52.48,52.97
step
  talk Wiley the Black##266
  accept The Defias Brotherhood##132 |goto Redridge Mountains 21.39,45.35
step
  note Slay 4 Kobold Diggers in the Jangolode Mine and 6 Riverpaw Miners in the Gold Coast Quarry.
  kill Kobold Digger##1236 |q 92745/1 |goto Westfall 45.32,20.46
  kill Riverpaw Miner##1426 |q 92745 |goto Westfall 30.27,49.65
step
  talk Alba Fairmoon##253092
  turnin The State of the Mines##92745 |goto Westfall 52.48,52.97
step
  note Take Wiley's Note to Gryan Stoutmantle in Westfall.
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52
step
  talk Alba Fairmoon##253092
  accept Moonbrook Espionage##92747 |goto Westfall 52.48,52.97
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
step
  note Collect 8 Suspicious Industrial Supplies from Moonbrook.
  collect 8 Suspicious Industrial Supplies##254676 |q 92747 |goto Westfall 42.5,68.7 |tip {dropsfrom}Suspicious Crate
step
  talk Alba Fairmoon##253092
  turnin Moonbrook Espionage##92747 |goto Westfall 52.48,52.97
step
  note Take Wiley's Note to Mathias Shaw in Stormwind.
  talk Master Mathias Shaw##332
  turnin The Defias Brotherhood##135 |goto Stormwind City 78.31,70.74
step
  talk Alba Fairmoon##253092
  accept Explosive Consultation##92748 |goto Westfall 52.48,52.97
step
  talk Master Mathias Shaw##332
  accept The Defias Brotherhood##141 |goto Stormwind City 78.31,70.74
step
  note Travel to the Dwarven District in Stormwind and find an engineer who can help.
  talk Sprite Jumpsprocket##11026
  turnin Explosive Consultation##92748 |goto Stormwind City 61.88,30.56
step
  note Take Shaw's report to Gryan Stoutmantle in Westfall.
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52
step
  talk Sprite Jumpsprocket##11026
  accept A Dynamite Plan##92749 |goto Stormwind City 61.88,30.56
step
  talk Sprite Jumpsprocket##11026
  accept Detonation at a Distance##92750 |goto Stormwind City 61.88,30.56
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  note Obtain 10 Coarse Dynamite from crafting, trading, or the auction house, then return to Sprite Jumpsprocket in the Dwarven District of Stormwind.
  collect 10 Rough Dynamite##4358 |q 92749 |goto Stormwind City 61.88,30.56 |tip Crafted or bought.
step
  note Track down the Defias Messenger in Westfall and bring his message to Stoutmantle.
  collect A Mysterious Message##1381 |q 142 |goto Westfall 45.1,69.33 |tip {dropsfrom}Defias Messenger
step
  talk Sprite Jumpsprocket##11026
  turnin A Dynamite Plan##92749 |goto Stormwind City 61.88,30.56
step
  note Talk to someone in Stormwind Intelligence about acquiring a remote detonator.
  talk Jasper Fel##1325
  turnin Detonation at a Distance##92750 |goto Stormwind City 80.28,70.07
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
  talk Jasper Fel##1325
  accept Detonation at a Distance##92751 |goto Stormwind City 80.28,70.07
step
  talk The Defias Traitor##467
  accept The Defias Brotherhood##155 |goto Westfall 55.68,47.5
step
  note Escort the Defias Traitor to the secret hideout of the Defias Brotherhood. Once the Defias Traitor shows you where VanCleef and his men are hiding out, return to Gryan Stoutmantle with the information.
  goto Westfall 42.55,71.53 |tip Escort The Defias Traitor to discover where VanCleef is hiding
step
  note Bring the Remote Detonator Kit to Sprite Jumpsprocket in the Dwarven District of Stormwind.
  talk Sprite Jumpsprocket##11026
  turnin Detonation at a Distance##92751 |goto Stormwind City 61.88,30.56
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
step
  talk Sprite Jumpsprocket##11026
  accept Explosive Consultation##92752 |goto Stormwind City 61.88,30.56
step
  talk Scout Riell##820
  accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  talk Gryan Stoutmantle##234
  accept The Defias Brotherhood##166 |goto Westfall 56.33,47.52
step
  note Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas.
  collect 10 Red Silk Bandana##915 |q 214 |goto Westfall 42.82,76.47 |tip {dropsfrom}Defias Digger, Defias Henchman, Defias Conjurer
step
  note Kill Edwin VanCleef and bring his head to Gryan Stoutmantle.
  collect Head of VanCleef##3637 |q 166 |goto The Deadmines - Dungeon -1,-1 |elite |tip {dropsfrom}Edwin VanCleef
step
  note Return to Alba Fairmoon in Westfall.
  talk Alba Fairmoon##253092
  turnin Explosive Consultation##92752 |goto Westfall 52.48,52.97
step
  talk Scout Riell##820
  turnin Red Silk Bandanas##214 |goto Westfall 56.67,47.35
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##166 |goto Westfall 56.33,47.52
step
  talk Alba Fairmoon##253092
  accept Destruction in Deadmines##92753 |goto Westfall 52.48,52.97
step
  note Find the forge hidden in the Deadmines, and plant the Extra-Destructive Explosives nearby. Then, meet up with Alba Fairmoon at the Deadmines exit.
  get Destruction in Deadmines |q 92753
step
  talk Alba Fairmoon##253279
  turnin Destruction in Deadmines##92753 |goto Westfall 38.68,83.7
]])
