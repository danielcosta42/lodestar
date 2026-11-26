-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Alterac Mountains (34-40)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Arathi Highlands (34-40)",
	rev = "f358dc74",
}, [[
step
  ding 31
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
step
  talk Henchman Valik##2333
  accept Valik##535 |goto Alterac Mountains 57.17,69.51
step
  note Bring a mug of Southshore Stout to Valik in the Syndicate camp.
  collect Southshore Stout##3703 |q 535 |goto Alterac Mountains 59.3,69.76 |tip {dropsfrom}Drunken Footpad
step
  talk Henchman Valik##2333
  turnin Valik##535 |goto Alterac Mountains 57.17,69.51
step
  only Shaman completed(79360) not completed(98338) not haveq(98338)
  talk Bath'rah the Windwatcher##6176
  accept Eyes on the Sky##79364 |goto Alterac Mountains 80.5,66.92
step
  only Shaman completed(79360) not completed(98338) not haveq(98338)
  note Speak with Prate Cloudseer in Thousand Needles.
  talk Bath'rah the Windwatcher##6176
  turnin Eyes on the Sky##79364 |goto Alterac Mountains 80.5,66.92
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  accept A Way In##96783 |goto Alterac Mountains 84.93,80.38
step
  only completed(503)
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
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
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only completed(503)
  note Return the information gathered by Gol'dir to Krusk in Tarren Mill.
  talk Krusk##2229
  turnin Blackmoore's Legacy##506 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  only completed(503)
  talk Krusk##2229
  accept Lord Aliden Perenolde##507 |goto Hillsbrad Foothills 63.24,20.66
step
  only haveq(95534)
  talk Shara Blazen##2402
  turnin Strahnbrad Mystery##95534 |goto Hillsbrad Foothills 63.66,21.16 |tip {turninat}Hillsbrad Foothills
step
  only Rogue completed(6681)
  note Find Lord Tomas inside Durnholde Keep, in Hillsbrad Foothills, and kill him. Then, return to Myrokos Silentform.
  kill Lord Tomas##266216 |q 96779 |goto Hillsbrad Foothills 80,45.79
step
  only Rogue completed(6681)
  talk Myrokos Silentform##13085
  turnin Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
step
  only completed(503)
  note Kill Lord Aliden Perenolde and ask his mistress, Elysa, about Taretha's pendant.
  kill Lord Aliden Perenolde##2423 |q 507 |goto Alterac Mountains 39.32,14.58
step
  only completed(503)
  talk Elysa##2317
  turnin Lord Aliden Perenolde##507 |goto Alterac Mountains 39.3,14.31
step
  only completed(503)
  talk Elysa##2317
  accept Taretha's Gift##508 |goto Alterac Mountains 39.3,14.31
step
  only Warrior completed(1791)
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712/1 |goto Alterac Mountains 25.95,43.98
  collect Bloodscalp Tusk##3901 |q 1712/2 |goto Stranglethorn Vale 34.04,16.78 |tip {dropsfrom}Bloodscalp Warrior, Bloodscalp Scout, Bloodscalp Hunter
  collect Essence of the Exile##6851 |q 1712 |tip Crafted or bought.
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) level>=40
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) haveq(1713)
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  kill Cyclonian##6239 |q 1713 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  only Warrior completed(1791) haveq(1713)
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) completed(1713)
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791) haveq(1792)
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only completed(503)
  note Return Taretha's pendant to Krusk in Tarren Mill.
  talk Krusk##2229
  turnin Taretha's Gift##508 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  only Rogue completed(6681)
  note Steal a Syndicate uniform from Northfold Manor to infiltrate Stromgarde Keep.
  turnin A Way In##96783 |goto Arathi Highlands 32.29,26.57 |tip {turninat}Arathi Highlands
step
  note {travel}Arathi Highlands
  goto Arathi Highlands 74.24,33.92
]])
