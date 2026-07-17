-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blade's Edge Mountains (66-70)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Netherstorm (68-70)",
}, [[
step
  note {fp}Amerun Leafshade
  goto Blade's Edge Mountains 37.82,61.4 |tip {vendor}
step
  talk Sentinel Moonwhisper##22488
  accept Killing the Crawlers##10927 |goto Blade's Edge Mountains 32.2,91.11
step
  talk Rina Moonspring##21066
  accept The Encroaching Wilderness##10455 |goto Blade's Edge Mountains 36.21,67.13
step
  talk Commander Skyshadow##21158
  accept The Bloodmaul Ogres##10502 |goto Blade's Edge Mountains 36.22,66.18
step
  talk Bronwyn Stouthammer##21197
  accept Into the Draenethyst Mine##10510 |goto Blade's Edge Mountains 37.41,65.04
step
  note Bronwyn Stouthammer has asked you to collect 5 Draenethyst Mine Crystals and then return to her at Sylvanaar in the Blade's Edge Mountains.
  collect 5 Draenethyst Mine Crystal##30315 |q 10510 |goto Blade's Edge Mountains 40.6,84.6 |tip {dropsfrom}Bloodmaul Drudger, Draenethyst Mine Crystal
step
  talk Borgrim Stouthammer##21151
  accept Strange Brew##10511 |goto Blade's Edge Mountains 37.4,64.66
step
  note Borgrim Stouthammer wants you to procure 11 Bloodmaul Brutebane Brew for him. Once you've done that, return it to him at Sylvanaar in the Blade's Edge Mountains.
  collect Bloodmaul Brutebane Brew##29443 |q 10511 |goto Blade's Edge Mountains 46.52,78.2 |tip {dropsfrom}Bloodmaul Brewmaster, Bloodmaul Brew Keg
step
  talk Daranelle##21469
  accept Malaise##10555 |goto Blade's Edge Mountains 37.07,65.61
step
  note Collect 18 Plucked Lashh'an Feathers, then read the Lashh'an Tome in the treetops of Veil Lashh.
  collect 18 Plucked Lashh'an Feather##30529 |q 10555 |goto Blade's Edge Mountains 35.63,75.2 |tip {dropsfrom}Lashh'an Talonite, Lashh'an Wing Guard, Lashh'an Windwalker
step
  click Wanted Poster##185035
  accept The Den Mother##10690 |goto Blade's Edge Mountains 36.61,67.29
step
  note Rina Moonspring wishes you to slay 12 Grovestalker Lynxes with all due haste and then return to her at Sylvanaar in the Blade's Edge Mountains.
  kill Grovestalker Lynx##21022 |q 10455 |goto Blade's Edge Mountains 39.17,71.16
step
  talk Chu'a'lor##23233
  accept The Trouble Below##11057 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Commander Keller##23334
  accept Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.38,52.68
step
  talk Vindicator Vuuleen##21277
  accept The Trappings of a Vindicator##10516 |goto Blade's Edge Mountains 44.01,51.83
step
  note Retrieve Vindicator Vuuleen's Blade and Vindicator Vuuleen's Shield. Then return them to Vindicator Vuuleen at Bladespire Hold in the Blade's Edge Mountains.
  collect Vindicator Vuuleen's Blade##30413 |q 10516 |goto Blade's Edge Mountains 38.34,52.38 |tip {dropsfrom}Droggam
step
  talk Mog'dorg the Wizened##22941
  turnin The Trouble Below##11057 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Chort##22995
  accept Mog'dorg the Wizened##10989 |goto Blade's Edge Mountains 55.43,45.22
step
  talk Mog'dorg the Wizened##22941
  accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  note Retrieve Grulloc's Dragon Skull and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Grulloc##20216 |goto Blade's Edge Mountains 60.92,47.61 |elite
  collect Grulloc's Dragon Skull##32379 |q 10995 |goto Blade's Edge Mountains 60.92,47.61
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
  talk Commander Haephus Stonewall##22149
  accept A Date with Dorgok##10795 |goto Blade's Edge Mountains 61.99,37.98
step
  talk Lieutenant Fairweather##22150
  accept Crush the Bloodmaul Camp!##10796 |goto Blade's Edge Mountains 61.99,37.94
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
  note Lieutenant Fairweather has tasked you with slaying 10 Bloodmaul Maulers and 5 Bloodmaul Warlocks. Afterward, return to her at Evergrove in the Blade's Edge Mountains.
  kill Bloodmaul Mauler##19993 |q 10796 |goto Blade's Edge Mountains 56.13,28.75
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
  note Commander Haephus Stonewall has asked you to kill Dorgok at Bloodmaul Camp. Return to him at Evergrove in the Blade's Edge Mountains after you have done the deed.
  kill Dorgok##20753 |q 10795 |goto Blade's Edge Mountains 55.14,24.04
step
  talk Nickwinkle the Metro-Gnome##21755
  accept Crystal Clear##10608 |goto Blade's Edge Mountains 60.23,68.94
step
  talk Fizit "Doc" Clocktock##21110
  accept What Came First, the Drake or the Egg?##10609 |goto Blade's Edge Mountains 60.98,68.11
step
  note Collect 3 Proto-Nether Drake Essences, 3 Adolescent Drake Essences and 3 Mature Drake Essences. Return with them to Fizit "Doc" Clocktock at Toshley's Station in the Blade's Edge Mountains.
  collect 3 Proto-Nether Drake Essence##30743 |q 10609 |goto Blade's Edge Mountains 60.98,68.11 |tip {dropsfrom}Proto-Nether Drake
step
  talk Bossi Pentapiston##21112
  accept Parts for the Rocket-Chief##11040 |goto Blade's Edge Mountains 60.78,69.07
step
  talk Rip Pedalslam##21107
  accept Building a Better Gryphon##11043 |goto Blade's Edge Mountains 61.15,70.44
step
  note Nickwinkle the Metro-Gnome wants you to slay 10 Crystal Flayers and then return to him at Toshley's Station in the Blade's Edge Mountains.
  kill Crystal Flayer##21189 |q 10608 |goto Blade's Edge Mountains 62.13,75.78
step
  note Sentinel Moonwhisper at the tunnel between Zangarmarsh and Blade's Edge Mountains wants you to kill 6 Cavern Crawlers and report to Commander Skyshadow in Sylvanaar.
  kill Cavern Crawler##22044 |q 10927 |goto Blade's Edge Mountains 51.45,87.88
step
  note Kill Rema and then inform Commander Skyshadow at Sylvanaar in the Blade's Edge Mountains.
  kill Rema##21956 |q 10690 |goto Blade's Edge Mountains 51.62,74.98
step
  talk Commander Skyshadow##21158
  turnin The Bloodmaul Ogres##10502 |goto Blade's Edge Mountains 36.22,66.18
step
  talk Bronwyn Stouthammer##21197
  turnin Into the Draenethyst Mine##10510 |goto Blade's Edge Mountains 37.41,65.04
step
  talk Borgrim Stouthammer##21151
  turnin Strange Brew##10511 |goto Blade's Edge Mountains 37.4,64.66
step
  talk Rocket-Chief Fuselage##19570
  turnin Parts for the Rocket-Chief##11040 |goto Netherstorm 32.73,64.96 |tip {turninat}Netherstorm
step
  talk Commander Skyshadow##21158
  turnin Killing the Crawlers##10927 |goto Blade's Edge Mountains 36.22,66.18
step
  turnin Malaise##10555 |goto Blade's Edge Mountains 34.44,77.71
step
  talk Commander Skyshadow##21158
  turnin The Den Mother##10690 |goto Blade's Edge Mountains 36.22,66.18
step
  talk Rina Moonspring##21066
  turnin The Encroaching Wilderness##10455 |goto Blade's Edge Mountains 36.21,67.13
step
  talk Rina Moonspring##21066
  accept Marauding Wolves##10456 |goto Blade's Edge Mountains 36.21,67.13
step
  note Rina Moonspring has asked you to bring her 4 Thunderlord Dire Wolf Tails. After doing so, return to her at Sylvanaar in the Blade's Edge Mountains.
  collect Thunderlord Dire Wolf Tail##30184 |q 10456 |goto Blade's Edge Mountains 51.32,67.66 |tip {dropsfrom}Thunderlord Dire Wolf
step
  talk Commander Skyshadow##21158
  accept The Bladespire Ogres##10504 |goto Blade's Edge Mountains 36.22,66.18
step
  talk Borgrim Stouthammer##21151
  accept Getting the Bladespire Tanked##10512 |goto Blade's Edge Mountains 37.4,64.66
step
  note Take the Bloodmaul Brutebane Keg and use it in an attempt to get 5 Bladespire Ogres drunk. If you're successful, return to Borgrim at Sylvanaar in the Blade's Edge Mountains.
  get Getting the Bladespire Tanked |q 10512 |goto Blade's Edge Mountains 37.4,64.66
step
  click Lashh'an Tome##184825
  accept Scratches##10556 |goto Blade's Edge Mountains 34.44,77.71
step
  note Use the Fistful of Feathers on the Lashh'an Spell Circle, then return to Daranelle at Sylvanaar before the kaliri spirit fades.
  get Scratches |q 10556 |goto Blade's Edge Mountains 34.44,77.71
step
  talk Aether-tech Apprentice##23473
  turnin Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.9,52.16
step
  talk Vindicator Vuuleen##21277
  turnin The Trappings of a Vindicator##10516 |goto Blade's Edge Mountains 44.01,51.83
step
  talk Brunn Flamebeard##20510
  turnin Building a Better Gryphon##11043 |goto Shadowmoon Valley 37.61,56.05 |tip {turninat}Shadowmoon Valley
step
  talk Vindicator Vuuleen##21277
  accept Gorr'Dim, Your Time Has Come...##10517 |goto Blade's Edge Mountains 44.01,51.83
step
  note Vindicator Vuuleen has asked you to kill Gorr'Dim, leader of the Bladespire Hold ogres. Once you have done so, return to her at Bladespire Hold in the Blade's Edge Mountains.
  kill Gorr'Dim##20732 |q 10517 |goto Blade's Edge Mountains 38.94,48.67
step
  talk Mog'dorg the Wizened##22941
  turnin Mog'dorg the Wizened##10989 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  turnin Even Gronn Have Standards##10997 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  note You must retrieve Vim'gol's Vile Grimoire. Deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Vim'gol's Vile Grimoire##32358 |q 10998 |goto Blade's Edge Mountains 55.49,44.86
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
  talk Commander Haephus Stonewall##22149
  turnin A Date with Dorgok##10795 |goto Blade's Edge Mountains 61.99,37.98
step
  talk Lieutenant Fairweather##22150
  turnin Crush the Bloodmaul Camp!##10796 |goto Blade's Edge Mountains 61.99,37.94
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
  kill Dorgok##20753 |goto Blade's Edge Mountains 55.14,24.04 |tip Loot the quest item here — it starts the quest.
  accept Favor of the Gronn##10797 |goto Blade's Edge Mountains 55.14,24.04
step
  talk Image of Commander Ameer##22919
  accept Stasis Chambers of the Mana-Tombs##10977 |goto Blade's Edge Mountains 52.85,14.99
step
  talk Nickwinkle the Metro-Gnome##21755
  turnin Crystal Clear##10608 |goto Blade's Edge Mountains 60.23,68.94
step
  talk Fizit "Doc" Clocktock##21110
  turnin What Came First, the Drake or the Egg?##10609 |goto Blade's Edge Mountains 60.98,68.11
step
  talk Commander Skyshadow##21158
  turnin The Bladespire Ogres##10504 |goto Blade's Edge Mountains 36.22,66.18
step
  talk Borgrim Stouthammer##21151
  turnin Getting the Bladespire Tanked##10512 |goto Blade's Edge Mountains 37.4,64.66
step
  talk Daranelle##21469
  turnin Scratches##10556 |goto Blade's Edge Mountains 37.07,65.61
step
  talk Rina Moonspring##21066
  turnin Marauding Wolves##10456 |goto Blade's Edge Mountains 36.21,67.13
step
  talk Rina Moonspring##21066
  accept Protecting Our Own##10457 |goto Blade's Edge Mountains 36.21,67.13
step
  note Use Rina's Bough on 5 of the Grove Seedlings to summon forth defenses for the Living Grove. Then return to Rina Moonspring at Sylvanaar in the Blade's Edge Mountains.
  collect Grove Seedling##184631 |q 10457 |goto Blade's Edge Mountains 38.57,71.16
step
  talk Vindicator Vuuleen##21277
  turnin Gorr'Dim, Your Time Has Come...##10517 |goto Blade's Edge Mountains 44.01,51.83
step
  talk Vindicator Vuuleen##21277
  accept Planting the Banner##10518 |goto Blade's Edge Mountains 44.01,51.83
step
  note Use the Bladespire Banner atop the Northmaul Tower to lure Gurn Grubnosh. Deliver the banner and the Helm of Gurn Grubnosh to Commander Skyshadow at Sylvanaar in the Blade's Edge Mountains.
  collect Bladespire Clan Banner##30416 |q 10518 |goto Blade's Edge Mountains 41.29,57.86 |tip {dropsfrom}Bladespire Champion
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
  talk Commander Haephus Stonewall##22149
  turnin Favor of the Gronn##10797 |goto Blade's Edge Mountains 61.99,37.98
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
  talk Commander Haephus Stonewall##22149
  accept Pay the Baron a Visit##10798 |goto Blade's Edge Mountains 61.99,37.98
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
  talk Commander Skyshadow##21158
  turnin Planting the Banner##10518 |goto Blade's Edge Mountains 36.22,66.18
step
  talk Rina Moonspring##21066
  turnin Protecting Our Own##10457 |goto Blade's Edge Mountains 36.21,67.13
step
  talk Rina Moonspring##21066
  accept A Dire Situation##10506 |goto Blade's Edge Mountains 36.21,67.13
step
  talk Commander Skyshadow##21158
  accept Where Did Those Darn Gnomes Go?##10580 |goto Blade's Edge Mountains 36.22,66.18
step
  talk Baron Sablemane##22103
  turnin Pay the Baron a Visit##10798 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Baron Sablemane##22103
  accept Into the Churning Gulch##10799 |goto Blade's Edge Mountains 53.25,41.18
step
  note Baron Sablemane has told you to bring him 7 Crust Burster Venom Glands. Return to him at the Circle of Blood in the Blade's Edge Mountains once you have procured them.
  collect Crust Burster Venom Gland##31132 |q 10799 |goto Blade's Edge Mountains 48.95,44.76 |tip {dropsfrom}Greater Crust Burster, Young Crust Burster, Bone Crawler
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
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
  talk R-3D0##21690
  turnin Where Did Those Darn Gnomes Go?##10580 |goto Blade's Edge Mountains 55.11,72.79
step
  talk R-3D0##21690
  accept Follow the Breadcrumbs##10581 |goto Blade's Edge Mountains 55.11,72.79
step
  note Rina Moonspring wants you to take her Diminution Powder and apply it to 5 of the Bloodmaul Dire Wolves, which can be found at Bloodmaul Outpost and in Bloodmaul Ravine. After doing so, return to her at Sylvanaar in the Blade's Edge Mountains.
  kill Bloodmaul Dire Wolf Trigger##21176 |q 10506 |goto Blade's Edge Mountains 45.08,76.73
step
  talk Rina Moonspring##21066
  turnin A Dire Situation##10506 |goto Blade's Edge Mountains 36.21,67.13
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
  talk Baron Sablemane##22103
  turnin Into the Churning Gulch##10799 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  accept Goodnight, Gronn##10800 |goto Blade's Edge Mountains 53.25,41.18
step
  note Baron Sablemane wants you to steal Grulloc's Sack, and then return it to him at the Circle of Blood in the Blade's Edge Mountains.
  collect Grulloc's Sack##31349 |q 10800 |goto Blade's Edge Mountains 60.89,47.78
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
  talk Toshley##21691
  turnin Follow the Breadcrumbs##10581 |goto Blade's Edge Mountains 60.53,68.97
step
  talk Toshley##21691
  accept Picking Up Some Power Converters##10584 |goto Blade's Edge Mountains 60.53,68.97
step
  note Toshley has asked you to take the Protovoltaic Magneto Collector and gather up 5 Electromentals. Return to him at Toshley's Station in the Blade's Edge Mountains after you have done so.
  kill Encased Electromental##21731 |q 10584
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
  talk Baron Sablemane##22103
  turnin Goodnight, Gronn##10800 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  accept It's a Trap!##10801 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Commander Haephus Stonewall##22149
  turnin It's a Trap!##10801 |goto Blade's Edge Mountains 61.99,37.98
step
  talk Wildlord Antelarion##22127
  turnin You're Fired!##10821 |goto Blade's Edge Mountains 62.31,40.05
step
  talk Commander Haephus Stonewall##22149
  accept Gorgrom the Dragon-Eater##10802 |goto Blade's Edge Mountains 61.99,37.98
step
  note Go to Boulder'mok and collect 3 Grisly Totems from the Boulder'mok ogres. Use Sablemane's Trap at Gorgrom's Altar to summon and kill Gorgrom the Dragon-Eater.
  get Gorgrom the Dragon-Eater |q 10802 |goto Blade's Edge Mountains 61.99,37.98
step
  talk Lieutenant Fairweather##22150
  accept Slaughter at Boulder'mok##10803 |goto Blade's Edge Mountains 61.99,37.94
step
  talk Wildlord Antelarion##22127
  accept Death's Door##10910 |goto Blade's Edge Mountains 62.31,40.05
step
  note Slaughter 5 Boulder'mok Brutes and 3 Boulder'mok Shaman, and then return to Lieutenant Fairweather at Evergrove in the Blade's Edge Mountains.
  kill Boulder'mok Brute##21046 |q 10803 |goto Blade's Edge Mountains 30.54,22.6
step
  talk Evergrove Druid##22423
  turnin Death's Door##10910 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Toshley##21691
  turnin Picking Up Some Power Converters##10584 |goto Blade's Edge Mountains 60.53,68.97
step
  talk Dizzy Dina##21824
  accept Ridgespine Menace##10620 |goto Blade's Edge Mountains 60.4,68.76
step
  talk Razak Ironsides##21118
  accept Cutting Your Teeth##10632 |goto Blade's Edge Mountains 60.15,68.21
step
  note Razak Ironsides has asked you to gather up 5 Extra Sharp Daggermaw Teeth. Return them to him at Toshley's Station in the Blade's Edge Mountains.
  collect Extra Sharp Daggermaw Tooth##30798 |q 10632 |goto Blade's Edge Mountains 66.25,54.79 |tip {dropsfrom}Daggermaw Lashtail
step
  talk Toshley##21691
  accept Ride the Lightning##10657 |goto Blade's Edge Mountains 60.53,68.97
step
  note Toshley wants you to use the Repolarized Magneto Sphere to absorb 25 lightning strikes from the Scalewing Serpents. As well, collect 5 Scalewing Lightning Glands. Then, deliver them back to him at Toshley's Station in the Blade's Edge Mountains.
  collect 5 Scalewing Lightning Gland##30849 |q 10657 |goto Blade's Edge Mountains 68.05,66.63 |tip {dropsfrom}Scalewing Serpent
step
  talk Evergrove Druid##22423
  accept Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  note The Evergrove Druid has asked you to collect 5 Fel Cannonballs. Once you have done so, use the Druid Signal to call to the Evergrove Druid inside of Death's Door at the Blade's Edge Mountains.
  collect 5 Fel Cannonball##31757 |q 10904 |goto Blade's Edge Mountains 64.01,71.7 |tip {dropsfrom}Deathforge Over-Smith, Deathforge Technician, Death's Watch
step
  note Dizzy Dina wants you to kill 10 Ridgespine Stalkers. After you have done so, return to her at Toshley's Station in the Blade's Edge Mountains.
  kill Ridgespine Stalker##20714 |q 10620 |goto Blade's Edge Mountains 67.33,62.98
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
  talk Commander Haephus Stonewall##22149
  turnin Gorgrom the Dragon-Eater##10802 |goto Blade's Edge Mountains 61.99,37.98
step
  talk Lieutenant Fairweather##22150
  turnin Slaughter at Boulder'mok##10803 |goto Blade's Edge Mountains 61.99,37.94
step
  talk Commander Haephus Stonewall##22149
  accept Baron Sablemane Has Requested Your Presence##10818 |goto Blade's Edge Mountains 61.99,37.98
step
  talk Razak Ironsides##21118
  turnin Cutting Your Teeth##10632 |goto Blade's Edge Mountains 60.15,68.21
step
  talk Evergrove Druid##22423
  turnin Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Toshley##21691
  turnin Ride the Lightning##10657 |goto Blade's Edge Mountains 60.53,68.97
step
  talk Dizzy Dina##21824
  turnin Ridgespine Menace##10620 |goto Blade's Edge Mountains 60.4,68.76
step
  talk Dizzy Dina##21824
  accept More than a Pound of Flesh##10671 |goto Blade's Edge Mountains 60.4,68.76
step
  note Dizzy Dina has asked you to acquire 5 Ether-Energized Flesh and return them to her at Toshley's Station in the Blade's Edge Mountains.
  collect 5 Ether-Energized Flesh##30840 |q 10671 |goto Blade's Edge Mountains 66.73,43.91 |tip {dropsfrom}Fiendling Flesh Beast
step
  talk Toshley##21691
  accept Trapping the Light Fantastic##10674 |goto Blade's Edge Mountains 60.53,68.97
step
  note Toshley would like you to use the Light Trap to catch 15 Razaani Light Orbs. Return to him at Toshley's Station in the Blade's Edge Mountains after you have done so.
  get Trapping the Light Fantastic |q 10674 |goto Blade's Edge Mountains 60.53,68.97
step
  talk Evergrove Druid##22423
  accept Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  note Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use them to destroy both the South Warp-Gate and the North Warp-Gate. Then, use the Druid Signal to call out to an Evergrove Druid to report your success.
  get Fire At Will! |q 10911 |goto Blade's Edge Mountains 63.52,65.29
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
  talk Baron Sablemane##22103
  turnin Baron Sablemane Has Requested Your Presence##10818 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  accept Massacre at Gruul's Lair##10805 |goto Blade's Edge Mountains 53.25,41.18
step
  note Baron Sablemane has tasked you and your friends with the deaths of 10 Bladespire Enforcers, 5 Bladespire Battlemages, 5 Bladespire Ravagers and their leader, Fingrom. When you have managed this feat, return to him at the Circle of Blood in the Blade's Edge Mountains.
  kill Bladespire Enforcer##19997 |q 10805 |goto Blade's Edge Mountains 65.59,21.69 |elite
step
  talk Evergrove Druid##22423
  turnin Fire At Will!##10911 |goto Blade's Edge Mountains 63.52,65.29
step
  talk Toshley##21691
  turnin Trapping the Light Fantastic##10674 |goto Blade's Edge Mountains 60.53,68.97
step
  talk Dizzy Dina##21824
  turnin More than a Pound of Flesh##10671 |goto Blade's Edge Mountains 60.4,68.76
step
  talk Toshley##21691
  accept Show Them Gnome Mercy!##10675 |goto Blade's Edge Mountains 60.53,68.97
step
  note Toshley wants you to retrieve the Collection of Souls and return it to him at Toshley's Station in the Blade's Edge Mountains.
  collect Collection of Souls##30890 |q 10675 |goto Blade's Edge Mountains 60.53,68.97
step
  talk Evergrove Druid##22423
  accept The Hound-Master##10912 |goto Blade's Edge Mountains 63.52,65.29
step
  note The Evergrove Druid has told you that the final thing you must do is to slay Baelmon the Hound-Master. Afterward, return to Evergrove in the Blade's Edge Mountains, and inform Wildlord Antelarion of your success.
  kill Baelmon the Hound-Master##19747 |q 10912 |goto Blade's Edge Mountains 63.04,60.41 |elite
step
  talk Baron Sablemane##22103
  turnin Massacre at Gruul's Lair##10805 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Toshley##21691
  turnin Show Them Gnome Mercy!##10675 |goto Blade's Edge Mountains 60.53,68.97
step
  talk Wildlord Antelarion##22127
  turnin The Hound-Master##10912 |goto Blade's Edge Mountains 62.31,40.05
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
  talk Baron Sablemane##22103
  accept Showdown##10806 |goto Blade's Edge Mountains 53.25,41.18
step
  talk Baron Sablemane##22103
  turnin Showdown##10806 |goto Blade's Edge Mountains 53.25,41.18
step
  note {travel}Netherstorm
  goto Netherstorm 31.36,66.15
]])
