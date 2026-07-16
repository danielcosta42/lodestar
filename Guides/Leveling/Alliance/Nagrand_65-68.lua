-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Nagrand (65-68)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Blade's Edge Mountains (66-70)",
}, [[
step
  note {fp}Furgu
  goto Nagrand 54.17,75.06 |tip {vendor}
step
  talk Elementalist Lo'ap##18073
  accept A Rare Bean##9800 |goto Nagrand 60.8,22.38
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to bring him 15 Digested Caracoli.
  collect Digested Caracoli##24419 |q 9800 |goto Nagrand 52.83,23.31 |tip {dropsfrom}Dung
step
  talk Elementalist Lo'ap##18073
  accept Muck Diving##9815 |goto Nagrand 60.8,22.38
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to retrieve 5 Muck-ridden Cores.
  collect 5 Muck-ridden Core##24469 |q 9815 |goto Nagrand 43.16,42.98 |tip {dropsfrom}Muck Spawn
step
  talk Elementalist Untrag##18071
  accept The Underneath##9818 |goto Nagrand 60.66,22.65
step
  talk Elementalist Morgh##18074
  accept Murkblood Corrupters##9862 |goto Nagrand 60.5,22.37
step
  talk Gurgthock##18471
  accept The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.78,20.73
step
  note Defeat Brokentoe. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Brokentoe##18398 |q 9962 |elite
step
  talk Altruis the Sufferer##18417
  accept Forge Camp: Annihilated##10011 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Against the Legion##10641 |goto Nagrand 27.34,43.09
step
  note Altruis the sufferer wants you to obtain Freshly Drawn Blood from a Wrath Priestess at Forge Base: Gehenna in Netherstorm. Spill it on the ground and slay the Avatar of Sathal. Return to Altruis when you've completed this task.
  kill Avatar of Sathal##21925 |q 10641
step
  talk Altruis the Sufferer##18417
  accept Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer wants you to take the Imbued Silver Spear and use it at Portal Clearing near Marshlight Lake in Zangarmarsh to awake Xeleth. Return to Altruis after you've slain the demon.
  kill Xeleth##21894 |q 10669
step
  note Elementalist Morgh at the Throne of the Elements in Nagrand wants you to slay 8 Murkblood Putrifiers.
  kill Murkblood Putrifier##18202 |q 9862 |goto Nagrand 32.22,44.97
step
  note Altruis the Sufferer wants you to slay Lothros at Illidari Point in Shadowmoon Valley.
  kill Lothros##21928 |q 10668 |goto Shadowmoon Valley 28.29,49.97
step
  note Altruis the Sufferer in western Nagrand has asked that you Destroy Forge Camp: Hate and Destroy Forge Camp: Fear.
  kill Fel Cannon: Hate##19067 |q 10011 |goto Nagrand 25.1,35.98
step
  talk Gezhe##18265
  accept Stealing from Thieves##9882 |goto Nagrand 31.36,57.79
step
  note Obtain 10 Oshu'gun Crystal Fragments and bring them to Gezhe at Aeris Landing in Nagrand.
  collect 10 Oshu'gun Crystal Fragment##25416 |q 9882 |goto Nagrand 35.23,71.18 |tip {dropsfrom}Vir'aani Raider, Oshu'gun Crystal Fragment
step
  talk Gezhe##18265
  accept Obsidian Warbeads##9893 |goto Nagrand 31.36,57.79
step
  note Bring 10 Obsidian Warbeads to Gezhe at Aeris Landing in Nagrand.
  collect 10 Obsidian Warbeads##25433 |q 9893 |goto Nagrand 74.47,64.02 |tip {dropsfrom}Boulderfist Crusher, Boulderfist Mystic, Boulderfist Warrior
step
  talk Zerid##18276
  accept Gava'xi##9900 |goto Nagrand 30.78,58.13
step
  talk Shadrek##18333
  accept A Head Full of Ivory##9914 |goto Nagrand 31.77,56.78
step
  note Collect 3 Pair of Ivory Tusks and return them to Shadrek at Aeris Landing in Nagrand.
  collect 3 Pair of Ivory Tusks##25463 |q 9914 |goto Nagrand 46.86,54.6 |tip {dropsfrom}Wild Elekk
step
  talk Zerid##18276
  accept Matters of Security##9925 |goto Nagrand 30.78,58.13
step
  note Zerid at Aeris Landing in Nagrand wants you to kill 12 Voidspawn near Oshu'gun.
  kill Voidspawn##17981 |q 9925 |goto Nagrand 37.52,70.28
step
  talk Nitrin the Learned##19844
  accept Vision of the Dead##10252 |goto Nagrand 51.82,56.84
step
  note Nitrin at the Abandoned Armory in Nagrand wants you to bring him 1 Mountain Gronn Eyeball, 1 Flawless Greater Windroc Beak, and 1 Aged Clefthoof Blubber.
  collect Mountain Gronn Eyeball##28665 |q 10252 |goto Nagrand 27.22,42.14 |tip {dropsfrom}Mountain Gronn
step
  talk Elementalist Ioki##18233
  accept The Throne of the Elements##9869 |goto Nagrand 55.52,68.78
step
  talk Arechron##18183
  accept Ortor My Old Friend...##9873 |goto Nagrand 55.48,68.7
step
  talk Otonbu the Sage##18222
  accept Stopping the Spread##9874 |goto Nagrand 54.48,72.08
step
  talk Poli'lukluk the Wiser##18224
  accept Solving the Problem##9878 |goto Nagrand 54.47,72.31
step
  talk Consortium Recruiter##18335
  accept The Consortium Needs You!##9913 |goto Nagrand 51.95,69.77
step
  talk Huntress Bintook##18353
  accept Do My Eyes Deceive Me##9917 |goto Nagrand 55.05,70.53
step
  note Huntress Bintook at Telaar in Nagrand wants you to recover Boulderfist Plans.
  collect Boulderfist Plans##25468 |q 9917 |goto Nagrand 62.36,72.99 |tip {dropsfrom}Boulderfist Hunter
step
  talk Huntress Kima##18416
  accept The Ravaged Caravan##9956 |goto Nagrand 54.24,72.27
step
  note Huntress Kima at Telaar in Nagrand wants you to recover 20 Telaar Supply Crates.
  collect Telaar Supply Crate##25647 |q 9956 |goto Nagrand 26.16,19.83 |tip {dropsfrom}Telaar Supply Crate
step
  talk Huntress Kima##18416
  accept He Called Himself Altruis...##9982 |goto Nagrand 54.24,72.27
step
  talk "Shotgun" Jones##19137
  accept The Nesingwary Safari##10113 |goto Nagrand 55.01,70.39
step
  talk Warden Moi'bff Jill##18408
  accept Fierce Enemies##10476 |goto Nagrand 54.74,70.88
step
  note Warden Moi'bff Jill at Telaar wants you to obtain 10 Obsidian Warbeads from the various ogres that inhabit Nagrand.
  collect 10 Obsidian Warbeads##25433 |q 10476 |goto Nagrand 74.47,64.02 |tip {dropsfrom}Boulderfist Crusher, Boulderfist Mystic, Boulderfist Warrior
step
  talk Seer Jovar##23268
  accept A Mystifying Vision##11042 |goto Nagrand 55.4,68.69
step
  talk Seer Jovar##23268
  accept Visions of Destruction##11044 |goto Nagrand 55.4,68.69
step
  note Slay Gava'xi near Oshu'gun and return to Zerid at Aeris Landing in Nagrand.
  kill Gava'xi##18298 |q 9900 |goto Nagrand 41.51,71.42
step
  talk Wazat##19035
  accept I Must Have Them!##10109 |goto Nagrand 61.72,67.05
step
  note Wazat across from Clan Watch in southern Nagrand wants you to bring him 3 Air Elemental Gases.
  collect Air Elemental Gas##27807 |q 10109 |goto Nagrand 68.0,50.8 |tip {dropsfrom}Dust Howler, Storm Rager, Living Cyclone
step
  talk Corki##18369
  accept HELP!##9923 |goto Nagrand 72.53,70.74
step
  note Find the Boulderfist Key and Free Corki. Speak with Arechron in Telaar should you succeed.
  kill Corki##18369 |q 9923 |goto Nagrand 72.53,70.74
step
  talk Lantresor of the Blade##18261
  accept Ruthless Cunning##9927 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  accept Armaments for Deception##9928 |goto Nagrand 73.81,62.6
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to collect 20 Kil'sorrow Armaments.
  collect 20 Kil'sorrow Armaments##25554 |q 9928 |goto Nagrand 69.34,79.16 |tip {dropsfrom}Kil'sorrow Cultist, Kil'sorrow Armaments
step
  talk Lantresor of the Blade##18261
  accept Returning the Favor##9931 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  accept Body of Evidence##9932 |goto Nagrand 73.81,62.6
step
  talk Hemet Nesingwary##18180
  turnin The Nesingwary Safari##10113 |goto Nagrand 71.52,40.82
step
  talk Hemet Nesingwary##18180
  accept Clefthoof Mastery##9789 |goto Nagrand 71.52,40.82
step
  talk Shado 'Fitz' Farstrider##18200
  accept Windroc Mastery##9854 |goto Nagrand 71.57,40.52
step
  talk Harold Lane##18218
  accept Talbuk Mastery##9857 |goto Nagrand 71.38,40.62
step
  note Kill 30 Windrocs and then return to Fitz at the Nesingwary Safari in Nagrand.
  kill Windroc##17128 |q 9854 |goto Nagrand 65.22,40.69
step
  talk Elementalist Morgh##18074
  turnin Murkblood Corrupters##9862 |goto Nagrand 60.5,22.37
step
  talk Elementalist Sharvak##18072
  turnin The Throne of the Elements##9869 |goto Nagrand 60.66,22.1
step
  talk Elementalist Lo'ap##18073
  turnin A Rare Bean##9800 |goto Nagrand 60.8,22.38
step
  talk Elementalist Lo'ap##18073
  turnin Muck Diving##9815 |goto Nagrand 60.8,22.38
step
  talk Gordawg##18099
  turnin The Underneath##9818 |goto Nagrand 61.33,24.82
step
  talk Elementalist Lo'ap##18073
  accept Agitated Spirits of Skysong##9804 |goto Nagrand 60.8,22.38
step
  talk Gordawg##18099
  accept The Tortured Earth##9819 |goto Nagrand 61.33,24.82
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy 12 Lake Spirits.
  kill Lake Spirit##17153 |q 9804 |goto Nagrand 58.8,29.02
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.78,20.73
step
  note Defeat the Murkblood Twins that call themselves the Blue Brothers. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Murkblood Twin##18399 |q 9967 |elite
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to drive 20 Kil'sorrow Banners through the bodies of Warmaul ogres at the Laughing Skull Ruins.
  kill Warmaul Ogre Credit Marker##18393 |q 9931 |goto Nagrand 45.79,22.42
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to use the Damp Woolen Blanket at the Blazing Warmaul Pyre in the Laughing Skull Courtyard to signal his ogres.
  kill Warmaul Pyre Credit Marker##18395 |q 9932 |goto Nagrand 46.57,24.42
step
  talk Altruis the Sufferer##18417
  turnin Against the Legion##10641 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Forge Camp: Annihilated##10011 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin He Called Himself Altruis...##9982 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  note Arechron at Telaar in Nagrand wants you to kill Ortor of Murkblood.
  kill Ortor of Murkblood##18204 |q 9873 |goto Nagrand 30.84,42.36
step
  note Otonbu the Sage at Telaar in Nagrand wants you to use the Torch of Liquid Fire to destroy 10 Sunspring Villager corpses. Return the Torch of Liquid Fire when the task is complete.
  kill Sunspring Villager##18240 |q 9874 |goto Nagrand 33.26,45.23
step
  note Poli'lukluk the Wiser at Telaar in Nagrand wants you to kill 20 Murkblood Scavengers and 10 Murkblood Raiders.
  kill Murkblood Scavenger##18207 |q 9878 |goto Nagrand 32.2,43.15
step
  talk Gezhe##18265
  turnin Stealing from Thieves##9882 |goto Nagrand 31.36,57.79
step
  talk Rocket-Chief Fuselage##19570
  turnin A Mystifying Vision##11042 |goto Netherstorm 32.73,64.96 |tip {turninat}Netherstorm
step
  talk Wing Commander Nuainn##21357
  turnin Visions of Destruction##11044 |goto Shadowmoon Valley 39.5,53.73 |tip {turninat}Shadowmoon Valley
step
  talk Gezhe##18265
  turnin Obsidian Warbeads##9893 |goto Nagrand 31.36,57.79
step
  talk Zerid##18276
  turnin Gava'xi##9900 |goto Nagrand 30.78,58.13
step
  talk Gezhe##18265
  turnin The Consortium Needs You!##9913 |goto Nagrand 31.36,57.79
step
  talk Shadrek##18333
  turnin A Head Full of Ivory##9914 |goto Nagrand 31.77,56.78
step
  talk Zerid##18276
  turnin Matters of Security##9925 |goto Nagrand 30.78,58.13
step
  talk Nitrin the Learned##19844
  turnin Vision of the Dead##10252 |goto Nagrand 51.82,56.84
step
  talk Nitrin the Learned##19844
  accept Levixus the Soul Caller##10253 |goto Nagrand 51.82,56.84
step
  note Destroy Levixus and take the Book of the Dead from his possession.
  collect The Book of the Dead##28677 |q 10253 |goto Terokkar Forest 39.63,71.27 |tip {dropsfrom}Levixus
step
  talk Arechron##18183
  turnin Ortor My Old Friend...##9873 |goto Nagrand 55.48,68.7
step
  talk Otonbu the Sage##18222
  turnin Stopping the Spread##9874 |goto Nagrand 54.48,72.08
step
  talk Poli'lukluk the Wiser##18224
  turnin Solving the Problem##9878 |goto Nagrand 54.47,72.31
step
  talk Huntress Bintook##18353
  turnin Do My Eyes Deceive Me##9917 |goto Nagrand 55.05,70.53
step
  talk Arechron##18183
  turnin HELP!##9923 |goto Nagrand 55.48,68.7
step
  talk Huntress Kima##18416
  turnin The Ravaged Caravan##9956 |goto Nagrand 54.24,72.27
step
  talk Warden Moi'bff Jill##18408
  turnin Fierce Enemies##10476 |goto Nagrand 54.74,70.88
step
  talk Huntress Bintook##18353
  accept Not On My Watch!##9918 |goto Nagrand 55.05,70.53
step
  talk Arechron##18183
  accept Corki's Gone Missing Again!##9924 |goto Nagrand 55.48,68.7
step
  talk Wazat##19035
  turnin I Must Have Them!##10109 |goto Nagrand 61.72,67.05
step
  talk Wazat##19035
  accept Bring Me The Egg!##10111 |goto Nagrand 61.72,67.05
step
  note Hunt down 30 Clefthoof and return to Hemet Nesingwary at Nesingwary's Safari in Nagrand to prove yourself.
  kill Clefthoof##18205 |q 9789 |goto Nagrand 65.01,63.98
step
  note Huntress Bintook at Telaar in Nagrand wants you to speak to Lump. Return to Huntress Bintook when you have gathered the information that she requested.
  kill Lump's Quest Credit##18354 |q 9918 |goto Nagrand 62.81,71.54
step
  note Gordawg at the Throne of the Elements in Nagrand has asked that you destroy 15 Tortured Earth Spirits.
  kill Tortured Earth Spirit##17156 |q 9819 |goto Nagrand 64.45,57.52
step
  note Wazat in Nagrand wants you to use the Jump-a-tron 4000 to get to the nest in the nearby tree and steal the Mysterious Egg.
  collect Mysterious Egg##183147 |q 10111 |goto Nagrand 61.34,66.98
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to drive 20 Warmaul Ogre Banners through the bodies of Kil'sorrow members at Kil'sorrow Fortress.
  kill Shadow Council Credit Marker##18388 |q 9927 |goto Nagrand 70.65,79.0
step
  talk Lantresor of the Blade##18261
  turnin Ruthless Cunning##9927 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  turnin Armaments for Deception##9928 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  turnin Returning the Favor##9931 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  turnin Body of Evidence##9932 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  accept Message to Telaar##9933 |goto Nagrand 73.81,62.6
step
  note Kill 30 Talbuk Stags and then return to Harold Lane at the Nesingwary Safari in Nagrand.
  kill Talbuk Stag##17130 |q 9857 |goto Nagrand 67.05,60.82
step
  talk Harold Lane##18218
  turnin Talbuk Mastery##9857 |goto Nagrand 71.38,40.62
step
  talk Shado 'Fitz' Farstrider##18200
  turnin Windroc Mastery##9854 |goto Nagrand 71.57,40.52
step
  talk Hemet Nesingwary##18180
  turnin Clefthoof Mastery##9789 |goto Nagrand 71.52,40.82
step
  talk Hemet Nesingwary##18180
  accept Clefthoof Mastery##9850 |goto Nagrand 71.52,40.82
step
  talk Shado 'Fitz' Farstrider##18200
  accept Windroc Mastery##9855 |goto Nagrand 71.57,40.52
step
  talk Harold Lane##18218
  accept Talbuk Mastery##9858 |goto Nagrand 71.38,40.62
step
  talk Elementalist Lo'ap##18073
  turnin Agitated Spirits of Skysong##9804 |goto Nagrand 60.8,22.38
step
  talk Gordawg##18099
  turnin The Tortured Earth##9819 |goto Nagrand 61.33,24.82
step
  talk Elementalist Lo'ap##18073
  accept Blessing of Incineratus##9805 |goto Nagrand 60.8,22.38
step
  talk Gordawg##18099
  accept Eating Damnation##9821 |goto Nagrand 61.33,24.82
step
  note Gordawg at the Throne of the Elements in Nagrand has asked that you bring him 15 Enraged Crusher Cores.
  collect Enraged Crusher Core##24473 |q 9821 |goto Nagrand 47.41,52.99 |tip {dropsfrom}Enraged Crusher
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.78,20.73
step
  note Defeat Rokdar the Sundered Lord. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Rokdar the Sundered Lord##18400 |q 9970 |elite
step
  note Arechron at Telaar has asked that you find and free Corki.
  kill Corki##20812 |q 9924 |goto Nagrand 39.25,27.42
step
  talk Altruis the Sufferer##18417
  turnin Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept The Book of Fel Names##10649 |goto Nagrand 27.34,43.09
step
  note Venture inside the Shadow Labyrinth in Auchindoun and obtain the Book of Fel Names from Blackheart the Inciter. Return to Altruis in Nagrand once you've completed this task.
  collect Book of Fel Names##30808 |q 10649 |goto Shadow Labyrinth - Dungeon -1,-1 |tip {dropsfrom}Blackheart the Inciter, Blackheart the Inciter (1)
step
  note Altruis the Sufferer in western Nagrand has asked that you kill 2 Felguard Legionnaires, 3 Mo'arg Engineers and 8 Gan'arg Tinkerers.
  kill Felguard Legionnaire##17152 |q 9999 |goto Nagrand 21.39,42.9 |elite
step
  talk Ramdor the Mad##19417
  turnin Levixus the Soul Caller##10253 |goto Terokkar Forest 35.15,66.24 |tip {turninat}Terokkar Forest
step
  note Hunt down 30 Talbuk Thorngrazers and then return to Harold Lane at the Nesingwary Safari in Nagrand.
  kill Talbuk Thorngrazer##17131 |q 9858 |goto Nagrand 50.8,39.93
step
  note Hunt down 30 Ravenous Windrocs and then return to Fitz at the Nesingwary Safari in Nagrand.
  kill Ravenous Windroc##18220 |q 9855 |goto Nagrand 49.01,60.47
step
  note Kill 30 Clefthoof Bulls and then speak to Hemet Nesingwary at Nesingwary's Safari in Nagrand about your prowess.
  kill Clefthoof Bull##17132 |q 9850 |goto Nagrand 50.57,42.98
step
  talk Huntress Bintook##18353
  turnin Not On My Watch!##9918 |goto Nagrand 55.05,70.53
step
  talk Arechron##18183
  turnin Corki's Gone Missing Again!##9924 |goto Nagrand 55.48,68.7
step
  talk Arechron##18183
  turnin Message to Telaar##9933 |goto Nagrand 55.48,68.7
step
  talk Huntress Bintook##18353
  accept Mo'mor the Breaker##9920 |goto Nagrand 55.05,70.53
step
  talk Arechron##18183
  accept Corki's Ransom##9954 |goto Nagrand 55.48,68.7
step
  talk Wazat##19035
  turnin Bring Me The Egg!##10111 |goto Nagrand 61.72,67.05
step
  talk Harold Lane##18218
  turnin Talbuk Mastery##9858 |goto Nagrand 71.38,40.62
step
  talk Shado 'Fitz' Farstrider##18200
  turnin Windroc Mastery##9855 |goto Nagrand 71.57,40.52
step
  talk Hemet Nesingwary##18180
  turnin Clefthoof Mastery##9850 |goto Nagrand 71.52,40.82
step
  talk Hemet Nesingwary##18180
  accept Clefthoof Mastery##9851 |goto Nagrand 71.52,40.82
step
  note Acquire the Horn of Banthar and return it to Hemet Nesingwary at the Nesingwary Safari in Nagrand.
  collect Horn of Banthar##24496 |q 9851 |goto Nagrand 41.4,61.57 |tip {dropsfrom}Banthar
step
  talk Shado 'Fitz' Farstrider##18200
  accept Windroc Mastery##9856 |goto Nagrand 71.57,40.52
step
  note Bring the Eye of Gutripper to Fitz at the Nesingwary Safari in Nagrand.
  collect Eye of Gutripper##24513 |q 9856 |goto Nagrand 31.01,30.98 |tip {dropsfrom}Gutripper
step
  talk Harold Lane##18218
  accept Talbuk Mastery##9859 |goto Nagrand 71.38,40.62
step
  note Obtain the Hoof of Bach'lor and return it to Harold Lane at the Nesingwary Safari in Nagrand.
  collect Hoof of Bach'lor##24523 |q 9859 |goto Nagrand 26.1,53.12 |tip {dropsfrom}Bach'lor
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
  kill Windyreed Quest Credit (Big Hut)##18110 |q 9805 |goto Nagrand 72.43,50.25
step
  talk Elementalist Lo'ap##18073
  turnin Blessing of Incineratus##9805 |goto Nagrand 60.8,22.38
step
  talk Gordawg##18099
  turnin Eating Damnation##9821 |goto Nagrand 61.33,24.82
step
  talk Elementalist Lo'ap##18073
  accept The Spirit Polluted##9810 |goto Nagrand 60.8,22.38
step
  talk Gordawg##18099
  accept Shattering the Veil##9849 |goto Nagrand 61.33,24.82
step
  note Gordawg at the Throne of the Elements in Nagrand has asked that you slay 30 Minions of Gurok.
  kill Minion of Gurok##18181 |q 9849
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.78,20.73
step
  note Defeat Skra'gath. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Skra'gath##18401 |q 9972 |elite
step
  talk Corki##18445
  turnin Corki's Ransom##9954 |goto Nagrand 29.54,26.06
step
  talk Corki##18445
  accept Cho'war the Pillager##9955 |goto Nagrand 29.54,26.06
step
  note Corki wants you to get Cho'war's Key so that you can free him from his cage. Return to Arechron at Telaar should you manage this task.
  kill Corki Event Controller##18444 |q 9955 |goto Nagrand 29.5,26.1
step
  talk Altruis the Sufferer##18417
  turnin Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin The Book of Fel Names##10649 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer in western Nagrand has asked that you recover the Master Planner's Blueprints.
  collect The Master Planner's Blueprints##25751 |q 10001 |goto Nagrand 23.61,50.33 |tip {dropsfrom}Mo'arg Master Planner
step
  talk Altruis the Sufferer##18417
  accept Return to the Aldor##10650 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Return to the Scryers##10691 |goto Nagrand 27.34,43.09
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy Watoosun's Polluted Essence and 10 Lake Surgers.
  kill Watoosun's Polluted Essence##18145 |q 9810 |goto Nagrand 33.02,50.86
step
  talk Larissa Sunstrike##21954
  turnin Return to the Scryers##10691 |goto Shadowmoon Valley 55.73,58.17 |tip {turninat}Shadowmoon Valley
step
  talk Mo'mor the Breaker##18223
  turnin Mo'mor the Breaker##9920 |goto Nagrand 54.61,72.21
step
  talk Arechron##18183
  turnin Cho'war the Pillager##9955 |goto Nagrand 55.48,68.7
step
  talk Mo'mor the Breaker##18223
  accept The Ruins of Burning Blade##9921 |goto Nagrand 54.61,72.21
step
  note Mo'mor the Breaker at Telaar in Nagrand wants you to kill 15 Boulderfist Crushers and 15 Boulderfist Mystics.
  kill Boulderfist Crusher##17134 |q 9921 |goto Nagrand 74.47,64.02
step
  talk Shado 'Fitz' Farstrider##18200
  turnin Windroc Mastery##9856 |goto Nagrand 71.57,40.52
step
  talk Harold Lane##18218
  turnin Talbuk Mastery##9859 |goto Nagrand 71.38,40.62
step
  talk Hemet Nesingwary##18180
  turnin Clefthoof Mastery##9851 |goto Nagrand 71.52,40.82
step
  talk Hemet Nesingwary##18180
  accept The Ultimate Bloodsport##9852 |goto Nagrand 71.52,40.82
step
  note Bring the Heart of Tusker to Hemet Nesingwary at Nesingwary's Safari in Nagrand.
  collect Heart of Tusker##24505 |q 9852 |goto Nagrand 44.24,65.16 |tip {dropsfrom}Tusker
step
  talk Exarch Onaala##21860
  turnin Return to the Aldor##10650 |goto Shadowmoon Valley 61.2,29.23 |tip {turninat}Shadowmoon Valley
step
  talk Elementalist Lo'ap##18073
  turnin The Spirit Polluted##9810 |goto Nagrand 60.8,22.38
step
  talk Gordawg##18099
  turnin Shattering the Veil##9849 |goto Nagrand 61.33,24.82
step
  talk Gordawg##18099
  accept Gurok the Usurper##9853 |goto Nagrand 61.33,24.82
step
  note Gordawg at the Throne of the Elements in Nagrand has asked that you destroy Gurok the Usurper and bring back Gurok's Earthen Head.
  collect Gurok's Earthen Head##24503 |q 9853 |goto Nagrand 61.33,24.82 |tip {dropsfrom}Gurok the Usurper
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.78,20.73
step
  note Defeat the Warmaul Champion. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Warmaul Champion##18402 |q 9973 |elite
step
  talk Altruis the Sufferer##18417
  turnin The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  talk Mo'mor the Breaker##18223
  turnin The Ruins of Burning Blade##9921 |goto Nagrand 54.61,72.21
step
  talk Mo'mor the Breaker##18223
  accept The Twin Clefts of Nagrand##9922 |goto Nagrand 54.61,72.21
step
  talk Hemet Nesingwary##18180
  turnin The Ultimate Bloodsport##9852 |goto Nagrand 71.52,40.82
step
  talk Gordawg##18099
  turnin Gurok the Usurper##9853 |goto Nagrand 61.33,24.82
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.78,20.73
step
  note Mo'mor the Breaker at Telaar in Nagrand has asked that you slay 25 Boulderfist Warriors and 25 Boulderfist Mages.
  kill Boulderfist Warrior##17136 |q 9922 |goto Nagrand 41.35,35.08
step
  note Defeat Mogor, Hero of the Warmaul. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Mogor##18069 |q 9977 |goto Nagrand 42.79,20.54 |elite
step
  talk Mo'mor the Breaker##18223
  turnin The Twin Clefts of Nagrand##9922 |goto Nagrand 54.61,72.21
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.78,20.68
step
  note {travel}Blade's Edge Mountains
  goto Blade's Edge Mountains 32.2,91.11
]])
