-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Duskwood (21-28)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Wetlands (21-29)",
	rev = "f0d4f593",
}, [[
step
  ding 20
step
  talk Orphan Matron Nightingale##14450
  accept Remember That I Love You##95161 |goto Stormwind City 56.31,53.99
step
  only haveq(1075)
  note Find Collin Mauren in Stormwind.
  talk Collin Mauren##4078
  turnin A Scroll from Mauren##1075 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  only haveq(97914)
  note Bring Thundris' Letter to Baros Alexston in Stormwind.
  talk Baros Alexston##1646
  turnin Expanding Horizons##97914 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  talk Watcher Dodds##888
  accept Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
  note {fp}Felicia Maline
  goto Duskwood 77.49,44.29 |tip {vendor}
step
  note Deliver the Blood-Stained Letter to Avette Fellwood in Duskwood.
  talk Avette Fellwood##228
  turnin Remember That I Love You##95161 |goto Duskwood 73.03,44.42
step
  only completed(145)
  talk Lord Ello Ebonlocke##263
  accept Messenger to Darkshire##146 |goto Duskwood 71.93,46.42
step
  talk Elaine Carevin##633
  accept Raven Hill##163 |goto Duskwood 75.34,48.75
step
  talk Sirra Von'Indi##268
  accept The Valor Family##96139 |goto Duskwood 72.62,47.62
step
  talk Elaine Carevin##633
  accept Deliveries to Sven##164 |goto Duskwood 75.34,48.75
step
  note Kill 15 Pygmy Venom Web Spiders, and then report back to Watcher Dodds in Duskwood.
  kill Pygmy Venom Web Spider##539 |q 245 |goto Duskwood 23.85,27.8
step
  note Deliver the supplies to Sven.
  talk Sven Yorgen##311
  turnin Deliveries to Sven##164 |goto Duskwood 7.78,34.07
step
  talk Lars##893
  accept Wolves at Our Heels##226 |goto Duskwood 7.71,33.2
step
  note Find out what is haunting Raven Hill.
  talk Jitters##288
  turnin Raven Hill##163 |goto Duskwood 18.38,56.37
step
  talk Jitters##288
  accept Jitters' Growling Gut##5 |goto Duskwood 18.38,56.37
step
  note Search Raven Hill for anything of interest and return to Sirra Von'Indi in Darkshire.
  collect Raven Hill Tome##281046 |q 96139 |goto Duskwood 21.1,55.6 |tip {dropsfrom}Memory of Valor
step
  talk Watcher Dodds##888
  turnin Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
  note Speak with Chef Grual.
  talk Chef Grual##272
  turnin Jitters' Growling Gut##5 |goto Duskwood 73.75,43.48
step
  talk Sirra Von'Indi##268
  turnin The Valor Family##96139 |goto Duskwood 72.62,47.62
step
  talk Chef Grual##272
  accept Dusky Crab Cakes##93 |goto Duskwood 73.75,43.48
step
  talk Commander Althea Ebonlocke##264
  accept The Night Watch##56 |goto Duskwood 73.54,46.82
step
  note Commander Althea Ebonlocke of Darkshire wants you to kill 8 Skeletal Warriors and 6 Skeletal Mages.
  kill Skeletal Warrior##48 |q 56/1 |goto Duskwood 80.57,70.2
  kill Skeletal Mage##203 |q 56 |goto Duskwood 79.54,71.24
step
  kill Lost Stalker##272260 |goto Duskwood 60.2,25.74 |tip Loot the quest item here — it starts the quest.
  accept Ira's Dagger##96137 |goto Duskwood 60.2,25.74
step
  note Gather 6 Gooey Spider Legs and bring them to Chef Grual in Darkshire.
  collect 6 Gooey Spider Leg##2251 |q 93 |goto Duskwood 41.79,20.83 |tip {dropsfrom}Venom Web Spider, Pygmy Venom Web Spider, Green Recluse
step
  note Kill 12 Starving Dire Wolves and 8 Rabid Dire Wolves, then return to Lars at Sven's Camp on the western border of Duskwood.
  kill Starving Dire Wolf##213 |q 226/1 |goto Duskwood 33.64,24.48
  kill Rabid Dire Wolf##565 |q 226 |goto Duskwood 20.39,28.09
step
  talk Lars##893
  turnin Wolves at Our Heels##226 |goto Duskwood 7.71,33.2
step
  note Defeat 10 Young Black Ravagers and 7 Black Ravagers then return to Sirra Von'Indi in Darkshire for more information.
  kill Young Black Ravager##923 |q 96137/1 |goto Duskwood 48.99,65.24
  kill Black Ravager##628 |q 96137 |goto Duskwood 68.37,33.3
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##56 |goto Duskwood 73.54,46.82
step
  talk Chef Grual##272
  turnin Dusky Crab Cakes##93 |goto Duskwood 73.75,43.48
step
  talk Sirra Von'Indi##268
  turnin Ira's Dagger##96137 |goto Duskwood 72.62,47.62
step
  talk Chef Grual##272
  accept Return to Jitters##240 |goto Duskwood 73.75,43.48
step
  talk Madame Eva##265
  accept The Totem of Infliction##101 |goto Duskwood 75.79,45.32
step
  talk Elaine Carevin##633
  accept The Hermit##165 |goto Duskwood 75.34,48.75
step
  talk Viktori Prism'Antras##276
  accept Look To The Stars##174 |goto Duskwood 79.8,48.02
step
  kill Flesh Eater##3 |goto Duskwood 23.81,39.21 |tip Loot the quest item here — it starts the quest.
  accept An Old History Book##337 |goto Duskwood 23.81,39.21
step
  note Bring 10 Ghoul Fangs, 10 Skeleton Fingers and 5 Vials of Spider Venom to Madame Eva in Darkshire.
  collect 10 Ghoul Fang##1129 |q 101/1 |goto Duskwood 23.81,39.21 |tip {dropsfrom}Flesh Eater, Rotted One, Bone Chewer
  collect 5 Vial of Spider Venom##1130 |q 101/2 |goto Duskwood 41.79,20.83 |tip {dropsfrom}Venom Web Spider, Pygmy Venom Web Spider, Green Recluse
  collect 10 Skeleton Finger##2378 |q 101 |goto Duskwood 80.57,70.2 |tip {dropsfrom}Skeletal Warrior, Skeletal Horror, Skeletal Mage
step
  note Check on the old man in the shack near Raven Hill cemetery.
  talk Abercrombie##289
  turnin The Hermit##165 |goto Duskwood 28.11,31.46
step
  talk Abercrombie##289
  accept Supplies from Darkshire##148 |goto Duskwood 28.11,31.46
step
  talk Sven Yorgen##311
  accept Sven's Revenge##95 |goto Duskwood 7.78,34.07
step
  note Return to Jitters with the Dusky Crab Cakes.
  talk Jitters##288
  turnin Return to Jitters##240 |goto Duskwood 18.38,56.37
step
  note Go to Sven's Farm and find what was buried behind the old stump.
  turnin Sven's Revenge##95 |goto Duskwood 49.85,77.71
step
  click Mound of loose dirt##59
  accept Sven's Camp##230 |goto Duskwood 49.85,77.71
step
  talk Madame Eva##265
  turnin The Totem of Infliction##101 |goto Duskwood 75.79,45.32
step
  note Speak with Madame Eva.
  talk Madame Eva##265
  turnin Supplies from Darkshire##148 |goto Duskwood 75.79,45.32
step
  talk Madame Eva##265
  accept Ghost Hair Thread##149 |goto Duskwood 75.79,45.32
step
  note Bring the Spectral Comb to Blind Mary.
  talk Blind Mary##302
  turnin Ghost Hair Thread##149 |goto Duskwood 81.99,59.09
step
  talk Blind Mary##302
  accept Return the Comb##154 |goto Duskwood 81.99,59.09
step
  note Return the Ghost Hair Comb to Madame Eva in Darkshire.
  talk Madame Eva##265
  turnin Return the Comb##154 |goto Duskwood 75.79,45.32
step
  talk Madame Eva##265
  accept Deliver the Thread##157 |goto Duskwood 75.79,45.32
step
  talk Commander Althea Ebonlocke##264
  accept The Night Watch##57 |goto Duskwood 73.54,46.82
step
  note Bring the Ghost Hair Thread to Abercrombie, in his shack north of the Raven Hill Cemetery.
  talk Abercrombie##289
  turnin Deliver the Thread##157 |goto Duskwood 28.11,31.46
step
  talk Abercrombie##289
  accept Zombie Juice##158 |goto Duskwood 28.11,31.46
step
  note Bring the Book from Sven's Farm to Sven.
  talk Sven Yorgen##311
  turnin Sven's Camp##230 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept The Shadowy Figure##262 |goto Duskwood 7.78,34.07
step
  note Speak with Tavernkeep Smitts.
  talk Tavernkeep Smitts##273
  turnin Zombie Juice##158 |goto Duskwood 73.78,44.49
step
  note Take the book you found at Sven's farm and show it to townsfolk in Darkshire.
  talk Madame Eva##265
  turnin The Shadowy Figure##262 |goto Duskwood 75.79,45.32
step
  talk Tavernkeep Smitts##273
  accept Gather Rot Blossoms##156 |goto Duskwood 73.78,44.49
step
  talk Madame Eva##265
  accept The Shadowy Search Continues##265 |goto Duskwood 75.79,45.32
step
  note See if other townsfolk have clues about the shadowy figure.
  talk Clerk Daltry##267
  turnin The Shadowy Search Continues##265 |goto Duskwood 72.54,46.87
step
  talk Clerk Daltry##267
  accept Inquire at the Inn##266 |goto Duskwood 72.54,46.87
step
  note Search the inn for clues about the shadowy figure.
  talk Tavernkeep Smitts##273
  turnin Inquire at the Inn##266 |goto Duskwood 73.78,44.49
step
  talk Tavernkeep Smitts##273
  accept Finding the Shadowy Figure##453 |goto Duskwood 73.78,44.49
step
  note Find the Shadowy Figure. Your clues:
  talk Jitters##288
  turnin Finding the Shadowy Figure##453 |goto Duskwood 18.38,56.37
step
  talk Jitters##288
  accept Return to Sven##268 |goto Duskwood 18.38,56.37
step
  note Return to Sven with Jitters' completed journal.
  talk Sven Yorgen##311
  turnin Return to Sven##268 |goto Duskwood 7.78,34.07
step
  note Commander Althea Ebonlocke of Darkshire wants you to kill 15 Skeletal Fiends and 15 Skeletal Horrors.
  kill Skeletal Fiend##531 |q 57/1 |goto Duskwood 22.39,43.04
  kill Skeletal Horror##202 |q 57 |goto Duskwood 23.06,47.11
step
  note Gather 8 Rot Blossoms and bring them to Tavernkeep Smitts in Darkshire.
  collect 8 Rot Blossom##1598 |q 156 |goto Duskwood 23.06,47.11 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##57 |goto Duskwood 73.54,46.82
step
  talk Tavernkeep Smitts##273
  turnin Gather Rot Blossoms##156 |goto Duskwood 73.78,44.49
step
  talk Tavernkeep Smitts##273
  accept Juice Delivery##159 |goto Duskwood 73.78,44.49
step
  note Bring the Zombie Juice to Abercrombie at his shack.
  talk Abercrombie##289
  turnin Juice Delivery##159 |goto Duskwood 28.11,31.46
step
  talk Abercrombie##289
  accept Ghoulish Effigy##133 |goto Duskwood 28.11,31.46
step
  note Gather 7 Ghoul Ribs and bring them to Abercrombie at his shack.
  collect 7 Ghoul Rib##884 |q 133 |goto Duskwood 23.81,39.21 |tip {dropsfrom}Flesh Eater, Bone Chewer, Plague Spreader
step
  talk Abercrombie##289
  turnin Ghoulish Effigy##133 |goto Duskwood 28.11,31.46
step
  talk Sven Yorgen##311
  accept Proving Your Worth##323 |goto Duskwood 7.78,34.07
step
  note Kill 15 Skeletal Raiders, 3 Skeletal Healers and 3 Skeletal Warders, and then return to Sven.
  kill Skeletal Warder##785 |q 323/3 |goto Duskwood 15.96,34.65
  kill Skeletal Raider##1110 |q 323/1 |goto Duskwood 17.56,37
  kill Skeletal Healer##787 |q 323 |goto Duskwood 17.33,37.43
step
  talk Sven Yorgen##311
  turnin Proving Your Worth##323 |goto Duskwood 7.78,34.07
step
  talk Madame Eva##265
  accept The Legend of Stalvan##66 |goto Duskwood 75.79,45.32
step
  only level>=23
  talk Calor##663
  accept Worgen in the Woods##173 |goto Duskwood 75.75,47.57
step
  note Seek out the Clerk Daltry in the Darkshire Town Hall.
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##66 |goto Duskwood 72.54,46.87
step
  talk Clerk Daltry##267
  accept The Legend of Stalvan##67 |goto Duskwood 72.54,46.87
step
  only haveq(173)
  note Kill 6 Nightbane Shadow Weaver worgen for Calor in Darkshire.
  kill Nightbane Shadow Weaver##533 |q 173 |goto Duskwood 61.94,52.05
step
  only haveq(173)
  talk Calor##663
  turnin Worgen in the Woods##173 |goto Duskwood 75.75,47.57
step
  kill Lost Watcher##272273 |goto Duskwood 62.42,63.5 |tip Loot the quest item here — it starts the quest.
  accept Merrick's Bow##96138 |goto Duskwood 62.42,63.5
step
  note Defeat 8 Splint Fist Warriors and 4 Splint Fist Taskmasters then return to Sirra Von'Indi in Darkshire for more information.
  kill Splinter Fist Taskmaster##892 |q 96138/2 |goto Duskwood 36.57,72.44
  kill Splinter Fist Warrior##212 |q 96138 |goto Duskwood 33.67,76.02
step
  talk Sirra Von'Indi##268
  turnin Merrick's Bow##96138 |goto Duskwood 72.62,47.62
step
  only completed(173) level>=23
  talk Calor##663
  accept Worgen in the Woods##221 |goto Duskwood 75.75,47.57
step
  only haveq(221)
  note Kill 12 Nightbane Dark Runner worgen for Calor in Darkshire.
  kill Nightbane Dark Runner##205 |q 221 |goto Duskwood 65.13,67.39
step
  only haveq(221)
  talk Calor##663
  turnin Worgen in the Woods##221 |goto Duskwood 75.75,47.57
step
  talk Sven Yorgen##311
  accept Seeking Wisdom##269 |goto Duskwood 7.78,34.07
step
  only completed(145)
  note Return to Magistrate Solomon with Lord Ebonlocke's letter of response.
  talk Magistrate Solomon##344
  turnin Messenger to Darkshire##146 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
step
  note Travel to the Moonbrook Schoolhouse and bring back any updated information about Stalvan to Clerk Daltry.
  turnin The Legend of Stalvan##67 |goto Westfall 41.51,66.73 |tip {turninat}Westfall
step
  click Old Footlocker##3643
  accept The Legend of Stalvan##68 |goto Westfall 41.51,66.73
step
  note Viktori Prism'Antras of Darkshire wants you to bring him a bronze tube.
  collect Bronze Tube##4371 |q 174 |goto Westfall 41.27,66.41 |tip {dropsfrom}Box of Assorted Parts
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##174 |goto Duskwood 79.8,48.02
step
  talk Viktori Prism'Antras##276
  accept Look To The Stars##175 |goto Duskwood 79.8,48.02
step
  note Take the Dusty Unsent Letter to Clerk Daltry.
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##68 |goto Duskwood 72.54,46.87
step
  talk Clerk Daltry##267
  accept The Legend of Stalvan##69 |goto Duskwood 72.54,46.87
step
  note Locate Mary and persuade her to give up a reflective surface for Viktori's project.
  talk Blind Mary##302
  turnin Look To The Stars##175 |goto Duskwood 81.99,59.09
step
  talk Blind Mary##302
  accept Look To The Stars##177 |goto Duskwood 81.99,59.09
step
  note Retrieve Blind Mary's Looking Glass from the Insane Ghoul and give it to Viktori in Darkshire.
  collect Mary's Looking Glass##1946 |q 177 |goto Duskwood 80.9,71.96 |tip {dropsfrom}Insane Ghoul
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##177 |goto Duskwood 79.8,48.02
step
  note Return the book: The History of Stormwind, to the Stormwind Library.
  talk Milton Sheaf##1440
  turnin An Old History Book##337 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  note Give Jitters' Completed Journal to Bishop Farthing in Stormwind.
  talk Bishop Farthing##1212
  turnin Seeking Wisdom##269 |goto Stormwind City 49.93,45.99 |tip {turninat}Stormwind City
step
  only completed(1075)
  talk Collin Mauren##4078
  accept Devils in Westfall##1076 |goto Stormwind City 53.02,86.64
step
  only not Dwarf not NightElf not Skyborne Mage level>=26
  talk High Sorcerer Andromath##5694
  accept Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 48.71,87.62
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1938)
  note Bring Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind.
  collect Ur's Treatise on Shadow Magic##7266 |q 1938 |goto Redridge Mountains 73.77,47.61
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1938)
  talk High Sorcerer Andromath##5694
  turnin Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 48.71,87.62 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage completed(1938) level>=26
  talk High Sorcerer Andromath##5694
  accept Pristine Spider Silk##1940 |goto Stormwind City 48.71,87.62
step
  only completed(1075)
  note Bring Dust Devil Debris to Collin Mauren in Stormwind.
  collect Dust Devil Debris##5669 |q 1076 |goto Westfall 45.61,49.32 |tip {dropsfrom}Dust Devil
step
  only completed(1075)
  talk Collin Mauren##4078
  turnin Devils in Westfall##1076 |goto Stormwind City 53.02,86.64 |tip {turninat}Stormwind City
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1940)
  note Bring 8 Pristine Spider Silk to Wynne Larson in Stormwind.
  collect 8 Pristine Spider Silk##7267 |q 1940 |goto Duskwood 32.82,51.72 |tip {dropsfrom}Black Widow Hatchling, Carrion Recluse
step
  only not Dwarf not NightElf not Skyborne Mage haveq(1940)
  talk Wynne Larson##1309
  turnin Pristine Spider Silk##1940 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  note {travel}Wetlands
  goto Wetlands 8.55,55.74
]])
