-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Nagrand (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Jorin Deadeye##18106
  accept The Impotent Leader##9888 |goto Nagrand 55.56,37.62
step
  talk Lantresor of the Blade##18261
  accept Message to Garadar##9934 |goto Nagrand 73.81,62.6
step
  talk Mag'har Captive##18210
  accept The Totem of Kar'dash##9868 |goto Nagrand 31.33,44.13
step
  talk Matron Celestine##18301
  accept He Called Himself Altruis...##9983 |goto Nagrand 55.2,36.1
step
  talk Altruis the Sufferer##18417
  accept Against the Legion##10641 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  note Altruis the sufferer wants you to obtain Freshly Drawn Blood from a Wrath Priestess at Forge Base: Gehenna in Netherstorm. Spill it on the ground and slay the Avatar of Sathal. Return to Altruis when you've completed this task.
  kill Avatar of Sathal##21925 |q 10641
step
  note Altruis the Sufferer wants you to slay Lothros at Illidari Point in Shadowmoon Valley.
  kill Lothros##21928 |q 10668 |goto Shadowmoon Valley 28.29,49.97
step
  note Altruis the Sufferer wants you to take the Imbued Silver Spear and use it at Portal Clearing near Marshlight Lake in Zangarmarsh to awake Xeleth. Return to Altruis after you've slain the demon.
  kill Xeleth##21894 |q 10669
step
  talk Kilrath##18273
  turnin The Impotent Leader##9888 |goto Terokkar Forest 19.77,60.85
step
  talk Garrosh##18063
  turnin Message to Garadar##9934 |goto Nagrand 55.44,37.64
step
  talk Garrosh##18063
  turnin The Totem of Kar'dash##9868 |goto Nagrand 55.44,37.64
step
  talk Altruis the Sufferer##18417
  turnin He Called Himself Altruis...##9983 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Against the Legion##10641 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Against the Illidari##10668 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Against All Odds##10669 |goto Nagrand 27.34,43.09
step
  talk Kilrath##18273
  accept Don't Kill the Fat One##9889 |goto Terokkar Forest 19.77,60.85
step
  talk Altruis the Sufferer##18417
  accept Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  note Kilrath in Terokkar Forest has asked that you kill 10 Boulderfist Invaders and beat Unkor the Ruthless until he talks.
  kill Boulderfist Invader##18260 |q 9889 |goto Terokkar Forest 20.19,64.37
step
  talk Unkor the Ruthless##18262
  turnin Don't Kill the Fat One##9889 |goto Terokkar Forest 20.06,63.24
step
  talk Altruis the Sufferer##18417
  turnin Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  talk Unkor the Ruthless##18262
  accept Success!##9890 |goto Terokkar Forest 20.06,63.24
step
  talk Altruis the Sufferer##18417
  accept Buying Time##9999 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer in western Nagrand has asked that you kill 2 Felguard Legionnaires, 3 Mo'arg Engineers and 8 Gan'arg Tinkerers.
  kill Felguard Legionnaire##17152 |q 9999 |goto Nagrand 21.39,42.9 |elite
step
  talk Kilrath##18273
  turnin Success!##9890 |goto Terokkar Forest 19.77,60.85
step
  talk Altruis the Sufferer##18417
  turnin Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Kilrath##18273
  accept Because Kilrath is a Coward##9891 |goto Terokkar Forest 19.77,60.85
step
  talk Altruis the Sufferer##18417
  accept The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer in western Nagrand has asked that you recover the Master Planner's Blueprints.
  kill Mo'arg Master Planner##18567 |goto Nagrand 23.61,50.33 |elite
  collect The Master Planner's Blueprints##25751 |q 10001 |goto Nagrand 23.61,50.33
step
  talk Jorin Deadeye##18106
  turnin Because Kilrath is a Coward##9891 |goto Nagrand 55.56,37.62
step
  talk Altruis the Sufferer##18417
  turnin The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  talk Jorin Deadeye##18106
  accept Message in a Battle##9906 |goto Nagrand 55.56,37.62
step
  talk Altruis the Sufferer##18417
  accept Patience and Understanding##10004 |goto Nagrand 27.34,43.09
step
  note Jorin Deadeye at Garadar in Nagrand has asked that you slay 15 Boulderfist Crushers and 15 Boulderfist Mystics.
  kill Boulderfist Mystic##17135 |q 9906 |goto Nagrand 74.8,67.54
step
  talk Jorin Deadeye##18106
  turnin Message in a Battle##9906 |goto Nagrand 55.56,37.62
step
  talk Sal'salabim##18584
  turnin Patience and Understanding##10004 |goto Shattrath City 77.26,34.85
step
  talk Jorin Deadeye##18106
  accept An Audacious Advance##9907 |goto Nagrand 55.56,37.62
step
  talk Sal'salabim##18584
  accept Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  note Jorin Deadeye at Garadar in Nagrand has asked that you slay 25 Boulderfist Warriors and 25 Boulderfist Mages.
  kill Boulderfist Warrior##17136 |q 9907 |goto Nagrand 41.35,35.08
step
  note Sal'salabim at Shattrath City wants you to recover Raliq's Debt, Coosh'coosh's Debt and Floon's Debt.
  kill Raliq the Drunk##18585 |goto Shattrath City 74.99,31.4 |elite
  collect Raliq's Debt##25767 |q 10009 |goto Shattrath City 74.99,31.4
step
  talk Jorin Deadeye##18106
  turnin An Audacious Advance##9907 |goto Nagrand 55.56,37.62
step
  talk Sal'salabim##18584
  turnin Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  talk Jorin Deadeye##18106
  accept Diplomatic Measures##10107 |goto Nagrand 55.56,37.62
step
  talk Sal'salabim##18584
  accept It's Just That Easy?##10010 |goto Shattrath City 77.26,34.85
step
  talk Lantresor of the Blade##18261
  turnin Diplomatic Measures##10107 |goto Nagrand 73.81,62.6
step
  talk Altruis the Sufferer##18417
  turnin It's Just That Easy?##10010 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Forge Camp: Annihilated##10011 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer in western Nagrand has asked that you Destroy Forge Camp: Hate and Destroy Forge Camp: Fear.
  kill Fel Cannon: Hate##19067 |q 10011 |goto Nagrand 25.1,35.98
step
  talk Altruis the Sufferer##18417
  turnin Forge Camp: Annihilated##10011 |goto Nagrand 27.34,43.09
step
  talk Garrosh##18063
  accept A Visit With the Greatmother##10044 |goto Nagrand 55.44,37.64
step
  talk Greatmother Geyah##18141
  turnin A Visit With the Greatmother##10044 |goto Nagrand 56.7,34.31
step
  talk Greatmother Geyah##18141
  accept Material Components##10045 |goto Nagrand 56.7,34.31
step
  note Greatmother Geyah at Garadar in Nagrand has asked that you collect 1 Olemba Root, 1 Marshberry, 1 Telaari Frond and 1 Dragonspine.
  collect 1 Olemba Root##25863 |q 10045 |goto Terokkar Forest 37.69,34.03
step
  talk Greatmother Geyah##18141
  turnin Material Components##10045 |goto Nagrand 56.7,34.31
step
  talk Greatmother Geyah##18141
  accept To Meet Mother Kashur##10081 |goto Nagrand 56.7,34.31
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
  talk Mother Kashur##18687
  turnin The Agitated Ancestors##10082 |goto Nagrand 26.07,60.6
step
  talk Mother Kashur##18687
  accept A Visit With The Ancestors##10085 |goto Nagrand 26.07,60.6
step
  note Mother Kashur at the Ancestral Grounds in Nagrand has asked that you Visit Sunspring Post, Visit Laughing Skull Ruins, Visit Garadar and Visit Bleeding Hollow Ruins.
  get A Visit With The Ancestors |q 10085 |goto Nagrand 32.2,42.99
step
  talk Mother Kashur##18687
  turnin A Visit With The Ancestors##10085 |goto Nagrand 26.07,60.6
step
  talk Mother Kashur##18687
  accept When Spirits Speak##10101 |goto Nagrand 26.07,60.6
step
  talk K'ure##17545
  turnin When Spirits Speak##10101 |goto Nagrand 35.48,77.84
step
  talk K'ure##17545
  accept A Secret Revealed##10102 |goto Nagrand 35.48,77.84
step
  talk A'dal##18481
  turnin A Secret Revealed##10102 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Auchindoun...##10167 |goto Shattrath City 53.99,44.75
step
  note Travel to the Auchenai Crypts in the Bone Wastes of Terokkar Forest and slay Exarch Maladaar to free the spirit of D'ore.
  kill Exarch Maladaar##18373 |q 10167 |goto Auchenai Crypts - Dungeon -1,-1 |elite
step
  talk D'ore##19412
  turnin Auchindoun...##10167
step
  talk D'ore##19412
  accept What the Soul Sees##10168
step
  note Locate a Soul Mirror somewhere in the Auchenai Crypts and use it to call forth a Darkened Spirit from Ancient Orc Ancestors in Nagrand. Destroy 15 Darkened Spirits so that the ancestors may rest in peace.
  kill Darkened Spirit##19480 |q 10168 |elite
step
  talk Mother Kashur##18687
  turnin What the Soul Sees##10168 |goto Nagrand 26.07,60.6
step
  talk Mother Kashur##18687
  accept Return to the Greatmother##10170 |goto Nagrand 26.07,60.6
step
  talk Greatmother Geyah##18141
  turnin Return to the Greatmother##10170 |goto Nagrand 56.7,34.31
step
  talk Greatmother Geyah##18141
  accept The Inconsolable Chieftain##10171 |goto Nagrand 56.7,34.31
step
  talk Garrosh##18063
  turnin The Inconsolable Chieftain##10171 |goto Nagrand 55.44,37.64
step
  talk Garrosh##18063
  accept There Is No Hope##10172 |goto Nagrand 55.44,37.64
step
  talk Greatmother Geyah##18141
  turnin There Is No Hope##10172 |goto Nagrand 56.7,34.31
]])
