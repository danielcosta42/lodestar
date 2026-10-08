-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Alterac Mountains (34-40)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stranglethorn Vale (34-41)",
}, [[
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
  only completed(503)
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
step
  only completed(503)
  talk Krusk##2229
  turnin Blackmoore's Legacy##506 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  only completed(1131)
  talk Melor Stonehoof##3441
  accept Frostmaw##1136 |goto Thunder Bluff 61.54,80.92
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
  kill Defias Night Blade##909 |q 79363 |goto Duskwood 23.37,73.31
step
  only completed(1131)
  note Bring Frostmaw's Mane to Melor Stonehoof in Thunder Bluff.
  collect Frostmaw's Mane##5811 |q 1136 |goto Alterac Mountains 37.51,67.2 |tip {dropsfrom}Frostmaw
step
  only Warrior completed(1791)
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  collect Liferoot##3357 |q 1712 |goto Alterac Mountains 25.95,43.98
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Grant's Shield##79362 |goto Alterac Mountains 80.5,66.92
step
  only not Undead not Skyborne Shaman
  talk Bath'rah the Windwatcher##6176
  turnin Silvia's Sword##79363 |goto Alterac Mountains 80.5,66.92
step
  only completed(1131)
  talk Melor Stonehoof##3441
  turnin Frostmaw##1136 |goto Thunder Bluff 61.54,80.92 |tip {turninat}Thunder Bluff
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only completed(503)
  talk Krusk##2229
  accept Lord Aliden Perenolde##507 |goto Hillsbrad Foothills 63.24,20.66
step
  only Warrior completed(1791)
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  kill Cyclonian##6239 |goto Alterac Mountains 80.32,62.14 |elite
  collect Whirlwind Heart##6894 |q 1713 |goto Alterac Mountains 80.32,62.14
step
  only completed(503)
  note Kill Lord Aliden Perenolde and ask his mistress, Elysa, about Taretha's pendant.
  kill Lord Aliden Perenolde##2423 |q 507 |goto Alterac Mountains 39.32,14.58
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
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
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only completed(503)
  talk Krusk##2229
  turnin Taretha's Gift##508 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  only Warrior completed(1791)
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  note {travel}Orgrimmar
  goto Orgrimmar 75.49,25.36
]])
