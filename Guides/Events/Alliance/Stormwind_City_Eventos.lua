-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Stormwind City (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Lieutenant Orrin##16478
  accept Investigate the Scourge of Stormwind##9260 |goto Stormwind City 69.04,82.93
step
  only Warrior
  talk Harry Burlguard##6089
  accept Bartleby the Drunk##1639 |goto Stormwind City 77.13,53.26
step
  only Rogue
  talk Master Mathias Shaw##332
  accept Mathias and the Defias##2360 |goto Stormwind City 78.31,70.74
step
  kill Edwin VanCleef##639 |goto The Deadmines - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept The Unsent Letter##373 |goto The Deadmines - Dungeon -1,-1
step
  talk Thomas##4982
  accept The Missing Diplomat##1274 |goto Stormwind City 49.64,44.48
step
  talk Brohann Caskbelly##5384
  accept In Search of The Temple##1448 |goto Stormwind City 69.45,40.4
step
  talk Helendis Riverhorn##9562
  accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Orphan Matron Nightingale##14450
  accept Children's Week##1468 |goto Stormwind City 56.31,53.99
step
  note Collect three Dim Necrotic Stones from the Scourge outside Stormwind and investigate the glowing runic circles near their encampment.
  collect Dim Necrotic Stone##22892 |q 9260 |goto Elwynn Forest 34.2,53.2 |tip {dropsfrom}Skeletal Soldier, Spectral Apparition, Spectral Spirit
step
  note Slay 15 Black Broodlings, 10 Black Dragonspawn, 4 Black Wyrmkin and 1 Black Drake. Return to Helendis Riverhorn when the task is complete.
  kill Black Broodling##7047 |q 4182 |goto Burning Steppes 89.47,35.54
step
  talk Lieutenant Orrin##16478
  turnin Investigate the Scourge of Stormwind##9260 |goto Stormwind City 69.04,82.93
step
  only Warrior
  talk Bartleby##6090
  turnin Bartleby the Drunk##1639 |goto Stormwind City 76.76,52.55
step
  only Rogue
  talk Agent Kearnen##7024
  turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
step
  talk Baros Alexston##1646
  turnin The Unsent Letter##373 |goto Stormwind City 57.74,47.86
step
  talk Bishop DeLavey##4960
  turnin The Missing Diplomat##1274 |goto Stormwind City 80.24,44.07
step
  talk Brohann Caskbelly##5384
  turnin In Search of The Temple##1448 |goto Stormwind City 69.45,40.4
step
  talk Helendis Riverhorn##9562
  turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
step
  talk Human Orphan##14305
  turnin Children's Week##1468 |goto Stormwind City 56.29,54.29
step
  only Warrior
  talk Bartleby##6090
  accept Beat Bartleby##1640 |goto Stormwind City 76.76,52.55
step
  talk Baros Alexston##1646
  accept Bazil Thredd##389 |goto Stormwind City 57.74,47.86
step
  only Rogue
  talk Agent Kearnen##7024
  accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
step
  talk Bishop DeLavey##4960
  accept The Missing Diplomat##1241 |goto Stormwind City 80.24,44.07
step
  talk Helendis Riverhorn##9562
  accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
  talk Human Orphan##14305
  accept The Bough of the Eternals##1479 |goto Stormwind City 56.29,54.29
step
  talk Human Orphan##14305
  accept The Stonewrought Dam##1558 |goto Stormwind City 56.29,54.29
step
  talk Human Orphan##14305
  accept Spooky Lighthouse##1687 |goto Stormwind City 56.29,54.29
step
  only Warrior
  note Beat Bartleby, then talk to him.
  kill Bartleby##6090 |q 1640 |goto Stormwind City 76.76,52.55
step
  only Rogue
  note Steal the Defias Tower Key, break into the Defias Tower and uncover the contents of the Duskwood Chest. Take whatever information you find back to Mathias Shaw in Stormwind. Read Kearnen's Journal to gain insight about the tower.
  collect Klaven Mortwake's Journal##7908 |q 2359 |goto Westfall 70.41,73.93 |tip {dropsfrom}Duskwood Chest
step
  only Warrior
  talk Bartleby##6090
  turnin Beat Bartleby##1640 |goto Stormwind City 76.76,52.55
step
  talk Warden Thelwater##1719
  turnin Bazil Thredd##389 |goto Stormwind City 51.49,69.38
step
  only Rogue
  talk Master Mathias Shaw##332
  turnin Klaven's Tower##2359 |goto Stormwind City 78.31,70.74
step
  talk Jorgen##4959
  turnin The Missing Diplomat##1241 |goto Stormwind City 76.29,85.12
step
  talk Magistrate Solomon##344
  turnin The True Masters##4183 |goto Redridge Mountains 24.9,44.45
step
  talk Human Orphan##14305
  turnin The Bough of the Eternals##1479 |goto Stormwind City 56.29,54.29
step
  talk Human Orphan##14305
  turnin The Stonewrought Dam##1558 |goto Stormwind City 56.29,54.29
step
  talk Human Orphan##14305
  turnin Spooky Lighthouse##1687 |goto Stormwind City 56.29,54.29
step
  only Rogue
  talk Master Mathias Shaw##332
  accept The Touch of Zanzil##2607 |goto Stormwind City 78.31,70.74
step
  talk Jorgen##4959
  accept The Missing Diplomat##1242 |goto Stormwind City 76.29,85.12
step
  talk Warden Thelwater##1719
  accept The Stockade Riots##391 |goto Stormwind City 51.49,69.38
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 24.9,44.45
step
  note Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade.
  collect Head of Bazil Thredd##2926 |q 391 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Bazil Thredd
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2607 |goto Stormwind City 80.06,69.9
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1242 |goto Stormwind City 66.03,74.1
step
  talk Warden Thelwater##1719
  turnin The Stockade Riots##391 |goto Stormwind City 51.49,69.38
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 80.21,38.35
step
  only Rogue
  talk Doc Mixilpixil##7207
  accept The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9
step
  talk Elling Trias##482
  accept The Missing Diplomat##1243 |goto Stormwind City 66.03,74.1
step
  talk Warden Thelwater##1719
  accept The Curious Visitor##392 |goto Stormwind City 51.49,69.38
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  note Speak with Highlord Bolvar Fordragon after speaking with Lady Katrana Prestor.
  talk Lady Katrana Prestor##1749 |q 4185 |goto Stormwind City 80.1,38.17
step
  only Rogue
  talk Doc Mixilpixil##7207
  turnin The Touch of Zanzil##2608 |goto Stormwind City 80.06,69.9
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1243 |goto Duskwood 74.83,44.22
step
  talk Baros Alexston##1646
  turnin The Curious Visitor##392 |goto Stormwind City 57.74,47.86
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  talk Baros Alexston##1646
  accept Shadow of the Past##393 |goto Stormwind City 57.74,47.86
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 80.21,38.35
step
  note Find the Defias Docket and return it to Watcher Backus in Duskwood.
  collect Defias Docket##5947 |q 1244 |goto Duskwood 23.92,72.07 |tip {dropsfrom}Defias Strongbox
step
  talk Master Mathias Shaw##332
  turnin Shadow of the Past##393 |goto Stormwind City 78.31,70.74
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  talk Magistrate Solomon##344
  turnin The True Masters##4186 |goto Redridge Mountains 24.9,44.45
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1245 |goto Duskwood 74.83,44.22
step
  talk Master Mathias Shaw##332
  accept Look to an Old Friend##350 |goto Stormwind City 78.31,70.74
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 24.9,44.45
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1245 |goto Stormwind City 66.03,74.1
step
  talk Elling Trias##482
  turnin Look to an Old Friend##350 |goto Stormwind City 66.03,74.1
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02
step
  talk Elling Trias##482
  accept The Missing Diplomat##1246 |goto Stormwind City 66.03,74.1
step
  talk Elling Trias##482
  accept Infiltrating the Castle##2745 |goto Stormwind City 66.03,74.1
step
  talk Marshal Maxwell##9560
  accept The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  note Speak with Ragged John to learn of Marshal Windsor's fate and return to Marshal Maxwell when you have completed this task.
  talk Ragged John##9563 |q 4224 |goto Burning Steppes 65.01,23.76
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1246 |goto Stormwind City 74.26,59.17
step
  talk Tyrion##7766
  turnin Infiltrating the Castle##2745 |goto Stormwind City 73.23,35.58
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4224 |goto Burning Steppes 84.74,69.02
step
  talk Dashel Stonefist##4961
  accept The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17
step
  talk Tyrion##7766
  accept Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58
step
  talk Marshal Maxwell##9560
  accept Marshal Windsor##4241 |goto Burning Steppes 84.74,69.02
step
  note Defeat Dashel Stonefist in Stormwind.
  kill Dashel Stonefist##4961 |q 1447 |goto Stormwind City 74.26,59.17
step
  note Bring 3 Silk Cloth and 2 of Clara's Fresh Apples to Tyrion in Stormwind.
  collect 3 Silk Cloth##4306 |q 2746 |goto Hillsbrad Foothills 43.85,30.19 |tip {dropsfrom}Alterac Granite, Battered Chest, Solid Chest
step
  talk Dashel Stonefist##4961
  turnin The Missing Diplomat##1447 |goto Stormwind City 74.26,59.17
step
  talk Tyrion##7766
  turnin Items of Some Consequence##2746 |goto Stormwind City 73.23,35.58
step
  talk Marshal Windsor##9023
  turnin Marshal Windsor##4241 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Tyrion##7766
  accept The Attack!##434 |goto Stormwind City 73.23,35.58
step
  talk Marshal Windsor##9023
  accept Abandoned Hope##4242 |goto Blackrock Depths - Dungeon -1,-1
step
  note Remain in the garden until Lord Gregor Lescovar and Marzon the Silent Blade have had their conversation. Afterwards, kill them both before returning to Elling Trias in Stormwind.
  kill Lord Gregor Lescovar##1754 |q 434 |goto Stormwind City 72.36,35.12
step
  talk Elling Trias##482
  turnin The Attack!##434 |goto Stormwind City 66.03,74.1
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
]])
