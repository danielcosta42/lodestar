-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/The Hinterlands (43-48)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Blasted Lands (47-60)",
}, [[
step
  note {fp}Killium Bouldertoe
  goto The Hinterlands 14.41,45.22 |tip {vendor}
step
  talk Falstad Wildhammer##5635
  accept Gryphon Master Talonaxe##1450 |goto The Hinterlands 11.81,46.76
step
  talk Fraggar Thundermantle##7884
  accept Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.57
step
  talk Fraggar Thundermantle##7884
  accept Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.57
step
  note Bring 5 Troll Tribal Necklaces to Fraggar Thundermantle in Aerie Peak.
  collect 5 Troll Tribal Necklace##9259 |q 2880 |goto The Hinterlands 46.28,65.38 |tip {dropsfrom}Vilebranch Axe Thrower, Vilebranch Witch Doctor, Vilebranch Headhunter
step
  talk Gryphon Master Talonaxe##5636
  accept Witherbark Cages##2988 |goto The Hinterlands 9.75,44.47
step
  talk Gryphon Master Talonaxe##5636
  accept Saving Sharpbeak##2994 |goto The Hinterlands 9.75,44.47
step
  talk Agnar Beastamer##9660
  accept Food for Baby##4297 |goto The Hinterlands 14.16,43.62
step
  note Bring 5 Silvermane Stalker Flanks to Agnar Beastamer in Hinterlands.
  collect 5 Silvermane Stalker Flank##11472 |q 4297 |goto The Hinterlands 66.75,53.46 |tip {dropsfrom}Silvermane Stalker
step
  note Check the cages at the two Witherbark villages, then return to Gryphon Master Talonaxe.
  collect First Witherbark Cage##144066 |q 2988 |goto The Hinterlands 23.28,58.81
step
  kill Saltwater Snapjaw##2505 |goto The Hinterlands 81.48,60.4 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-09/HL!##485 |goto The Hinterlands 81.48,60.4
step
  note Kill 10 Green Sludges and 10 Jade Oozes, and then report back to Fraggar Thundermantle in Aerie Peak.
  kill Green Sludge##2655 |q 2877 |goto The Hinterlands 49.47,43.04
step
  talk Atal'ai Exile##5598
  accept Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  note The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
  collect Head of Jammal'an##6212 |q 1446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Jammal'an the Prophet
step
  note Fight to the top of Jintha'Alor, kill Vile Priestess Hexx for the key to Sharpbeak's cage, and save Sharpbeak.
  collect Sharpbeak's Cage##144070 |q 2994 |goto The Hinterlands 53.38,67.11
step
  talk Fraggar Thundermantle##7884
  turnin Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.57
step
  talk Agnar Beastamer##9660
  turnin Food for Baby##4297 |goto The Hinterlands 14.16,43.62
step
  talk Gryphon Master Talonaxe##5636
  turnin Gryphon Master Talonaxe##1450 |goto The Hinterlands 9.75,44.47
step
  talk Gryphon Master Talonaxe##5636
  turnin Witherbark Cages##2988 |goto The Hinterlands 9.75,44.47
step
  talk Gryphon Master Talonaxe##5636
  turnin Saving Sharpbeak##2994 |goto The Hinterlands 9.75,44.47
step
  talk Fraggar Thundermantle##7884
  turnin Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.57
step
  talk Gryphon Master Talonaxe##5636
  accept Rhapsody Shindigger##1451 |goto The Hinterlands 9.75,44.47
step
  talk Gryphon Master Talonaxe##5636
  accept The Altar of Zul##2989 |goto The Hinterlands 9.75,44.47
step
  talk Agnar Beastamer##9660
  accept Becoming a Parent##4298 |goto The Hinterlands 14.16,43.62
step
  talk Rhapsody Shindigger##5634
  turnin Rhapsody Shindigger##1451 |goto The Hinterlands 26.94,48.59
step
  talk Rhapsody Shindigger##5634
  accept Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
  note Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.
  collect Roc Gizzard##6257 |q 1452 |goto Tanaris 49.31,33.06 |tip {dropsfrom}Roc, Fire Roc, Searing Roc
step
  talk Homing Robot OOX-09/HL##7806
  turnin Find OOX-09/HL!##485 |goto The Hinterlands 49.35,37.66
step
  talk Atal'ai Exile##5598
  turnin Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  talk Agnar Beastamer##9660
  turnin Becoming a Parent##4298 |goto The Hinterlands 14.16,43.62
step
  talk Gryphon Master Talonaxe##5636
  turnin The Altar of Zul##2989 |goto The Hinterlands 9.75,44.47
step
  talk Gryphon Master Talonaxe##5636
  accept Thadius Grimshade##2990 |goto The Hinterlands 9.75,44.47
step
  talk Rhapsody Shindigger##5634
  turnin Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
  talk Rhapsody Shindigger##5634
  accept Rhapsody's Tale##1469 |goto The Hinterlands 26.94,48.59
step
  talk Thadius Grimshade##8022
  turnin Thadius Grimshade##2990 |goto Blasted Lands 66.9,19.47 |tip {turninat}Blasted Lands
step
  talk Brohann Caskbelly##5384
  turnin Rhapsody's Tale##1469 |goto Stormwind City 69.45,40.4 |tip {turninat}Stormwind City
step
  note {travel}Blasted Lands
  goto Blasted Lands 66.9,19.47
]])
