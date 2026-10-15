-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Alterac Mountains (34-40)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stranglethorn Vale (34-41)",
	rev = "d4a852f8",
}, [[
step
  ding 31
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  accept Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  accept Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92
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
  only Rogue
  talk Myrokos Silentform##13085
  accept Syndicate Sabotage##96779 |goto Alterac Mountains 84.93,80.38
step
  only Rogue
  talk Myrokos Silentform##13085
  accept A Way In##96783 |goto Alterac Mountains 84.93,80.38
step
  only Rogue
  talk Myrokos Silentform##13085
  accept What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Rogue
  note Steal a Syndicate uniform from Northfold Manor to infiltrate Stromgarde Keep.
  turnin A Way In##96783 |goto Alterac Mountains 84.93,80.38
step
  only completed(503)
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
step
  only Rogue
  note Steal Barton's Scouting Report by pickpocketing it from him. Then, bring the report to Myrokos Silentform at Ravenholdt Manor.
  kill Barton##266357 |q 96781 |goto Alterac Mountains 62.59,46.86
  collect Barton's Scouting Report##275482 |q 96781 |goto Alterac Mountains 62.59,46.86
step
  only Rogue
  talk Myrokos Silentform##13085
  turnin What's the Big Idea?##96781 |goto Alterac Mountains 84.93,80.38
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Skyborne Shaman
  note Find Grant's Mace on one of the skeletons in Raven Hill Cemetery then return to Sirra Von'Indie in Darkshire for more information.
  collect Grant's Mace##281146 |q 79362 |goto Duskwood 23.06,47.11 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend, Skeletal Healer
step
  only not Undead not Skyborne Shaman
  note Defeat 7 Defias Night Blades and 7 Defias Enchanters in Addle's Stead then return to Sirra Von'Indi in Darkshire for more information.
  kill Defias Night Blade##909 |q 79363/1 |goto Duskwood 23.37,73.31
  kill Defias Enchanter##910 |q 79363 |goto Duskwood 23.65,71.95
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92
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
  only Rogue
  note Find Lord Tomas inside Durnholde Keep, in Hillsbrad Foothills, and kill him. Then, return to Myrokos Silentform.
  kill Lord Tomas##266216 |q 96779 |goto Hillsbrad Foothills 79.32,46.24
step
  only Rogue
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
  note {travel}Stranglethorn Vale
  goto Stranglethorn Vale 35.66,10.53
]])
