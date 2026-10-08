-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Dun Morogh (13-26)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Westfall (12-18)",
	rev = "1ddba0e3",
}, [[
step
  talk Afadra Dunwall##264943
  accept The Restless Dead##96394 |goto Ironforge 33.34,47.82
step
  note Kill 15 Enraged Apparitions, 10 Tormented Souls and put the spirit of Anvilmar to rest.
  kill Enraged Apparition##263389 |q 96394
step
  talk Thom Filch##265003
  accept Important Heirlooms##96403 |goto Ironforge 32.41,44.81
step
  note Collect 8 Dwarven Heirlooms from the Hall of Thanes.
  collect 8 Dwarven Heirloom##274289 |q 96403 |goto Ironforge 32.41,44.81
step
  talk Earthseer Farsen##264936
  accept Nip 'Em in the Bud##96390 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  accept Farsen's Watch##96392 |goto Dun Morogh 64.92,58.51
step
  kill Dark Iron Spy##6123 |goto Dun Morogh 77.36,61.31 |tip Loot the quest item here — it starts the quest.
  accept Underground Map##96391 |goto Dun Morogh 77.36,61.31
step
  note Slay 10 Dark Iron Spies in Dun Morogh.
  kill Dark Iron Spy##6123 |q 96390 |goto Dun Morogh 77.36,61.31
step
  talk Earthseer Farsen##264936
  turnin Nip 'Em in the Bud##96390 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  turnin Underground Map##96391 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  turnin Farsen's Watch##96392 |goto Dun Morogh 64.92,58.51
step
  talk Earthseer Farsen##264936
  accept Old Ironforge Incursion##96393 |goto Dun Morogh 64.92,58.51
step
  note Enter the Hall of Thanes beneath Old Ironforge and claim the Head of Durgen Dirgehammer.
  collect Durgen Dirgehammer's Head##274286 |q 96393 |goto Dun Morogh 64.92,58.51 |tip {dropsfrom}Durgen Dirgehammer
step
  talk Beldin Steelgrill##1376
  accept A Visitor to Dun Morogh##96408 |goto Dun Morogh 50.44,49.09
step
  talk Earthseer Farsen##264936
  turnin A Visitor to Dun Morogh##96408 |goto Dun Morogh 64.92,58.51
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Magis Sparkmantle##1228
  accept Report to Jennea##1919 |goto Dun Morogh 47.5,52.08
step
  only Rogue
  talk Hogral Bakkan##1234
  accept To Hulfdan!##2299 |goto Dun Morogh 47.56,52.61
step
  talk Pilot Stonegear##1377
  accept Search for Incendicite##466 |goto Dun Morogh 49.62,48.61
step
  talk Afadra Dunwall##264943
  turnin The Restless Dead##96394 |goto Ironforge 33.34,47.82 |tip {turninat}Ironforge
step
  talk Thom Filch##265003
  turnin Important Heirlooms##96403 |goto Ironforge 32.41,44.81 |tip {turninat}Ironforge
step
  talk King Magni Bronzebeard##2784
  turnin Old Ironforge Incursion##96393 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  only not Dwarf not NightElf not Skyborne Mage
  talk Jennea Cannon##5497
  turnin Report to Jennea##1919 |goto Stormwind City 49.56,85.8 |tip {turninat}Stormwind City
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  turnin To Hulfdan!##2299 |goto Ironforge 51.96,14.84 |tip {turninat}Ironforge
step
  talk Gnoarn##6569
  accept Speak with Shoni##2041 |goto Ironforge 69.18,50.55
step
  only Warlock not completed(1716) not haveq(1716)
  talk Lago Blackwrench##6120
  accept Gakin's Summons##1717 |goto Ironforge 47.63,9.26
step
  only Dwarf Priest not completed(5645) not completed(5647) not haveq(5645) not haveq(5647)
  talk High Priest Rohan##11406
  accept A Lack of Fear##5641 |goto Ironforge 24.73,8.16
step
  only NightElf Priest not completed(5672) not completed(5673) not completed(5674) not haveq(5672) not haveq(5673) not haveq(5674)
  talk High Priest Rohan##11406
  accept Elune's Grace##5675 |goto Ironforge 24.73,8.16
step
  only Human Priest not completed(5676) not completed(5678) not haveq(5676) not haveq(5678)
  talk High Priest Rohan##11406
  accept Arcane Feedback##5677 |goto Ironforge 24.73,8.16
step
  only Shaman
  talk Eldrun Stormbreaker##258098
  accept Call of Water##94494 |goto Ironforge 47.43,13.5
step
  only Shaman
  talk Norric Lochthane##258043
  accept Water Sapta##94616 |goto Loch Modan 41.89,19.03
step
  talk Tinkmaster Overspark##7944
  accept Save Techbot's Brain!##2922 |goto Ironforge 69.55,50.33
step
  talk Gnoarn##6569
  accept The Day After##2927 |goto Ironforge 69.18,50.55
step
  note Bring 6 loads of Incendicite Ore to Pilot Stonegear in Dun Morogh.
  collect 6 Incendicite Ore##3340 |q 466 |goto Wetlands 48.4,62.15 |tip {dropsfrom}Incendicite Mineral Vein
step
  note Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge.
  kill Techbot##6231 |goto Dun Morogh 19.78,31.93 |elite
  collect Techbot's Memory Core##9277 |q 2922 |goto Dun Morogh 19.78,31.93
step
  talk Shoni the Shilent##6579
  turnin Speak with Shoni##2041 |goto Stormwind City 62.63,34.11 |tip {turninat}Stormwind City
step
  talk Pilot Stonegear##1377
  turnin Search for Incendicite##466 |goto Dun Morogh 49.62,48.61
step
  only Warlock not completed(1716) not haveq(1716)
  talk Gakin the Darkbinder##6122
  turnin Gakin's Summons##1717 |goto Stormwind City 39.22,85.23 |tip {turninat}Stormwind City
step
  only Dwarf Priest not completed(5645) not completed(5647) not haveq(5645) not haveq(5647)
  talk High Priest Rohan##11406
  turnin A Lack of Fear##5641 |goto Ironforge 24.73,8.16 |tip {turninat}Ironforge
step
  only NightElf Priest not completed(5672) not completed(5673) not completed(5674) not haveq(5672) not haveq(5673) not haveq(5674)
  talk Priestess Alathea##11401
  turnin Elune's Grace##5675 |goto Darnassus 39.52,81.2 |tip {turninat}Darnassus
step
  only Human Priest not completed(5676) not completed(5678) not haveq(5676) not haveq(5678)
  talk High Priestess Laurena##376
  turnin Arcane Feedback##5677 |goto Stormwind City 49.53,44.6 |tip {turninat}Stormwind City
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Call of Water##94494 |goto Loch Modan 41.89,19.03 |tip {turninat}Loch Modan
step
  only Shaman
  talk Norric Lochthane##258043
  turnin Water Sapta##94616 |goto Loch Modan 41.89,19.03 |tip {turninat}Loch Modan
step
  talk Tinkmaster Overspark##7944
  turnin Save Techbot's Brain!##2922 |goto Ironforge 69.55,50.33 |tip {turninat}Ironforge
step
  talk Ozzie Togglevolt##1268
  turnin The Day After##2927 |goto Dun Morogh 45.89,49.39
step
  only Rogue
  talk Hulfdan Blackbeard##5165
  accept Kingly Shakedown##2298 |goto Ironforge 51.96,14.84
step
  talk Ozzie Togglevolt##1268
  accept Gnogaine##2926 |goto Dun Morogh 45.89,49.39
step
  note Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos.
  kill Irradiated Invader##6213 |goto Dun Morogh 20.9,36.02 |elite
  collect Full Leaden Collection Phial##9284 |q 2926 |goto Dun Morogh 20.9,36.02
step
  only Rogue
  talk Renzik "The Shiv"##6946
  turnin Kingly Shakedown##2298 |goto Stormwind City 78.29,71.14 |tip {turninat}Stormwind City
step
  talk Ozzie Togglevolt##1268
  turnin Gnogaine##2926 |goto Dun Morogh 45.89,49.39
step
  note {travel}Stormwind City
  goto Stormwind City 26.29,47.15
]])
