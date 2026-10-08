-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Zul'Gurub", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "237169c5",
}, [[
step
  talk Yeh'kinya##8579
  accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Exzhal##14910
  accept A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  talk Vinchaxa##15070
  accept A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  kill Hakkar##14834 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Heart of Hakkar##8183 |goto Zul'Gurub - Dungeon -1,-1
step
  click Battered Tackle Box##180366
  accept Nat's Measuring Tape##8227 |goto Zul'Gurub - Dungeon -1,-1
step
  talk Dirk Thunderwood##16091
  accept The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  note Capture the spirits of 3 screechers in Feralas, then return to Yeh'kinya in Steamwheedle Port.
  use Screecher Spirit##8612 |q 3520 |goto Feralas 46.82,48.47 |tip {useit}
step
  note String 5 Channeler's Heads, then return the Collection of Troll Heads to Exzhal on Yojamba Isle.
  collect Gurubashi Head Collection##19880 |q 8201 |goto Stranglethorn Vale 15.26,15.5
step
  note Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac.
  collect Venoxis's Venom Sac##22216 |q 9023 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}High Priest Venoxis
step
  talk Yeh'kinya##8579
  turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
  talk Exzhal##14910
  turnin A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  note Destroy any one of the Hakkari Bijous found in Zul'Gurub at the Altar of Zanza on Yojamba Isle. When done, speak with Vinchaxa nearby.
  talk Vinchaxa##15070
  turnin A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  note Bring the Heart of Hakkar to Molthor on Yojamba Isle.
  talk Molthor##14875
  turnin The Heart of Hakkar##8183 |goto Stranglethorn Vale 15.04,15.13
step
  note Return Nat's Measuring Tape to Nat Pagle in Dustwallow Marsh.
  talk Nat Pagle##12919
  turnin Nat's Measuring Tape##8227 |goto Dustwallow Marsh 58.61,60.06
step
  talk Dirk Thunderwood##16091
  turnin The Perfect Poison##9023 |goto Silithus 52.13,39.14
step
  talk Yeh'kinya##8579
  accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  note Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris.
  collect First Mosh'aru Tablet##10660 |q 3527 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Theka the Martyr, Theka the Martyr Shapeshift
step
  talk Yeh'kinya##8579
  turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  accept The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  note Bring the Ancient Egg to Yeh'kinya in Tanaris.
  collect Ancient Egg##12402 |q 4787 |goto The Hinterlands 57.58,86.79
step
  talk Yeh'kinya##8579
  turnin The Ancient Egg##4787 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  accept The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  note Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris.
  collect Filled Egg of Hakkar##10662 |q 3528 |goto Tanaris 66.99,22.36
step
  talk Yeh'kinya##8579
  turnin The God Hakkar##3528 |goto Tanaris 66.99,22.36
step
  talk Prospector Ironboot##10460
  accept The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  note Bring the Third and Fourth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Third Mosh'aru Tablet##12411 |q 5065 |goto Eastern Plaguelands 63.43,7.84
step
  talk Prospector Ironboot##10460
  turnin The Lost Tablets of Mosh'aru##5065 |goto Tanaris 66.89,24.03
step
  talk Prospector Ironboot##10460
  accept The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  note Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris.
  collect Fifth Mosh'aru Tablet##12740 |q 4788 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Prospector Ironboot##10460
  turnin The Final Tablets##4788 |goto Tanaris 66.89,24.03
step
  talk Prospector Ironboot##10460
  accept Confront Yeh'kinya##8181 |goto Tanaris 66.89,24.03
step
  note Speak with Yeh'kinya.
  talk Yeh'kinya##8579
  turnin Confront Yeh'kinya##8181 |goto Tanaris 66.99,22.36
]])
