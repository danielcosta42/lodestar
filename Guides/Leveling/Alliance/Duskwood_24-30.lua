-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Duskwood (24-30)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/The Barrens (18-47)",
}, [[
step
  note {fp}Felicia Maline
  goto Duskwood 77.49,44.29 |tip {vendor}
step
  talk Commander Althea Ebonlocke##264
  accept The Night Watch##56 |goto Duskwood 73.54,46.82
step
  talk Madame Eva##265
  accept The Legend of Stalvan##66 |goto Duskwood 75.79,45.32
step
  talk Clerk Daltry##267
  accept The Legend of Stalvan##69 |goto Duskwood 72.54,46.87
step
  talk Tavernkeep Smitts##273
  accept The Legend of Stalvan##79 |goto Duskwood 73.78,44.49
step
  talk Chef Grual##272
  accept Seasoned Wolf Kabobs##90 |goto Duskwood 73.75,43.48
step
  note Gather 10 Lean Wolf Flanks and Stormwind Seasoning Herbs and return to Chef Grual in Darkshire.
  collect 10 Lean Wolf Flank##1015 |q 90 |goto Duskwood 33.64,23.26 |tip {dropsfrom}Starving Dire Wolf, Rabid Dire Wolf, Lupos
step
  talk Madame Eva##265
  accept The Totem of Infliction##101 |goto Duskwood 75.79,45.32
step
  note Bring 10 Ghoul Fangs, 10 Skeleton Fingers and 5 Vials of Spider Venom to Madame Eva in Darkshire.
  collect 10 Ghoul Fang##1129 |q 101 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Bone Chewer, Brain Eater
step
  talk Lord Ello Ebonlocke##263
  accept Messenger to Darkshire##146 |goto Duskwood 71.93,46.42
step
  talk Elaine Carevin##633
  accept Raven Hill##163 |goto Duskwood 75.34,48.75
step
  talk Elaine Carevin##633
  accept Deliveries to Sven##164 |goto Duskwood 75.34,48.75
step
  talk Elaine Carevin##633
  accept The Hermit##165 |goto Duskwood 75.34,48.75
step
  talk Calor##663
  accept Worgen in the Woods##173 |goto Duskwood 75.75,47.57
step
  talk Viktori Prism'Antras##276
  accept Look To The Stars##174 |goto Duskwood 79.8,48.02
step
  note Viktori Prism'Antras of Darkshire wants you to bring him a bronze tube.
  collect Bronze Tube##4371 |q 174 |goto The Barrens 47.58,85.32 |tip {dropsfrom}Bael'dun Excavator, Bael'dun Foreman, Bael'dun Rifleman
step
  talk Councilman Millstipe##270
  accept Crime and Punishment##377 |goto Duskwood 71.92,47.79
step
  note Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward.
  collect Hand of Dextren Ward##3628 |q 377 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Dextren Ward
step
  talk Clerk Daltry##267
  accept The Carevin Family##1042 |goto Duskwood 72.54,46.87
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  note Find the Defias Docket and return it to Watcher Backus in Duskwood.
  collect Defias Docket##5947 |q 1244 |goto Duskwood 23.92,72.07 |tip {dropsfrom}Defias Strongbox
step
  note Kill 6 Nightbane Shadow Weaver worgen for Calor in Darkshire.
  kill Nightbane Shadow Weaver##533 |q 173 |goto Duskwood 63.39,52.8
step
  note Commander Althea Ebonlocke of Darkshire wants you to kill 8 Skeletal Warriors and 6 Skeletal Mages.
  kill Skeletal Warrior##48 |q 56 |goto Duskwood 79.75,70.25
step
  talk Innkeeper Farley##295
  turnin The Legend of Stalvan##69 |goto Elwynn Forest 43.77,65.8 |tip {turninat}Elwynn Forest
step
  talk Watcher Dodds##888
  accept Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
  talk Jitters##288
  turnin Raven Hill##163 |goto Duskwood 18.38,56.37
step
  talk Jitters##288
  accept Jitters' Growling Gut##5 |goto Duskwood 18.38,56.37
step
  talk Sven Yorgen##311
  turnin Deliveries to Sven##164 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept Morbent Fel##55 |goto Duskwood 7.78,34.07
step
  note Use Morbent's Bane on Morbent Fel, kill Morbent Fel, then return Morbent's Bane to Sven at his camp.
  kill Weakened Morbent Fel##24782 |q 55
step
  talk Sven Yorgen##311
  accept Sven's Revenge##95 |goto Duskwood 7.78,34.07
step
  talk Lars##893
  accept Wolves at Our Heels##226 |goto Duskwood 7.71,33.2
step
  talk Abercrombie##289
  turnin The Hermit##165 |goto Duskwood 28.11,31.46
step
  talk Magistrate Solomon##344
  turnin Messenger to Darkshire##146 |goto Redridge Mountains 29.99,44.45 |tip {turninat}Redridge Mountains
step
  talk Abercrombie##289
  accept Supplies from Darkshire##148 |goto Duskwood 28.11,31.46
step
  click A Weathered Grave##61
  accept The Weathered Grave##225 |goto Duskwood 17.73,29.08
step
  kill Flesh Eater##3 |goto Duskwood 23.81,38.2 |tip Loot the quest item here — it starts the quest.
  accept An Old History Book##337 |goto Duskwood 23.81,38.2
step
  note Kill 12 Starving Dire Wolves and 8 Rabid Dire Wolves, then return to Lars at Sven's Camp on the western border of Duskwood.
  kill Starving Dire Wolf##213 |q 226 |goto Duskwood 33.64,23.26
step
  note Kill 15 Pygmy Venom Web Spiders, and then report back to Watcher Dodds in Duskwood.
  kill Pygmy Venom Web Spider##539 |q 245 |goto Duskwood 23.85,28.79
step
  talk Chef Grual##272
  turnin Jitters' Growling Gut##5 |goto Duskwood 73.75,43.48
step
  talk Jonathan Carevin##661
  turnin The Carevin Family##1042 |goto Duskwood 75.32,49.02
step
  talk Madame Eva##265
  turnin Supplies from Darkshire##148 |goto Duskwood 75.79,45.32
step
  talk Calor##663
  turnin Worgen in the Woods##173 |goto Duskwood 75.75,47.57
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##174 |goto Duskwood 79.8,48.02
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##56 |goto Duskwood 73.54,46.82
step
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##66 |goto Duskwood 72.54,46.87
step
  talk Commander Althea Ebonlocke##264
  turnin The Legend of Stalvan##79 |goto Duskwood 73.54,46.82
step
  talk Milton Sheaf##1440
  turnin An Old History Book##337 |goto Stormwind City 74.18,7.46 |tip {turninat}Stormwind City
step
  talk Chef Grual##272
  turnin Seasoned Wolf Kabobs##90 |goto Duskwood 73.75,43.48
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  talk Sirra Von'Indi##268
  turnin The Weathered Grave##225 |goto Duskwood 72.62,47.62
step
  talk Madame Eva##265
  turnin The Totem of Infliction##101 |goto Duskwood 75.79,45.32
step
  talk Councilman Millstipe##270
  turnin Crime and Punishment##377 |goto Duskwood 71.92,47.79
step
  talk Commander Althea Ebonlocke##264
  accept The Night Watch##57 |goto Duskwood 73.54,46.82
step
  talk Clerk Daltry##267
  accept The Legend of Stalvan##67 |goto Duskwood 72.54,46.87
step
  talk Commander Althea Ebonlocke##264
  accept The Legend of Stalvan##80 |goto Duskwood 73.54,46.82
step
  talk Chef Grual##272
  accept Dusky Crab Cakes##93 |goto Duskwood 73.75,43.48
step
  note Gather 6 Gooey Spider Legs and bring them to Chef Grual in Darkshire.
  collect 6 Gooey Spider Leg##2251 |q 93 |goto Duskwood 41.79,25.82 |tip {dropsfrom}Venom Web Spider, Pygmy Venom Web Spider, Green Recluse
step
  talk Madame Eva##265
  accept Ghost Hair Thread##149 |goto Duskwood 75.79,45.32
step
  talk Viktori Prism'Antras##276
  accept Look To The Stars##175 |goto Duskwood 79.8,48.02
step
  talk Calor##663
  accept Worgen in the Woods##221 |goto Duskwood 75.75,47.57
step
  talk Sirra Von'Indi##268
  accept Morgan Ladimore##227 |goto Duskwood 72.62,47.62
step
  talk Jonathan Carevin##661
  accept The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
step
  talk Watcher Backus##840
  accept The Missing Diplomat##1245 |goto Duskwood 74.83,44.22
step
  talk Blind Mary##302
  turnin Ghost Hair Thread##149 |goto Duskwood 81.99,59.09
step
  talk Blind Mary##302
  turnin Look To The Stars##175 |goto Duskwood 81.99,59.09
step
  talk Blind Mary##302
  accept Return the Comb##154 |goto Duskwood 81.99,59.09
step
  talk Blind Mary##302
  accept Look To The Stars##177 |goto Duskwood 81.99,59.09
step
  note Retrieve Blind Mary's Looking Glass from the Insane Ghoul and give it to Viktori in Darkshire.
  collect Mary's Looking Glass##1946 |q 177 |goto Duskwood 80.9,71.96 |tip {dropsfrom}Insane Ghoul
step
  note Look for signs of the Scythe of Elune then return to Jonathan Carevin in Darkshire.
  collect Mound of Dirt##19030 |q 1043 |goto Duskwood 73.53,79.14
step
  turnin The Legend of Stalvan##67 |goto Westfall 41.51,66.73 |tip {turninat}Westfall
step
  turnin Sven's Revenge##95 |goto Duskwood 49.85,77.71
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1245 |goto Stormwind City 59.91,64.18 |tip {turninat}Stormwind City
step
  talk Watcher Dodds##888
  turnin Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
  click Mound of loose dirt##59
  accept Sven's Camp##230 |goto Duskwood 49.85,77.71
step
  note Kill 12 Nightbane Dark Runner worgen for Calor in Darkshire.
  kill Nightbane Dark Runner##205 |q 221 |goto Duskwood 64.14,67.71
step
  note Commander Althea Ebonlocke of Darkshire wants you to kill 15 Skeletal Fiends and 15 Skeletal Horrors.
  kill Skeletal Fiend##531 |q 57 |goto Duskwood 21.81,43.46
step
  talk Sven Yorgen##311
  turnin Morbent Fel##55 |goto Duskwood 7.78,34.07
step
  talk Lars##893
  turnin Wolves at Our Heels##226 |goto Duskwood 7.71,33.2
step
  talk Sven Yorgen##311
  turnin Sven's Camp##230 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept The Shadowy Figure##262 |goto Duskwood 7.78,34.07
step
  talk Madame Eva##265
  turnin The Shadowy Figure##262 |goto Duskwood 75.79,45.32
step
  talk Jonathan Carevin##661
  turnin The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
step
  talk Madame Eva##265
  turnin Return the Comb##154 |goto Duskwood 75.79,45.32
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##177 |goto Duskwood 79.8,48.02
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##57 |goto Duskwood 73.54,46.82
step
  talk Clerk Daltry##267
  turnin The Legend of Stalvan##80 |goto Duskwood 72.54,46.87
step
  talk Chef Grual##272
  turnin Dusky Crab Cakes##93 |goto Duskwood 73.75,43.48
step
  talk Calor##663
  turnin Worgen in the Woods##221 |goto Duskwood 75.75,47.57
step
  talk Commander Althea Ebonlocke##264
  turnin Morgan Ladimore##227 |goto Duskwood 73.54,46.82
step
  talk Commander Althea Ebonlocke##264
  accept The Night Watch##58 |goto Duskwood 73.54,46.82
step
  talk Clerk Daltry##267
  accept The Legend of Stalvan##97 |goto Duskwood 72.54,46.87
step
  talk Madame Eva##265
  accept Deliver the Thread##157 |goto Duskwood 75.79,45.32
step
  talk Viktori Prism'Antras##276
  accept Look To The Stars##181 |goto Duskwood 79.8,48.02
step
  note Locate Zzarc'Vul in the southern ogre mound in Duskwood and return his monocle to Viktori in Darkshire.
  collect Ogre's Monocle##1968 |q 181 |goto Duskwood 36.83,80.64 |tip {dropsfrom}Zzarc' Vul
step
  talk Calor##663
  accept Worgen in the Woods##222 |goto Duskwood 75.75,47.57
step
  talk Commander Althea Ebonlocke##264
  accept Mor'Ladim##228 |goto Duskwood 73.54,46.82
step
  note Kill Mor'Ladim, then return his skull to Commander Althea Ebonlocke in Darkshire.
  kill Mor'Ladim##522 |goto Duskwood 16.67,37.35 |elite
  collect Mor'Ladim's Skull##3514 |q 228 |goto Duskwood 16.67,37.35
step
  talk Chef Grual##272
  accept Return to Jitters##240 |goto Duskwood 73.75,43.48
step
  talk Madame Eva##265
  accept The Shadowy Search Continues##265 |goto Duskwood 75.79,45.32
step
  talk Jonathan Carevin##661
  accept Answered Questions##1044 |goto Duskwood 75.32,49.02
step
  note Kill 8 Nightbane Vile Fang and 8 Nightbane Tainted One worgen for Calor in Darkshire.
  kill Nightbane Vile Fang##206 |q 222 |goto Duskwood 72.3,72.31
step
  talk Jitters##288
  turnin Return to Jitters##240 |goto Duskwood 18.38,56.37
step
  talk Abercrombie##289
  turnin Deliver the Thread##157 |goto Duskwood 28.11,31.46
step
  talk Abercrombie##289
  accept Zombie Juice##158 |goto Duskwood 28.11,31.46
step
  note Commander Althea Ebonlocke of Darkshire wants you to kill 20 Plague Spreaders in the eastern Raven Hill mausoleum.
  kill Plague Spreader##604 |q 58 |goto Duskwood 24.06,34.21
step
  talk Clerk Daltry##267
  turnin The Shadowy Search Continues##265 |goto Duskwood 72.54,46.87
step
  talk Thyn'tel Bladeweaver##8026
  turnin Answered Questions##1044 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  talk Tavernkeep Smitts##273
  turnin Zombie Juice##158 |goto Duskwood 73.78,44.49
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##181 |goto Duskwood 79.8,48.02
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##58 |goto Duskwood 73.54,46.82
step
  talk Calor##663
  turnin Worgen in the Woods##222 |goto Duskwood 75.75,47.57
step
  talk Commander Althea Ebonlocke##264
  turnin The Legend of Stalvan##97 |goto Duskwood 73.54,46.82
step
  talk Commander Althea Ebonlocke##264
  turnin Mor'Ladim##228 |goto Duskwood 73.54,46.82
step
  talk Commander Althea Ebonlocke##264
  accept The Legend of Stalvan##98 |goto Duskwood 73.54,46.82
step
  note Kill Stalvan Mistmantle and show Madame Eva his family ring.
  collect Mistmantle Family Ring##3629 |q 98 |goto Duskwood 77.35,36.19 |tip {dropsfrom}Stalvan Mistmantle
step
  talk Tavernkeep Smitts##273
  accept Gather Rot Blossoms##156 |goto Duskwood 73.78,44.49
step
  note Gather 8 Rot Blossoms and bring them to Tavernkeep Smitts in Darkshire.
  collect 8 Rot Blossom##1598 |q 156 |goto Duskwood 23.06,47.92 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend
step
  talk Calor##663
  accept Worgen in the Woods##223 |goto Duskwood 75.75,47.57
step
  talk Commander Althea Ebonlocke##264
  accept The Daughter Who Lived##229 |goto Duskwood 73.54,46.82
step
  talk Clerk Daltry##267
  accept Inquire at the Inn##266 |goto Duskwood 72.54,46.87
step
  talk Tavernkeep Smitts##273
  turnin Inquire at the Inn##266 |goto Duskwood 73.78,44.49
step
  talk Tavernkeep Smitts##273
  turnin Gather Rot Blossoms##156 |goto Duskwood 73.78,44.49
step
  talk Jonathan Carevin##661
  turnin Worgen in the Woods##223 |goto Duskwood 75.32,49.02
step
  talk Madame Eva##265
  turnin The Legend of Stalvan##98 |goto Duskwood 75.79,45.32
step
  talk Watcher Ladimore##576
  turnin The Daughter Who Lived##229 |goto Duskwood 74.02,47.82
step
  talk Tavernkeep Smitts##273
  accept Juice Delivery##159 |goto Duskwood 73.78,44.49
step
  talk Watcher Ladimore##576
  accept A Daughter's Love##231 |goto Duskwood 74.02,47.82
step
  talk Tavernkeep Smitts##273
  accept Finding the Shadowy Figure##453 |goto Duskwood 73.78,44.49
step
  talk Jitters##288
  turnin Finding the Shadowy Figure##453 |goto Duskwood 18.38,56.37
step
  talk Jitters##288
  accept Return to Sven##268 |goto Duskwood 18.38,56.37
step
  talk Sven Yorgen##311
  turnin Return to Sven##268 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept Proving Your Worth##323 |goto Duskwood 7.78,34.07
step
  note Kill 15 Skeletal Raiders, 3 Skeletal Healers and 3 Skeletal Warders, and then return to Sven.
  kill Skeletal Raider##1110 |q 323 |goto Duskwood 16.89,36.85
step
  talk Abercrombie##289
  turnin Juice Delivery##159 |goto Duskwood 28.11,31.46
step
  turnin A Daughter's Love##231 |goto Duskwood 17.73,29.08
step
  talk Abercrombie##289
  accept Ghoulish Effigy##133 |goto Duskwood 28.11,31.46
step
  note Gather 7 Ghoul Ribs and bring them to Abercrombie at his shack.
  collect 7 Ghoul Rib##884 |q 133 |goto Duskwood 23.81,38.2 |tip {dropsfrom}Flesh Eater, Bone Chewer, Brain Eater
step
  talk Sven Yorgen##311
  turnin Proving Your Worth##323 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept Seeking Wisdom##269 |goto Duskwood 7.78,34.07
step
  talk Abercrombie##289
  turnin Ghoulish Effigy##133 |goto Duskwood 28.11,31.46
step
  talk Bishop Farthing##1212
  turnin Seeking Wisdom##269 |goto Stormwind City 39.1,27.86 |tip {turninat}Stormwind City
step
  talk Abercrombie##289
  accept Ogre Thieves##134 |goto Duskwood 28.11,31.46
step
  note Return Abercrombie's Crate to Abercrombie.
  collect Abercrombie's Crate##1349 |q 134 |goto Duskwood 33.42,76.35
step
  talk Abercrombie##289
  turnin Ogre Thieves##134 |goto Duskwood 28.11,31.46
step
  talk Abercrombie##289
  accept Note to the Mayor##160 |goto Duskwood 28.11,31.46
step
  talk Lord Ello Ebonlocke##263
  turnin Note to the Mayor##160 |goto Duskwood 71.93,46.42
step
  talk Lord Ello Ebonlocke##263
  accept Translate Abercrombie's Note##251 |goto Duskwood 71.93,46.42
step
  talk Sirra Von'Indi##268
  turnin Translate Abercrombie's Note##251 |goto Duskwood 72.62,47.62
step
  talk Sirra Von'Indi##268
  accept Wait for Sirra to Finish##401 |goto Duskwood 72.62,47.62
step
  talk Sirra Von'Indi##268
  turnin Wait for Sirra to Finish##401 |goto Duskwood 72.62,47.62
step
  talk Sirra Von'Indi##268
  accept Translation to Ello##252 |goto Duskwood 72.62,47.62
step
  talk Lord Ello Ebonlocke##263
  turnin Translation to Ello##252 |goto Duskwood 71.93,46.42
step
  talk Lord Ello Ebonlocke##263
  accept Bride of the Embalmer##253 |goto Duskwood 71.93,46.42
step
  talk Lord Ello Ebonlocke##263
  turnin Bride of the Embalmer##253 |goto Duskwood 71.93,46.42
step
  note {travel}The Barrens
  goto The Barrens 62.68,36.23
]])
