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
  talk Taerek##21895
  accept Silkwing Cocoons##10617 |goto Blade's Edge Mountains 75.87,61.43
step
  talk Silmara##21896
  accept The Softest Wings##10618 |goto Blade's Edge Mountains 75.84,61.53
step
  talk Matron Varah##21088
  accept Mok'Nathal Treats##10860 |goto Blade's Edge Mountains 76.09,60.31
step
  talk Gor'drek##21117
  accept The Encroaching Wilderness##10486 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Tor'chunk Twoclaws##21147
  accept The Bladespire Threat##10503 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rokgah Bloodgrip##21311
  accept Vision Guide##10525 |goto Blade's Edge Mountains 52.8,58.96
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
  talk Mog'dorg the Wizened##22941
  accept Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Timeon##21782
  accept Creating the Pendant##10567 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Tree Warden Chawn##22007
  accept A Time for Negotiation...##10682 |goto Blade's Edge Mountains 61.98,39.48
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
  talk O'Mally Zapnabber##22020
  accept Mystery Mask##10812 |goto Blade's Edge Mountains 62.65,40.38
step
  talk Tree Warden Chawn##22007
  accept Treebole Must Know##10829 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Tree Warden Chawn##22007
  accept Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Wildlord Antelarion##22127
  accept Death's Door##10910 |goto Blade's Edge Mountains 62.31,40.05
step
  note Kill 4 Felsworn Scalewing, 4 Felsworn Daggermaw, and 2 Fel Corrupters.
  kill Felsworn Scalewing##21123 |q 10753 |goto Blade's Edge Mountains 71.85,32.76
step
  note Mosswood the Ancient wants you to journey to Skald and plant Ironroot Seeds in three different mounds of Fertile Volcanic Soil and then return to him in Ruuan Weald.
  collect Fertile Volcanic Soil##185124 |q 10771 |goto Blade's Edge Mountains 71.66,22.35
step
  talk Watcher Moonshade##22386
  turnin Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 50.03,35.95
step
  talk Watcher Moonshade##22386
  accept Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 50.03,35.95
step
  note Eliminate Draaca Longtail, the leader of the wyrmcultists in Wyrmskull Tunnel. Report back to Watcher Moonshade at the Wyrmskull Tunnel in the Blade's Edge Mountains once you have done so.
  kill Draaca Longtail##22396 |q 10893 |goto Blade's Edge Mountains 45.19,32.49
step
  talk Dama Wildmane##20494
  turnin The Apprentice's Request##11047 |goto Shadowmoon Valley 29.09,29.46 |tip {turninat}Shadowmoon Valley
step
  talk Treebole##22215
  turnin Treebole Must Know##10829 |goto Blade's Edge Mountains 37.17,22.1
step
  talk Treebole##22215
  accept Exorcising the Trees##10830 |goto Blade's Edge Mountains 37.17,22.1
step
  talk Image of Commander Ameer##22919
  accept The Mark of the Nexus-King##10976 |goto Blade's Edge Mountains 52.85,14.99
step
  note Mosswood the Ancient wants you to kill 8 Scorch Imps and then return to him in Ruuan Weald.
  kill Scorch Imp##21021 |q 10770 |goto Blade's Edge Mountains 71.77,21.14
step
  talk Rocket-Chief Fuselage##19570
  turnin Out of This World Produce!##11036 |goto Netherstorm 32.73,64.96 |tip {turninat}Netherstorm
step
  talk Kronk##23253
  accept Banish the Demons##11026 |goto Blade's Edge Mountains 28.9,57.92
step
  talk Chu'a'lor##23233
  accept The Trouble Below##11057 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Skyguard Khatie##23335
  accept Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Chu'a'lor##23233
  accept A Special Thank You##11091 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Commander Keller##23334
  accept Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.38,52.68
step
  talk T'chali the Witch Doctor##21349
  accept They Stole Me Hookah and Me Brews!##10542 |goto Blade's Edge Mountains 44.97,72.31
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
  talk Dertrok##21496
  turnin The Stones of Vekh'nir##10565 |goto Blade's Edge Mountains 75.14,62.1
step
  talk Matron Varah##21088
  turnin Mok'Nathal Treats##10860 |goto Blade's Edge Mountains 76.09,60.31
step
  talk Taerek##21895
  turnin Silkwing Cocoons##10617 |goto Blade's Edge Mountains 75.87,61.43
step
  talk Silmara##21896
  turnin The Softest Wings##10618 |goto Blade's Edge Mountains 75.84,61.53
step
  talk Dertrok##21496
  accept Trial and Error##10566 |goto Blade's Edge Mountains 75.14,62.1
step
  talk Leoroxx##22004
  accept Understanding the Mok'Nathal##10846 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Evergrove Druid##22423
  turnin Death's Door##10910 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Evergrove Druid##22423
  accept Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  note To begin your understanding of the Mok'Nathal, slay Vekh, leader of the Vekh'nir arakkoa. Then, return to Leoroxx at Mok'Nathal Village in the Blade's Edge Mountains.
  kill Vekh##22305 |q 10846 |goto Blade's Edge Mountains 70.08,72.18
step
  talk Tor'chunk Twoclaws##21147
  turnin The Bladespire Threat##10503 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rokgah Bloodgrip##21311
  turnin Vision Guide##10525 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Tor'chunk Twoclaws##21147
  turnin Killing the Crawlers##10928 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Gor'drek##21117
  turnin The Encroaching Wilderness##10486 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Gor'drek##21117
  accept Dust from the Drakes##10487 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Tor'chunk Twoclaws##21147
  accept The Bloodmaul Ogres##10505 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rokgah Bloodgrip##21311
  accept The Thunderspike##10526 |goto Blade's Edge Mountains 52.8,58.96
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
  talk Wildlord Antelarion##22127
  turnin Mystery Mask##10812 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Timeon##21782
  turnin Creating the Pendant##10567 |goto Blade's Edge Mountains 62.16,39.11
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
  talk Wildlord Antelarion##22127
  accept Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 62.31,40.05
step
  note Venture out into the Ruuan Weald and slay 10 Wyrmcult Hewers, then return to Tree Warden Chawn at Evergrove in the Blade's Edge Mountains.
  kill Wyrmcult Hewer##21810 |q 10713 |goto Blade's Edge Mountains 60.82,35.23
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
  note Kill Grishna arakkoa to gain Understanding Ravenspeech for 2 minutes. While under the effects of the spell, you can find and receive the prophecy from the four shrines. Return when you have visited all four.
  kill [DNDProphecy 1 Quest Credit##22798 |q 10607 |goto Blade's Edge Mountains 39.01,17.25
step
  talk Image of Commander Ameer##22919
  turnin The Mark of the Nexus-King##10976 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Image of Commander Ameer##22919
  accept Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
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
  talk Aether-tech Apprentice##23473
  turnin Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.9,52.16
step
  talk Gahk##23300
  accept A Crystalforged Darkrune##11060 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Sky Commander Keller##23334
  accept To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
step
  talk T'chali the Witch Doctor##21349
  turnin They Stole Me Hookah and Me Brews!##10542 |goto Blade's Edge Mountains 44.97,72.31
step
  talk T'chali the Witch Doctor##21349
  accept Bladespire Kegger##10545 |goto Blade's Edge Mountains 44.97,72.31
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
  talk Evergrove Druid##22423
  turnin Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Evergrove Druid##22423
  accept Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Tor'chunk Twoclaws##21147
  turnin The Bloodmaul Ogres##10505 |goto Blade's Edge Mountains 51.94,58.41
step
  talk Rokgah Bloodgrip##21311
  turnin The Thunderspike##10526 |goto Blade's Edge Mountains 52.8,58.96
step
  talk Gor'drek##21117
  turnin Dust from the Drakes##10487 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Gor'drek##21117
  accept Protecting Our Own##10488 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Garm Wolfbrother##21950
  accept The Spirits Have Voices##10718 |goto Blade's Edge Mountains 52.75,59.04
step
  note In order to prove yourself to the Mok'Nathal, Leoroxx has ordered you to slay Gnosh Brognat, leader of the ogres at the Bladespire Outpost. Return to Leoroxx at Mok'Nathal Village in the Blade's Edge Mountains after you have done so, or do not return at all.
  kill Gnosh Brognat##20768 |q 10843 |goto Blade's Edge Mountains 57.14,54.49
step
  note Use Gor'drek's Ointment on 5 of the Thunderlord Dire Wolves to strengthen them and the defense of the Jagged Ridge. Then return to Gor'drek at Thunderlord Stronghold in the Blade's Edge Mountains.
  kill Dire Timber Wolf Trigger##21142 |q 10488 |goto Blade's Edge Mountains 50.53,63.63
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Timeon##21782
  turnin Ruuan Weald##10615 |goto Blade's Edge Mountains 62.16,39.11
step
  turnin Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 73.27,40.03
step
  talk Tree Warden Chawn##22007
  turnin ...and a Time for Action##10713 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Samia Inkling##21983
  turnin Poaching from Poachers##10717 |goto Blade's Edge Mountains 61.94,39.45
step
  talk Tree Warden Chawn##22007
  turnin Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 61.98,39.48
step
  talk Timeon##21782
  turnin Whispers of the Raven God##10607 |goto Blade's Edge Mountains 62.16,39.11
step
  talk Samia Inkling##21983
  accept Whelps of the Wyrmcult##10747 |goto Blade's Edge Mountains 61.94,39.45
step
  talk Tree Warden Chawn##22007
  accept Maxnar Must Die!##10748 |goto Blade's Edge Mountains 61.98,39.48
step
  note On behalf of the Cenarion Expedition druids of Evergrove, and the indigenous life of the Ruuan Weald, Tree Warden Chawn has asked you to slay Maxnar the Ashmaw. Return to him at Evergrove in the Blade's Edge Mountains after you have done so.
  kill Maxnar the Ashmaw##21389 |q 10748 |goto Blade's Edge Mountains 33.9,35.32
step
  talk Image of Commander Ameer##22919
  turnin Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Image of Commander Ameer##22919
  accept The Eye of Haramad##10982 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Gahk##23300
  turnin A Crystalforged Darkrune##11060 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Sky Commander Keller##23334
  turnin To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
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
  talk Evergrove Druid##22423
  turnin Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Evergrove Druid##22423
  accept The Hound-Master##10912 |goto Blade's Edge Mountains 63.52,65.29
step
  note The Evergrove Druid has told you that the final thing you must do is to slay Baelmon the Hound-Master. Afterward, return to Evergrove in the Blade's Edge Mountains, and inform Wildlord Antelarion of your success.
  kill Baelmon the Hound-Master##19747 |q 10912 |goto Blade's Edge Mountains 63.04,60.41
step
  note Leoroxx has challenged you to slay Dreadwing. Return to him at Mok'Nathal Village once you have managed to kill her.
  kill Dreadwing##21032 |q 10845 |goto Blade's Edge Mountains 65.37,78.13
step
  talk Rexxar##21984
  turnin The Spirits Have Voices##10718 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Gor'drek##21117
  turnin Protecting Our Own##10488 |goto Blade's Edge Mountains 52.37,57.94
step
  talk Rexxar##21984
  accept Whispers on the Wind##10614 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Mog'dorg the Wizened##22941
  turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Wildlord Antelarion##22127
  turnin The Hound-Master##10912 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Samia Inkling##21983
  turnin Whelps of the Wyrmcult##10747 |goto Blade's Edge Mountains 61.94,39.45
step
  talk Tree Warden Chawn##22007
  turnin Maxnar Must Die!##10748 |goto Blade's Edge Mountains 61.98,39.48
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
  talk Leoroxx##22004
  turnin Slay the Brood Mother##10845 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Spiritcaller Dohgar##22312
  turnin Spirit Calling##10853 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Leoroxx##22004
  turnin Whispers on the Wind##10614 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Leoroxx##22004
  accept Reunion##10709 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Spiritcaller Dohgar##22312
  accept Gather the Orbs##10859 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Rexxar##21984
  turnin Reunion##10709 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept On Spirit's Wings##10714 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Chu'a'lor##23233
  turnin Ogre Heaven##11009 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Chu'a'lor##23233
  accept The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk T'chali the Witch Doctor##21349
  turnin A Curse Upon Both of Your Clans!##10544 |goto Blade's Edge Mountains 44.97,72.31
step
  talk Spiritcaller Dohgar##22312
  turnin Gather the Orbs##10859 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Spiritcaller Dohgar##22312
  accept Inform Leoroxx!##10865 |goto Blade's Edge Mountains 74.91,60.47
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
  talk Chu'a'lor##23233
  turnin The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Torkus##23316
  accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Leoroxx##22004
  turnin Inform Leoroxx!##10865 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Leoroxx##22004
  accept There Can Be Only One Response##10867 |goto Blade's Edge Mountains 75.29,60.86
step
  talk Baron Sablemane##22103
  turnin Into the Churning Gulch##10715 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  accept Baron Sablemane's Poison##10749 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Torkus##23316
  turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Torkus##23316
  accept A Father's Duty##11061 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Chu'a'lor##23233
  accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Spiritcaller Dohgar##22312
  turnin There Can Be Only One Response##10867 |goto Blade's Edge Mountains 74.91,60.47
step
  talk Rexxar##21984
  turnin Baron Sablemane's Poison##10749 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Rexxar##21984
  accept The Smallest Creatures##10720 |goto Blade's Edge Mountains 51.82,58.35
step
  talk Tor'chunk Twoclaws##21147
  accept Crush the Bloodmaul Camp##10784 |goto Blade's Edge Mountains 51.94,58.41
step
  note Tor'chunk Twoclaws has asked you to slay 10 Bloodmaul Maulers and 5 Bloodmaul Warlocks. Afterward, return to him at Thunderlord Stronghold in the Blade's Edge Mountains.
  kill Bloodmaul Mauler##19993 |q 10784 |goto Blade's Edge Mountains 56.13,28.75
step
  note Use the Kodohide Drum at the Marmot Den. While controlling the Marmot, poison the three kegs in the Bloodmaul Camp. When that is completed, return to Rexxar at Thunderlord Stronghold in the Blade's Edge Mountains.
  kill [DNDGreen Spot Grog Keg Credit##22356 |q 10720 |goto Blade's Edge Mountains 55.28,26.0
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
  talk Chu'a'lor##23233
  accept Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Gahk##23300
  accept A Fel Whip For Gahk##11079 |goto Blade's Edge Mountains 28.48,58.08
step
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
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
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
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
