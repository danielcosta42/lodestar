-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Swamp of Sorrows (37-58)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Alterac Mountains (40-60)",
}, [[
step
  talk Magtoor##1776
  accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  talk Anchorite Avuun##17127
  accept Mercy for the Cursed##9448 |goto Swamp of Sorrows 25.75,31.79
step
  talk Anchorite Avuun##17127
  accept Help Watcher Biggs##9609 |goto Swamp of Sorrows 25.75,31.79
step
  talk Holaaru##18221
  accept Pool of Tears##9610 |goto Swamp of Sorrows 25.87,32.42
step
  talk Watcher Biggs##5476
  turnin Help Watcher Biggs##9609 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  talk Fallen Hero of the Horde##7572
  accept Kirith##2721 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  only Mage
  talk Haromm##986
  accept Elemental Mastery##8410 |goto Swamp of Sorrows 48.19,57.94
step
  only Warrior
  note Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Helboar##5993 |q 8423 |goto Blasted Lands 52.38,53.24
step
  note Slay 3 Cursed Lost Ones and then return to Anchorite Avuun at the Harborage in the Swamp of Sorrows.
  kill Cursed Lost One##17115 |q 9448 |goto Swamp of Sorrows 62.98,24.46
step
  talk Itharius##5353
  accept In Eranikus' Own Words##3512 |goto Swamp of Sorrows 13.67,71.72
step
  talk Anchorite Avuun##17127
  turnin Mercy for the Cursed##9448 |goto Swamp of Sorrows 25.75,31.79
step
  talk Holaaru##18221
  turnin Pool of Tears##9610 |goto Swamp of Sorrows 25.87,32.42
step
  talk Magtoor##1776
  turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.98,31.4
step
  note Kill 8 Young Sawtooth Crocolisks, 10 Sorrow Spinners and 10 Swamp Jaguars then return to Watcher Biggs in the Swamp of Sorrows.
  kill Young Sawtooth Crocolisk##1084 |q 1396 |goto Swamp of Sorrows 30.44,42.55
step
  talk Watcher Biggs##5476
  turnin Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin Uniting the Shattered Amulet##3627 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Umbranse the Spiritspeaker##8588
  turnin In Eranikus' Own Words##3512 |goto Winterspring 67.81,27.43 |tip {turninat}Winterspring
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Elemental Mastery##8410 |goto Alterac Mountains 80.5,66.92 |tip {turninat}Alterac Mountains
step
  only Warrior
  note Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.
  kill Shadowsworn Adept##6006 |q 8424 |goto Blasted Lands 64.64,35.24
step
  note Free nine Servants of Razelikh, three Servants of Sevine, three Servants of Allistarj, and three Servants of Grol. Return to the Fallen Hero when your task is complete. You must remain within close proximity of the stones or the process will fail.
  kill Servant of Razelikh##7668 |q 2681 |goto Blasted Lands 55.05,55.73
step
  talk Watcher Biggs##5476
  turnin The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin You Are Rakh'likh, Demon##3628 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  turnin The Stones That Bind Us##2681 |goto Swamp of Sorrows 34.29,66.14
step
  talk Fallen Hero of the Horde##7572
  accept Heroes of Old##2702 |goto Swamp of Sorrows 34.29,66.14
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Watcher Biggs##5476
  turnin Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
step
  talk Watcher Biggs##5476
  accept Deliver the Shipment##1425 |goto Swamp of Sorrows 26.74,59.83
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.14
step
  talk Quartermaster Lungertz##5393
  turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.39 |tip {turninat}Blasted Lands
step
  talk Spirit of Kirith##7729
  turnin Kirith##2721
step
  talk Corporal Thund Splithoof##7750
  turnin Heroes of Old##2702
step
  note {travel}Alterac Mountains
  goto Alterac Mountains 18.84,78.49
]])
