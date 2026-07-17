-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Blade's Edge Mountains (66-70)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Nagrand (66-68)",
}, [[
step
  note {fp}Unoke Tenderhoof
  goto Blade's Edge Mountains 52.05,54.12 |tip {vendor}
step
  talk Dertrok##21496
  accept The Stones of Vekh'nir##10565 |goto Blade's Edge Mountains 75.14,62.1
step
  note Collect and use a Vekh'nir Crystal at the Vekh'nir Spell Circle, then return the Charged Vekh'nir Crystal to Dertrok at the Mok'Nathal Village.
  collect Charged Vekh'nir Crystal##30567 |q 10565 |goto Blade's Edge Mountains 75.14,62.1
step
  talk Taerek##21895
  accept Silkwing Cocoons##10617 |goto Blade's Edge Mountains 75.87,61.43
step
  note Taerek at Mok'Nathal Village wants you to collect 8 Silkwing Cocoons from Silkwing Larva.
  collect 8 Silkwing Cocoon##30791 |q 10617 |goto Blade's Edge Mountains 74.47,70.43 |tip {dropsfrom}Silkwing Larva
step
  talk Silmara##21896
  accept The Softest Wings##10618 |goto Blade's Edge Mountains 75.84,61.53
step
  note Silmara at Mok'Nathal Village wants you to collect 12 Iridescent Wings.
  collect 12 Iridescent Wing##30792 |q 10618 |goto Blade's Edge Mountains 73.41,68.97 |tip {dropsfrom}Silkwing, Mature Silkwing
step
  talk Matron Varah##21088
  accept Mok'Nathal Treats##10860 |goto Blade's Edge Mountains 76.09,60.31
step
  note Matron Varah has given you a list of ingredients for the making of her two favorite dishes, which includes the collection of 3 Raptor Ribs and 3 Serpent Flesh. Bring them to her at Mok'Nathal Village in the Blade's Edge Mountains.
  collect Raptor Ribs##31670 |q 10860 |goto Blade's Edge Mountains 42.29,52.88 |tip {dropsfrom}Bladespire Raptor, Bladespire Ravager, Daggermaw Lashtail
step
  talk Gor'drek##21117
  accept The Encroaching Wilderness##10486 |goto Blade's Edge Mountains 52.37,57.94
step
  click Wanted Poster##184660
  accept Felling an Ancient Tree##10489 |goto Blade's Edge Mountains 51.94,57.78
step
  note Acquire Stronglimb Deeproot's Trunk and deliver it to Tor'chunk Twoclaws at Thunderlord Stronghold in the Blade's Edge Mountains.
  collect Stronglimb Deeproot's Trunk##30177 |q 10489 |goto Blade's Edge Mountains 37.5,79.0 |tip {dropsfrom}Stronglimb Deeproot
step
  talk Tor'chunk Twoclaws##21147
  accept The Bladespire Threat##10503 |goto Blade's Edge Mountains 51.94,58.41
step
  kill Bladespire Brute##19995 |goto Blade's Edge Mountains 43.35,52.71 |tip Loot the quest item here — it starts the quest.
  accept Thunderlord Clan Artifacts##10524 |goto Blade's Edge Mountains 43.35,52.71
step
  note Retrieve the Thunderlord Clan Drum, Thunderlord Clan Arrow and the Thunderlord Clan Tablet. Return them, along with the Thunderlord Clan Artifact, to Rokgah Bloodgrip at Thunderlord Stronghold in the Blade's Edge Mountains.
  collect Thunderlord Clan Arrow##30433 |q 10524 |goto Blade's Edge Mountains 41.54,52.66
step
  talk Old Orok##19471
  accept Out of This World Produce!##11036 |goto Blade's Edge Mountains 53.2,54.48
step
  talk Agadai##23280
  accept The Apprentice's Request##11047 |goto Blade's Edge Mountains 51.95,54.39
step
  note Tor'chunk Twoclaws has tasked you with the destruction of any 30 Bladespire Ogres and 10 Bladespire Raptors at Bladespire Hold and the Bladespire Grounds. Return to him at Thunderlord Stronghold in the Blade's Edge Mountains once your task is completed.
  kill Bladespire Raptor##20728 |q 10503 |goto Blade's Edge Mountains 42.29,52.88
step
  talk Chort##22995
  accept Mog'dorg the Wizened##10989 |goto Blade's Edge Mountains 55.43,45.22
step
  talk Mog'dorg the Wizened##22941
  accept Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve Maggoc's Treasure Chest and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Maggoc##20600 |goto Blade's Edge Mountains 58.59,60.8 |elite
  click Maggoc's Treasure Chest##185569 |tip {spawnsafter}Maggoc
  collect Maggoc's Treasure Chest##32380 |q 10996 |goto Blade's Edge Mountains 58.59,60.8
step
  talk Mog'dorg the Wizened##22941
  accept Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve Slaag's Standard and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Slaag##22199 |goto Terokkar Forest 20.17,18.1 |elite
  click Slaag's Standard##185574 |tip {spawnsafter}Slaag
  collect Slaag's Standard##32382 |q 10997 |goto Terokkar Forest 20.17,18.1
step
  talk Timeon##21782
  accept Creating the Pendant##10567 |goto Blade's Edge Mountains 62.16,39.11
step
  note Find 6 Ruuan'ok Claws and use them at the Ruaan'ok Oracle Circle to summon a Harbinger of the Raven. Kill it and return its Harbinger's Pendant to Timeon at Ruuan Weald.
  collect 6 Harbinger's Pendant##30706 |q 10567 |goto Blade's Edge Mountains 62.16,39.11 |tip {dropsfrom}Harbinger of the Raven
step
  talk Tree Warden Chawn##22007
  accept A Time for Negotiation...##10682 |goto Blade's Edge Mountains 61.98,39.48
step
  kill Wyrmcult Poacher##21809 |goto Blade's Edge Mountains 61.57,36.36 |tip Loot the quest item here — it starts the quest.
  accept Did You Get The Note?##10719 |goto Blade's Edge Mountains 61.57,36.36
step
  talk Faradrella##22133
  accept Culling the Wild##10753 |goto Blade's Edge Mountains 62.56,38.26
step
  talk Mosswood the Ancient##22053
  accept Little Embers##10770 |goto Blade's Edge Mountains 61.25,38.45
step
  talk Mosswood the Ancient##22053
  accept From the Ashes##10771 |goto Blade's Edge Mountains 61.25,38.45
step
  kill Fel Corrupter##21300 |goto Blade's Edge Mountains 71.44,33.06 |tip Loot the quest item here — it starts the quest.
  accept Damaged Mask##10810 |goto Blade's Edge Mountains 71.44,33.06
step
  note Kill 4 Felsworn Scalewing, 4 Felsworn Daggermaw, and 2 Fel Corrupters.
  kill Felsworn Scalewing##21123 |q 10753 |goto Blade's Edge Mountains 71.85,32.76
step
  note Mosswood the Ancient wants you to journey to Skald and plant Ironroot Seeds in three different mounds of Fertile Volcanic Soil and then return to him in Ruuan Weald.
  collect Fertile Volcanic Soil##185124 |q 10771 |goto Blade's Edge Mountains 71.66,22.35
step
  talk Dama Wildmane##20494
  turnin The Apprentice's Request##11047 |goto Shadowmoon Valley 29.09,29.46 |tip {turninat}Shadowmoon Valley
step
  talk Thrall##4949
  accept Hero of the Mag'har##10212 |goto Orgrimmar 31.73,37.82
step
  kill Grishna Falconwing##19988 |goto Blade's Edge Mountains 40.77,20.23 |tip Loot the quest item here — it starts the quest.
  accept The Truth Unorbed##10825 |goto Blade's Edge Mountains 40.77,20.23
step
  talk Image of Commander Ameer##22919
  accept The Mark of the Nexus-King##10976 |goto Blade's Edge Mountains 52.85,14.99
step
  note The Image of Commander Ameer at Bash'ir's Landing in the Blade's Edge Mountains wants you to bring him a Mark of the Nexus-King.
  collect Mark of the Nexus-King##31941 |q 10976 |goto Blade's Edge Mountains 52.85,14.99 |tip {dropsfrom}Solus the Eternal, Matron Li-sahar, King Dorfbruiser
step
  note Mosswood the Ancient wants you to kill 8 Scorch Imps and then return to him in Ruuan Weald.
  kill Scorch Imp##21021 |q 10770 |goto Blade's Edge Mountains 71.77,21.14
step
  talk Rocket-Chief Fuselage##19570
  turnin Out of This World Produce!##11036 |goto Netherstorm 32.73,64.96 |tip {turninat}Netherstorm
step
  talk Chu'a'lor##23233
  accept The Trouble Below##11057 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Commander Keller##23334
  accept Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.38,52.68
step
  talk T'chali the Witch Doctor##21349
  accept They Stole Me Hookah and Me Brews!##10542 |goto Blade's Edge Mountains 44.97,72.31
step
  note Retrieve T'chali's Hookah and 10 Bloodmaul Brutebane Brews. Bring them back to T'chali the Witch Doctor at Bloodmaul Ravine in the Blade's Edge Mountains.
  collect T'chali's Hookah##30468 |q 10542 |goto Blade's Edge Mountains 42.1,81.24
step
  note Gor'drek has asked you to slay 12 Bladewing Bloodletters. Return to him at Thunderlord Stronghold in the Blade's Edge Mountains once you have accomplished that.
  kill Bladewing Bloodletter##21033 |q 10486 |goto Blade's Edge Mountains 50.5,67.45
step
  talk Grunt Grahk##22489
  accept Killing the Crawlers##10928 |goto Blade's Edge Mountains 52.96,96.22
step
  note Grunt Grahk at the tunnel between Zangarmarsh and Blade's Edge Mountains wants you to kill 6 Cavern Crawlers and report to Tor'chunk Two-claws in Thunderlord Stronghold.
  kill Cavern Crawler##22044 |q 10928 |goto Blade's Edge Mountains 51.45,87.88
step
  talk Taerek##21895
  turnin Silkwing Cocoons##10617 |goto Blade's Edge Mountains 75.87,61.43
step
  talk Dertrok##21496
  turnin The Stones of Vekh'nir##10565 |goto Blade's Edge Mountains 75.14,62.1
step
  talk Matron Varah##21088
  turnin Mok'Nathal Treats##10860 |goto Blade's Edge Mountains 76.09,60.31
step
  talk Silmara##21896
  turnin The Softest Wings##10618 |goto Blade's Edge Mountains 75.84,61.53
step
  talk Dertrok##21496
  accept Trial and Error##10566 |goto Blade's Edge Mountains 75.14,62.1
step
  note Try out each of Dertrok's wands on an Arakkoa Ogre Slave, then return to Dertrok. Each wand will require an Infused Vekh'nir Crystal to use.
  get Trial and Error |q 10566 |goto Blade's Edge Mountains 75.14,62.1
step
  talk Leoroxx##22004
  accept Understanding the Mok'Nathal##10846 |goto Blade's Edge Mountains 75.29,60.86
step
  note To begin your understanding of the Mok'Nathal, slay Vekh, leader of the Vekh'nir arakkoa. Then, return to Leoroxx at Mok'Nathal Village in the Blade's Edge Mountains.
  kill Vekh##22305 |q 10846 |goto Blade's Edge Mountains 70.08,72.18
step
  talk Tor'chunk Twoclaws##21147
  turnin The Bladespire Threat##10503 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rokgah Bloodgrip##21311
  turnin Thunderlord Clan Artifacts##10524 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Tor'chunk Twoclaws##21147
  turnin Killing the Crawlers##10928 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Gor'drek##21117
  turnin The Encroaching Wilderness##10486 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Tor'chunk Twoclaws##21147
  turnin Felling an Ancient Tree##10489 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Gor'drek##21117
  accept Dust from the Drakes##10487 |goto Blade's Edge Mountains 52.37,57.94
step
  note Gor'drek wants you to gather 4 Dusts of the Fey Drake. After doing so, return to him at Thunderlord Stronghold in the Blade's Edge Mountains.
  collect 4 Dust of the Fey Drake##30174 |q 10487 |goto Blade's Edge Mountains 38.52,71.3 |tip {dropsfrom}Fey Drake
step
  talk Tor'chunk Twoclaws##21147
  accept The Bloodmaul Ogres##10505 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rokgah Bloodgrip##21311
  accept Vision Guide##10525 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Mog'dorg the Wizened##22941
  turnin The Trouble Below##11057 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Mog'dorg the Wizened##10989 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve Grulloc's Dragon Skull and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Grulloc##20216 |goto Blade's Edge Mountains 60.92,47.61 |elite
  collect Grulloc's Dragon Skull##32379 |q 10995 |goto Blade's Edge Mountains 60.92,47.61
step
  talk Faradrella##22133
  turnin Culling the Wild##10753 |goto Blade's Edge Mountains 62.56,38.26
step
  talk Mosswood the Ancient##22053
  turnin Little Embers##10770 |goto Blade's Edge Mountains 61.25,38.45
step
  talk Mosswood the Ancient##22053
  turnin From the Ashes##10771 |goto Blade's Edge Mountains 61.25,38.45
step
  talk Tree Warden Chawn##22007
  turnin A Time for Negotiation...##10682 |goto Blade's Edge Mountains 61.98,39.48
step
  talk O'Mally Zapnabber##22020
  turnin Damaged Mask##10810 |goto Blade's Edge Mountains 62.65,40.38
step
  talk Timeon##21782
  turnin Creating the Pendant##10567 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Tree Warden Chawn##22007
  turnin The Truth Unorbed##10825 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Tree Warden Chawn##22007
  turnin Did You Get The Note?##10719 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Timeon##21782
  accept Whispers of the Raven God##10607 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Tree Warden Chawn##22007
  accept ...and a Time for Action##10713 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Samia Inkling##21983
  accept Poaching from Poachers##10717 |goto Blade's Edge Mountains 61.94,39.45
step
  note Samia Inkling has asked you to acquire 5 Wyrmcult Nets and return them to her at Evergrove in the Blade's Edge Mountains.
  collect 5 Wyrmcult Net##31119 |q 10717 |goto Blade's Edge Mountains 61.57,36.36 |tip {dropsfrom}Wyrmcult Poacher
step
  talk O'Mally Zapnabber##22020
  accept Mystery Mask##10812 |goto Blade's Edge Mountains 62.65,40.38
step
  talk Tree Warden Chawn##22007
  accept Treebole Must Know##10829 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Tree Warden Chawn##22007
  accept Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 61.98,39.48
step
  note Venture out into the Ruuan Weald and slay 10 Wyrmcult Hewers, then return to Tree Warden Chawn at Evergrove in the Blade's Edge Mountains.
  kill Wyrmcult Hewer##21810 |q 10713 |goto Blade's Edge Mountains 60.82,35.23
step
  talk Watcher Moonshade##22386
  turnin Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Greatmother Geyah##18141
  turnin Hero of the Mag'har##10212 |goto Nagrand 56.7,34.31 |tip {turninat}Nagrand
step
  talk Watcher Moonshade##22386
  accept Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 50.03,35.95
step
  note Eliminate Draaca Longtail, the leader of the wyrmcultists in Wyrmskull Tunnel. Report back to Watcher Moonshade at the Wyrmskull Tunnel in the Blade's Edge Mountains once you have done so.
  kill Draaca Longtail##22396 |q 10893 |goto Blade's Edge Mountains 45.19,32.49
step
  talk Treebole##22215
  turnin Treebole Must Know##10829 |goto Blade's Edge Mountains 37.17,22.1
step
  talk Treebole##22215
  accept Exorcising the Trees##10830 |goto Blade's Edge Mountains 37.17,22.1
step
  note Collect 5 Grishnath Orbs and 5 Dire Pinfeathers and then combine them into Exorcism Feathers. Use these feathers to exorcise and slay 5 Koi-Koi Spirits from the Raven's Wood Leafbeards. Once you've done this, return to Treebole in the Raven's Wood of the Blade's Edge Mountains.
  kill Koi-Koi Spirit##22226 |q 10830
step
  note Kill Grishna arakkoa to gain Understanding Ravenspeech for 2 minutes. While under the effects of the spell, you can find and receive the prophecy from the four shrines. Return when you have visited all four.
  kill [DNDProphecy 1 Quest Credit##22798 |q 10607 |goto Blade's Edge Mountains 39.01,17.25
step
  talk Image of Commander Ameer##22919
  turnin The Mark of the Nexus-King##10976 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Image of Commander Ameer##22919
  accept Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Aether-tech Apprentice##23473
  turnin Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.9,52.16
step
  talk T'chali the Witch Doctor##21349
  turnin They Stole Me Hookah and Me Brews!##10542 |goto Blade's Edge Mountains 44.97,72.31
step
  talk T'chali the Witch Doctor##21349
  accept Bladespire Kegger##10545 |goto Blade's Edge Mountains 44.97,72.31
step
  note T'chali has asked you to take the Bloodmaul Brutebane Keg and use it in an attempt to get 5 Bladespire Ogres drunk. If successful, return to T'chali the Witch Doctor at Bloodmaul Ravine in the Blade's Edge Mountains.
  get Bladespire Kegger |q 10545 |goto Blade's Edge Mountains 44.97,72.31
step
  talk Dertrok##21496
  turnin Trial and Error##10566 |goto Blade's Edge Mountains 75.14,62.1
step
  talk Leoroxx##22004
  turnin Understanding the Mok'Nathal##10846 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Dertrok##21496
  accept Ruuan Weald##10615 |goto Blade's Edge Mountains 75.14,62.1
step
  talk Leoroxx##22004
  accept Since Time Forgotten...##10843 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Spiritcaller Dohgar##22312
  accept The Totems of My Enemy##10851 |goto Blade's Edge Mountains 74.91,60.47
step
  note Collect 5 Bladespire Totems for Spiritcaller Dohgar at Mok'Nathal Village in the Blade's Edge Mountains.
  collect 5 Bladespire Totem##31651 |q 10851 |goto Blade's Edge Mountains 57.56,57.22 |tip {dropsfrom}Bladespire Crusher, Bladespire Mystic
step
  talk Tor'chunk Twoclaws##21147
  turnin The Bloodmaul Ogres##10505 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rokgah Bloodgrip##21311
  turnin Vision Guide##10525 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Gor'drek##21117
  turnin Dust from the Drakes##10487 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Gor'drek##21117
  accept Protecting Our Own##10488 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Rokgah Bloodgrip##21311
  accept The Thunderspike##10526 |goto Blade's Edge Mountains 52.8,58.96
step
  note Rokgah Bloodgrip has tasked you with the retrieval of the Thunderspike. Return it to her at Thunderlord Stronghold in the Blade's Edge Mountains.
  collect The Thunderspike##30435 |q 10526 |goto Blade's Edge Mountains 52.8,58.96 |tip {dropsfrom}Gor Grimgut
step
  note In order to prove yourself to the Mok'Nathal, Leoroxx has ordered you to slay Gnosh Brognat, leader of the ogres at the Bladespire Outpost. Return to Leoroxx at Mok'Nathal Village in the Blade's Edge Mountains after you have done so, or do not return at all.
  kill Gnosh Brognat##20768 |q 10843 |goto Blade's Edge Mountains 57.14,54.49
step
  note Use Gor'drek's Ointment on 5 of the Thunderlord Dire Wolves to strengthen them and the defense of the Jagged Ridge. Then return to Gor'drek at Thunderlord Stronghold in the Blade's Edge Mountains.
  use Dire Timber Wolf Trigger##21142 |q 10488 |goto Blade's Edge Mountains 50.53,63.63 |tip {useit}
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  note You must retrieve Vim'gol's Vile Grimoire. Deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Vim'gol's Vile Grimoire##32358 |q 10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Timeon##21782
  turnin Ruuan Weald##10615 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Wildlord Antelarion##22127
  turnin Mystery Mask##10812 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Tree Warden Chawn##22007
  turnin ...and a Time for Action##10713 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Samia Inkling##21983
  turnin Poaching from Poachers##10717 |goto Blade's Edge Mountains 61.94,39.45
step
  talk Timeon##21782
  turnin Whispers of the Raven God##10607 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Samia Inkling##21983
  accept Whelps of the Wyrmcult##10747 |goto Blade's Edge Mountains 61.94,39.45
step
  note Samia Inkling has asked you to use the Blackwhelp Net to capture 10 Wyrmcult Blackwhelps. Return them to her at Evergrove in the Blade's Edge Mountains.
  collect 10 Wyrmcult Blackwhelp##31130 |q 10747 |goto Blade's Edge Mountains 61.94,39.45
step
  talk Wildlord Antelarion##22127
  accept Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Watcher Moonshade##22386
  turnin Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Watcher Moonshade##22386
  accept Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Treebole##22215
  turnin Exorcising the Trees##10830 |goto Blade's Edge Mountains 37.17,22.1
step
  talk Image of Commander Ameer##22919
  turnin Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Image of Commander Ameer##22919
  accept The Eye of Haramad##10982 |goto Blade's Edge Mountains 52.85,14.99
step
  talk T'chali the Witch Doctor##21349
  turnin Bladespire Kegger##10545 |goto Blade's Edge Mountains 44.97,72.31
step
  talk T'chali the Witch Doctor##21349
  accept Grimnok and Korgaah, I Am For You!##10543 |goto Blade's Edge Mountains 44.97,72.31
step
  note T'chali the Witch Doctor has asked you to kill his chief tormentors, Grimnok Battleborn and Korgaah. After you have done so, return to him at Bloodmaul Ravine in the Blade's Edge Mountains.
  kill Grimnok Battleborn##20095 |q 10543 |goto Blade's Edge Mountains 45.45,80.39
step
  talk Leoroxx##22004
  turnin Since Time Forgotten...##10843 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Spiritcaller Dohgar##22312
  turnin The Totems of My Enemy##10851 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Leoroxx##22004
  accept Slay the Brood Mother##10845 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Spiritcaller Dohgar##22312
  accept Spirit Calling##10853 |goto Blade's Edge Mountains 74.91,60.47
step
  note Spiritcaller Dohgar has asked you to use the Spirit Calling Totems to collect 8 Lesser Nether Drake Spirits and return them to him at Mok'Nathal Village in the Blade's Edge Mountains.
  collect 8 Lesser Nether Drake Spirit##31656 |q 10853 |goto Blade's Edge Mountains 62.03,76.26 |tip {dropsfrom}Lesser Nether Drake
step
  note Leoroxx has challenged you to slay Dreadwing. Return to him at Mok'Nathal Village once you have managed to kill her.
  kill Dreadwing##21032 |q 10845 |goto Blade's Edge Mountains 65.37,78.13
step
  talk Rokgah Bloodgrip##21311
  turnin The Thunderspike##10526 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Gor'drek##21117
  turnin Protecting Our Own##10488 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Garm Wolfbrother##21950
  accept The Spirits Have Voices##10718 |goto Blade's Edge Mountains 52.75,59.04
step
  talk Mog'dorg the Wizened##22941
  turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve Skulloc's Soul and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Skulloc's Soul##32383 |q 11000 |goto Blade's Edge Mountains 55.49,44.86
step
  turnin Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 73.27,40.03
step
  talk Tree Warden Chawn##22007
  turnin Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Samia Inkling##21983
  turnin Whelps of the Wyrmcult##10747 |goto Blade's Edge Mountains 61.94,39.45
step
  talk Tree Warden Chawn##22007
  accept Maxnar Must Die!##10748 |goto Blade's Edge Mountains 61.98,39.48
step
  click Legion Communicator##185165
  accept Deceive thy Enemy##10820 |goto Blade's Edge Mountains 73.27,40.03
step
  note Kill 4 Doomforge Attendants and 4 Doomforge Engineers.
  kill Doomforge Attendant##19961 |q 10820 |goto Blade's Edge Mountains 74.29,38.51
step
  note On behalf of the Cenarion Expedition druids of Evergrove, and the indigenous life of the Ruuan Weald, Tree Warden Chawn has asked you to slay Maxnar the Ashmaw. Return to him at Evergrove in the Blade's Edge Mountains after you have done so.
  kill Maxnar the Ashmaw##21389 |q 10748 |goto Blade's Edge Mountains 33.9,35.32
step
  talk Image of Commander Ameer##22919
  turnin The Eye of Haramad##10982 |goto Blade's Edge Mountains 52.85,14.99
step
  talk T'chali the Witch Doctor##21349
  turnin Grimnok and Korgaah, I Am For You!##10543 |goto Blade's Edge Mountains 44.97,72.31
step
  talk T'chali the Witch Doctor##21349
  accept A Curse Upon Both of Your Clans!##10544 |goto Blade's Edge Mountains 44.97,72.31
step
  note Use the Wicked Strong Fetish to curse 5 buildings or towers in Bladespire Hold and 2 in Bloodmaul Outpost. Return to T'chali the Witch Doctor at Bloodmaul Ravine in the Blade's Edge Mountains after you have done so.
  kill Bladespire Evil Spirit##21446 |q 10544
step
  talk Leoroxx##22004
  turnin Slay the Brood Mother##10845 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Spiritcaller Dohgar##22312
  turnin Spirit Calling##10853 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Spiritcaller Dohgar##22312
  accept Gather the Orbs##10859 |goto Blade's Edge Mountains 74.91,60.47
step
  note Spiritcaller Dohgar has asked you to use the Orb Collecting Totem to collect 15 Razaani Light Orbs. Return to him at Mok'Nathal Village in the Blade's Edge Mountains after you have done so.
  get Gather the Orbs |q 10859 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Rexxar##21984
  turnin The Spirits Have Voices##10718 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept Whispers on the Wind##10614 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
step
  turnin Deceive thy Enemy##10820 |goto Blade's Edge Mountains 73.27,40.03
step
  talk Tree Warden Chawn##22007
  turnin Maxnar Must Die!##10748 |goto Blade's Edge Mountains 61.98,39.48
step
  click Legion Communicator##185165
  accept You're Fired!##10821 |goto Blade's Edge Mountains 73.27,40.03
step
  note Kill Doomcryer and report back to Wildlord Antelarion in Evergrove.
  kill Doomcryer##19963 |q 10821 |elite
step
  talk Chu'a'lor##23233
  turnin Ogre Heaven##11009 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Chu'a'lor##23233
  accept The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  note Chu'a'lor has tasked you with gathering 5 Apexis Shards. Bring them to him at Ogri'la atop the Blade's Edge Mountains.
  collect 5 Apexis Shard##32569 |q 11025 |goto Blade's Edge Mountains 28.84,81.09 |tip {dropsfrom}Abyssal Flamebringer, Wrath Hound, Hemathion
step
  talk Kronk##23253
  accept Banish the Demons##11026 |goto Blade's Edge Mountains 28.9,57.92
step
  note Kronk has asked you to use the Banishing Crystal to banish 15 demons at Forge Camp: Wrath or Forge Camp: Terror atop the Blade's Edge Mountains. Return it to him once you have done so.
  get Banish the Demons |q 11026 |goto Blade's Edge Mountains 28.9,57.92
step
  talk Skyguard Khatie##23335
  accept Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  note Skyguard Khatie has asked you to wrangle 5 Aether Rays. After you have done so, return them to her at the Skyguard Outpost atop the Blade's Edge Mountains.
  use Wrangled Aether Ray##23343 |q 11065 |tip {useit}
step
  talk Chu'a'lor##23233
  accept A Special Thank You##11091 |goto Blade's Edge Mountains 28.76,57.36
step
  talk T'chali the Witch Doctor##21349
  turnin A Curse Upon Both of Your Clans!##10544 |goto Blade's Edge Mountains 44.97,72.31
step
  talk Spiritcaller Dohgar##22312
  turnin Gather the Orbs##10859 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Leoroxx##22004
  turnin Whispers on the Wind##10614 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Leoroxx##22004
  accept Reunion##10709 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Spiritcaller Dohgar##22312
  accept Inform Leoroxx!##10865 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Rexxar##21984
  turnin Reunion##10709 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept On Spirit's Wings##10714 |goto Blade's Edge Mountains 51.82,58.35
step
  note Find a Bloodmaul Taskmaster and a Bloodmaul Soothsayer engaged in conversation, then use Rexxar's Whistle to summon Spirit to spy on them. When this is complete, return to Rexxar at Thunderlord Village in the Blade's Edge Mountains.
  get On Spirit's Wings |q 10714 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Wildlord Antelarion##22127
  turnin You're Fired!##10821 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Wildlord Antelarion##22127
  accept Death's Door##10910 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Chu'a'lor##23233
  turnin The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Kronk##23253
  turnin Banish the Demons##11026 |goto Blade's Edge Mountains 28.9,57.92
step
  talk Skyguard Khatie##23335
  turnin Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Jho'nass##23428
  turnin A Special Thank You##11091 |goto Blade's Edge Mountains 28.06,58.73
step
  talk Torkus##23316
  accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  note Torkus has asked you to obtain an Unstable Flask of the Beast for him. Return with it to him at Ogri'la atop the Blade's Edge Mountains.
  collect Unstable Flask of the Beast##32598 |q 11030 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Gahk##23300
  accept A Crystalforged Darkrune##11060 |goto Blade's Edge Mountains 28.48,58.08
step
  collect Darkrune##32643 |q 11060 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Sky Commander Keller##23334
  accept To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
step
  note Sky Commander Keller has asked you to acquire Dragon Teeth and return them to him at the Skyguard Outpost atop the Blade's Edge Mountains.
  kill Rivendark##23061 |goto Blade's Edge Mountains 30.43,58.58 |elite
  collect Dragon Teeth##32732 |q 11078 |goto Blade's Edge Mountains 30.43,58.58
step
  talk Leoroxx##22004
  turnin Inform Leoroxx!##10865 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Leoroxx##22004
  accept There Can Be Only One Response##10867 |goto Blade's Edge Mountains 75.29,60.86
step
  note Leoroxx has beseeched you to retrieve the Collection of Souls and return them to Spiritcaller Dohgar at Mok'Nathal Village in the Blade's Edge Mountains.
  collect Collection of Souls##30890 |q 10867 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Evergrove Druid##22423
  turnin Death's Door##10910 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Evergrove Druid##22423
  accept Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  note The Evergrove Druid has asked you to collect 5 Fel Cannonballs. Once you have done so, use the Druid Signal to call to the Evergrove Druid inside of Death's Door at the Blade's Edge Mountains.
  collect 5 Fel Cannonball##31757 |q 10904 |goto Blade's Edge Mountains 64.01,71.7 |tip {dropsfrom}Deathforge Over-Smith, Deathforge Technician, Death's Watch
step
  talk Rexxar##21984
  turnin On Spirit's Wings##10714 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept Baron Sablemane##10783 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Baron Sablemane##22103
  turnin Baron Sablemane##10783 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  accept Into the Churning Gulch##10715 |goto Blade's Edge Mountains 53.25,41.18
step
  note Baron Sablemane has told you that in order to make the poison that Rexxar needs, you must acquire 7 Crust Burster Venom Glands. Return to him at the Circle of Blood in the Blade's Edge Mountains once you have done so.
  collect 7 Crust Burster Venom Gland##31132 |q 10715 |goto Blade's Edge Mountains 48.95,44.76 |tip {dropsfrom}Greater Crust Burster, Young Crust Burster, Bone Crawler
step
  talk Torkus##23316
  turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Gahk##23300
  turnin A Crystalforged Darkrune##11060 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Sky Commander Keller##23334
  turnin To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
step
  talk Torkus##23316
  accept A Father's Duty##11061 |goto Blade's Edge Mountains 28.38,57.64
step
  note Torkus has asked you to obtain an Unstable Flask of the Sorcerer for him. Return with it to him at Ogri'la atop the Blade's Edge Mountains.
  collect Unstable Flask of the Sorcerer##32601 |q 11061 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Chu'a'lor##23233
  accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Spiritcaller Dohgar##22312
  turnin There Can Be Only One Response##10867 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Evergrove Druid##22423
  turnin Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Evergrove Druid##22423
  accept Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  note Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use them to destroy both the South Warp-Gate and the North Warp-Gate. Then, use the Druid Signal to call out to an Evergrove Druid to report your success.
  get Fire At Will! |q 10911 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Baron Sablemane##22103
  turnin Into the Churning Gulch##10715 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  accept Baron Sablemane's Poison##10749 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Torkus##23316
  turnin A Father's Duty##11061 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Sky Commander Keller##23334
  turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains 27.38,52.68
step
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11010 |goto Blade's Edge Mountains 27.56,52.9
step
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bombing Run |q 11010 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Chu'a'lor##23233
  accept Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  note Chu'a'lor has asked you to obtain an Apexis Guardian's Head for him as proof. Return with it to him at Ogri'la atop the Blade's Edge Mountains once you have done so.
  collect Apexis Guardian's Head##32697 |q 11059 |goto Blade's Edge Mountains 28.76,57.36 |tip {dropsfrom}Apexis Guardian
step
  talk Gahk##23300
  accept A Fel Whip For Gahk##11079 |goto Blade's Edge Mountains 28.48,58.08
step
  note Gahk has asked you to acquire a Fel Whip. Bring it to him at Ogri'la atop the Blade's Edge Mountains.
  collect Fel Whip##32733 |q 11079 |goto Blade's Edge Mountains 28.48,58.08 |tip {dropsfrom}Galvanoth, Braxxus, Mo'arg Incinerator
step
  only Druid
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  only Druid
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bombing Run |q 11102 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Evergrove Druid##22423
  turnin Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11010 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Chu'a'lor##23233
  turnin Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Gahk##23300
  turnin A Fel Whip For Gahk##11079 |goto Blade's Edge Mountains 28.48,58.08
step
  only Druid
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Evergrove Druid##22423
  accept The Hound-Master##10912 |goto Blade's Edge Mountains 63.52,65.29
step
  note The Evergrove Druid has told you that the final thing you must do is to slay Baelmon the Hound-Master. Afterward, return to Evergrove in the Blade's Edge Mountains, and inform Wildlord Antelarion of your success.
  kill Baelmon the Hound-Master##19747 |q 10912 |goto Blade's Edge Mountains 63.04,60.41 |elite
step
  talk Wildlord Antelarion##22127
  turnin The Hound-Master##10912 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Rexxar##21984
  turnin Baron Sablemane's Poison##10749 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept The Smallest Creatures##10720 |goto Blade's Edge Mountains 51.82,58.35
step
  note Use the Kodohide Drum at the Marmot Den. While controlling the Marmot, poison the three kegs in the Bloodmaul Camp. When that is completed, return to Rexxar at Thunderlord Stronghold in the Blade's Edge Mountains.
  kill [DNDGreen Spot Grog Keg Credit##22356 |q 10720 |goto Blade's Edge Mountains 55.28,26.0
step
  talk Tor'chunk Twoclaws##21147
  accept Crush the Bloodmaul Camp##10784 |goto Blade's Edge Mountains 51.94,58.41
step
  note Tor'chunk Twoclaws has asked you to slay 10 Bloodmaul Maulers and 5 Bloodmaul Warlocks. Afterward, return to him at Thunderlord Stronghold in the Blade's Edge Mountains.
  kill Bloodmaul Mauler##19993 |q 10784 |goto Blade's Edge Mountains 56.13,28.75
step
  talk Rexxar##21984
  turnin The Smallest Creatures##10720 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Tor'chunk Twoclaws##21147
  turnin Crush the Bloodmaul Camp##10784 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rexxar##21984
  accept A Boaring Time for Grulloc##10721 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Baron Sablemane##22103
  turnin A Boaring Time for Grulloc##10721 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  accept It's a Trap!##10785 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Rexxar##21984
  turnin It's a Trap!##10785 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept Gorgrom the Dragon-Eater##10723 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Tor'chunk Twoclaws##21147
  accept Slaughter at Boulder'mok##10786 |goto Blade's Edge Mountains 51.94,58.41
step
  note Slaughter 5 Boulder'mok Brutes and 3 Boulder'mok Shaman, and then return to Tor'chunk Twoclaws at Thunderlord Stronghold in the Blade's Edge Mountains.
  kill Boulder'mok Brute##21046 |q 10786 |goto Blade's Edge Mountains 30.54,22.6
step
  talk Rexxar##21984
  turnin Gorgrom the Dragon-Eater##10723 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Tor'chunk Twoclaws##21147
  turnin Slaughter at Boulder'mok##10786 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rexxar##21984
  accept Prisoner of the Bladespire##10724 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  turnin Prisoner of the Bladespire##10724 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept Showdown##10742 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  turnin Showdown##10742 |goto Blade's Edge Mountains 51.82,58.35
step
  note {travel}Nagrand
  goto Nagrand 60.8,22.38
]])
