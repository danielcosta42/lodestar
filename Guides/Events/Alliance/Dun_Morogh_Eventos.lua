-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Dun Morogh (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  talk Wagner Hammerstrike##15011
  accept Honoring a Hero##8149 |goto Dun Morogh 52.6,36.03
step
  talk Costumed Orphan Matron##24519
  accept Stop the Fires!##11131 |goto Dun Morogh 46.19,53.14
step
  talk Grelin Whitebeard##786
  accept The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  talk Lieutenant Nevell##16484
  accept Investigate the Scourge of Ironforge##9261 |goto Dun Morogh 52.98,35.03
step
  note Grelin Whitebeard would like you to kill 14 Frostmane Troll Whelps.
  kill Frostmane Troll Whelp##706 |q 182 |goto Dun Morogh 27.16,79.96
step
  note Collect three Dim Necrotic Stones from the Scourge outside Ironforge and investigate the glowing runic circles nearby their encampment.
  collect Dim Necrotic Stone##22892 |q 9261 |goto Elwynn Forest 34.39,52.45 |tip {dropsfrom}Skeletal Soldier, Spectral Apparition, Spectral Spirit
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
step
  talk Wagner Hammerstrike##15011
  turnin Honoring a Hero##8149 |goto Dun Morogh 52.6,36.03
step
  talk Costumed Orphan Matron##24519
  turnin Stop the Fires!##11131 |goto Dun Morogh 46.19,53.14
step
  talk Grelin Whitebeard##786
  turnin The Troll Cave##182 |goto Dun Morogh 25.08,75.71
step
  talk Lieutenant Nevell##16484
  turnin Investigate the Scourge of Ironforge##9261 |goto Dun Morogh 52.98,35.03
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  talk Grelin Whitebeard##786
  accept The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  note Grelin Whitebeard wants you to kill Grik'nir the Cold, and retrieve his journal.
  collect Grelin Whitebeard's Journal##2004 |q 218 |goto Dun Morogh 30.48,80.15 |tip {dropsfrom}Grik'nir the Cold
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
step
  talk Grelin Whitebeard##786
  turnin The Stolen Journal##218 |goto Dun Morogh 25.08,75.71
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  accept Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  talk Grelin Whitebeard##786
  accept Senir's Observations##282 |goto Dun Morogh 25.08,75.71
step
  only Dwarf Hunter
  talk Grif Wildheart##1231
  turnin Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
step
  talk Mountaineer Thalos##1965
  turnin Senir's Observations##282 |goto Dun Morogh 33.48,71.84
step
  talk Mountaineer Thalos##1965
  accept Senir's Observations##420 |goto Dun Morogh 33.48,71.84
step
  talk Senir Whitebeard##1252
  turnin Senir's Observations##420 |goto Dun Morogh 46.73,53.83
step
  talk Senir Whitebeard##1252
  accept Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
step
  note Explore Frostmane Hold, and kill 5 Frostmane Headhunters for Senir Whitebeard in Kharanos.
  kill Frostmane Headhunter##1123 |q 287 |goto Dun Morogh 23.9,51.4
step
  talk Senir Whitebeard##1252
  turnin Frostmane Hold##287 |goto Dun Morogh 46.73,53.83
]])
