-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Ragefire Chasm", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "d0e49efd",
}, [[
step
  talk Thrall##4949
  accept Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82
step
  talk Rahauro##11833
  accept Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52
step
  talk Neeru Fireblade##3216
  accept Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59
step
  talk Rahauro##11833
  accept Searching for the Lost Satchel##5722 |goto Thunder Bluff 70.14,29.52
step
  talk Varimathras##2425
  accept The Power to Destroy...##5725 |goto Undercity 56.25,92.2
step
  note Bring a Lieutenant's Insignia to Thrall in Orgrimmar.
  collect Lieutenant's Insignia##14544 |q 5726 |goto Durotar 52.47,9.23 |tip {dropsfrom}Burning Blade Fanatic, Burning Blade Apprentice
step
  note Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff.
  kill Ragefire Trogg##11318 |q 5723 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  note Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar.
  collect Taragaman the Hungerer's Heart##14540 |q 5761 |goto Ragefire Chasm - Dungeon -1,-1 |elite |tip {dropsfrom}Taragaman the Hungerer
step
  note Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.
  collect Spells of Shadow##14395 |q 5725 |goto Ragefire Chasm - Dungeon -1,-1 |elite |tip {dropsfrom}Searing Blade Cultist, Searing Blade Warlock
step
  talk Thrall##4949
  turnin Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82
step
  talk Rahauro##11833
  turnin Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52
step
  talk Neeru Fireblade##3216
  turnin Slaying the Beast##5761 |goto Orgrimmar 49.47,50.59
step
  note Search Ragefire Chasm for Maur Grimtotem's corpse and search it for any items of interest.
  talk Maur Grimtotem##11834
  turnin Searching for the Lost Satchel##5722 |goto Ragefire Chasm - Dungeon -1,-1
step
  talk Varimathras##2425
  turnin The Power to Destroy...##5725 |goto Undercity 56.25,92.2
step
  talk Thrall##4949
  accept Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82
step
  talk Maur Grimtotem##11834
  accept Returning the Lost Satchel##5724 |goto Ragefire Chasm - Dungeon -1,-1
step
  note Take the Lieutenant's Insignia to Neeru Fireblade and speak to him. Gauge if he believes you are a member of the Burning Blade and then return to Thrall in Orgrimmar.
  talk Neeru Fireblade##3216 |q 5727 |goto Orgrimmar 49.47,50.59
step
  talk Thrall##4949
  turnin Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82
step
  note Take the Grimtotem Satchel to Rahauro in Thunder Bluff.
  talk Rahauro##11833
  turnin Returning the Lost Satchel##5724 |goto Thunder Bluff 70.14,29.52
step
  talk Thrall##4949
  accept Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82
step
  note Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar.
  kill Bazzalan##11519 |q 5728 |goto Ragefire Chasm - Dungeon -1,-1 |elite
step
  talk Thrall##4949
  turnin Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82
]])
