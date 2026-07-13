-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Ragefire Chasm", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Thrall##4949
  accept Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82
step
  talk Rahauro##11833
  accept Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52
step
  talk Rahauro##11833
  accept Searching for the Lost Satchel##5722 |goto Thunder Bluff 70.14,29.52
step
  note Bring a Lieutenant's Insignia to Thrall in Orgrimmar.
  get Hidden Enemies |q 5726 |goto Orgrimmar 31.73,37.82
step
  note Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff.
  kill Ragefire Trogg##11318 |q 5723 |goto Ragefire Chasm - Dungeon -1,-1
step
  talk Thrall##4949
  turnin Hidden Enemies##5726 |goto Orgrimmar 31.73,37.82
step
  talk Rahauro##11833
  turnin Testing an Enemy's Strength##5723 |goto Thunder Bluff 70.14,29.52
step
  talk Maur Grimtotem##11834
  turnin Searching for the Lost Satchel##5722 |goto Ragefire Chasm - Dungeon -1,-1
step
  talk Thrall##4949
  accept Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82
step
  talk Maur Grimtotem##11834
  accept Returning the Lost Satchel##5724 |goto Ragefire Chasm - Dungeon -1,-1
step
  talk Thrall##4949
  turnin Hidden Enemies##5727 |goto Orgrimmar 31.73,37.82
step
  talk Rahauro##11833
  turnin Returning the Lost Satchel##5724 |goto Thunder Bluff 70.14,29.52
step
  talk Thrall##4949
  accept Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82
step
  note Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar.
  kill Bazzalan##11519 |q 5728 |goto Ragefire Chasm - Dungeon -1,-1
step
  talk Thrall##4949
  turnin Hidden Enemies##5728 |goto Orgrimmar 31.73,37.82
]])
