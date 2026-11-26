-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Ruins of Lordaeron", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "ae3aa2ab",
}, [[
step
  talk Deathguard Linnea##1495
  accept Rear Guard Patrol##356 |goto Tirisfal Glades 65.49,60.25
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##447 |goto Silverpine Forest 42.8,40.86
step
  kill The Baron##250660 |goto Ruins of Lordaeron - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Unending Torment##97288 |goto Ruins of Lordaeron - Dungeon -1,-1
step
  only not completed(95189) not haveq(95189)
  collect Crest of Lordaeron##614679 |goto Ruins of Lordaeron - Dungeon -1,-1 |tip Loot the quest item here — it starts the quest.
  accept Crest of Lordaeron##95204 |goto Ruins of Lordaeron - Dungeon -1,-1
step
  talk Tabitha Heartweaver##250686
  accept A Frightened Request##92401 |goto Silverpine Forest 44.52,43.02
step
  talk Morbin Lightbane##266484
  accept Light's Justice##92421 |goto Undercity 58.08,89.51
step
  note Kill 8 Bleeding Horrors and 8 Wandering Spirits, then report back to Linnea at her camp.
  kill Bleeding Horror##1529 |q 356/1 |goto Tirisfal Glades 76.14,61.08
  kill Wandering Spirit##1532 |q 356 |goto Tirisfal Glades 76.48,60.74
step
  note Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
  collect 6 Grizzled Bear Heart##3253 |q 447/1 |goto Silverpine Forest 48.75,32.91 |tip {dropsfrom}Ferocious Grizzled Bear, Giant Grizzled Bear, Old Vicejaw
  collect Skittering Blood##3254 |q 447 |goto Silverpine Forest 35.63,14.14 |tip {dropsfrom}Moss Stalker, Mist Creeper, Krethis Shadowspinner
step
  note Collect 25 Intact Limbs within The Ruins of Lordaeron for Morbin Lightbane in the Undercity.
  collect 25 Intact Limbs##268580 |q 92421 |goto Ruins of Lordaeron - Dungeon -1,-1 |elite |tip {dropsfrom}Skeleton, Ragged Ghoul, Mangled Cadaver
step
  talk Deathguard Linnea##1495
  turnin Rear Guard Patrol##356 |goto Tirisfal Glades 65.49,60.25
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##447 |goto Undercity 48.82,69.28
step
  note Deliver the Abominable Head to Master Apothecary Faranell within the Undercity.
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97288 |goto Undercity 48.82,69.28
step
  only not completed(95189) not haveq(95189)
  note Bring the Crest of Lordaeron to Oran Snakewrithe in Undercity.
  talk Oran Snakewrithe##7825
  turnin Crest of Lordaeron##95204 |goto Undercity 73.06,32.85
step
  note Investigate the disappearance of Edward Heartweaver in the Ruins of Lordaeron.
  talk Tabitha Heartweaver##250686
  turnin A Frightened Request##92401 |goto Silverpine Forest 44.52,43.02
step
  talk Morbin Lightbane##266484
  turnin Light's Justice##92421 |goto Undercity 58.08,89.51
step
  only not Tauren not Troll not Skyborne
  talk Deathguard Linnea##1495
  accept Rear Guard Patrol##99156 |goto Tirisfal Glades 65.49,60.25
step
  talk Master Apothecary Faranell##2055
  accept A Recipe For Death##450 |goto Undercity 48.82,69.28
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97289 |goto Undercity 48.82,69.28
step
  only not Tauren not Troll not Skyborne
  note Bring Riptear's Heart to Deathguard Linnea.
  kill Riptear##276020 |q 99156 |goto Tirisfal Glades 83.35,44.41 |elite
  collect Riptear's Heart##286326 |q 99156 |goto Tirisfal Glades 83.35,44.41
step
  note Retrieve Apothecary Berard's journal from Pyrewood Village and take it to Apothecary Renferrel at the Sepulcher.
  collect Berard's Journal##3255 |q 450 |goto Silverpine Forest 42.98,73.18 |tip {dropsfrom}Berard's Bookshelf
step
  only not Tauren not Troll not Skyborne
  talk Deathguard Linnea##1495
  turnin Rear Guard Patrol##99156 |goto Tirisfal Glades 65.49,60.25
step
  talk Apothecary Renferrel##1937
  turnin A Recipe For Death##450 |goto Silverpine Forest 42.8,40.86
step
  note Bring the Head of the Baron to the body of Othmar in the Undercity.
  talk Unfinished Abomination##271613
  turnin Unending Torment##97289 |goto Undercity 45.88,61.7
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##451 |goto Silverpine Forest 42.8,40.86
step
  talk Unfinished Abomination##271613
  accept Unending Torment##97290 |goto Undercity 45.88,61.7
step
  only not Skyborne not Tauren not Troll
  talk Deathguard Kristof##251001
  accept The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.25,60.2
step
  note Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
  collect Lake Skulker Moss##3256 |q 451/1 |goto Silverpine Forest 71.53,36 |tip {dropsfrom}Lake Skulker, Elder Lake Skulker
  collect Lake Creeper Moss##3257 |q 451/2 |goto Silverpine Forest 77.03,26.58 |tip {dropsfrom}Lake Creeper, Elder Lake Creeper
  collect Hardened Tumor##3258 |q 451 |goto Silverpine Forest 60.46,15.55 |tip {dropsfrom}Vile Fin Shredder, Vile Fin Tidehunter, Vile Fin Lakestalker
step
  only not Skyborne not Tauren not Troll
  note Kill Rath'mael in the Ruins of Lordaeron for Deathguard Kristof in Brill.
  kill Rath'mael##250657 |q 92422 |goto Ruins of Lordaeron - Dungeon -1,-1 |elite
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##451 |goto Undercity 48.82,69.28
step
  note Report your findings to Master Apothecary Faranell in Undercity.
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97290 |goto Undercity 48.82,69.28
step
  only not Skyborne not Tauren not Troll
  talk Deathguard Kristof##251001
  turnin The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.25,60.2
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97291 |goto Undercity 48.82,69.28
step
  talk Theodore Griffs##11835
  accept The New Plague##95216 |goto Undercity 46.31,71.91
step
  note Collect a Toxic Skullcap from Tawny Grisette in the Trade Quarter, Blisterweed near the Herbalism Trainer, and Essence of Agony from the poison vendor in the Rogues' Quarter for Master Apothecary Faranell in Undercity.
  collect Blisterweed##281300 |q 97291/2 |goto Undercity 54,49.32
  talk Tawny Grisette##4554
  buy Toxic Skullcap##281246 |q 97291/1 |goto Undercity 65.19,49.84
  talk Sly Garrett##2622
  buy Essence of Agony##8923 |q 97291 |goto Stranglethorn Vale 28.41,76.83
step
  note Collect the Highly Toxic Strain from Witherfang in Ruins of Lordaeron for Theodore Griffs in Undercity.
  collect Highly Toxic Strain##275443 |q 95216 |goto Ruins of Lordaeron - Dungeon -1,-1 |elite |tip {dropsfrom}Witherfang
step
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97291 |goto Undercity 48.82,69.28
step
  talk Theodore Griffs##11835
  turnin The New Plague##95216 |goto Undercity 46.31,71.91
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97292 |goto Undercity 48.82,69.28
step
  note Inject the Hissing Serum into the system above Othmar's body for Master Apothecary Faranell.
  click Othmar's Head##460007 |q 97292 |goto Undercity 45.98,61.92
step
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97292 |goto Undercity 48.82,69.28
]])
