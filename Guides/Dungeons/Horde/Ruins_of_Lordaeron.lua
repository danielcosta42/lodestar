-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Ruins of Lordaeron", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "aac7f844",
}, [[
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97289 |goto Undercity 48.82,69.28
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97291 |goto Undercity 48.82,69.28
step
  talk Master Apothecary Faranell##2055
  accept Unending Torment##97292 |goto Undercity 48.82,69.28
step
  talk Tabitha Heartweaver##250686
  accept A Frightened Request##92401 |goto Silverpine Forest 44.54,42.96
step
  talk Deathguard Kristof##251001
  accept The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.3,60.26
step
  talk Theodore Griffs##11835
  accept The New Plague##95216 |goto Undercity 46.31,71.91
step
  talk Morbin Lightbane##266484
  accept Light's Justice##92421 |goto Undercity 57.94,89.38
step
  note Collect a Toxic Skullcap from Tawny Grisette in the Trade Quarter, Blisterweed near the Herbalism Trainer, and Essence of Agony from the poison vendor in the Rogues' Quarter for Master Apothecary Faranell in Undercity.
  collect Blisterweed##281300 |q 97291 |goto Undercity 54.1,49.5
step
  note Investigate the disappearance of Edward Heartweaver in the Ruins of Lordaeron.
  goto Undercity 67.69,13.55
step
  note Kill Rath'mael in the Ruins of Lordaeron for Deathguard Kristof in Brill.
  kill Rath'mael##250657 |q 92422
step
  note Collect the Highly Toxic Strain from Witherfang in Ruins of Lordaeron for Theodore Griffs in Undercity.
  collect Highly Toxic Strain##275443 |q 95216 |goto Undercity 46.31,71.91 |tip {dropsfrom}Witherfang
step
  note Collect 25 Intact Limbs within The Ruins of Lordaeron for Morbin Lightbane in the Undercity.
  collect 25 Intact Limbs##268580 |q 92421 |goto Undercity 57.94,89.38 |tip {dropsfrom}Skeleton, Cadaver, Ragged Ghoul
step
  note Bring the Head of the Baron to the body of Othmar in the Undercity.
  talk Unfinished Abomination##271613
  turnin Unending Torment##97289 |goto Undercity 46.03,61.97
step
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97291 |goto Undercity 48.82,69.28
step
  note Inject the Hissing Serum into the system above Othmar's body for Master Apothecary Faranell.
  talk Master Apothecary Faranell##2055
  turnin Unending Torment##97292 |goto Undercity 48.82,69.28
step
  talk Tabitha Heartweaver##250686
  turnin A Frightened Request##92401 |goto Silverpine Forest 44.54,42.96
step
  talk Deathguard Kristof##251001
  turnin The Wrath of Rath'mael##92422 |goto Tirisfal Glades 65.3,60.26
step
  talk Theodore Griffs##11835
  turnin The New Plague##95216 |goto Undercity 46.31,71.91
step
  talk Morbin Lightbane##266484
  turnin Light's Justice##92421 |goto Undercity 57.94,89.38
]])
