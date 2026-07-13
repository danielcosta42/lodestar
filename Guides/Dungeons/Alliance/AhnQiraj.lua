-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Ahn'Qiraj", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Warrior
  talk Andorgos##15502
  accept Conqueror's Spaulders##8544 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  accept Conqueror's Greaves##8559 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  accept Conqueror's Legguards##8560 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Andorgos##15502
  accept Conqueror's Crown##8561 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Vethsera##15504
  accept Conqueror's Breastplate##8562 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8579 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Andorgos##15502
  accept Tiara of the Oracle##8592 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  accept Trousers of the Oracle##8593 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Andorgos##15502
  accept Mantle of the Oracle##8594 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  accept Mortal Champions##8595 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  accept Footwraps of the Oracle##8596 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Andorgos##15502
  accept Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Vethsera##15504
  accept Vestments of the Oracle##8603 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  accept Stormcaller's Footguards##8621 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Vethsera##15504
  accept Stormcaller's Hauberk##8622 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Andorgos##15502
  accept Stormcaller's Diadem##8623 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  accept Stormcaller's Leggings##8624 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  accept Enigma Shoulderpads##8625 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Footguards##8626 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Vethsera##15504
  accept Avenger's Breastplate##8627 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  accept Avenger's Crown##8628 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  accept Avenger's Legguards##8629 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  accept Avenger's Pauldrons##8630 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  accept Enigma Leggings##8631 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  accept Enigma Circlet##8632 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Vethsera##15504
  accept Enigma Robes##8633 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  accept Enigma Boots##8634 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Boots##8637 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Vethsera##15504
  accept Deathdealer's Vest##8638 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Helm##8639 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  accept Deathdealer's Leggings##8640 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  accept Deathdealer's Spaulders##8641 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  accept Avenger's Greaves##8655 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Vethsera##15504
  accept Striker's Hauberk##8656 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Diadem##8657 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  accept Striker's Leggings##8658 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  accept Striker's Pauldrons##8659 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  accept Doomcaller's Footwraps##8660 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Vethsera##15504
  accept Doomcaller's Robes##8661 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Doomcaller's Circlet##8662 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  accept Doomcaller's Trousers##8663 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  accept Doomcaller's Mantle##8664 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  accept Genesis Boots##8665 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Vethsera##15504
  accept Genesis Vest##8666 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Andorgos##15502
  accept Genesis Helm##8667 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  accept Genesis Trousers##8668 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Andorgos##15502
  accept Genesis Shoulderpads##8669 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Arygos##15380
  accept Imperial Qiraji Armaments##8789 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Merithra of the Dream##15378
  accept Imperial Qiraji Regalia##8790 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Andorgos##15502
  turnin Conqueror's Spaulders##8544 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  turnin Conqueror's Greaves##8559 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Kandrostrasz##15503
  turnin Conqueror's Legguards##8560 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Andorgos##15502
  turnin Conqueror's Crown##8561 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warrior
  talk Vethsera##15504
  turnin Conqueror's Breastplate##8562 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8579 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Andorgos##15502
  turnin Tiara of the Oracle##8592 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  turnin Trousers of the Oracle##8593 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Andorgos##15502
  turnin Mantle of the Oracle##8594 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  turnin Mortal Champions##8595 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Kandrostrasz##15503
  turnin Footwraps of the Oracle##8596 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Andorgos##15502
  turnin Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj - Raid -1,-1
step
  only Priest
  talk Vethsera##15504
  turnin Vestments of the Oracle##8603 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  turnin Stormcaller's Footguards##8621 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Vethsera##15504
  turnin Stormcaller's Hauberk##8622 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Andorgos##15502
  turnin Stormcaller's Diadem##8623 |goto Ahn'Qiraj - Raid -1,-1
step
  only Mage
  talk Kandrostrasz##15503
  turnin Stormcaller's Leggings##8624 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  turnin Enigma Shoulderpads##8625 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Footguards##8626 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Vethsera##15504
  turnin Avenger's Breastplate##8627 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  turnin Avenger's Crown##8628 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  turnin Avenger's Legguards##8629 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Andorgos##15502
  turnin Avenger's Pauldrons##8630 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Enigma Leggings##8631 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Andorgos##15502
  turnin Enigma Circlet##8632 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Vethsera##15504
  turnin Enigma Robes##8633 |goto Ahn'Qiraj - Raid -1,-1
step
  only Warlock
  talk Kandrostrasz##15503
  turnin Enigma Boots##8634 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Boots##8637 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Vethsera##15504
  turnin Deathdealer's Vest##8638 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Helm##8639 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Kandrostrasz##15503
  turnin Deathdealer's Leggings##8640 |goto Ahn'Qiraj - Raid -1,-1
step
  only Rogue
  talk Andorgos##15502
  turnin Deathdealer's Spaulders##8641 |goto Ahn'Qiraj - Raid -1,-1
step
  only Paladin
  talk Kandrostrasz##15503
  turnin Avenger's Greaves##8655 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Vethsera##15504
  turnin Striker's Hauberk##8656 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Diadem##8657 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Kandrostrasz##15503
  turnin Striker's Leggings##8658 |goto Ahn'Qiraj - Raid -1,-1
step
  only Hunter
  talk Andorgos##15502
  turnin Striker's Pauldrons##8659 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  turnin Doomcaller's Footwraps##8660 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Vethsera##15504
  turnin Doomcaller's Robes##8661 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  turnin Doomcaller's Circlet##8662 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Kandrostrasz##15503
  turnin Doomcaller's Trousers##8663 |goto Ahn'Qiraj - Raid -1,-1
step
  only Druid
  talk Andorgos##15502
  turnin Doomcaller's Mantle##8664 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  turnin Genesis Boots##8665 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Vethsera##15504
  turnin Genesis Vest##8666 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Andorgos##15502
  turnin Genesis Helm##8667 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Kandrostrasz##15503
  turnin Genesis Trousers##8668 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Andorgos##15502
  turnin Genesis Shoulderpads##8669 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Andorgos##15502
  turnin Secrets of the Qiraji##8784 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Arygos##15380
  turnin Imperial Qiraji Armaments##8789 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Merithra of the Dream##15378
  turnin Imperial Qiraji Regalia##8790 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Caelestrasz##15379
  turnin C'Thun's Legacy##8801 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Caelestrasz##15379
  accept The Savior of Kalimdor##8802 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Anachronos##15192
  turnin The Savior of Kalimdor##8802 |goto Tanaris 64.2,51.42
]])
