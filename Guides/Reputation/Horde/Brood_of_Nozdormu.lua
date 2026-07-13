-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Brood of Nozdormu", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
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
  talk Meridith the Mermaiden##15526
  accept Love Song for Narain##8599 |goto Tanaris 59.43,96.05
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
  talk Anachronos##15192
  accept The Path of the Protector##8747 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8752 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8757 |goto Tanaris 64.2,51.42
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
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
  talk Narain Soothfancy##11811
  turnin Love Song for Narain##8599 |goto Tanaris 65.24,18.58
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
  talk Anachronos##15192
  turnin The Path of the Protector##8747 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8752 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8757 |goto Tanaris 64.2,51.42
step
  talk Andorgos##15502
  turnin Secrets of the Qiraji##8784 |goto Ahn'Qiraj - Raid -1,-1
step
  talk Commander Mar'alith##15181
  turnin The Fall of Ossirian##8791 |goto Silithus 49.2,34.18
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  accept The Path of the Protector##8748 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8753 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8758 |goto Tanaris 64.2,51.42
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  turnin The Path of the Protector##8748 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8753 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8758 |goto Tanaris 64.2,51.42
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  accept The Path of the Protector##8749 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8754 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8759 |goto Tanaris 64.2,51.42
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  turnin The Path of the Protector##8749 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8754 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8759 |goto Tanaris 64.2,51.42
step
  talk Baristolth of the Shifting Sands##15180
  accept The Hand of the Righteous##8302 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  accept The Path of the Protector##8750 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Conqueror##8755 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Path of the Invoker##8760 |goto Tanaris 64.2,51.42
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Hand of the Righteous##8302 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Protector##8750 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Conqueror##8755 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Path of the Invoker##8760 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept Long Forgotten Memories##8305 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Protector of Kalimdor##8751 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Qiraji Conqueror##8756 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Grand Invoker##8761 |goto Tanaris 64.2,51.42
step
  turnin Long Forgotten Memories##8305 |goto Silithus 28.68,89.14
step
  talk Anachronos##15192
  turnin The Protector of Kalimdor##8751 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Qiraji Conqueror##8756 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Grand Invoker##8761 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin A Pawn on the Eternal Board##8519 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Vaelastrasz the Corrupt##13020
  accept Nefarius's Corruption##8730 |goto Blackwing Lair - Raid -1,-1
step
  talk Malfurion Stormrage##15362
  accept Eranikus, Tyrant of the Dream##8733
step
  talk Narain Soothfancy##11811
  turnin Azuregos's Magical Ledger##8575 |goto Tanaris 65.24,18.58
step
  talk Anachronos##15192
  turnin Nefarius's Corruption##8730 |goto Tanaris 64.2,51.42
step
  talk Forest Wisp##15624
  turnin Eranikus, Tyrant of the Dream##8733 |goto Teldrassil 37.55,47.92
step
  talk Narain Soothfancy##11811
  accept Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Forest Wisp##15624
  accept Tyrande and Remulos##8734 |goto Teldrassil 37.55,47.92
step
  talk Narain Soothfancy##11811
  turnin Translating the Ledger##8576 |goto Tanaris 65.24,18.58
step
  talk Keeper Remulos##11832
  turnin Tyrande and Remulos##8734 |goto Moonglade 36.18,41.79
step
  talk Narain Soothfancy##11811
  accept Stewvul, Ex-B.F.F.##8577 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Never Ask Me About My Business##8584 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept Draconic for Dummies##8597 |goto Tanaris 65.24,18.58
step
  talk Keeper Remulos##11832
  accept The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.68
step
  talk Dirge Quikcleave##8125
  turnin Never Ask Me About My Business##8584 |goto Tanaris 52.63,28.11
step
  talk Keeper Remulos##11832
  turnin The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  talk Narain Soothfancy##11811
  accept Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
step
  talk Dirge Quikcleave##8125
  accept The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  talk Keeper Remulos##11832
  accept The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Narain Soothfancy##11811
  turnin Scrying Goggles? No Problem!##8578 |goto Tanaris 65.24,18.58
step
  talk Dirge Quikcleave##8125
  turnin The Isle of Dread!##8585 |goto Tanaris 52.63,28.11
step
  talk Narain Soothfancy##11811
  turnin rAnS0m##8598 |goto Tanaris 65.24,18.58
step
  talk Keeper Remulos##11832
  turnin The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Dirge Quikcleave##8125
  accept Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  talk Narain Soothfancy##11811
  accept Decoy!##8606 |goto Tanaris 65.24,18.58
step
  talk Keeper Remulos##11832
  accept The Champion Returns##8741 |goto Moonglade 36.18,41.79
step
  talk Dirge Quikcleave##8125
  turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.11
step
  talk Narain Soothfancy##11811
  turnin Decoy!##8606 |goto Tanaris 65.24,18.58
step
  talk Anachronos##15192
  turnin The Champion Returns##8741 |goto Tanaris 64.2,51.42
step
  talk Dirge Quikcleave##8125
  accept Return to Narain##8587 |goto Tanaris 52.63,28.11
step
  talk Narain Soothfancy##11811
  accept The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin Return to Narain##8587 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin The Only Prescription##8620 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  turnin The Good News and The Bad News##8728 |goto Tanaris 65.24,18.58
step
  talk Narain Soothfancy##11811
  accept The Wrath of Neptulon##8729 |goto Tanaris 65.24,18.58
step
  talk Anachronos##15192
  turnin The Wrath of Neptulon##8729 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Might of Kalimdor##8742 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Might of Kalimdor##8742 |goto Tanaris 64.2,51.42
step
  talk Jonathan the Revelator##15693
  accept Treasure of the Timeless One##8745 |goto Silithus 25.94,90.96
step
  talk Jonathan the Revelator##15693
  turnin Treasure of the Timeless One##8745 |goto Silithus 25.94,90.96
]])
