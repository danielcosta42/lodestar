-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Alterac Mountains (36-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Azshara (52-60)",
}, [[
step
  talk Voggah Deathgrip##13817
  accept The Battle for Alterac##7142 |goto Alterac Mountains 63.84,60.47
step
  talk Henchman Valik##2333
  accept Valik##535 |goto Alterac Mountains 57.17,69.51
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Fahrad##6707
  accept Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  talk Gol'dir##2316
  accept Blackmoore's Legacy##506 |goto Alterac Mountains 59.96,43.74
step
  talk Elysa##2317
  accept Taretha's Gift##508 |goto Alterac Mountains 39.3,14.31
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21 |tip {turninat}Azshara
step
  talk Voggah Deathgrip##13817
  turnin The Battle for Alterac##7142 |goto Alterac Mountains 63.84,60.47
step
  talk Voggah Deathgrip##13817
  accept Hero of the Frostwolf##8272 |goto Alterac Mountains 63.84,60.47
step
  talk Henchman Valik##2333
  turnin Valik##535 |goto Alterac Mountains 57.17,69.51
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Rogue
  talk Fahrad##6707
  turnin Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  talk Krusk##2229
  turnin Taretha's Gift##508 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  talk Krusk##2229
  turnin Blackmoore's Legacy##506 |goto Hillsbrad Foothills 63.24,20.66 |tip {turninat}Hillsbrad Foothills
step
  talk Voggah Deathgrip##13817
  turnin Hero of the Frostwolf##8272 |goto Alterac Mountains 63.84,60.47
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  note {travel}Azshara
  goto Azshara 11.37,78.17
]])
