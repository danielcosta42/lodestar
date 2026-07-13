-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Hinterlands (48-51)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Swamp of Sorrows (40-57)",
}, [[
step
  note {fp}Gorkas
  goto The Hinterlands 81.7,81.76 |tip {vendor}
step
  talk Atal'ai Exile##5598
  accept Return to Fel'Zerul##1444 |goto The Hinterlands 33.75,75.21
step
  talk Atal'ai Exile##5598
  accept Jammal'an the Prophet##1446 |goto The Hinterlands 33.75,75.21
step
  note The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an.
  kill Jammal'an the Prophet##5710 |q 1446 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite
step
  talk Katoom the Angler##14740
  accept Snapjaws, Mon!##7815 |goto The Hinterlands 80.33,81.54
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
  kill Razorbeak Skylord##2659 |q 7830 |goto The Hinterlands 63.83,51.95
step
  talk Smith Slagtree##14737
  accept Vilebranch Hooligans##7839 |goto The Hinterlands 77.23,80.13
step
  note Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree's Lost Tools. Return to him once this task is complete.
  collect Slagtree's Lost Tools##179908 |q 7839 |goto The Hinterlands 66.44,44.82
step
  talk Lard##14731
  accept Lard Lost His Lunch##7840 |goto The Hinterlands 78.14,81.38
step
  note Lard at Revantusk Village in the Hinterlands wants you to find Lard's Lunch. Return to him when this task is complete.
  kill Lard##14731 |q 7840 |goto The Hinterlands 78.14,81.38
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
  collect Pile of Skulls##179915 |q 7849 |goto The Hinterlands 58.56,64.76
step
  talk Primal Torntusk##14736
  accept Dark Vessels##7850 |goto The Hinterlands 78.2,81.18
step
  note Primal Torntusk at Revantusk Village in the Hinterlands wants you to recover 10 Vessels of Tainted Blood from Jintha'alor. Return to Primal Torntusk when this task is complete.
  collect Vessel of Tainted Blood##179922 |q 7850 |goto The Hinterlands 64.17,72.2
step
  note Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill 15 Saltwater Snapjaw turtles. Return to him when you have completed this task.
  kill Saltwater Snapjaw##2505 |q 7815 |goto The Hinterlands 81.48,60.4
step
  talk Fel'zerul##1443
  turnin Return to Fel'Zerul##1444 |goto Swamp of Sorrows 47.93,54.78 |tip {turninat}Swamp of Sorrows
step
  talk Elder Highpeak##15559
  accept Highpeak the Elder##8643 |goto The Hinterlands 50.0,48.05
step
  note Mystic Yayo'jin at Revantusk Village in the Hinterlands wants you to kill 15 Vilebranch Scalpers and 10 Vilebranch Soothsayers. Return to her when this task is complete.
  kill Vilebranch Scalper##4466 |q 7844 |goto The Hinterlands 53.91,48.45
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 10 Silvermane Stalkers and 10 Silvermane Howlers. Return to him once the task is complete.
  kill Silvermane Stalker##2926 |q 7828 |goto The Hinterlands 66.75,53.46
step
  note Huntsman Markhor at Revantusk Village in the Hinterlands wants you to kill 20 Savage Owlbeasts. Return to him once the task is complete.
  kill Savage Owlbeast##2929 |q 7829 |goto The Hinterlands 60.44,46.54
step
  talk Gilveradin Sunchaser##7801
  accept A Sticky Situation##77 |goto The Hinterlands 26.71,48.59
step
  note Recover 10 bottles of Hinterlands Honey Ripple from the crates located around the abandoned Horde base in Skulk Rock.
  collect Horde Supply Crate##142191 |q 77 |goto The Hinterlands 57.27,41.12
step
  note Otho Moji'ko at Revantusk Village in the Hinterlands wants you to slaughter 15 Highvale Outrunners, 15 Highvale Scouts, 15 Highvale Marksman and 15 Highvale Rangers. Return to him when this task is complete.
  kill Highvale Scout##2692 |q 7841 |goto The Hinterlands 32.18,48.91
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
  kill Hitah'ya the Keeper##10802 |q 7846 |goto The Hinterlands 57.32,86.64
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
  talk Katoom the Angler##14740
  turnin Snapjaws, Mon!##7815 |goto The Hinterlands 80.33,81.54
step
  talk Huntsman Markhor##14741
  turnin Separation Anxiety##7849 |goto The Hinterlands 79.16,79.53
step
  talk Primal Torntusk##14736
  turnin Dark Vessels##7850 |goto The Hinterlands 78.2,81.18
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
  talk Katoom the Angler##14740
  accept Gammerita, Mon!##7816 |goto The Hinterlands 80.33,81.54
step
  note Katoom the Angler at Revantusk Village in the Hinterlands wants you to kill Gammerita and retrieve Katoom's Best Lure from her corpse.
  kill Gammerita##7977 |q 7816 |goto The Hinterlands 80.4,58.23
step
  talk Otho Moji'ko##14738
  accept Another Message to the Wildhammer##7842 |goto The Hinterlands 79.38,79.08
step
  note Otho Moji'ko at Revantusk Village in the Hinterlands wants you to bring him 10 Long Elegant Feathers from the gryphons that inhabit the Hinterlands. Return to him once this task is complete.
  kill Wild Gryphon##2347 |q 7842 |goto Hillsbrad Foothills 87.3,41.7
step
  talk Elder Highpeak##15559
  turnin Highpeak the Elder##8643 |goto The Hinterlands 50.0,48.05
step
  talk Gilveradin Sunchaser##7801
  turnin A Sticky Situation##77 |goto The Hinterlands 26.71,48.59
step
  talk Gilveradin Sunchaser##7801
  accept Ripple Delivery##81 |goto The Hinterlands 26.71,48.59
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
  talk Katoom the Angler##14740
  turnin Gammerita, Mon!##7816 |goto The Hinterlands 80.33,81.54
step
  talk Dran Droffers##6986
  turnin Ripple Delivery##81 |goto Orgrimmar 59.49,36.57 |tip {turninat}Orgrimmar
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 25.98,31.4
]])
