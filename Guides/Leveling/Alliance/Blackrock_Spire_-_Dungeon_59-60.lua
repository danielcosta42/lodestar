-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blackrock Spire - Dungeon (59-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Tanaris (47-68)",
}, [[
step
  talk Warosh##10799
  accept Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  note Read Warosh's Scroll. Bring Warosh's Mojo to Warosh.
  collect Warosh's Mojo##12712 |q 4867 |goto Blackrock Spire - Dungeon -1,-1 |tip {dropsfrom}Urok Doomhowl
step
  talk Bijou##10257
  accept Bijou's Reconnaissance Report##4983 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Bijou##10257
  accept Bijou's Belongings##5001 |goto Blackrock Spire - Dungeon -1,-1
step
  note Find Bijou's Belongings and return them to her. Good luck!
  collect Bijou's Belongings##12345 |q 5001 |goto Blackrock Spire - Dungeon -1,-1
step
  kill Overlord Wyrmthalak##9568 |goto Blackrock Spire - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept General Drakkisath's Command##5089 |goto Blackrock Spire - Dungeon -1,-1
step
  click Human Remains##176090
  accept Hot Fiery Death##5103 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Awbee##10740
  accept The Matron Protectorate##5160 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Elder Stonefort##15560
  accept Stonefort the Elder##8644 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  turnin General Drakkisath's Command##5089 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  talk Warosh##10799
  turnin Urok Doomhowl##4867 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Elder Stonefort##15560
  turnin Stonefort the Elder##8644 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Haleh##10929
  turnin The Matron Protectorate##5160 |goto Winterspring 54.55,51.2 |tip {turninat}Winterspring
step
  talk Bijou##10257
  turnin Bijou's Belongings##5001 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Malyfous Darkhammer##10637
  turnin Hot Fiery Death##5103 |goto Winterspring 60.99,38.78 |tip {turninat}Winterspring
step
  talk Lexlort##9080
  turnin Bijou's Reconnaissance Report##4983 |goto Badlands 5.88,47.63 |tip {turninat}Badlands
step
  talk Bijou##10257
  accept Message to Maxwell##5002 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Marshal Maxwell##9560
  turnin Message to Maxwell##5002 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  note {travel}Tanaris
  goto Tanaris 53.54,28.01
]])
