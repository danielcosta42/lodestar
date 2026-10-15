-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Mulgore (30-31)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Desolace (33-39)",
	rev = "19e50dba",
}, [[
step
  ding 24
step
  only Warrior completed(1844)
  talk Orm Stonehoof##6410
  accept Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98
step
  talk Mazu'kon##264074
  accept Talkin' bout Toxins, Mon##96241 |goto Mulgore 32.54,20.67
step
  talk Muln Earthfury##259118
  accept Defending the Dead##96259 |goto Mulgore 33.42,22.52
step
  talk Yorn Grimtotem##264072
  accept Stronger than Steel##96260 |goto Mulgore 32.51,20.06
step
  talk Muln Earthfury##259118
  accept The Broodmother##96261 |goto Mulgore 33.42,22.52
step
  kill Broodmother Valraxx##264082 |goto Mulgore 33.51,7.33 |tip Loot the quest item here — it starts the quest.
  accept A Darker Truth##96294 |goto Mulgore 33.51,7.33
step
  note Use the Toxin Extractor to gather 5 Gloomrise Toxin Samples from the Gnawed Corpses at Gloomrise.
  collect 5 Gloomrise Toxin Sample##273001 |q 96241 |goto Mulgore 33.33,10.16 |tip {dropsfrom}Gnawed Corpse
step
  note Kill 10 Gloomrise Hatchlings and 5 Gloomrise Soldiers.
  kill Gloomrise Hatchling##264079 |q 96259/2 |goto Mulgore 33.18,9.43
  kill Gloomrise Soldier##264083 |q 96259 |goto Mulgore 33.41,11.1
step
  note Gather 3 strands of Crystalline Silk from Gloomrise Spinners.
  collect 3 Crystalline Silk##273181 |q 96260 |goto Mulgore 33.21,9.62 |tip {dropsfrom}Gloomrise Spinner
step
  note Kill Broodmother Valraxx at Gloomrise.
  kill Broodmother Valraxx##264082 |q 96261 |goto Mulgore 33.51,7.33
step
  talk Mazu'kon##264074
  turnin Talkin' bout Toxins, Mon##96241 |goto Mulgore 32.54,20.67
step
  talk Muln Earthfury##259118
  turnin Defending the Dead##96259 |goto Mulgore 33.42,22.52
step
  talk Yorn Grimtotem##264072
  turnin Stronger than Steel##96260 |goto Mulgore 32.51,20.06
step
  talk Muln Earthfury##259118
  turnin The Broodmother##96261 |goto Mulgore 33.42,22.52
step
  note Bring the letter you recovered from Broodmother Valraxx to Muln Earthfury at Skywatcher Plateau.
  talk Muln Earthfury##259118
  turnin A Darker Truth##96294 |goto Mulgore 33.42,22.52
step
  only level>=30
  talk Mazu'kon##264074
  accept Ancient Gurubashi Idol##96774 |goto Mulgore 32.54,20.67
step
  only haveq(96774)
  note Recover an Ancient Gurubashi Idol from the Drowned City.
  collect Ancient Gurubashi Idol##276894 |q 96774 |goto Mulgore 32.54,20.67
step
  only haveq(96774)
  talk Mazu'kon##264074
  turnin Ancient Gurubashi Idol##96774 |goto Mulgore 32.54,20.67
step
  only Warrior completed(1844)
  talk Orm Stonehoof##6410
  turnin Brutal Helm##1845 |goto Thunder Bluff 38.99,55.98 |tip {turninat}Thunder Bluff
step
  note {travel}Desolace
  goto Desolace 60.86,61.86
]])
