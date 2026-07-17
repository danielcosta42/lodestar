-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackrock Spire", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Helendis Riverhorn##9562
  accept Put Her Down##4701 |goto Burning Steppes 85.82,68.95
step
  talk Bijou##10257
  accept Bijou's Reconnaissance Report##4983 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Bijou##10257
  accept Bijou's Belongings##5001 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warosh##10799
  accept Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  kill Overlord Wyrmthalak##9568 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept General Drakkisath's Command##5089 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Awbee##10740
  accept The Matron Protectorate##5160 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Elder Stonefort##15560
  accept Stonefort the Elder##8644 |goto Blackrock Spire - Dungeon -1,-1
step
  note Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg.
  kill Halycon##10220 |q 4701 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  note Find Bijou's Belongings and return them to her. Good luck!
  collect Bijou's Belongings##12345 |q 5001 |goto Blackrock Spire - Dungeon -1,-1
step
  note Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
  collect Warosh's Mojo##12712 |q 4867 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Urok Doomhowl
step
  talk Helendis Riverhorn##9562
  turnin Put Her Down##4701 |goto Burning Steppes 85.82,68.95
step
  talk Lexlort##9080
  turnin Bijou's Reconnaissance Report##4983 |goto Badlands 5.88,47.63
step
  talk Bijou##10257
  turnin Bijou's Belongings##5001 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warosh##10799
  turnin Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Command##5089 |goto Burning Steppes 84.74,69.02
step
  talk Haleh##10929
  turnin The Matron Protectorate##5160 |goto Winterspring 54.55,51.2
step
  talk Elder Stonefort##15560
  turnin Stonefort the Elder##8644 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Bijou##10257
  accept Message to Maxwell##5002 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  accept General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  note Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done.
  kill General Drakkisath##10363 |q 5102 |goto Blackrock Spire - Dungeon -1,-1 |raid
step
  talk Marshal Maxwell##9560
  turnin Message to Maxwell##5002 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Demise##5102 |goto Burning Steppes 84.74,69.02
step
  talk Marshal Maxwell##9560
  accept Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
step
  note Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done.
  kill War Master Voone##9237 |q 5081 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  talk Marshal Maxwell##9560
  turnin Maxwell's Mission##5081 |goto Burning Steppes 84.74,69.02
]])
