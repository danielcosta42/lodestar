-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Orgrimmar (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Rogue
  talk Shenthul##3401
  accept The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
step
  talk Innkeeper Gryshka##6929
  accept Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  talk Lieutenant Dagel##16493
  accept Investigate the Scourge of Orgrimmar##9263 |goto Orgrimmar 51.56,81.41
step
  talk Thrall##4949
  accept Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82
step
  talk Orokk Omosh##7790
  accept Barbaric Battlements##2751 |goto Orgrimmar 79.24,22.4
step
  talk Orphan Matron Battlewail##14451
  accept Children's Week##172 |goto Orgrimmar 70.72,25.19
step
  talk Warlord Goretooth##9077
  accept Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  note Collect three Dim Necrotic Stones from the Scourge outside Orgrimmar and investigate the glowing runic circles nearby their encampment.
  collect Dim Necrotic Stone##22892 |q 9263 |goto Elwynn Forest 34.39,52.45 |tip {dropsfrom}Skeletal Soldier, Spectral Apparition, Spectral Spirit
step
  note Bring a Lieutenant's Insignia to Thrall in Orgrimmar.
  collect Lieutenant's Insignia##14544 |q 5726 |goto Durotar 52.5,9.36 |tip {dropsfrom}Burning Blade Fanatic, Burning Blade Apprentice
step
  note Bring two Patterned Bronze Bracers, two Bronze Greatswords, and two Sharp Claws to Orokk Omosh in Orgrimmar.
  collect Patterned Bronze Bracers##2868 |q 2751 |goto Orgrimmar 79.24,22.4
step
  note Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
  kill Overlord Wyrmthalak##9568 |q 4903 |goto Blackrock Spire - Dungeon -1,-1 |elite
step
  only Rogue
  talk Shenthul##3401
  turnin The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
step
  talk Innkeeper Gryshka##6929
  turnin Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  talk Lieutenant Dagel##16493
  turnin Investigate the Scourge of Orgrimmar##9263 |goto Orgrimmar 51.56,81.41
step
  talk Thrall##4949
  turnin Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82
step
  talk Orokk Omosh##7790
  turnin Barbaric Battlements##2751 |goto Orgrimmar 79.24,22.4
step
  talk Orcish Orphan##14444
  turnin Children's Week##172 |goto Orgrimmar 70.8,22.82
step
  talk Warlord Goretooth##9077
  turnin Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  talk Thrall##4949
  accept Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82
step
  talk Orokk Omosh##7790
  accept On Iron Pauldrons##2752 |goto Orgrimmar 79.24,22.4
step
  talk Orcish Orphan##14444
  accept Down at the Docks##910 |goto Orgrimmar 70.8,22.82
step
  talk Orcish Orphan##14444
  accept Gateway to the Frontier##911 |goto Orgrimmar 70.8,22.82
step
  talk Orcish Orphan##14444
  accept Lordaeron Throne Room##1800 |goto Orgrimmar 70.8,22.82
step
  talk Warlord Goretooth##9077
  accept Eitrigg's Wisdom##4941 |goto Badlands 5.81,47.52
step
  note Bring four Bronze Battleaxes and four Bronze Warhammers to Orokk Omosh in Orgrimmar.
  collect Bronze Battle Axe##7958 |q 2752 |goto Orgrimmar 79.24,22.4
step
  talk Thrall##4949
  turnin Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82
step
  talk Orokk Omosh##7790
  turnin On Iron Pauldrons##2752 |goto Orgrimmar 79.24,22.4
step
  talk Orcish Orphan##14444
  turnin Down at the Docks##910 |goto Orgrimmar 70.8,22.82
step
  talk Orcish Orphan##14444
  turnin Gateway to the Frontier##911 |goto Orgrimmar 70.8,22.82
step
  talk Orcish Orphan##14444
  turnin Lordaeron Throne Room##1800 |goto Orgrimmar 70.8,22.82
step
  talk Thrall##4949
  turnin Eitrigg's Wisdom##4941 |goto Orgrimmar 31.73,37.82
step
  talk Orokk Omosh##7790
  accept Trampled Under Foot##2753 |goto Orgrimmar 79.24,22.4
step
  talk Thrall##4949
  accept For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  note Bring four Green Iron Helms, four Green Iron Bracers, and two Green Iron Leggings to Orokk Omosh in Orgrimmar.
  collect Green Iron Helm##3836 |q 2753 |goto Orgrimmar 79.24,22.4
step
  note Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
  collect Head of Rend Blackhand##12630 |q 4974 |goto Orgrimmar 31.73,37.82 |tip {dropsfrom}Warchief Rend Blackhand
step
  talk Orokk Omosh##7790
  turnin Trampled Under Foot##2753 |goto Orgrimmar 79.24,22.4
step
  talk Thrall##4949
  turnin For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  talk Orokk Omosh##7790
  accept Horns of Frenzy##2754 |goto Orgrimmar 79.24,22.4
step
  talk Thrall##4949
  accept What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  note Bring two Solid Iron Mauls, two Silvered Bronze Boots, and two Silvered Bronze Gauntlets to Orokk Omosh in Orgrimmar.
  collect Solid Iron Maul##3851 |q 2754 |goto Orgrimmar 79.24,22.4
step
  talk Orokk Omosh##7790
  turnin Horns of Frenzy##2754 |goto Orgrimmar 79.24,22.4
step
  talk Thrall##4949
  turnin What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  talk Orokk Omosh##7790
  accept Joys of Omosh##2755 |goto Orgrimmar 79.24,22.4
step
  talk Orokk Omosh##7790
  turnin Joys of Omosh##2755 |goto Orgrimmar 79.24,22.4
]])
