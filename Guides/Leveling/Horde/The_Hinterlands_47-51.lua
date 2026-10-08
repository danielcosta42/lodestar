-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Hinterlands (47-51)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Swamp of Sorrows (43-57)",
}, [[
step
  note {fp}Huntsman Markhor
  goto The Hinterlands 79.16,79.53 |tip {vendor}
step
  talk Rin'ji##7780
  accept Rin'ji is Trapped!##2742 |goto The Hinterlands 30.73,46.9
step
  click Venom Bottle##142702
  accept Venom Bottles##2933 |goto The Hinterlands 23.54,58.8
step
  talk Apothecary Lydon##2216
  turnin Venom Bottles##2933 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Dran Droffers##6986
  accept Ripple Recovery##649 |goto Orgrimmar 59.49,36.57
step
  talk Atal'ai Exile##5598
  accept Return to Fel'Zerul##1444 |goto The Hinterlands 33.75,75.21
step
  talk Atal'ai Exile##5598
  accept Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  note The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
  collect Head of Jammal'an##6212 |q 1446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite |tip {dropsfrom}Jammal'an the Prophet
step
  turnin Rin'ji is Trapped!##2742 |goto The Hinterlands 86.3,59.01
step
  kill Saltwater Snapjaw##2505 |goto The Hinterlands 81.48,60.4 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-09/HL!##485 |goto The Hinterlands 81.48,60.4
step
  click Rin'ji's Secret##142127
  accept Rin'ji's Secret##2782 |goto The Hinterlands 86.3,59.01
step
  talk Katoom the Angler##14740
  accept Snapjaws, Mon!##7815 |goto The Hinterlands 80.33,81.54
step
  talk Katoom the Angler##14740
  accept Gammerita, Mon!##7816 |goto The Hinterlands 80.33,81.54
step
  note Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill Gammerita and retrieve Katoom's Best Lure from her corpse.
  kill Gammerita##7977 |goto The Hinterlands 80.4,58.23 |elite
  collect Katoom's Best Lure##19023 |q 7816 |goto The Hinterlands 80.4,58.23
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
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill a Razorbeak Skylord and retrieve its Skylord Plume. Return to him once the task is complete.
  collect Skylord Plume##19025 |q 7830 |goto The Hinterlands 60.4,49.8 |tip {dropsfrom}Razorbeak Skylord
step
  talk Smith Slagtree##14737
  accept Vilebranch Hooligans##7839 |goto The Hinterlands 77.23,80.13
step
  note Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree's Lost Tools. Return to him once this task is complete.
  collect Slagtree's Lost Tools##19033 |q 7839 |goto The Hinterlands 66.4,44.8
step
  talk Lard##14731
  accept Lard Lost His Lunch##7840 |goto The Hinterlands 78.14,81.38
step
  note Lard at Revantusk Village in the Hinterlands wants you to find Lard's Lunch. Return to him when this task is complete.
  collect Lard's Lunch##19034 |q 7840 |goto The Hinterlands 84.6,41.2 |tip {dropsfrom}Vilebranch Kidnapper, Lard's Picnic Basket
step
  talk Otho Moji'ko##14738
  accept Message to the Wildhammer##7841 |goto The Hinterlands 79.38,79.08
step
  talk Mystic Yayo'jin##14739
  accept Cannibalistic Cousins##7844 |goto The Hinterlands 78.8,78.25
step
  talk Primal Torntusk##14736
  accept Kidnapped Elder Torntusk!##7845 |goto The Hinterlands 78.2,81.18
step
  talk Huntsman Markhor##14741
  accept Separation Anxiety##7849 |goto The Hinterlands 79.16,79.53
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to recover his twin brother's remains. Find and return Huntsman Malkhor's Skull and Huntsman Malkhor's Bones to Huntsman Markhor.
  collect Huntsman Malkhor's Skull##19069 |q 7849 |goto The Hinterlands 58.56,64.76 |tip {dropsfrom}Pile of Skulls
step
  talk Primal Torntusk##14736
  accept Dark Vessels##7850 |goto The Hinterlands 78.2,81.18
step
  note Primal Torntusk at Revantusk Village in the Hinterlands wants you to recover 10 Vessels of Tainted Blood from Jintha'alor. Return to Primal Torntusk when this task is complete.
  collect Vessel of Tainted Blood##19071 |q 7850 |goto The Hinterlands 64.17,72.2
step
  click Call to Arms!##179913
  accept Wanted: Vile Priestess Hexx and Her Minions##7861 |goto The Hinterlands 79.08,78.99
step
  click Call to Arms!##179913
  accept Job Opening: Guard Captain of Revantusk Village##7862 |goto The Hinterlands 79.08,78.99
step
  note Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill 15 Saltwater Snapjaw turtles. Return to him when you have completed this task.
  kill Saltwater Snapjaw##2505 |q 7815 |goto The Hinterlands 81.48,60.4
step
  note Otho Moji'ko at Revantusk Village in the Hinterlands wants you to slaughter 15 Highvale Outrunners, 15 Highvale Scouts, 15 Highvale Marksman and 15 Highvale Rangers. Return to him when this task is complete.
  kill Highvale Scout##2692 |q 7841 |goto The Hinterlands 32.18,48.91
step
  talk Malton Droffers##6987
  turnin Ripple Recovery##649 |goto Orgrimmar 59.65,36.94 |tip {turninat}Orgrimmar
step
  talk Fel'zerul##1443
  turnin Return to Fel'Zerul##1444 |goto Swamp of Sorrows 47.93,54.78 |tip {turninat}Swamp of Sorrows
step
  talk Oran Snakewrithe##7825
  turnin Rin'ji's Secret##2782 |goto Undercity 73.06,32.85 |tip {turninat}Undercity
step
  talk Homing Robot OOX-09/HL##7806
  turnin Find OOX-09/HL!##485 |goto The Hinterlands 49.35,37.66
step
  talk Malton Droffers##6987
  accept Ripple Recovery##650 |goto Orgrimmar 59.65,36.94
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 10 Silvermane Stalkers and 10 Silvermane Howlers. Return to him once the task is complete.
  kill Silvermane Stalker##2926 |q 7828 |goto The Hinterlands 66.75,53.46
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 20 Savage Owlbeasts. Return to him once the task is complete.
  kill Savage Owlbeast##2929 |q 7829 |goto The Hinterlands 58.4,50.6
step
  note Mystic Yayo'jin at Revantusk Village in the Hinterlands wants you to kill 30 Vilebranch Scalpers and 15 Vilebranch Soothsayers. Return to her when this task is complete.
  kill Vilebranch Scalper##4466 |q 7844 |goto The Hinterlands 53.91,48.45
step
  talk Atal'ai Exile##5598
  turnin Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  talk Elder Torntusk##14757
  turnin Kidnapped Elder Torntusk!##7845 |goto The Hinterlands 59.69,77.84
step
  talk Elder Torntusk##14757
  accept Recover the Key!##7846 |goto The Hinterlands 59.69,77.84
step
  note Elder Torntusk at Jintha'alor wants you to kill Hitah'ya the Keeper to get the Shackle Key to his bindings. Return to Elder Torntusk when you have recovered the key.
  kill Hitah'ya the Keeper##10802 |goto The Hinterlands 57.32,86.64 |elite
  collect Shackle Key##19064 |q 7846 |goto The Hinterlands 57.32,86.64
step
  note You have been ordered to slay Vile Priestess Hexx and 20 Vilebranch Aman'zasi Guards. See Primal Torntusk at Revantusk Village in the Hinterlands once this task is complete.
  kill Vile Priestess Hexx##7995 |q 7861 |goto The Hinterlands 59.47,78.26 |elite
step
  note You have been tasked with the decimation of 20 Vilebranch Berserkers, 20 Vilebranch Shadow Hunters, 20 Vilebranch Blood Drinkers, and 20 Vilebranch Soul Eaters.
  kill Vilebranch Berserker##2643 |q 7862 |goto The Hinterlands 64.56,71.67 |elite
step
  talk Katoom the Angler##14740
  turnin Snapjaws, Mon!##7815 |goto The Hinterlands 80.33,81.54
step
  talk Katoom the Angler##14740
  turnin Gammerita, Mon!##7816 |goto The Hinterlands 80.33,81.54
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
  talk Lard##14731
  turnin Lard Lost His Lunch##7840 |goto The Hinterlands 78.14,81.38
step
  talk Otho Moji'ko##14738
  turnin Message to the Wildhammer##7841 |goto The Hinterlands 79.38,79.08
step
  talk Mystic Yayo'jin##14739
  turnin Cannibalistic Cousins##7844 |goto The Hinterlands 78.8,78.25
step
  talk Huntsman Markhor##14741
  turnin Separation Anxiety##7849 |goto The Hinterlands 79.16,79.53
step
  talk Primal Torntusk##14736
  turnin Dark Vessels##7850 |goto The Hinterlands 78.2,81.18
step
  talk Primal Torntusk##14736
  turnin Wanted: Vile Priestess Hexx and Her Minions##7861 |goto The Hinterlands 78.2,81.18
step
  talk Primal Torntusk##14736
  turnin Job Opening: Guard Captain of Revantusk Village##7862 |goto The Hinterlands 78.2,81.18
step
  talk Otho Moji'ko##14738
  accept Another Message to the Wildhammer##7842 |goto The Hinterlands 79.38,79.08
step
  note Otho Moji'ko at Revantusk Village in the Hinterlands wants you to bring him 10 Long Elegant Feathers from the gryphons that inhabit the Hinterlands. Return to him once this task is complete.
  collect Long Elegant Feather##4589 |q 7842 |goto Hillsbrad Foothills 87.3,41.7 |tip {dropsfrom}Wild Gryphon, Granistad, Kurdros
step
  talk Gilveradin Sunchaser##7801
  turnin Ripple Recovery##650 |goto The Hinterlands 26.71,48.59
step
  talk Gilveradin Sunchaser##7801
  accept A Sticky Situation##77 |goto The Hinterlands 26.71,48.59
step
  note Recover 10 bottles of Hinterlands Honey Ripple from the crates located around the abandoned Horde base in Skulk Rock.
  collect Hinterlands Honey Ripple##8684 |q 77 |goto The Hinterlands 57.27,41.12 |tip {dropsfrom}Horde Supply Crate
step
  talk Elder Torntusk##14757
  turnin Recover the Key!##7846 |goto The Hinterlands 59.69,77.84
step
  talk Elder Torntusk##14757
  accept Return to Primal Torntusk##7847 |goto The Hinterlands 59.69,77.84
step
  talk Otho Moji'ko##14738
  turnin Another Message to the Wildhammer##7842 |goto The Hinterlands 79.38,79.08
step
  talk Primal Torntusk##14736
  turnin Return to Primal Torntusk##7847 |goto The Hinterlands 78.2,81.18
step
  talk Gilveradin Sunchaser##7801
  turnin A Sticky Situation##77 |goto The Hinterlands 26.71,48.59
step
  talk Gilveradin Sunchaser##7801
  accept Ripple Delivery##81 |goto The Hinterlands 26.71,48.59
step
  talk Dran Droffers##6986
  turnin Ripple Delivery##81 |goto Orgrimmar 59.49,36.57 |tip {turninat}Orgrimmar
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 25.98,31.4
]])
