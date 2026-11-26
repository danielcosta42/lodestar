-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Mulgore (29-30)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (32-40)",
	rev = "baa99aac",
}, [[
step
  ding 24
step
  talk Mazu'kon##264074
  accept Talkin' bout Toxins, Mon##96241 |goto Mulgore 32.5,20.66
step
  talk Muln Earthfury##259118
  accept Defending the Dead##96259 |goto Mulgore 33.41,22.59
step
  talk Yorn Grimtotem##264072
  accept Stronger than Steel##96260 |goto Mulgore 32.47,19.98
step
  only level>=30
  kill Broodmother Valraxx##264082 |goto Mulgore 33.74,6.77 |elite |tip Loot the quest item here — it starts the quest.
  accept A Darker Truth##96294 |goto Mulgore 33.74,6.77
step
  note Use the Toxin Extractor to gather 5 Gloomrise Toxin Samples from the Gnawed Corpses at Gloomrise.
  collect 5 Gloomrise Toxin Sample##273001 |q 96241 |goto Mulgore 33.34,10.5 |tip {dropsfrom}Gnawed Corpse
step
  note Kill 10 Gloomrise Hatchlings and 5 Gloomrise Soldiers.
  kill Gloomrise Soldier##264083 |q 96259/2 |goto Mulgore 33.29,10.61
  kill Gloomrise Hatchling##264079 |q 96259 |goto Mulgore 33.43,11.29
step
  note Gather 3 strands of Crystalline Silk from Gloomrise Spinners.
  collect 3 Crystalline Silk##273181 |q 96260 |goto Mulgore 33.2,10.2 |tip {dropsfrom}Gloomrise Spinner
step
  talk Mazu'kon##264074
  turnin Talkin' bout Toxins, Mon##96241 |goto Mulgore 32.5,20.66
step
  talk Muln Earthfury##259118
  turnin Defending the Dead##96259 |goto Mulgore 33.41,22.59
step
  talk Yorn Grimtotem##264072
  turnin Stronger than Steel##96260 |goto Mulgore 32.47,19.98
step
  only haveq(96294)
  note Bring the letter you recovered from Broodmother Valraxx to Muln Earthfury at Skywatcher Plateau.
  talk Muln Earthfury##259118
  turnin A Darker Truth##96294 |goto Mulgore 33.41,22.59
step
  only level>=30
  talk Muln Earthfury##259118
  accept The Broodmother##96261 |goto Mulgore 33.41,22.59
step
  only haveq(96261)
  note Kill Broodmother Valraxx at Gloomrise.
  kill Broodmother Valraxx##264082 |q 96261 |goto Mulgore 33.74,6.77 |elite
step
  only haveq(96261)
  talk Muln Earthfury##259118
  turnin The Broodmother##96261 |goto Mulgore 33.41,22.59
step
  only level>=40
  talk Mazu'kon##264074
  accept Ancient Gurubashi Idol##96774 |goto Mulgore 32.5,20.66
step
  only haveq(96774)
  note Recover an Ancient Gurubashi Idol from the Drowned City.
  collect Ancient Gurubashi Idol##276894 |q 96774 |goto Mulgore 32.5,20.66 |elite |tip {dropsfrom}Deathless Marrow
step
  only haveq(96774)
  talk Mazu'kon##264074
  turnin Ancient Gurubashi Idol##96774 |goto Mulgore 32.5,20.66
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 62.76,20.21
]])
