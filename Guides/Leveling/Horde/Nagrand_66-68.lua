-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Nagrand (66-68)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Netherstorm (68-70)",
}, [[
step
  note {fp}Gursha
  goto Nagrand 57.19,35.25 |tip {vendor}
step
  talk Elementalist Lo'ap##18073
  accept A Rare Bean##9800 |goto Nagrand 60.8,22.38
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to bring him 15 Digested Caracoli.
  get A Rare Bean |q 9800 |goto Nagrand 60.8,22.38
step
  talk Elementalist Lo'ap##18073
  accept Muck Diving##9815 |goto Nagrand 60.8,22.38
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to retrieve 5 Muck-ridden Cores.
  get Muck Diving |q 9815 |goto Nagrand 60.8,22.38
step
  talk Elementalist Untrag##18071
  accept The Underneath##9818 |goto Nagrand 60.66,22.65
step
  talk Elementalist Morgh##18074
  accept Murkblood Corrupters##9862 |goto Nagrand 60.5,22.37
step
  talk Farseer Kurkush##18066
  accept Vile Idolatry##9863 |goto Nagrand 54.78,39.41
step
  note Farseer Kurkush at Garadar in Nagrand wants you to bring him 20 Murkblood Idols.
  get Vile Idolatry |q 9863 |goto Nagrand 54.78,39.41
step
  talk Farseer Corhuk##18067
  accept The Missing War Party##9864 |goto Nagrand 54.8,39.87
step
  talk Farseer Margadesh##18068
  accept Murkblood Leaders...##9867 |goto Nagrand 54.53,39.96
step
  note Farseer Margadesh at Garadar in Nagrand wants you to bring him the Head of Ortor of Murkblood.
  get Murkblood Leaders... |q 9867 |goto Nagrand 54.53,39.96
step
  talk Elementalist Yal'hah##18234
  accept The Throne of the Elements##9870 |goto Nagrand 55.44,37.99
step
  talk Jorin Deadeye##18106
  accept The Impotent Leader##9888 |goto Nagrand 55.56,37.62
step
  talk Jorin Deadeye##18106
  accept Message in a Battle##9906 |goto Nagrand 55.56,37.62
step
  talk Elkay'gan the Mystic##18300
  accept Standards and Practices##9910 |goto Nagrand 55.63,37.53
step
  talk Matron Drakia##18302
  accept Missing Mag'hari Procession##9944 |goto Nagrand 56.78,34.09
step
  talk Matron Celestine##18301
  accept He Called Himself Altruis...##9983 |goto Nagrand 55.2,36.1
step
  talk Ohlorn Farstrider##19133
  accept The Nesingwary Safari##10114 |goto Nagrand 55.43,37.32
step
  talk Warden Bullrok##18407
  accept Proving Your Strength##10479 |goto Nagrand 55.79,37.95
step
  note Warden Bullrok at Garadar wants you to obtain 10 Obsidian Warbeads from the various ogres that inhabit Nagrand.
  get Proving Your Strength |q 10479 |goto Nagrand 55.79,37.95
step
  talk Seer Nakha##23265
  accept A Strange Vision##11037 |goto Nagrand 55.64,37.34
step
  talk Captain Kroghan##18090
  accept Kroghan's Report##11048 |goto Nagrand 55.37,37.45
step
  talk Shado 'Fitz' Farstrider##18200
  turnin The Nesingwary Safari##10114 |goto Nagrand 71.57,40.52
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
  talk Lantresor of the Blade##18261
  accept Ruthless Cunning##9927 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  accept Armaments for Deception##9928 |goto Nagrand 73.81,62.6
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to collect 20 Kil'sorrow Armaments.
  get Armaments for Deception |q 9928 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  accept Returning the Favor##9931 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  accept Body of Evidence##9932 |goto Nagrand 73.81,62.6
step
  talk Lantresor of the Blade##18261
  accept Message to Garadar##9934 |goto Nagrand 73.81,62.6
step
  note Kill 30 Talbuk Stags and then return to Harold Lane at the Nesingwary Safari in Nagrand.
  kill Talbuk Stag##17130 |q 9857 |goto Nagrand 67.05,60.82
step
  note Jorin Deadeye at Garadar in Nagrand has asked that you slay 15 Boulderfist Crushers and 15 Boulderfist Mystics.
  kill Boulderfist Mystic##17135 |q 9906 |goto Nagrand 74.8,67.54
step
  note Elkay'gan the Mystic at Garadar in Nagrand wants you to use the Mag'har Battle Standard at the First Burning Blade Pyre, Second Burning Blade Pyre, and Third Burning Blade Pyre. Return the left-over Mag'har Battle Standards to him when you are finished.
  kill Burning Blade Pyre (01)##18305 |q 9910 |goto Nagrand 72.2,69.92
step
  talk Wazat##19035
  accept I Must Have Them!##10109 |goto Nagrand 61.72,67.05
step
  note Wazat across from Clan Watch in southern Nagrand wants you to bring him 3 Air Elemental Gases.
  get I Must Have Them! |q 10109 |goto Nagrand 61.72,67.05
step
  note Hunt down 30 Clefthoof and return to Hemet Nesingwary at Nesingwary's Safari in Nagrand to prove yourself.
  kill Clefthoof##18205 |q 9789 |goto Nagrand 65.01,63.98
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to drive 20 Warmaul Ogre Banners through the bodies of Kil'sorrow members at Kil'sorrow Fortress.
  kill Shadow Council Credit Marker##18388 |q 9927 |goto Nagrand 70.65,79.0
step
  talk Consortium Recruiter##18335
  accept The Consortium Needs You!##9913 |goto Nagrand 51.95,69.77
step
  talk Nitrin the Learned##19844
  accept Vision of the Dead##10252 |goto Nagrand 51.82,56.84
step
  note Nitrin at the Abandoned Armory in Nagrand wants you to bring him 1 Mountain Gronn Eyeball, 1 Flawless Greater Windroc Beak, and 1 Aged Clefthoof Blubber.
  get Vision of the Dead |q 10252 |goto Nagrand 51.82,56.84
step
  talk Rocket-Chief Fuselage##19570
  turnin A Strange Vision##11037 |goto Netherstorm 32.73,64.96 |tip {turninat}Netherstorm
step
  talk Kilrath##18273
  turnin The Impotent Leader##9888 |goto Terokkar Forest 19.77,60.85 |tip {turninat}Terokkar Forest
step
  talk Gezhe##18265
  turnin The Consortium Needs You!##9913 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  accept Stealing from Thieves##9882 |goto Nagrand 31.36,57.79
step
  note Obtain 10 Oshu'gun Crystal Fragments and bring them to Gezhe at Aeris Landing in Nagrand.
  get Stealing from Thieves |q 9882 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  accept Obsidian Warbeads##9893 |goto Nagrand 31.36,57.79
step
  note Bring 10 Obsidian Warbeads to Gezhe at Aeris Landing in Nagrand.
  get Obsidian Warbeads |q 9893 |goto Nagrand 31.36,57.79
step
  talk Zerid##18276
  accept Gava'xi##9900 |goto Nagrand 30.78,58.13
step
  talk Shadrek##18333
  accept A Head Full of Ivory##9914 |goto Nagrand 31.77,56.78
step
  note Collect 3 Pair of Ivory Tusks and return them to Shadrek at Aeris Landing in Nagrand.
  get A Head Full of Ivory |q 9914 |goto Nagrand 31.77,56.78
step
  talk Zerid##18276
  accept Matters of Security##9925 |goto Nagrand 30.78,58.13
step
  talk Mother Kashur##18687
  accept Return to the Greatmother##10170 |goto Nagrand 26.07,60.6
step
  talk Altruis the Sufferer##18417
  turnin He Called Himself Altruis...##9983 |goto Nagrand 27.34,43.09
step
  talk Mag'har Captive##18210
  accept The Totem of Kar'dash##9868 |goto Nagrand 31.33,44.13
step
  talk Altruis the Sufferer##18417
  accept Survey the Land##9991 |goto Nagrand 27.34,43.09
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
  talk Saurfang the Younger##18229
  turnin The Missing War Party##9864 |goto Nagrand 32.44,36.02
step
  talk Blood Guard Gulmok##21359
  turnin Kroghan's Report##11048 |goto Shadowmoon Valley 30.45,32.4 |tip {turninat}Shadowmoon Valley
step
  talk Elder Yorley##18414
  turnin Missing Mag'hari Procession##9944 |goto Nagrand 32.31,36.15
step
  talk Saurfang the Younger##18229
  accept Once Were Warriors##9865 |goto Nagrand 32.44,36.02
step
  talk Elder Yorley##18414
  accept War on the Warmaul##9945 |goto Nagrand 32.31,36.15
step
  talk Elder Ungriz##18415
  accept Finding the Survivors##9948 |goto Nagrand 32.36,36.2
step
  note Altruis the Sufferer in western Nagrand has asked that you Destroy Forge Camp: Hate and Destroy Forge Camp: Fear.
  kill Fel Cannon: Hate##19067 |q 10011 |goto Nagrand 25.1,35.98
step
  note Elder Yorley at the Mag'hari Procession in Nagrand has asked that you slay 15 Warmaul Brutes and 15 Warmaul Warlocks.
  kill Warmaul Brute##18065 |q 9945 |goto Nagrand 26.94,23.48
step
  note Elder Ungriz at the Mag'hari Procession in Nagrand has asked that you free 15 Mag'har Prisoners.
  kill Mag'har Prisoner##18428 |q 9948 |goto Nagrand 27.96,25.31
step
  talk Gurgthock##18471
  accept The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.78,20.73
step
  note Defeat Brokentoe. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Brokentoe##18398 |q 9962
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to drive 20 Kil'sorrow Banners through the bodies of Warmaul ogres at the Laughing Skull Ruins.
  kill Warmaul Ogre Credit Marker##18393 |q 9931 |goto Nagrand 45.79,22.42
step
  note Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to use the Damp Woolen Blanket at the Blazing Warmaul Pyre in the Laughing Skull Courtyard to signal his ogres.
  kill Warmaul Pyre Credit Marker##18395 |q 9932 |goto Nagrand 46.57,24.42
step
  note Slay Gava'xi near Oshu'gun and return to Zerid at Aeris Landing in Nagrand.
  kill Gava'xi##18298 |q 9900 |goto Nagrand 41.51,71.42
step
  note Zerid at Aeris Landing in Nagrand wants you to kill 12 Voidspawn near Oshu'gun.
  kill Voidspawn##17981 |q 9925 |goto Nagrand 37.52,70.28
step
  talk Elementalist Morgh##18074
  turnin Murkblood Corrupters##9862 |goto Nagrand 60.5,22.37
step
  talk Elementalist Sharvak##18072
  turnin The Throne of the Elements##9870 |goto Nagrand 60.66,22.1
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
  talk Farseer Kurkush##18066
  turnin Vile Idolatry##9863 |goto Nagrand 54.78,39.41
step
  talk Farseer Margadesh##18068
  turnin Murkblood Leaders...##9867 |goto Nagrand 54.53,39.96
step
  talk Garrosh##18063
  turnin The Totem of Kar'dash##9868 |goto Nagrand 55.44,37.64
step
  talk Jorin Deadeye##18106
  turnin Message in a Battle##9906 |goto Nagrand 55.56,37.62
step
  talk Elkay'gan the Mystic##18300
  turnin Standards and Practices##9910 |goto Nagrand 55.63,37.53
step
  talk Greatmother Geyah##18141
  turnin Return to the Greatmother##10170 |goto Nagrand 56.7,34.31
step
  talk Garrosh##18063
  turnin Message to Garadar##9934 |goto Nagrand 55.44,37.64
step
  talk Warden Bullrok##18407
  turnin Proving Your Strength##10479 |goto Nagrand 55.79,37.95
step
  talk Jorin Deadeye##18106
  accept An Audacious Advance##9907 |goto Nagrand 55.56,37.62
step
  talk Elkay'gan the Mystic##18300
  accept Bleeding Hollow Supply Crates##9916 |goto Nagrand 55.63,37.53
step
  note Elkay'gan the Mystic at Garadar in Nagrand wants you to recover 20 Bleeding Hollow Supply Crates.
  get Bleeding Hollow Supply Crates |q 9916 |goto Nagrand 55.63,37.53
step
  talk Greatmother Geyah##18141
  accept The Inconsolable Chieftain##10171 |goto Nagrand 56.7,34.31
step
  talk Harold Lane##18218
  turnin Talbuk Mastery##9857 |goto Nagrand 71.38,40.62
step
  talk Hemet Nesingwary##18180
  turnin Clefthoof Mastery##9789 |goto Nagrand 71.52,40.82
step
  talk Shado 'Fitz' Farstrider##18200
  turnin Windroc Mastery##9854 |goto Nagrand 71.57,40.52
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
  talk Wazat##19035
  turnin I Must Have Them!##10109 |goto Nagrand 61.72,67.05
step
  talk Wazat##19035
  accept Bring Me The Egg!##10111 |goto Nagrand 61.72,67.05
step
  note Wazat in Nagrand wants you to use the Jump-a-tron 4000 to get to the nest in the nearby tree and steal the Mysterious Egg.
  collect Mysterious Egg##183147 |q 10111 |goto Nagrand 61.34,66.98
step
  note Gordawg at the Throne of the Elements in Nagrand has asked that you destroy 15 Tortured Earth Spirits.
  kill Tortured Earth Spirit##17156 |q 9819 |goto Nagrand 64.45,57.52
step
  talk Nitrin the Learned##19844
  turnin Vision of the Dead##10252 |goto Nagrand 51.82,56.84
step
  talk Nitrin the Learned##19844
  accept Levixus the Soul Caller##10253 |goto Nagrand 51.82,56.84
step
  note Destroy Levixus and take the Book of the Dead from his possession.
  get Levixus the Soul Caller |q 10253 |goto Nagrand 51.82,56.84
step
  note Hunt down 30 Ravenous Windrocs and then return to Fitz at the Nesingwary Safari in Nagrand.
  kill Ravenous Windroc##18220 |q 9855 |goto Nagrand 49.01,60.47
step
  talk Ramdor the Mad##19417
  turnin Levixus the Soul Caller##10253 |goto Terokkar Forest 35.15,66.24 |tip {turninat}Terokkar Forest
step
  talk Gezhe##18265
  turnin Stealing from Thieves##9882 |goto Nagrand 31.36,57.79
step
  talk Gezhe##18265
  turnin Obsidian Warbeads##9893 |goto Nagrand 31.36,57.79
step
  talk Zerid##18276
  turnin Gava'xi##9900 |goto Nagrand 30.78,58.13
step
  talk Shadrek##18333
  turnin A Head Full of Ivory##9914 |goto Nagrand 31.77,56.78
step
  talk Zerid##18276
  turnin Matters of Security##9925 |goto Nagrand 30.78,58.13
step
  talk Altruis the Sufferer##18417
  turnin Survey the Land##9991 |goto Nagrand 27.34,43.09
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
  accept Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  note Kill 40 Murkblood Scavengers and 20 Murkblood Raiders.
  kill Murkblood Scavenger##18207 |q 9865 |goto Nagrand 32.2,43.15
step
  note Altruis the Sufferer in western Nagrand has asked that you kill 2 Felguard Legionnaires, 3 Mo'arg Engineers and 8 Gan'arg Tinkerers.
  kill Felguard Legionnaire##17152 |q 9999 |goto Nagrand 21.39,42.9
step
  talk Saurfang the Younger##18229
  turnin Once Were Warriors##9865 |goto Nagrand 32.44,36.02
step
  talk Elder Yorley##18414
  turnin War on the Warmaul##9945 |goto Nagrand 32.31,36.15
step
  talk Elder Ungriz##18415
  turnin Finding the Survivors##9948 |goto Nagrand 32.36,36.2
step
  talk Saurfang the Younger##18229
  accept He Will Walk The Earth...##9866 |goto Nagrand 32.44,36.02
step
  talk Elder Yorley##18414
  accept Cho'war the Pillager##9946 |goto Nagrand 32.31,36.15
step
  note Elder Yorley at the Mag'hari Procession in Nagrand has asked that you slay Cho'war the Pillager and retrieve the Head of Cho'war.
  get Cho'war the Pillager |q 9946 |goto Nagrand 32.31,36.15
step
  note Jorin Deadeye at Garadar in Nagrand has asked that you slay 25 Boulderfist Warriors and 25 Boulderfist Mages.
  kill Boulderfist Warrior##17136 |q 9907 |goto Nagrand 41.35,35.08
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.78,20.73
step
  note Defeat the Murkblood Twins that call themselves the Blue Brothers. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Murkblood Twin##18399 |q 9967
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
  get Eating Damnation |q 9821 |goto Nagrand 61.33,24.82
step
  talk Farseer Corhuk##18067
  turnin He Will Walk The Earth...##9866 |goto Nagrand 54.8,39.87
step
  talk Jorin Deadeye##18106
  turnin An Audacious Advance##9907 |goto Nagrand 55.56,37.62
step
  talk Garrosh##18063
  turnin The Inconsolable Chieftain##10171 |goto Nagrand 55.44,37.64
step
  talk Elkay'gan the Mystic##18300
  turnin Bleeding Hollow Supply Crates##9916 |goto Nagrand 55.63,37.53
step
  talk Garrosh##18063
  accept A Visit With the Greatmother##10044 |goto Nagrand 55.44,37.64
step
  talk Garrosh##18063
  accept There Is No Hope##10172 |goto Nagrand 55.44,37.64
step
  note Hunt down 30 Talbuk Thorngrazers and then return to Harold Lane at the Nesingwary Safari in Nagrand.
  kill Talbuk Thorngrazer##17131 |q 9858 |goto Nagrand 50.8,39.93
step
  note Kill 30 Clefthoof Bulls and then speak to Hemet Nesingwary at Nesingwary's Safari in Nagrand about your prowess.
  kill Clefthoof Bull##17132 |q 9850 |goto Nagrand 50.57,42.98
step
  talk Harold Lane##18218
  turnin Talbuk Mastery##9858 |goto Nagrand 71.38,40.62
step
  talk Hemet Nesingwary##18180
  turnin Clefthoof Mastery##9850 |goto Nagrand 71.52,40.82
step
  talk Shado 'Fitz' Farstrider##18200
  turnin Windroc Mastery##9855 |goto Nagrand 71.57,40.52
step
  talk Hemet Nesingwary##18180
  accept Clefthoof Mastery##9851 |goto Nagrand 71.52,40.82
step
  note Acquire the Horn of Banthar and return it to Hemet Nesingwary at the Nesingwary Safari in Nagrand.
  get Clefthoof Mastery |q 9851 |goto Nagrand 71.52,40.82
step
  talk Shado 'Fitz' Farstrider##18200
  accept Windroc Mastery##9856 |goto Nagrand 71.57,40.52
step
  note Bring the Eye of Gutripper to Fitz at the Nesingwary Safari in Nagrand.
  get Windroc Mastery |q 9856 |goto Nagrand 71.57,40.52
step
  talk Harold Lane##18218
  accept Talbuk Mastery##9859 |goto Nagrand 71.38,40.62
step
  note Obtain the Hoof of Bach'lor and return it to Harold Lane at the Nesingwary Safari in Nagrand.
  get Talbuk Mastery |q 9859 |goto Nagrand 71.38,40.62
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
  kill Windyreed Quest Credit (Big Hut)##18110 |q 9805 |goto Nagrand 72.43,50.25
step
  talk Wazat##19035
  turnin Bring Me The Egg!##10111 |goto Nagrand 61.72,67.05
step
  talk Altruis the Sufferer##18417
  turnin Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer in western Nagrand has asked that you recover the Master Planner's Blueprints.
  get The Master Planner |q 10001 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept The Book of Fel Names##10649 |goto Nagrand 27.34,43.09
step
  note Venture inside the Shadow Labyrinth in Auchindoun and obtain the Book of Fel Names from Blackheart the Inciter. Return to Altruis in Nagrand once you've completed this task.
  get The Book of Fel Names |q 10649 |goto Nagrand 27.34,43.09
step
  talk Elder Yorley##18414
  turnin Cho'war the Pillager##9946 |goto Nagrand 32.31,36.15
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.78,20.73
step
  note Defeat Rokdar the Sundered Lord. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Rokdar the Sundered Lord##18400 |q 9970
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
  talk Greatmother Geyah##18141
  turnin There Is No Hope##10172 |goto Nagrand 56.7,34.31
step
  talk Greatmother Geyah##18141
  turnin A Visit With the Greatmother##10044 |goto Nagrand 56.7,34.31
step
  talk Greatmother Geyah##18141
  accept Material Components##10045 |goto Nagrand 56.7,34.31
step
  note Greatmother Geyah at Garadar in Nagrand has asked that you collect 1 Olemba Root, 1 Marshberry, 1 Telaari Frond and 1 Dragonspine.
  get Material Components |q 10045 |goto Nagrand 56.7,34.31
step
  talk Greatmother Geyah##18141
  accept Thrall, Son of Durotan##10175 |goto Nagrand 56.7,34.31
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
  get The Ultimate Bloodsport |q 9852 |goto Nagrand 71.52,40.82
step
  note Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy Watoosun's Polluted Essence and 10 Lake Surgers.
  kill Watoosun's Polluted Essence##18145 |q 9810 |goto Nagrand 33.02,50.86
step
  talk Altruis the Sufferer##18417
  turnin The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin The Book of Fel Names##10649 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Return to the Aldor##10650 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Return to the Scryers##10691 |goto Nagrand 27.34,43.09
step
  talk Thrall##4949
  turnin Thrall, Son of Durotan##10175 |goto Orgrimmar 31.73,37.82 |tip {turninat}Orgrimmar
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.78,20.73
step
  note Defeat Skra'gath. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Skra'gath##18401 |q 9972
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
  get Gurok the Usurper |q 9853 |goto Nagrand 61.33,24.82
step
  talk Greatmother Geyah##18141
  turnin Material Components##10045 |goto Nagrand 56.7,34.31
step
  talk Greatmother Geyah##18141
  accept To Meet Mother Kashur##10081 |goto Nagrand 56.7,34.31
step
  talk Hemet Nesingwary##18180
  turnin The Ultimate Bloodsport##9852 |goto Nagrand 71.52,40.82
step
  talk Larissa Sunstrike##21954
  turnin Return to the Scryers##10691 |goto Shadowmoon Valley 55.73,58.17 |tip {turninat}Shadowmoon Valley
step
  talk Mother Kashur##18687
  turnin To Meet Mother Kashur##10081 |goto Nagrand 26.07,60.6
step
  talk Mother Kashur##18687
  accept The Agitated Ancestors##10082 |goto Nagrand 26.07,60.6
step
  note Mother Kashur has asked that you put to rest 15 Agitated Orc Spirits.
  kill Agitated Orc Spirit##18043 |q 10082 |goto Nagrand 26.61,60.82
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.78,20.73
step
  note Defeat the Warmaul Champion. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Warmaul Champion##18402 |q 9973
step
  talk Gordawg##18099
  turnin Gurok the Usurper##9853 |goto Nagrand 61.33,24.82
step
  talk Mother Kashur##18687
  turnin The Agitated Ancestors##10082 |goto Nagrand 26.07,60.6
step
  talk Mother Kashur##18687
  accept A Visit With The Ancestors##10085 |goto Nagrand 26.07,60.6
step
  note Mother Kashur at the Ancestral Grounds in Nagrand has asked that you Visit Sunspring Post, Visit Laughing Skull Ruins, Visit Garadar and Visit Bleeding Hollow Ruins.
  kill Sunspring Post Credit Marker##18840 |q 10085 |goto Nagrand 32.2,42.99
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.78,20.68
step
  talk Gurgthock##18471
  accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.78,20.73
step
  note Defeat Mogor, Hero of the Warmaul. Should you win, speak with Wodin the Troll-Servant to collect your reward.
  kill Mogor##18069 |q 9977 |goto Nagrand 42.79,20.54
step
  talk Mother Kashur##18687
  turnin A Visit With The Ancestors##10085 |goto Nagrand 26.07,60.6
step
  talk Mother Kashur##18687
  accept When Spirits Speak##10101 |goto Nagrand 26.07,60.6
step
  talk Wodin the Troll-Servant##22893
  turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.78,20.68
step
  talk K'ure##17545
  turnin When Spirits Speak##10101 |goto Nagrand 35.48,77.84
step
  talk K'ure##17545
  accept A Secret Revealed##10102 |goto Nagrand 35.48,77.84
step
  talk A'dal##18481
  turnin A Secret Revealed##10102 |goto Shattrath City 53.99,44.75 |tip {turninat}Shattrath City
step
  note {travel}Netherstorm
  goto Netherstorm 31.36,66.15
]])
