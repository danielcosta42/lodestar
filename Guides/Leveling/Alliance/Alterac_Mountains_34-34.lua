-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (34-34)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stranglethorn Vale (33-40)",
	rev = "a99e8862",
}, [[
step
  ding 31
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
step
  click Syndicate Documents##1740
  accept Foreboding Plans##510 |goto Alterac Mountains 58.32,67.92
step
  click Syndicate Documents##1740
  accept Encrypted Letter##511 |goto Alterac Mountains 58.32,67.92
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept A Way In##96783 |goto Alterac Mountains 84.93,80.38
step
  only hasitem(213421)
  use Singed Note##213421 |tip It starts the quest.
  accept Strahnbrad Mystery##95534
step
  only haveq(95534)
  note Solve the mystery of Strahnbrad and report your findings in town in Hillsbrad.
  kill Ancient Fire Elemental##217305 |q 95534 |goto Alterac Mountains 60.1,45.58
step
  only Rogue completed(6681)
  note Steal Barton's Scouting Report by pickpocketing it from him. Then, bring the report to Myrokos Silentform at Ravenholdt Manor.
  collect Barton's Scouting Report##275482 |q 96781 |goto Alterac Mountains 61.95,45.44 |tip {dropsfrom}Barton
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  turnin What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept Covert Extraction##96782 |goto Alterac Mountains 84.93,80.38
step
  only Rogue completed(6681)
  note Find the Blade of House Perenolde and the Royal Aegis of Perenolde among the ruins of Alterac. Then, bring them to Myrokos Silentform.
  collect Royal Aegis of Perenolde##275636 |q 96782/2 |goto Alterac Mountains 41.41,40.2
  collect Blade of House Perenolde##275635 |q 96782 |goto Alterac Mountains 38.52,57.94
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  turnin Covert Extraction##96782 |goto Alterac Mountains 84.93,80.38
step
  only Rogue completed(6681)
  note Find Lord Tomas inside Durnholde Keep, in Hillsbrad Foothills, and kill him. Then, return to Myrokos Silentform.
  kill Lord Tomas##266216 |q 96779 |goto Hillsbrad Foothills 80,45.79
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  turnin Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
step
  only Rogue completed(6681)
  note Steal a Syndicate uniform from Northfold Manor to infiltrate Stromgarde Keep.
  turnin A Way In##96783 |goto Arathi Highlands 32.29,26.57 |tip {turninat}Arathi Highlands
step
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 35.66,10.53
]])
