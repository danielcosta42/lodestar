-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Razorfen Downs", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "2d6305a1",
}, [[
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  talk Belnistrasz##8516
  accept Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Archbishop Benedictus##1284
  accept Bring the Light##3636 |goto Stormwind City 50.31,45.47
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Duthorian Rall##6171
  accept Lord Grayson Shadowbreaker##7638 |goto Stormwind City 50.48,47.49
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626 |goto The Barrens 47.3,89.89 |elite
step
  note Archbishop Bendictus wants you to slay Amnennar the Coldbringer in Razorfen Downs.
  kill Amnennar the Coldbringer##7358 |q 3636 |goto Razorfen Downs - Dungeon -1,-1 |elite
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  note If you agree to aid Belnistrasz, speak with him again and hand the Oathstone he gave you back to him.
  talk Belnistrasz##8516
  turnin Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Archbishop Benedictus##1284
  turnin Bring the Light##3636 |goto Stormwind City 50.31,45.47
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak with Lord Grayson Shadowbreaker in Stormwind's Cathedral District.
  talk Lord Grayson Shadowbreaker##928
  turnin Lord Grayson Shadowbreaker##7638 |goto Stormwind City 48.43,50.22
step
  talk Belnistrasz##8516
  accept Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Emphasis on Sacrifice##7637 |goto Stormwind City 48.43,50.22
step
  note Escort Belnistrasz to the Quilboar's idol in Razorfen Downs.
  turnin Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  only not NightElf not Gnome not Skyborne Paladin
  note Travel to Ironforge and get High Priest Rohan's Exorcism Censer. You will need to make a donation of 150 gold in order to secure it.
  talk High Priest Rohan##11406
  turnin Emphasis on Sacrifice##7637 |goto Ironforge 24.73,8.16
step
  only not NightElf not Gnome not Skyborne Paladin
  talk High Priest Rohan##11406
  accept To Show Due Judgment##7639 |goto Ironforge 24.73,8.16
step
  only not NightElf not Gnome not Skyborne Paladin
  note Return the Exorcism Censer to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  talk Lord Grayson Shadowbreaker##928
  turnin To Show Due Judgment##7639 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Use the Exorcism Censer to drive out the spirits that torment Terrordale. When you have slain 25 Terrordale Spirits, return to Lord Grayson Shadowbreaker in the Cathedral District of Stormwind.
  kill Terrordale Spirit##14564 |q 7640 |goto Eastern Plaguelands 11.36,20.78
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  turnin Exorcising Terrordale##7640 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Lord Grayson Shadowbreaker##928
  accept The Work of Grimand Elmore##7641 |goto Stormwind City 48.43,50.22
step
  only not NightElf not Gnome not Skyborne Paladin
  note Speak with Grimand Elmore in Stormwind's Dwarven District.
  talk Grimand Elmore##1416
  turnin The Work of Grimand Elmore##7641 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  accept Collection of Goods##7642 |goto Stormwind City 59.73,33.78
step
  only not NightElf not Gnome not Skyborne Paladin
  note Bring 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears, 5 Stratholme Holy Water vials, and 150 gold to Grimand Elmore in the Dwarven District of Stormwind.
  collect 40 Stratholme Holy Water##13180 |q 7642 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Supply Crate, Stratholme Supply Crate
step
  only not NightElf not Gnome not Skyborne Paladin
  talk Grimand Elmore##1416
  turnin Collection of Goods##7642 |goto Stormwind City 59.73,33.78
]])
