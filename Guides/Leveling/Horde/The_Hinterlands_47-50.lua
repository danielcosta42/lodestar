-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Hinterlands (47-50)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Searing Gorge (48-50)",
	rev = "f4792cd5",
}, [[
step
  ding 46
step
  talk Oran Snakewrithe##7825
  accept Lines of Communication##2995 |goto Undercity 73.06,32.85
step
  click Venom Bottle##142702
  accept Venom Bottles##2933 |goto The Hinterlands 23.54,58.8
step
  only completed(650)
  talk Gilveradin Sunchaser##7801
  accept A Sticky Situation##77 |goto The Hinterlands 26.71,48.59
step
  note Oran Snakewrithe in Undercity wants you to travel to the Hinterlands and burn the Highvale Records, Highvale Report, and Highvale Notes.
  click Highvale Notes##144072 |q 2995/2 |goto The Hinterlands 29.63,48.66
  click Highvale Report##144073 |q 2995/3 |goto The Hinterlands 28.56,46.05
  click Highvale Records##144071 |q 2995 |goto The Hinterlands 31.99,46.82
step
  talk Rin'ji##7780
  accept Rin'ji is Trapped!##2742 |goto The Hinterlands 30.73,46.9
step
  note Escort Rin'ji out of the Quel'Danil Lodge, then find his hidden secret at the Overlook Cliffs to the east.
  goto The Hinterlands 34.58,56.33 |tip Escort Rin'ji to safety
step
  only completed(650)
  note Recover 10 bottles of Hinterlands Honey Ripple from the crates located around the abandoned Horde base in Skulk Rock.
  collect Hinterlands Honey Ripple##8684 |q 77 |goto The Hinterlands 57.27,41.09 |tip {dropsfrom}Horde Supply Crate
step
  turnin Rin'ji is Trapped!##2742 |goto The Hinterlands 86.3,59.01
step
  click Rin'ji's Secret##142127
  accept Rin'ji's Secret##2782 |goto The Hinterlands 86.3,59.01
step
  kill Saltwater Snapjaw##2505 |goto The Hinterlands 81.48,60.46 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-09/HL!##485 |goto The Hinterlands 81.48,60.46
step
  note {fp}Gorkas
  goto The Hinterlands 81.7,81.76 |tip {vendor}
step
  only level>=48
  talk Katoom the Angler##14740
  accept Gammerita, Mon!##7816 |goto The Hinterlands 80.33,81.54
step
  talk Huntsman Markhor##14741
  accept Stalking the Stalkers##7828 |goto The Hinterlands 79.16,79.53
step
  talk Huntsman Markhor##14741
  accept Hunt the Savages##7829 |goto The Hinterlands 79.16,79.53
step
  talk Huntsman Markhor##14741
  accept Avenging the Fallen##7830 |goto The Hinterlands 79.16,79.53
step
  talk Smith Slagtree##14737
  accept Vilebranch Hooligans##7839 |goto The Hinterlands 77.23,80.13
step
  talk Otho Moji'ko##14738
  accept Message to the Wildhammer##7841 |goto The Hinterlands 79.38,79.08
step
  talk Mystic Yayo'jin##14739
  accept Cannibalistic Cousins##7844 |goto The Hinterlands 78.8,78.25
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 10 Silvermane Stalkers and 10 Silvermane Howlers. Return to him once the task is complete.
  kill Silvermane Stalker##2926 |q 7828/1 |goto The Hinterlands 68,52.86
  kill Silvermane Howler##2925 |q 7828 |goto The Hinterlands 43.97,61.76
step
  note Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree's Lost Tools. Return to him once this task is complete.
  collect Slagtree's Lost Tools##19033 |q 7839 |goto The Hinterlands 66.4,44.8
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 20 Savage Owlbeasts. Return to him once the task is complete.
  kill Savage Owlbeast##2929 |q 7829 |goto The Hinterlands 58.4,50.6
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill a Razorbeak Skylord and retrieve its Skylord Plume. Return to him once the task is complete.
  collect Skylord Plume##19025 |q 7830 |goto The Hinterlands 60.4,49.8 |tip {dropsfrom}Razorbeak Skylord
step
  note Mystic Yayo'jin at Revantusk Village in the Hinterlands wants you to kill 30 Vilebranch Scalpers and 15 Vilebranch Soothsayers. Return to her when this task is complete.
  kill Vilebranch Scalper##4466 |q 7844/1 |goto The Hinterlands 53.11,40.14
  kill Vilebranch Soothsayer##4467 |q 7844 |goto The Hinterlands 48.04,65.62
step
  note Take the distress beacon to Oglethorpe's homing robot at the head of the river in the Hinterlands, near Skulk Rock.
  talk Homing Robot OOX-09/HL##7806
  turnin Find OOX-09/HL!##485 |goto The Hinterlands 49.35,37.66
step
  talk Homing Robot OOX-09/HL##7806
  accept Rescue OOX-09/HL!##836 |goto The Hinterlands 49.35,37.66
step
  note Escort OOX-09/HL to the shoreline beyond Overlook Cliff, then report to Oglethorpe Obnoticus in Booty Bay.
  goto The Hinterlands 79.14,61.36 |tip Escort OOX-09/HL to the shoreline beyond Overlook Cliff
step
  only completed(650)
  talk Gilveradin Sunchaser##7801
  turnin A Sticky Situation##77 |goto The Hinterlands 26.71,48.59
step
  only completed(650)
  talk Gilveradin Sunchaser##7801
  accept Ripple Delivery##81 |goto The Hinterlands 26.71,48.59
step
  note Otho Moji'ko at Revantusk Village in the Hinterlands wants you to slaughter 15 Highvale Outrunners, 15 Highvale Scouts, 15 Highvale Marksman and 15 Highvale Rangers. Return to him when this task is complete.
  kill Highvale Ranger##2694 |q 7841/3 |goto The Hinterlands 30.97,47.46
  kill Highvale Marksman##2693 |q 7841/4 |goto The Hinterlands 31.53,47.46
  kill Highvale Scout##2692 |q 7841/1 |goto The Hinterlands 31.92,49.51
  kill Highvale Outrunner##2691 |q 7841 |goto The Hinterlands 33.04,51.52
step
  only completed(1429)
  talk Atal'ai Exile##5598
  accept Return to Fel'Zerul##1444 |goto The Hinterlands 33.75,75.21
step
  talk Huntsman Markhor##14741
  turnin Stalking the Stalkers##7828 |goto The Hinterlands 79.16,79.53
step
  talk Huntsman Markhor##14741
  turnin Hunt the Savages##7829 |goto The Hinterlands 79.16,79.53
step
  talk Huntsman Markhor##14741
  turnin Avenging the Fallen##7830 |goto The Hinterlands 79.16,79.53
step
  talk Smith Slagtree##14737
  turnin Vilebranch Hooligans##7839 |goto The Hinterlands 77.23,80.13
step
  talk Otho Moji'ko##14738
  turnin Message to the Wildhammer##7841 |goto The Hinterlands 79.38,79.08
step
  talk Mystic Yayo'jin##14739
  turnin Cannibalistic Cousins##7844 |goto The Hinterlands 78.8,78.25
step
  talk Otho Moji'ko##14738
  accept Another Message to the Wildhammer##7842 |goto The Hinterlands 79.38,79.08
step
  talk Lard##14731
  accept Lard Lost His Lunch##7840 |goto The Hinterlands 78.14,81.38
step
  talk Katoom the Angler##14740
  accept Snapjaws, Mon!##7815 |goto The Hinterlands 80.33,81.54
step
  talk Huntsman Markhor##14741
  accept Separation Anxiety##7849 |goto The Hinterlands 79.16,79.53
step
  talk Primal Torntusk##14736
  accept Dark Vessels##7850 |goto The Hinterlands 78.2,81.18
step
  note Primal Torntusk at Revantusk Village in the Hinterlands wants you to recover 10 Vessels of Tainted Blood from Jintha'alor. Return to Primal Torntusk when this task is complete.
  collect 10 Vessel of Tainted Blood##19071 |q 7850 |goto The Hinterlands 64.17,72.21
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to recover his twin brother's remains. Find and return Huntsman Malkhor's Skull and Huntsman Malkhor's Bones to Huntsman Markhor.
  collect Huntsman Malkhor's Bones##19070 |q 7849/2 |goto The Hinterlands 62.11,75.35 |tip {dropsfrom}Pile of Bones
  collect Huntsman Malkhor's Skull##19069 |q 7849 |goto The Hinterlands 58.56,64.76 |tip {dropsfrom}Pile of Skulls
step
  note Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill 15 Saltwater Snapjaw turtles. Return to him when you have completed this task.
  kill Saltwater Snapjaw##2505 |q 7815 |goto The Hinterlands 81.48,60.46
step
  only haveq(7816)
  note Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill Gammerita and retrieve Katoom's Best Lure from her corpse.
  kill Gammerita##7977 |q 7816 |goto The Hinterlands 80.4,58.23 |elite
  collect Katoom's Best Lure##19023 |q 7816 |goto The Hinterlands 80.4,58.23
step
  note Lard at Revantusk Village in the Hinterlands wants you to find Lard's Lunch. Return to him when this task is complete.
  collect Lard's Lunch##19034 |q 7840 |goto The Hinterlands 84.6,41.2 |tip {dropsfrom}Vilebranch Kidnapper, Lard's Picnic Basket
step
  note Otho Moji'ko at Revantusk Village in the Hinterlands wants you to bring him 10 Long Elegant Feathers from the gryphons that inhabit the Hinterlands. Return to him once this task is complete.
  collect 10 Long Elegant Feather##4589 |q 7842 |goto The Hinterlands 31.13,58.54 |tip {dropsfrom}Witherbark Hideskinner, Trained Razorbeak, Razorbeak Gryphon
step
  talk Katoom the Angler##14740
  turnin Snapjaws, Mon!##7815 |goto The Hinterlands 80.33,81.54
step
  only haveq(7816)
  talk Katoom the Angler##14740
  turnin Gammerita, Mon!##7816 |goto The Hinterlands 80.33,81.54
step
  talk Lard##14731
  turnin Lard Lost His Lunch##7840 |goto The Hinterlands 78.14,81.38
step
  talk Otho Moji'ko##14738
  turnin Another Message to the Wildhammer##7842 |goto The Hinterlands 79.38,79.08
step
  talk Huntsman Markhor##14741
  turnin Separation Anxiety##7849 |goto The Hinterlands 79.16,79.53
step
  talk Primal Torntusk##14736
  turnin Dark Vessels##7850 |goto The Hinterlands 78.2,81.18
step
  talk Otho Moji'ko##14738
  accept The Final Message to the Wildhammer##7843 |goto The Hinterlands 79.38,79.08
step
  talk Primal Torntusk##14736
  accept Kidnapped Elder Torntusk!##7845 |goto The Hinterlands 78.2,81.18
step
  only level>=51
  click Call to Arms!##179913
  accept Wanted: Vile Priestess Hexx and Her Minions##7861 |goto The Hinterlands 79.08,78.99
step
  only level>=51
  click Call to Arms!##179913
  accept Job Opening: Guard Captain of Revantusk Village##7862 |goto The Hinterlands 79.08,78.99
step
  only haveq(7862)
  note You have been tasked with the decimation of 20 Vilebranch Berserkers, 20 Vilebranch Shadow Hunters, 20 Vilebranch Blood Drinkers, and 20 Vilebranch Soul Eaters.
  kill Vilebranch Blood Drinker##2646 |q 7862/3 |goto The Hinterlands 62.93,77.78 |elite
  kill Vilebranch Shadow Hunter##2645 |q 7862/2 |goto The Hinterlands 63.18,73.02 |elite
  kill Vilebranch Berserker##2643 |q 7862/1 |goto The Hinterlands 64.22,71.67 |elite
  kill Vilebranch Soul Eater##2647 |q 7862 |goto The Hinterlands 61.4,72.85 |elite
step
  note Primal Torntusk at Revantusk Village in the Hinterlands wants you to rescue her mate, Elder Torntusk, from Jintha'alor.
  talk Elder Torntusk##14757
  turnin Kidnapped Elder Torntusk!##7845 |goto The Hinterlands 59.69,77.84
step
  only level>=51
  talk Elder Torntusk##14757
  accept Recover the Key!##7846 |goto The Hinterlands 59.69,77.84
step
  only haveq(7861)
  note You have been ordered to slay Vile Priestess Hexx and 20 Vilebranch Aman'zasi Guards. See Primal Torntusk at Revantusk Village in the Hinterlands once this task is complete.
  kill Vile Priestess Hexx##7995 |q 7861/1 |goto The Hinterlands 59.47,78.26 |elite
  kill Vilebranch Aman'zasi Guard##2648 |q 7861 |goto The Hinterlands 57.66,81.51 |elite
step
  only haveq(7846)
  note Elder Torntusk at Jintha'alor wants you to kill Hitah'ya the Keeper to get the Shackle Key to his bindings. Return to Elder Torntusk when you have recovered the key.
  kill Hitah'ya the Keeper##10802 |q 7846 |goto The Hinterlands 57.32,86.64 |elite
  collect Shackle Key##19064 |q 7846 |goto The Hinterlands 57.32,86.64
step
  only haveq(7846)
  talk Elder Torntusk##14757
  turnin Recover the Key!##7846 |goto The Hinterlands 59.69,77.84
step
  only completed(7846)
  talk Elder Torntusk##14757
  accept Return to Primal Torntusk##7847 |goto The Hinterlands 59.69,77.84
step
  note Otho Moji'ko at Revantusk Village in the Hinterlands wants you to travel to Aerie Peak in the western region of the Hinterlands and place the Final Message to the Wildhammer by the well in the center of town. Return to him once this task is complete.
  goto The Hinterlands 14.34,48.07 |tip Message to the Wildhammer Delivered
step
  talk Otho Moji'ko##14738
  turnin The Final Message to the Wildhammer##7843 |goto The Hinterlands 79.38,79.08
step
  only haveq(7847)
  note Elder Torntusk at Jintha'alor wants you to return to Primal Torntusk at Revantusk Village with news of his rescue.
  talk Primal Torntusk##14736
  turnin Return to Primal Torntusk##7847 |goto The Hinterlands 78.2,81.18
step
  only haveq(7861)
  talk Primal Torntusk##14736
  turnin Wanted: Vile Priestess Hexx and Her Minions##7861 |goto The Hinterlands 78.2,81.18
step
  only haveq(7862)
  talk Primal Torntusk##14736
  turnin Job Opening: Guard Captain of Revantusk Village##7862 |goto The Hinterlands 78.2,81.18
step
  note Bring a Venom Bottle to an apothecary in Tarren Mill.
  talk Apothecary Lydon##2216
  turnin Venom Bottles##2933 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Apothecary Lydon##2216
  accept Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(1429)
  note Return to Fel'Zerul in Stonard.
  talk Fel'zerul##1443
  turnin Return to Fel'Zerul##1444 |goto Swamp of Sorrows 47.93,54.78 |tip {turninat}Swamp of Sorrows
step
  talk Oran Snakewrithe##7825
  turnin Lines of Communication##2995 |goto Undercity 73.06,32.85 |tip {turninat}Undercity
step
  note Oran Snakewrithe, a well known scholar on matters concerning the Witherbark trolls, may be able to decipher the tablet. She is known to reside within the Magic Quarter of the Undercity.
  talk Oran Snakewrithe##7825
  turnin Rin'ji's Secret##2782 |goto Undercity 73.06,32.85 |tip {turninat}Undercity
step
  talk Oran Snakewrithe##7825
  accept Oran's Gratitude##8273 |goto Undercity 73.06,32.85
step
  talk Oran Snakewrithe##7825
  turnin Oran's Gratitude##8273 |goto Undercity 73.06,32.85 |tip {turninat}Undercity
step
  note Bring an Undamaged Venom Sac to Apothecary Lydon in Tarren Mill.
  collect Undamaged Venom Sac##9322 |q 2934 |goto The Hinterlands 35.35,71.35 |tip {dropsfrom}Witherbark Broodguard
step
  talk Apothecary Lydon##2216
  turnin Undamaged Venom Sac##2934 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Oglethorpe Obnoticus##7406
  turnin Rescue OOX-09/HL!##836 |goto Stranglethorn Vale 28.36,76.35 |tip {turninat}Stranglethorn Vale
step
  note {travel}Searing Gorge
  goto Searing Gorge 39.06,38.99
]])
