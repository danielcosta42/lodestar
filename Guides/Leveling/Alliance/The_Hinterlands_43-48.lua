-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/The Hinterlands (43-48)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Feralas (44-50)",
}, [[
step
  note {fp}Guthrum Thunderfist
  goto The Hinterlands 11.07,46.15 |tip {vendor}
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
  get Troll Necklace Bounty |q 2880 |goto The Hinterlands 14.83,44.57
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
  get Food for Baby |q 4297 |goto The Hinterlands 14.16,43.62
step
  talk Ambassador Rualeth##17223
  accept Featherbeard's Endorsement##9469 |goto The Hinterlands 15.11,47.21
step
  talk Ambassador Rualeth##17223
  accept A Gesture of Goodwill##9470 |goto The Hinterlands 15.11,47.21
step
  talk Ambassador Rualeth##17223
  accept Preying on the Predators##9471 |goto The Hinterlands 15.11,47.21
step
  note Check the cages at the two Witherbark villages, then return to Gryphon Master Talonaxe.
  collect First Witherbark Cage##144066 |q 2988 |goto The Hinterlands 23.28,58.81
step
  note Ambassador Rualeth at Aerie Peak wants you to kill 10 Mangy Silvermane and 5 Silvermane Wolves.
  kill Mangy Silvermane##2923 |q 9471 |goto The Hinterlands 19.68,52.34
step
  talk Elder Highpeak##15559
  accept Highpeak the Elder##8643 |goto The Hinterlands 50.0,48.05
step
  note Fight to the top of Jintha'Alor, kill Vile Priestess Hexx for the key to Sharpbeak's cage, and save Sharpbeak.
  collect Sharpbeak's Cage##144070 |q 2994 |goto The Hinterlands 53.38,67.11
step
  note Kill 10 Green Sludges and 10 Jade Oozes, and then report back to Fraggar Thundermantle in Aerie Peak.
  kill Green Sludge##2655 |q 2877 |goto The Hinterlands 49.47,43.04
step
  talk Atal'ai Exile##5598
  accept Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  note The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
  get Jammal'an the Prophet |q 1446 |goto The Hinterlands 33.75,75.21
step
  note Ambassador Rualeth at Aerie Peak wants you to slay Witch Doctor Mai'jin and his pet spider Tcha'kaz.
  kill Witch Doctor Mai'jin##17235 |q 9470 |goto The Hinterlands 24.63,65.58
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
  turnin Featherbeard's Endorsement##9469 |goto The Hinterlands 13.44,55.25
step
  talk Fraggar Thundermantle##7884
  turnin Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.57
step
  talk Ambassador Rualeth##17223
  turnin A Gesture of Goodwill##9470 |goto The Hinterlands 15.11,47.21
step
  talk Ambassador Rualeth##17223
  turnin Preying on the Predators##9471 |goto The Hinterlands 15.11,47.21
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
  get Rhapsody's Kalimdor Kocktail |q 1452 |goto The Hinterlands 26.94,48.59
step
  talk Elder Highpeak##15559
  turnin Highpeak the Elder##8643 |goto The Hinterlands 50.0,48.05
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
  turnin Rhapsody's Tale##1469 |goto Stormwind City 64.33,20.63 |tip {turninat}Stormwind City
step
  note {travel}Feralas
  goto Feralas 89.64,46.57
]])
