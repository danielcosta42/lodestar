-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Duskwood (24-30)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Hillsbrad Foothills (32-40)",
}, [[
step
  note {fp}Steven Black
  goto Duskwood 74.02,46.11 |tip {vendor}
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
  collect Bronze Tube##4371 |q 174 |goto Westfall 41.27,66.41 |tip {dropsfrom}Box of Assorted Parts
step
  talk Grimand Elmore##1416
  accept Armed and Ready##325 |goto Stormwind City 59.73,33.78
step
  talk Councilman Millstipe##270
  accept Crime and Punishment##377 |goto Duskwood 71.92,47.79
step
  note Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward.
  collect Hand of Dextren Ward##3628 |q 377 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Dextren Ward
step
  talk Thyn'tel Bladeweaver##8026
  accept Velinde's Effects##1038 |goto Darnassus 61.77,39.18
step
  note Search through Velinde's chest for her journal, then return it along with the key to Thyn'tel Bladeweaver in Darnassus.
  collect Velinde's Journal##5520 |q 1038 |goto Darnassus 62.29,83.29 |tip {dropsfrom}Velinde's Locker
step
  talk Clerk Daltry##267
  accept The Carevin Family##1042 |goto Duskwood 72.54,46.87
step
  only Warrior
  talk Furen Longbeard##5413
  accept Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23
step
  only Warrior
  note Gather the materials Furen Longbeard requires, and bring them to him in Stormwind.
  collect Scorched Spider Fang##6838 |q 1701 |goto Wetlands 52.66,62.81 |tip {dropsfrom}Leech Stalker, Cave Stalker
step
  only Warlock
  talk Krom Stoutarm##6294
  accept Tome of the Cabal##1802 |goto Ironforge 74.19,9.39
step
  only Warlock
  note Retrieve the Moldy Tome and Tattered Manuscript for Krom Stoutarm in Ironforge.
  collect Moldy Tome##6931 |q 1802 |goto Hillsbrad Foothills 27.78,72.79 |tip {dropsfrom}Tome of the Cabal
step
  talk Klockmort Spannerspan##6169
  accept Essential Artificials##2924 |goto Ironforge 67.92,46.1
step
  note Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge.
  collect 12 Essential Artificial##9278 |q 2924 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Artificial Extrapolator
step
  talk Mathiel##6142
  accept Klockmort's Essentials##2925 |goto Darnassus 59.51,45.38
step
  talk Shoni the Shilent##6579
  accept Gyrodrillmatic Excavationators##2928 |goto Stormwind City 62.63,34.11
step
  note Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind.
  collect Robo-mechanical Guts##9309 |q 2928 |goto Gnomeregan - Dungeon -1,-1 |elite |tip {dropsfrom}Caverndeep Burrower, Caverndeep Ambusher, Caverndeep Invader
step
  talk Master Mechanic Castpipe##7950
  accept Data Rescue##2930 |goto Ironforge 69.83,48.1
step
  note Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge.
  collect Prismatic Punch Card##9316 |q 2930 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Matrix Punchograph 3005-D
step
  talk Sirra Von'Indi##268
  accept The Valor Family##96139 |goto Duskwood 72.62,47.62
step
  note Search Raven Hill for anything of interest and return to Sirra Von'Indi in Darkshire.
  collect Raven Hill Tome##281046 |q 96139 |goto Duskwood 21.1,55.6 |tip {dropsfrom}Memory of Valor
step
  note Kill 6 Nightbane Shadow Weaver worgen for Calor in Darkshire.
  kill Nightbane Shadow Weaver##533 |q 173 |goto Duskwood 63.39,52.8
step
  talk Pilot Longbeard##2092
  accept The Brassbolts Brothers##1179 |goto Ironforge 72.73,94.01
step
  note Commander Althea Ebonlocke of Darkshire wants you to kill 8 Skeletal Warriors and 6 Skeletal Mages.
  kill Skeletal Warrior##48 |q 56 |goto Duskwood 79.75,70.25
step
  talk Innkeeper Farley##295
  turnin The Legend of Stalvan##69 |goto Elwynn Forest 43.77,65.8 |tip {turninat}Elwynn Forest
step
  talk Caretaker Folsom##297
  accept The Legend of Stalvan##72 |goto Stormwind City 42.53,72.36
step
  talk Watcher Dodds##888
  accept Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
  talk Zardeth of the Black Claw##1435
  accept A Noble Brew##335 |goto Stormwind City 40.14,85.31
step
  note Zardeth the Black Claw wants you to bring him a Tear of Tilloa from Darkshire and a Musquash Root from the Wetlands.
  collect Tear of Tilloa##2779 |q 335 |goto Duskwood 78.35,35.95
step
  talk Warden Thelwater##1719
  accept The Stockade Riots##391 |goto Stormwind City 51.49,69.38
step
  note Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade.
  collect Head of Bazil Thredd##2926 |q 391 |goto The Stockade - Dungeon -1,-1 |elite |tip {dropsfrom}Bazil Thredd
step
  talk Sara Balloo##2695
  accept Sara Balloo's Plea##683 |goto Ironforge 63.5,67.3
step
  talk Thomas##4982
  accept The Missing Diplomat##1274 |goto Stormwind City 49.64,44.48
step
  only Warrior
  talk Torm Ragetotem##3041
  accept The Islander##1718 |goto Thunder Bluff 57.24,87.37
step
  only Mage
  talk High Sorcerer Andromath##5694
  accept Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 48.71,87.62
step
  only Mage
  note Bring Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind.
  collect Ur's Treatise on Shadow Magic##7266 |q 1938 |goto Redridge Mountains 73.77,47.61
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
  turnin Armed and Ready##325 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept Morbent Fel##55 |goto Duskwood 7.78,34.07
step
  talk Sven Yorgen##311
  accept Sven's Revenge##95 |goto Duskwood 7.78,34.07
step
  talk Lars##893
  accept Wolves at Our Heels##226 |goto Duskwood 7.71,33.2
step
  note Use Morbent's Bane on Morbent Fel, kill Morbent Fel, then return Morbent's Bane to Sven at his camp.
  kill Morbent Fel##1200 |q 55 |goto Duskwood 16.9,33.4 |elite
step
  talk Magistrate Solomon##344
  turnin Messenger to Darkshire##146 |goto Redridge Mountains 24.9,44.45 |tip {turninat}Redridge Mountains
step
  talk Abercrombie##289
  turnin The Hermit##165 |goto Duskwood 28.11,31.46
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
  only Warlock
  talk Lago Blackwrench##6120
  accept Seeking Strahad##1798 |goto Ironforge 47.63,9.26
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
  only Warlock
  talk Strahad Farsan##6251
  turnin Seeking Strahad##1798 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  only Warlock
  talk Krom Stoutarm##6294
  turnin Tome of the Cabal##1802 |goto Ironforge 74.19,9.39 |tip {turninat}Ironforge
step
  talk Sirra Von'Indi##268
  turnin The Valor Family##96139 |goto Duskwood 72.62,47.62
step
  talk Thyn'tel Bladeweaver##8026
  turnin Velinde's Effects##1038 |goto Darnassus 61.77,39.18 |tip {turninat}Darnassus
step
  talk Jonathan Carevin##661
  turnin The Carevin Family##1042 |goto Duskwood 75.32,49.02
step
  talk Madame Eva##265
  turnin Supplies from Darkshire##148 |goto Duskwood 75.79,45.32
step
  only Warrior
  talk Furen Longbeard##5413
  turnin Fire Hardened Mail##1701 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
step
  talk Calor##663
  turnin Worgen in the Woods##173 |goto Duskwood 75.75,47.57
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##174 |goto Duskwood 79.8,48.02
step
  only Warrior
  talk Klannoc Macleod##6236
  turnin The Islander##1718 |goto The Barrens 68.62,49.16 |tip {turninat}The Barrens
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
  turnin An Old History Book##337 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  talk Sirra Von'Indi##268
  turnin The Weathered Grave##225 |goto Duskwood 72.62,47.62
step
  talk Madame Eva##265
  turnin The Totem of Infliction##101 |goto Duskwood 75.79,45.32
step
  talk Klockmort Spannerspan##6169
  turnin Essential Artificials##2924 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Essentials##2925 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  talk Shoni the Shilent##6579
  turnin Gyrodrillmatic Excavationators##2928 |goto Stormwind City 62.63,34.11 |tip {turninat}Stormwind City
step
  talk Master Mechanic Castpipe##7950
  turnin Data Rescue##2930 |goto Ironforge 69.83,48.1 |tip {turninat}Ironforge
step
  talk Councilman Millstipe##270
  turnin Crime and Punishment##377 |goto Duskwood 71.92,47.79
step
  talk Bishop DeLavey##4960
  turnin The Missing Diplomat##1274 |goto Stormwind City 80.24,44.07 |tip {turninat}Stormwind City
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
  talk Thyn'tel Bladeweaver##8026
  accept The Barrens Port##1039 |goto Darnassus 61.77,39.18
step
  talk Jonathan Carevin##661
  accept The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
step
  talk Bishop DeLavey##4960
  accept The Missing Diplomat##1241 |goto Stormwind City 80.24,44.07
step
  only Warrior
  talk Furen Longbeard##5413
  accept Furen's Armor##1782 |goto Stormwind City 64.62,37.23
step
  only Warlock
  talk Krom Stoutarm##6294
  accept Tome of the Cabal##1804 |goto Ironforge 74.19,9.39
step
  only Warlock
  note Bring the Reconstructed Tome and 3 Rods of Channeling to Strahad Farsan in Ratchet.
  collect Rod of Channeling##6930 |q 1804 |goto Wetlands 53.09,54.36 |tip {dropsfrom}Dragonmaw Shadowwarder, Dragonmaw Bonewarder, Dragonmaw Thaumaturgist
step
  talk Blind Mary##302
  turnin Ghost Hair Thread##149 |goto Duskwood 81.99,59.09
step
  talk Wizzle Brassbolts##4453
  turnin The Brassbolts Brothers##1179 |goto Thousand Needles 78.14,77.12 |tip {turninat}Thousand Needles
step
  talk Blind Mary##302
  turnin Look To The Stars##175 |goto Duskwood 81.99,59.09
step
  talk Jorgen##4959
  turnin The Missing Diplomat##1241 |goto Stormwind City 76.29,85.12 |tip {turninat}Stormwind City
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
  talk Jorgen##4959
  accept The Missing Diplomat##1242 |goto Stormwind City 76.29,85.12
step
  note Look for signs of the Scythe of Elune then return to Jonathan Carevin in Darkshire.
  collect Mound of Dirt##19030 |q 1043 |goto Duskwood 73.53,79.14
step
  talk Warden Thelwater##1719
  turnin The Stockade Riots##391 |goto Stormwind City 51.49,69.38 |tip {turninat}Stormwind City
step
  only Mage
  talk High Sorcerer Andromath##5694
  turnin Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 48.71,87.62 |tip {turninat}Stormwind City
step
  talk King Magni Bronzebeard##2784
  turnin Sara Balloo's Plea##683 |goto Ironforge 39.09,56.2 |tip {turninat}Ironforge
step
  turnin The Legend of Stalvan##67 |goto Westfall 41.51,66.73 |tip {turninat}Westfall
step
  turnin The Legend of Stalvan##72 |goto Stormwind City 42.47,72.05 |tip {turninat}Stormwind City
step
  talk Zardeth of the Black Claw##1435
  turnin A Noble Brew##335 |goto Stormwind City 40.14,85.31 |tip {turninat}Stormwind City
step
  turnin Sven's Revenge##95 |goto Duskwood 49.85,77.71
step
  talk Watcher Dodds##888
  turnin Eight-Legged Menaces##245 |goto Duskwood 45.12,67.03
step
  click Mound of loose dirt##59
  accept Sven's Camp##230 |goto Duskwood 49.85,77.71
step
  talk Zardeth of the Black Claw##1435
  accept A Noble Brew##336 |goto Stormwind City 40.14,85.31
step
  talk Warden Thelwater##1719
  accept The Curious Visitor##392 |goto Stormwind City 51.49,69.38
step
  talk King Magni Bronzebeard##2784
  accept A King's Tribute##686 |goto Ironforge 39.09,56.2
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
  talk Baros Alexston##1646
  turnin The Curious Visitor##392 |goto Stormwind City 57.74,47.86 |tip {turninat}Stormwind City
step
  only Warlock
  talk Strahad Farsan##6251
  turnin Tome of the Cabal##1804 |goto The Barrens 62.63,35.5 |tip {turninat}The Barrens
step
  talk Wharfmaster Dizzywig##3453
  turnin The Barrens Port##1039 |goto The Barrens 63.35,38.45 |tip {turninat}The Barrens
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
  talk Lord Baurles K. Wishock##1439
  turnin A Noble Brew##336 |goto Stormwind City 77.88,48.95 |tip {turninat}Stormwind City
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
  only Warrior
  talk Furen Longbeard##5413
  turnin Furen's Armor##1782 |goto Stormwind City 64.62,37.23 |tip {turninat}Stormwind City
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
  collect Ogre's Monocle##1968 |q 181 |goto Duskwood 36.81,80 |tip {dropsfrom}Zzarc' Vul
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
  talk Baros Alexston##1646
  accept Shadow of the Past##393 |goto Stormwind City 57.74,47.86
step
  talk Jonathan Carevin##661
  accept Answered Questions##1044 |goto Duskwood 75.32,49.02
step
  only Human Warrior
  talk Furen Longbeard##5413
  accept Grimand Elmore##1700 |goto Stormwind City 64.62,37.23
step
  only NightElf Warrior
  talk Furen Longbeard##5413
  accept Mathiel##1703 |goto Stormwind City 64.62,37.23
step
  only Warrior
  talk Furen Longbeard##5413
  accept Klockmort Spannerspan##1704 |goto Stormwind City 64.62,37.23
step
  only Warrior
  talk Grimand Elmore##1416
  accept Burning Blood##1705 |goto Stormwind City 59.73,33.78
step
  only Warrior
  note Bring 20 vials of Burning Blood and 1 Burning Rock to Grimand Elmore in Stormwind.
  collect 20 Burning Blood##6844 |q 1705 |goto Duskwood 64.14,67.71 |tip {dropsfrom}Nightbane Dark Runner, Nightbane Vile Fang, Nightbane Shadow Weaver
step
  only Warrior
  talk Klockmort Spannerspan##6169
  accept Iron Coral##1708 |goto Ironforge 67.92,46.1
step
  only Warrior
  note Bring 20 loads of Searing Coral to Klockmort Spannerspan in Ironforge.
  collect 20 Searing Coral##6848 |q 1708 |goto Wetlands 9.08,70.34 |tip {dropsfrom}Iron Coral
step
  only Warrior
  talk Mathiel##6142
  accept Sunscorched Shells##1710 |goto Darnassus 59.51,45.38
step
  only Warrior
  note Bring 20 Sunscorched Shells to Mathiel in Darnassus.
  collect 20 Sunscorched Shell##6849 |q 1710 |goto Thousand Needles 11.41,37.05
step
  talk Master Mathias Shaw##332
  turnin Shadow of the Past##393 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1242 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
step
  talk Elling Trias##482
  accept The Missing Diplomat##1243 |goto Stormwind City 66.03,74.1
step
  note Kill 8 Nightbane Vile Fang and 8 Nightbane Tainted One worgen for Calor in Darkshire.
  kill Nightbane Vile Fang##206 |q 222 |goto Duskwood 72.3,72.31
step
  talk Grand Mason Marblesten##2790
  turnin A King's Tribute##686 |goto Ironforge 39.04,88.05 |tip {turninat}Ironforge
step
  only Warlock
  talk Zardeth of the Black Claw##1435
  accept You Have Served Us Well##397 |goto Stormwind City 40.14,85.31
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
  only Human Warrior
  talk Grimand Elmore##1416
  turnin Grimand Elmore##1700 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only NightElf Warrior
  talk Mathiel##6142
  turnin Mathiel##1703 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Klockmort Spannerspan##1704 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Burning Blood##1705 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Iron Coral##1708 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only Warrior
  talk Mathiel##6142
  turnin Sunscorched Shells##1710 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  talk Viktori Prism'Antras##276
  turnin Look To The Stars##181 |goto Duskwood 79.8,48.02
step
  talk Commander Althea Ebonlocke##264
  turnin The Night Watch##58 |goto Duskwood 73.54,46.82
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1243 |goto Duskwood 74.83,44.22
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
  collect 8 Rot Blossom##1598 |q 156 |goto Duskwood 23.06,47.92 |tip {dropsfrom}Skeletal Horror, Skeletal Fiend, Skeletal Fiend (Enraged Form)
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
  talk Watcher Backus##840
  accept The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  note Find the Defias Docket and return it to Watcher Backus in Duskwood.
  collect Defias Docket##5947 |q 1244 |goto Duskwood 23.92,72.07 |tip {dropsfrom}Defias Strongbox
step
  only Warrior
  talk Grimand Elmore##1416
  accept Grimand's Armor##1706 |goto Stormwind City 59.73,33.78
step
  only Warrior
  talk Klockmort Spannerspan##6169
  accept Klockmort's Creation##1709 |goto Ironforge 67.92,46.1
step
  only Warrior
  talk Mathiel##6142
  accept Mathiel's Armor##1711 |goto Darnassus 59.51,45.38
step
  only Warlock
  talk Zggi##1733
  turnin You Have Served Us Well##397 |goto Stormwind City 40.21,85.31 |tip {turninat}Stormwind City
step
  talk Tavernkeep Smitts##273
  turnin Inquire at the Inn##266 |goto Duskwood 73.78,44.49
step
  talk Tavernkeep Smitts##273
  turnin Gather Rot Blossoms##156 |goto Duskwood 73.78,44.49
step
  only Warrior
  talk Grimand Elmore##1416
  turnin Grimand's Armor##1706 |goto Stormwind City 59.73,33.78 |tip {turninat}Stormwind City
step
  only Warrior
  talk Klockmort Spannerspan##6169
  turnin Klockmort's Creation##1709 |goto Ironforge 67.92,46.1 |tip {turninat}Ironforge
step
  only Warrior
  talk Mathiel##6142
  turnin Mathiel's Armor##1711 |goto Darnassus 59.51,45.38 |tip {turninat}Darnassus
step
  talk Watcher Backus##840
  turnin The Missing Diplomat##1244 |goto Duskwood 74.83,44.22
step
  talk Jonathan Carevin##661
  turnin Worgen in the Woods##223 |goto Duskwood 75.32,49.02
step
  talk Watcher Ladimore##576
  turnin The Daughter Who Lived##229 |goto Duskwood 74.02,47.82
step
  talk Madame Eva##265
  turnin The Legend of Stalvan##98 |goto Duskwood 75.79,45.32
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
  talk Watcher Backus##840
  accept The Missing Diplomat##1245 |goto Duskwood 74.83,44.22
step
  talk Elling Trias##482
  turnin The Missing Diplomat##1245 |goto Stormwind City 66.03,74.1 |tip {turninat}Stormwind City
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
  talk Abercrombie##289
  accept Ogre Thieves##134 |goto Duskwood 28.11,31.46
step
  note Return Abercrombie's Crate to Abercrombie.
  collect Abercrombie's Crate##1349 |q 134 |goto Duskwood 33.42,76.35
step
  talk Bishop Farthing##1212
  turnin Seeking Wisdom##269 |goto Stormwind City 49.93,45.99 |tip {turninat}Stormwind City
step
  talk Bishop Farthing##1212
  accept The Doomed Fleet##270 |goto Stormwind City 49.93,45.99
step
  talk Glorin Steelbrow##1217
  turnin The Doomed Fleet##270 |goto Wetlands 10.58,60.59 |tip {turninat}Wetlands
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
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 50.53,70.01
]])
