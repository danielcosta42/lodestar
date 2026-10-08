-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Duskwood (21-28)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Wetlands (21-29)",
}, [[
step
  talk Orphan Matron Nightingale##14450
  accept Remember That I Love You##95161 |goto Stormwind City 56.31,53.99
step
  talk Lars##893
  accept Wolves at Our Heels##226 |goto Duskwood 7.71,33.2
step
  note Kill 12 Starving Dire Wolves and 8 Rabid Dire Wolves, then return to Lars at Sven's Camp on the western border of Duskwood.
  kill Starving Dire Wolf##213 |q 226 |goto Duskwood 33.64,24.48
step
  talk Watcher Dodds##888
  accept Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
  note {fp}Felicia Maline
  goto Duskwood 77.49,44.29 |tip {vendor}
step
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
  talk Jitters##288
  turnin Raven Hill##163 |goto Duskwood 18.38,56.37
step
  talk Jitters##288
  accept Jitters' Growling Gut##5 |goto Duskwood 18.38,56.37
step
  note Search Raven Hill for anything of interest and return to Sirra Von'Indi in Darkshire.
  collect Raven Hill Tome##281046 |q 96139 |goto Duskwood 21.1,55.6 |tip {dropsfrom}Memory of Valor
step
  talk Sven Yorgen##311
  turnin Deliveries to Sven##164 |goto Duskwood 7.78,34.07
step
  talk Lars##893
  turnin Wolves at Our Heels##226 |goto Duskwood 7.71,33.2
step
  note Kill 15 Pygmy Venom Web Spiders, and then report back to Watcher Dodds in Duskwood.
  kill Pygmy Venom Web Spider##539 |q 245 |goto Duskwood 23.85,27.8
step
  talk Watcher Dodds##888
  turnin Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
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
  kill Skeletal Warrior##48 |q 56 |goto Duskwood 80.57,70.2
step
  note Gather 6 Gooey Spider Legs and bring them to Chef Grual in Darkshire.
  collect 6 Gooey Spider Leg##2251 |q 93 |goto Duskwood 41.79,20.83 |tip {dropsfrom}Venom Web Spider, Pygmy Venom Web Spider, Green Recluse
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##56 |goto Duskwood 73.54,46.82
step
  talk Chef Grual##272
  turnin Dusky Crab Cakes##93 |goto Duskwood 73.75,43.48
step
  talk Chef Grual##272
  accept Return to Jitters##240 |goto Duskwood 73.75,43.48
step
  talk Jitters##288
  turnin Return to Jitters##240 |goto Duskwood 18.38,56.37
step
  only completed(145)
  talk Magistrate Solomon##344
  turnin Messenger to Darkshire##146 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
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
  talk Madame Eva##265
  accept The Legend of Stalvan##66 |goto Duskwood 75.79,45.32
step
  only completed(68)
  talk Clerk Daltry##267
  accept The Legend of Stalvan##69 |goto Duskwood 72.54,46.87
step
  talk Calor##663
  accept Worgen in the Woods##173 |goto Duskwood 75.75,47.57
step
  only not Dwarf not NightElf not Skyborne Mage completed(1938)
  talk High Sorcerer Andromath##5694
  accept Pristine Spider Silk##1940 |goto Stormwind City 48.71,87.62
step
  note Bring 10 Ghoul Fangs, 10 Skeleton Fingers and 5 Vials of Spider Venom to Madame Eva in Darkshire.
  collect 10 Ghoul Fang##1129 |q 101 |goto Duskwood 23.81,39.21 |tip {dropsfrom}Flesh Eater, Bone Chewer, Brain Eater
step
  note Viktori Prism'Antras of Darkshire wants you to bring him a bronze tube.
  collect Bronze Tube##4371 |q 174 |goto Westfall 41.27,66.41 |tip {dropsfrom}Box of Assorted Parts
step
  note Kill 6 Nightbane Shadow Weaver worgen for Calor in Darkshire.
  kill Nightbane Shadow Weaver##533 |q 173 |goto Duskwood 61.94,52.05
step
  only not Dwarf not NightElf not Skyborne Mage completed(1938)
  note Bring 8 Pristine Spider Silk to Wynne Larson in Stormwind.
  collect 8 Pristine Spider Silk##7267 |q 1940 |goto Duskwood 32.82,51.72 |tip {dropsfrom}Black Widow Hatchling, Carrion Recluse
step
  talk Madame Eva##265
  turnin The Totem of Infliction##101 |goto Duskwood 75.79,45.32
step
  talk Abercrombie##289
  turnin The Hermit##165 |goto Duskwood 28.11,31.46
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##174 |goto Duskwood 79.8,48.02
step
  talk Milton Sheaf##1440
  turnin An Old History Book##337 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##66 |goto Duskwood 72.54,46.87
step
  only completed(68)
  talk Innkeeper Farley##295
  turnin The Legend of Stalvan##69 |goto Elwynn Forest 43.77,65.8 |tip {turninat}Elwynn Forest
step
  talk Calor##663
  turnin Worgen in the Woods##173 |goto Duskwood 75.75,47.57
step
  only not Dwarf not NightElf not Skyborne Mage completed(1938)
  talk Wynne Larson##1309
  turnin Pristine Spider Silk##1940 |goto Stormwind City 51.84,83.51 |tip {turninat}Stormwind City
step
  talk Abercrombie##289
  accept Supplies from Darkshire##148 |goto Duskwood 28.11,31.46
step
  talk Sven Yorgen##311
  accept Sven's Revenge##95 |goto Duskwood 7.78,34.07
step
  talk Viktori Prism'Antras##276
  accept Look To The Stars##175 |goto Duskwood 79.8,48.02
step
  talk Commander Althea Ebonlocke##264
  accept The Night Watch##57 |goto Duskwood 73.54,46.82
step
  talk Clerk Daltry##267
  accept The Legend of Stalvan##67 |goto Duskwood 72.54,46.87
step
  talk Calor##663
  accept Worgen in the Woods##221 |goto Duskwood 75.75,47.57
step
  note Commander Althea Ebonlocke of Darkshire wants you to kill 15 Skeletal Fiends and 15 Skeletal Horrors.
  kill Skeletal Fiend##531 |q 57 |goto Duskwood 22.39,43.04
step
  note Kill 12 Nightbane Dark Runner worgen for Calor in Darkshire.
  kill Nightbane Dark Runner##205 |q 221 |goto Duskwood 65.13,67.39
step
  talk Madame Eva##265
  turnin Supplies from Darkshire##148 |goto Duskwood 75.79,45.32
step
  turnin Sven's Revenge##95 |goto Duskwood 49.85,77.71
step
  talk Blind Mary##302
  turnin Look To The Stars##175 |goto Duskwood 81.99,59.09
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##57 |goto Duskwood 73.54,46.82
step
  turnin The Legend of Stalvan##67 |goto Westfall 41.51,66.73 |tip {turninat}Westfall
step
  talk Calor##663
  turnin Worgen in the Woods##221 |goto Duskwood 75.75,47.57
step
  talk Madame Eva##265
  accept Ghost Hair Thread##149 |goto Duskwood 75.79,45.32
step
  talk Blind Mary##302
  accept Look To The Stars##177 |goto Duskwood 81.99,59.09
step
  click Mound of loose dirt##59
  accept Sven's Camp##230 |goto Duskwood 49.85,77.71
step
  note Retrieve Blind Mary's Looking Glass from the Insane Ghoul and give it to Viktori in Darkshire.
  collect Mary's Looking Glass##1946 |q 177 |goto Duskwood 80.9,71.96 |tip {dropsfrom}Insane Ghoul
step
  talk Blind Mary##302
  turnin Ghost Hair Thread##149 |goto Duskwood 81.99,59.09
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##177 |goto Duskwood 79.8,48.02
step
  talk Sven Yorgen##311
  turnin Sven's Camp##230 |goto Duskwood 7.78,34.07
step
  talk Blind Mary##302
  accept Return the Comb##154 |goto Duskwood 81.99,59.09
step
  talk Sven Yorgen##311
  accept The Shadowy Figure##262 |goto Duskwood 7.78,34.07
step
  talk Madame Eva##265
  turnin Return the Comb##154 |goto Duskwood 75.79,45.32
step
  talk Madame Eva##265
  turnin The Shadowy Figure##262 |goto Duskwood 75.79,45.32
step
  talk Madame Eva##265
  accept Deliver the Thread##157 |goto Duskwood 75.79,45.32
step
  talk Madame Eva##265
  accept The Shadowy Search Continues##265 |goto Duskwood 75.79,45.32
step
  talk Abercrombie##289
  turnin Deliver the Thread##157 |goto Duskwood 28.11,31.46
step
  talk Clerk Daltry##267
  turnin The Shadowy Search Continues##265 |goto Duskwood 72.54,46.87
step
  talk Abercrombie##289
  accept Zombie Juice##158 |goto Duskwood 28.11,31.46
step
  talk Clerk Daltry##267
  accept Inquire at the Inn##266 |goto Duskwood 72.54,46.87
step
  talk Tavernkeep Smitts##273
  turnin Zombie Juice##158 |goto Duskwood 73.78,44.49
step
  talk Tavernkeep Smitts##273
  turnin Inquire at the Inn##266 |goto Duskwood 73.78,44.49
step
  talk Tavernkeep Smitts##273
  accept Gather Rot Blossoms##156 |goto Duskwood 73.78,44.49
step
  talk Tavernkeep Smitts##273
  accept Finding the Shadowy Figure##453 |goto Duskwood 73.78,44.49
step
  note Gather 8 Rot Blossoms and bring them to Tavernkeep Smitts in Darkshire.
  collect 8 Rot Blossom##1598 |q 156 |goto Duskwood 23.06,47.11 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend, Skeletal Fiend (Enraged Form)
step
  talk Tavernkeep Smitts##273
  turnin Gather Rot Blossoms##156 |goto Duskwood 73.78,44.49
step
  talk Jitters##288
  turnin Finding the Shadowy Figure##453 |goto Duskwood 18.38,56.37
step
  talk Tavernkeep Smitts##273
  accept Juice Delivery##159 |goto Duskwood 73.78,44.49
step
  talk Jitters##288
  accept Return to Sven##268 |goto Duskwood 18.38,56.37
step
  talk Abercrombie##289
  turnin Juice Delivery##159 |goto Duskwood 28.11,31.46
step
  talk Sven Yorgen##311
  turnin Return to Sven##268 |goto Duskwood 7.78,34.07
step
  talk Abercrombie##289
  accept Ghoulish Effigy##133 |goto Duskwood 28.11,31.46
step
  talk Sven Yorgen##311
  accept Proving Your Worth##323 |goto Duskwood 7.78,34.07
step
  note Gather 7 Ghoul Ribs and bring them to Abercrombie at his shack.
  collect 7 Ghoul Rib##884 |q 133 |goto Duskwood 23.81,39.21 |tip {dropsfrom}Flesh Eater, Bone Chewer, Brain Eater
step
  note Kill 15 Skeletal Raiders, 3 Skeletal Healers and 3 Skeletal Warders, and then return to Sven.
  kill Skeletal Raider##1110 |q 323 |goto Duskwood 17.56,37
step
  talk Abercrombie##289
  turnin Ghoulish Effigy##133 |goto Duskwood 28.11,31.46
step
  talk Sven Yorgen##311
  turnin Proving Your Worth##323 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept Seeking Wisdom##269 |goto Duskwood 7.78,34.07
step
  talk Bishop Farthing##1212
  turnin Seeking Wisdom##269 |goto Stormwind City 49.93,45.99 |tip {turninat}Stormwind City
step
  note {travel}Darnassus
  goto Darnassus 31.24,84.51
]])
