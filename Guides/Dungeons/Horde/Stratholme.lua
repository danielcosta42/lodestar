-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Stratholme", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9319
step
  only BloodElf Paladin
  talk Knight-Lord Bloodvalor##17717
  accept A Summons from Lord Solanar##9721 |goto Silvermoon City 89.26,35.2
step
  talk Aurius##10917
  accept The Medallion of Faith##5122 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  accept The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Elder Farwhisper##15607
  accept Farwhisper the Elder##8727 |goto Stratholme - Dungeon -1,-1
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then return to the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9319 |goto Dire Maul - Dungeon -1,-1
step
  collect Medallion of Faith##12845 |q 5122 |goto Stratholme - Dungeon -1,-1 |tip {dropsfrom}Malor's Strongbox
step
  note Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive.
  kill Archivist Galford##10811 |q 5251 |goto Stratholme - Dungeon -1,-1 |elite
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9319
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  turnin A Summons from Lord Solanar##9721 |goto Silvermoon City 92.05,38.81
step
  talk Aurius##10917
  turnin The Medallion of Faith##5122 |goto Stratholme - Dungeon -1,-1
step
  talk Duke Nicholas Zverenhoff##11039
  turnin The Archivist##5251 |goto Eastern Plaguelands 81.44,59.82
step
  talk Elder Farwhisper##15607
  turnin Farwhisper the Elder##8727 |goto Stratholme - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  accept A Light in Dark Places##9386
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  accept The Master's Path##9722 |goto Silvermoon City 92.05,38.81
step
  talk Aurius##10917
  accept Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
step
  note Find and touch the bonfires located within Blackrock Spire, Dire Maul, Scholomance, and Stratholme, then speak with the Festival Flamekeeper.
  collect Flame of Dire Maul##181346 |q 9386 |goto Dire Maul - Dungeon -1,-1
step
  talk Festival Flamekeeper##16788
  turnin A Light in Dark Places##9386
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  turnin The Master's Path##9722 |goto Silvermoon City 92.05,38.81
step
  talk Aurius##10917
  turnin Aurius' Reckoning##5125 |goto Stratholme - Dungeon -1,-1
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  accept A Gesture of Commitment##9723 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  note Bring 40 Runecloth, 6 Arcanite Bars, 10 Sungrass, 5 Dark Runes, and 150 Gold to Lord Solanar Bloodwrath in Silvermoon City.
  collect 40 Runecloth##14047 |q 9723 |goto Alterac Valley - Battleground 51.71,94.86 |tip {dropsfrom}Grimtooth, Stonard Shaman, Firewing Bloodwarder
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  turnin A Gesture of Commitment##9723 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  accept A Demonstration of Loyalty##9725 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  note Lord Solanar Bloodwrath in Silvermoon City wants you to destroy 3 Scourge Meat Wagons and kill 15 Scourge Siege Engineers.
  kill Scourge Siege Engineer##17878 |q 9725 |goto Eastern Plaguelands 60.85,21.91
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  turnin A Demonstration of Loyalty##9725 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  accept True Masters of the Light##9735 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  note Lord Solanar Bloodwrath in Silvermoon City wants you to bring him a vial of Tyr's Hand Holy Water.
  collect Tyr's Hand Holy Water##24284 |q 9735 |goto Eastern Plaguelands 83.63,77.62 |tip {dropsfrom}Basin of Holy Water
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  turnin True Masters of the Light##9735 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  accept True Masters of the Light##9736 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  note Lord Solanar Bloodwrath in Silvermoon City wants you to bring him 1 Arcane Catalyst, 1 Crepuscular Powder, 1 Azerothian Diamond, and 1 Pristine Black Diamond.
  collect Arcane Catalyst##24286 |q 9736 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  turnin True Masters of the Light##9736 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  accept True Masters of the Light##9737 |goto Silvermoon City 92.05,38.81
step
  only BloodElf Paladin
  note Use the Extinguishing Mixture near the eternal flame in the Alonsus Chapel to remove the Light's protection. Be prepared to fight anyone who may attempt to defend the chapel.
  get True Masters of the Light |q 9737 |goto Stratholme - Dungeon -1,-1
step
  only BloodElf Paladin
  talk Lord Solanar Bloodwrath##25223
  turnin True Masters of the Light##9737 |goto Silvermoon City 92.05,38.81
]])
