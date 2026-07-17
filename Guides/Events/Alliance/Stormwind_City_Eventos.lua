-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Stormwind City (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Warrior
  talk Lyria Du Lac##913
  accept A Warrior's Training##1638 |goto Elwynn Forest 41.09,65.77
step
  only Rogue
  talk Master Mathias Shaw##332
  accept Mathias and the Defias##2360 |goto Stormwind City 75.78,59.84
step
  talk Innkeeper Allison##6740
  accept Flexing for Nougat##8356 |goto Stormwind City 52.62,65.7
step
  talk Alliance Brigadier General##15351
  accept Call to Arms: Arathi Basin##11335 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  accept Call to Arms: Alterac Valley##11336 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  accept Call to Arms: Eye of the Storm##11337 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  accept Call to Arms: Warsong Gulch##11338 |goto Stormwind City 82.91,14.16
step
  talk Lieutenant Orrin##16478
  accept Investigate the Scourge of Stormwind##9260 |goto Stormwind City 63.79,75.47
step
  kill Edwin VanCleef##639 |goto The Deadmines - Dungeon - The Deadmines -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Unsent Letter##373 |goto The Deadmines - Dungeon - The Deadmines -1,-1
step
  talk Thomas##4982
  accept The Missing Diplomat##1274 |goto Stormwind City 38.72,25.9
step
  talk Brohann Caskbelly##5384
  accept In Search of The Temple##1448 |goto Stormwind City 64.33,20.63
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Orphan Matron Nightingale##14450
  accept Children's Week##1468 |goto Stormwind City 47.35,38.19
step
  note Collect three Dim Necrotic Stones from the Scourge outside Stormwind and investigate the glowing runic circles nearby their encampment.
  collect Dim Necrotic Stone##22892 |q 9260 |goto Elwynn Forest 34.39,52.45 |tip {dropsfrom}Skeletal Soldier, Spectral Apparition, Spectral Spirit
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 89.47,35.54
step
  only Warrior
  talk Harry Burlguard##6089
  turnin A Warrior's Training##1638 |goto Stormwind City 74.26,37.25
step
  only Rogue
  talk Agent Kearnen##7024
  turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
step
  talk Innkeeper Allison##6740
  turnin Flexing for Nougat##8356 |goto Stormwind City 52.62,65.7
step
  talk Alliance Brigadier General##15351
  turnin Call to Arms: Arathi Basin##11335 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  turnin Call to Arms: Alterac Valley##11336 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  turnin Call to Arms: Eye of the Storm##11337 |goto Stormwind City 82.91,14.16
step
  talk Alliance Brigadier General##15351
  turnin Call to Arms: Warsong Gulch##11338 |goto Stormwind City 82.91,14.16
step
  talk Lieutenant Orrin##16478
  turnin Investigate the Scourge of Stormwind##9260 |goto Stormwind City 63.79,75.47
step
  talk Baros Alexston##1646
  turnin The Unsent Letter##373 |goto Stormwind City 49.19,30.28
step
  talk Bishop DeLavey##4960
  turnin The Missing Diplomat##1274 |goto Stormwind City 78.28,25.38
step
  talk Brohann Caskbelly##5384
  turnin In Search of The Temple##1448 |goto Stormwind City 64.33,20.63
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Human Orphan##14305
  turnin Children's Week##1468 |goto Stormwind City 47.58,38.17
step
  only Warrior
  talk Harry Burlguard##6089
  accept Bartleby the Drunk##1639 |goto Stormwind City 74.26,37.25
step
  only Rogue
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  talk Baros Alexston##1646
  accept Bazil Thredd##389 |goto Stormwind City 49.19,30.28
step
  talk Bishop DeLavey##4960
  accept The Missing Diplomat##1241 |goto Stormwind City 78.28,25.38
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Human Orphan##14305
  accept The Bough of the Eternals##1479 |goto Stormwind City 47.58,38.17
step
  talk Human Orphan##14305
  accept The Stonewrought Dam##1558 |goto Stormwind City 47.58,38.17
step
  talk Human Orphan##14305
  accept Spooky Lighthouse##1687 |goto Stormwind City 47.58,38.17
step
  only Rogue
  note Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
  collect Klaven Mortwake's Journal##7908 |q 2359 |goto Westfall 70.41,73.93 |tip {dropsfrom}Duskwood Chest
step
  only Warrior
  talk Bartleby##6090
  turnin Bartleby the Drunk##1639 |goto Stormwind City 73.78,36.33
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Klaven's Tower##2359 |goto Stormwind City 75.78,59.84
step
  talk Warden Thelwater##1719
  turnin Bazil Thredd##389 |goto Stormwind City 41.11,58.09
step
  talk Jorgen##4959
  turnin The Missing Diplomat##1241 |goto Stormwind City 73.17,78.42
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 29.99,44.45
step
  talk Human Orphan##14305
  turnin The Bough of the Eternals##1479 |goto Stormwind City 47.58,38.17
step
  talk Human Orphan##14305
  turnin The Stonewrought Dam##1558 |goto Stormwind City 47.58,38.17
step
  talk Human Orphan##14305
  turnin Spooky Lighthouse##1687 |goto Stormwind City 47.58,38.17
step
  only Warrior
  talk Bartleby##6090
  accept Beat Bartleby##1640 |goto Stormwind City 73.78,36.33
step
  only Rogue
  talk Master Mathias Shaw##332
  accept The Touch of Zanzil##2607 |goto Stormwind City 75.78,59.84
step
  talk Jorgen##4959
  accept The Missing Diplomat##1242 |goto Stormwind City 73.17,78.42
step
  talk Warden Thelwater##1719
  accept The Stockade Riots##391 |goto Stormwind City 41.11,58.09
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 29.99,44.45
step
  note Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade.
  collect Head of Bazil Thredd##2926 |q 391 |goto The Stockade - Dungeon -1,-1 |tip {dropsfrom}Bazil Thredd
step
  only Warrior
  talk Bartleby##6090
  turnin Beat Bartleby##1640 |goto Stormwind City 73.78,36.33
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2607 |goto Stormwind City 78.04,58.76
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1242 |goto Stormwind City 59.91,64.18
step
  talk Warden Thelwater##1719
  turnin The Stockade Riots##391 |goto Stormwind City 41.11,58.09
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 78.22,17.98
step
  only Rogue
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.76
step
  talk Elling Trias##482
  accept The Missing Diplomat##1243 |goto Stormwind City 59.91,64.18
step
  talk Warden Thelwater##1719
  accept The Curious Visitor##392 |goto Stormwind City 41.11,58.09
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 78.22,17.98
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.76
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1243 |goto Duskwood 74.83,44.22
step
  talk Baros Alexston##1646
  turnin The Curious Visitor##392 |goto Stormwind City 49.19,30.28
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 78.22,17.98
step
  talk Baros Alexston##1646
  accept Shadow of the Past##393 |goto Stormwind City 49.19,30.28
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  note Find the Defias Docket and return it to Watcher Backus in Duskwood.
  collect Defias Docket##5947 |q 1244 |goto Duskwood 23.92,72.07 |tip {dropsfrom}Defias Strongbox
step
  talk Master Mathias Shaw##332
  turnin Shadow of the Past##393 |goto Stormwind City 75.78,59.84
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1245 |goto Duskwood 74.83,44.22
step
  talk Master Mathias Shaw##332
  accept Look to an Old Friend##350 |goto Stormwind City 75.78,59.84
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1245 |goto Stormwind City 59.91,64.18
step
  talk Elling Trias##482
  turnin Look to an Old Friend##350 |goto Stormwind City 59.91,64.18
step
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 59.91,64.18
step
  talk Elling Trias##482
  accept Infiltrating the Castle##2745 |goto Stormwind City 59.91,64.18
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 70.55,44.89
step
  talk Tyrion##7766
  turnin Infiltrating the Castle##2745 |goto Stormwind City 69.21,14.4
step
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1447 |goto Stormwind City 70.55,44.89
step
  talk Tyrion##7766
  accept Items of Some Consequence##2746 |goto Stormwind City 69.21,14.4
step
  note Bring 3 Silk Cloth and 2 of Clara's Fresh Apples to Tyrion in Stormwind.
  collect 3 Silk Cloth##4306 |q 2746 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Skeletal Warrior, Skeletal Horror
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1447 |goto Stormwind City 70.55,44.89
step
  talk Tyrion##7766
  turnin Items of Some Consequence##2746 |goto Stormwind City 69.21,14.4
step
  talk Tyrion##7766
  accept The Attack!##434 |goto Stormwind City 69.21,14.4
step
  note Remain in the garden until Lord Gregor Lescovar and Marzon the Silent Blade have had their conversation. Afterwards, kill them both before returning to Elling Trias in Stormwind.
  kill Lord Gregor Lescovar##1754 |q 434 |goto Stormwind City 73.36,6.04
step
  talk Elling Trias##482
  turnin The Attack!##434 |goto Stormwind City 59.91,64.18
]])
