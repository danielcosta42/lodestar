-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/The Hinterlands (43-48)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Searing Gorge (48-50)",
}, [[
step
  only completed(1448)
  talk Brohann Caskbelly##5384
  accept To The Hinterlands##1449 |goto Stormwind City 69.45,40.4
step
  note {fp}Guthrum Thunderfist
  goto The Hinterlands 11.07,46.15 |tip {vendor}
step
  only completed(1448)
  talk Falstad Wildhammer##5635
  turnin To The Hinterlands##1449 |goto The Hinterlands 11.81,46.76
step
  only completed(1448)
  talk Falstad Wildhammer##5635
  accept Gryphon Master Talonaxe##1450 |goto The Hinterlands 11.81,46.76
step
  talk Fraggar Thundermantle##7884
  accept Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.57
step
  talk Gryphon Master Talonaxe##5636
  accept Witherbark Cages##2988 |goto The Hinterlands 9.75,44.47
step
  only completed(1448)
  talk Gryphon Master Talonaxe##5636
  turnin Gryphon Master Talonaxe##1450 |goto The Hinterlands 9.75,44.47
step
  only completed(1448)
  talk Gryphon Master Talonaxe##5636
  accept Rhapsody Shindigger##1451 |goto The Hinterlands 9.75,44.47
step
  only completed(1448)
  talk Rhapsody Shindigger##5634
  turnin Rhapsody Shindigger##1451 |goto The Hinterlands 26.94,48.59
step
  note Bring 5 Troll Tribal Necklaces to Fraggar Thundermantle in Aerie Peak.
  collect 5 Troll Tribal Necklace##9259 |q 2880 |goto The Hinterlands 46.28,66.93 |tip {dropsfrom}Vilebranch Axe Thrower, Vilebranch Witch Doctor, Vilebranch Headhunter
step
  note Check the cages at the two Witherbark villages, then return to Gryphon Master Talonaxe.
  collect First Witherbark Cage##144066 |q 2988 |goto The Hinterlands 23.28,58.81
step
  talk Fraggar Thundermantle##7884
  turnin Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.57
step
  talk Gryphon Master Talonaxe##5636
  turnin Witherbark Cages##2988 |goto The Hinterlands 9.75,44.47
step
  only completed(3843)
  talk Agnar Beastamer##9660
  accept Food for Baby##4297 |goto The Hinterlands 14.16,43.62
step
  only completed(3843)
  note Bring 5 Silvermane Stalker Flanks to Agnar Beastamer in Hinterlands.
  collect 5 Silvermane Stalker Flank##11472 |q 4297 |goto The Hinterlands 68,52.86 |tip {dropsfrom}Silvermane Stalker
step
  only completed(3843)
  talk Agnar Beastamer##9660
  turnin Food for Baby##4297 |goto The Hinterlands 14.16,43.62
step
  only completed(2279)
  talk High Explorer Magellas##5387
  accept The Platinum Discs##2439 |goto Ironforge 69.93,18.55
step
  kill Saltwater Snapjaw##2505 |goto The Hinterlands 81.48,60.46 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-09/HL!##485 |goto The Hinterlands 81.48,60.46
step
  talk Fraggar Thundermantle##7884
  accept Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.57
step
  only completed(2993)
  talk Gryphon Master Talonaxe##5636
  accept Saving Sharpbeak##2994 |goto The Hinterlands 9.75,44.47
step
  note Kill 10 Green Sludges and 10 Jade Oozes, and then report back to Fraggar Thundermantle in Aerie Peak.
  kill Green Sludge##2655 |q 2877 |goto The Hinterlands 47.98,42.25
step
  only completed(2993)
  note Fight to the top of Jintha'Alor, kill Vile Priestess Hexx for the key to Sharpbeak's cage, and save Sharpbeak.
  collect Sharpbeak's Cage##144070 |q 2994 |goto The Hinterlands 53.38,67.11
step
  only completed(2279)
  talk Dinita Stonemantle##7292
  turnin The Platinum Discs##2439 |goto Ironforge 33.88,59.15 |tip {turninat}Ironforge
step
  talk Homing Robot OOX-09/HL##7806
  turnin Find OOX-09/HL!##485 |goto The Hinterlands 49.35,37.66
step
  talk Fraggar Thundermantle##7884
  turnin Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.57
step
  only completed(2993)
  talk Gryphon Master Talonaxe##5636
  turnin Saving Sharpbeak##2994 |goto The Hinterlands 9.75,44.47
step
  talk Homing Robot OOX-09/HL##7806
  accept Rescue OOX-09/HL!##836 |goto The Hinterlands 49.35,37.66
step
  talk Gryphon Master Talonaxe##5636
  accept The Altar of Zul##2989 |goto The Hinterlands 9.75,44.47
step
  only completed(3843)
  talk Agnar Beastamer##9660
  accept Becoming a Parent##4298 |goto The Hinterlands 14.16,43.62
step
  talk Oglethorpe Obnoticus##7406
  turnin Rescue OOX-09/HL!##836 |goto Stranglethorn Vale 28.36,76.35 |tip {turninat}Stranglethorn Vale
step
  talk Gryphon Master Talonaxe##5636
  turnin The Altar of Zul##2989 |goto The Hinterlands 9.75,44.47
step
  only completed(3843)
  talk Agnar Beastamer##9660
  turnin Becoming a Parent##4298 |goto The Hinterlands 14.16,43.62
step
  talk Gryphon Master Talonaxe##5636
  accept Thadius Grimshade##2990 |goto The Hinterlands 9.75,44.47
step
  talk Thadius Grimshade##8022
  turnin Thadius Grimshade##2990 |goto Blasted Lands 66.9,19.47 |tip {turninat}Blasted Lands
step
  note {travel}Searing Gorge
  goto Searing Gorge 40.58,49.48
]])
