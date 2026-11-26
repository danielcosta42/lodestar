-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Mulgore (29-59)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Desolace (33-40)",
	rev = "715cf672",
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
  only Tauren not completed(95511) not completed(96989) not completed(96994) not completed(96996) not completed(96997) not completed(97017) not completed(97045) not completed(97046) not completed(97171) not completed(97446) not completed(98166) not completed(99326) not haveq(95511) not haveq(96989) not haveq(96994) not haveq(96996) not haveq(96997) not haveq(97017) not haveq(97045) not haveq(97046) not haveq(97171) not haveq(97446) not haveq(98166) not haveq(99326) level>=40
  talk Harb Clawhoof##3685
  accept Your First Riding Kodo##96982 |goto Mulgore 46.65,62.08
step
  only Tauren not completed(97018) not completed(97074) not completed(97170) not completed(97188) not completed(97194) not completed(97200) not completed(97203) not completed(97205) not haveq(97018) not haveq(97074) not haveq(97170) not haveq(97188) not haveq(97194) not haveq(97200) not haveq(97203) not haveq(97205) level>=40
  talk Kar Stormsinger##3690
  accept Learning to Ride##97204 |goto Mulgore 46.79,61.97
step
  only Tauren not completed(95511) not completed(96989) not completed(96994) not completed(96996) not completed(96997) not completed(97017) not completed(97045) not completed(97046) not completed(97171) not completed(97446) not completed(98166) not completed(99326) not haveq(95511) not haveq(96989) not haveq(96994) not haveq(96996) not haveq(96997) not haveq(97017) not haveq(97045) not haveq(97046) not haveq(97171) not haveq(97446) not haveq(98166) not haveq(99326) haveq(96982)
  note Inspect the riding kodos to choose your first mount.
  talk Brown Riding Kodo##267227 |q 96982/2 |goto Mulgore 46.81,62
  kill Grey Riding Kodo##267226 |q 96982/1 |goto Mulgore 46.86,61.99
  kill White Riding Kodo##267216 |q 96982 |goto Mulgore 46.9,61.98
step
  only Tauren not completed(95511) not completed(96989) not completed(96994) not completed(96996) not completed(96997) not completed(97017) not completed(97045) not completed(97046) not completed(97171) not completed(97446) not completed(98166) not completed(99326) not haveq(95511) not haveq(96989) not haveq(96994) not haveq(96996) not haveq(96997) not haveq(97017) not haveq(97045) not haveq(97046) not haveq(97171) not haveq(97446) not haveq(98166) not haveq(99326) haveq(96982)
  talk Harb Clawhoof##3685
  turnin Your First Riding Kodo##96982 |goto Mulgore 46.65,62.08
step
  only Tauren not completed(97018) not completed(97074) not completed(97170) not completed(97188) not completed(97194) not completed(97200) not completed(97203) not completed(97205) not haveq(97018) not haveq(97074) not haveq(97170) not haveq(97188) not haveq(97194) not haveq(97200) not haveq(97203) not haveq(97205) haveq(97204)
  note Learn the Apprentice Riding skill from Kar Stormsinger.
  talk Harb Clawhoof##3685
  turnin Learning to Ride##97204 |goto Mulgore 46.65,62.08
step
  only level>=59
  talk Muln Earthfury##259118
  accept Blackmaw Magic##97198 |goto Mulgore 33.41,22.59
step
  only haveq(97198)
  note Recover a Blackmaw Ritual Totem from Blackmaw Hold.
  collect Blackmaw Ritual Totem##276893 |q 97198 |goto Mulgore 33.41,22.59 |elite |tip {dropsfrom}Elder Shaman Bloodmane
step
  only haveq(97198)
  talk Muln Earthfury##259118
  turnin Blackmaw Magic##97198 |goto Mulgore 33.41,22.59
step
  only level>=55
  talk Mayena Earthseeker##263445
  accept Crystalline Elements##95928 |goto Mulgore 34.97,22.08
step
  only haveq(95928)
  note Bring Mayena Earthseeker a Moist Crystal, a Charged Crystal, a Noxious Crystal and a Fiery Crystal from Shaper's Terrace.
  collect Fiery Crystal##271894 |q 95928/1 |tip {dropsfrom}Fiery Crystal Fragment
  collect Charged Crystal##271898 |q 95928/2 |tip {dropsfrom}Charged Crystal Fragment
  collect Noxious Crystal##271902 |q 95928/3 |tip {dropsfrom}Noxious Crystal Fragment
  collect Moist Crystal##271912 |q 95928 |tip {dropsfrom}Moist Crystal Fragment
step
  only level>=48
  talk Nuara Tremorhoof##272633
  accept Unstable Magic##98477 |goto Mulgore 33.54,22.66
step
  only haveq(98477)
  note Bring 10 Motes of Unstable Magic to Nuara Tremorhoof.
  collect 10 Mote of Unstable Magic##274964 |q 98477 |goto Mulgore 33.54,22.66 |tip Crafted or bought.
step
  only haveq(95928)
  talk Mayena Earthseeker##263445
  turnin Crystalline Elements##95928 |goto Mulgore 34.97,22.08
step
  only haveq(98477)
  talk Nuara Tremorhoof##272633
  turnin Unstable Magic##98477 |goto Mulgore 33.54,22.66
step
  only Warlock not completed(4965) not completed(4968) not completed(4969) not haveq(4965) not haveq(4968) not haveq(4969) level>=35
  talk Zevrost##3326
  accept Knowledge of the Orb of Orahil##4967 |goto Orgrimmar 48.47,45.43
step
  only Warlock not completed(4965) not completed(4968) not completed(4969) not haveq(4965) not haveq(4968) not haveq(4969) haveq(4967)
  note Speak to Menara Voidrender in the Barrens.
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4967 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Warlock level>=35
  talk Menara Voidrender##6266
  accept Fragments of the Orb of Orahil##1799 |goto The Barrens 62.51,35.45
step
  only Warlock not completed(4963) not haveq(4963) level>=35
  talk Acolyte Wytula##6254
  accept Shard of a Felhound##4962 |goto The Barrens 62.64,35.3
step
  only Warlock not completed(4963) not haveq(4963) haveq(4962)
  note Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.
  collect Imprisoned Felhound Spirit##12648 |q 4962 |goto Desolace 52.91,68.14 |tip {dropsfrom}Mana Eater
step
  only Warlock haveq(1799)
  note Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow.
  collect Infernal Orb##7291 |q 1799 |goto Desolace 80.47,77.84 |tip {dropsfrom}Burning Blade Summoner
step
  only Warlock not completed(4963) not haveq(4963) haveq(4962)
  talk Menara Voidrender##6266
  turnin Shard of a Felhound##4962 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Warlock haveq(1799)
  talk Tabetha##6546
  turnin Fragments of the Orb of Orahil##1799 |goto Dustwallow Marsh 46.06,57.09 |tip {turninat}Dustwallow Marsh
step
  note {travel}Desolace
  goto Desolace 56.29,59.68
]])
