-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Nagrand (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Huntress Bintook##18353
  accept Do My Eyes Deceive Me##9917 |goto Nagrand 55.05,70.53
step
  talk Kurenai Captive##18209
  accept The Totem of Kar'dash##9879 |goto Nagrand 33.18,42.31
step
  talk Huntress Kima##18416
  accept He Called Himself Altruis...##9982 |goto Nagrand 54.24,72.27
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
  note Huntress Bintook at Telaar in Nagrand wants you to recover Boulderfist Plans.
  collect Boulderfist Plans##25468 |q 9917 |goto Nagrand 62.36,72.99 |tip {dropsfrom}Boulderfist Hunter
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
  talk Huntress Bintook##18353
  turnin Do My Eyes Deceive Me##9917 |goto Nagrand 55.05,70.53
step
  talk Arechron##18183
  turnin The Totem of Kar'dash##9879 |goto Nagrand 55.48,68.7
step
  talk Altruis the Sufferer##18417
  turnin He Called Himself Altruis...##9982 |goto Nagrand 27.34,43.09
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
  talk Huntress Bintook##18353
  accept Not On My Watch!##9918 |goto Nagrand 55.05,70.53
step
  talk Altruis the Sufferer##18417
  accept Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  accept Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  note Huntress Bintook at Telaar in Nagrand wants you to speak to Lump. Return to Huntress Bintook when you have gathered the information that she requested.
  get Not On My Watch! |q 9918 |goto Nagrand 62.81,71.54
step
  talk Huntress Bintook##18353
  turnin Not On My Watch!##9918 |goto Nagrand 55.05,70.53
step
  talk Altruis the Sufferer##18417
  turnin Survey the Land##9991 |goto Nagrand 27.34,43.09
step
  talk Altruis the Sufferer##18417
  turnin Illidan's Pupil##10646 |goto Nagrand 27.34,43.09
step
  talk Huntress Bintook##18353
  accept Mo'mor the Breaker##9920 |goto Nagrand 55.05,70.53
step
  talk Altruis the Sufferer##18417
  accept Buying Time##9999 |goto Nagrand 27.34,43.09
step
  note Altruis the Sufferer in western Nagrand has asked that you kill 2 Felguard Legionnaires, 3 Mo'arg Engineers and 8 Gan'arg Tinkerers.
  kill Felguard Legionnaire##17152 |q 9999 |goto Nagrand 21.39,42.9 |elite
step
  talk Mo'mor the Breaker##18223
  turnin Mo'mor the Breaker##9920 |goto Nagrand 54.61,72.21
step
  talk Altruis the Sufferer##18417
  turnin Buying Time##9999 |goto Nagrand 27.34,43.09
step
  talk Mo'mor the Breaker##18223
  accept The Ruins of Burning Blade##9921 |goto Nagrand 54.61,72.21
step
  talk Altruis the Sufferer##18417
  accept The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  note Mo'mor the Breaker at Telaar in Nagrand wants you to kill 15 Boulderfist Crushers and 15 Boulderfist Mystics.
  kill Boulderfist Crusher##17134 |q 9921 |goto Nagrand 74.47,64.02
step
  note Altruis the Sufferer in western Nagrand has asked that you recover the Master Planner's Blueprints.
  kill Mo'arg Master Planner##18567 |goto Nagrand 23.61,50.33 |elite
  collect The Master Planner's Blueprints##25751 |q 10001 |goto Nagrand 23.61,50.33
step
  talk Mo'mor the Breaker##18223
  turnin The Ruins of Burning Blade##9921 |goto Nagrand 54.61,72.21
step
  talk Altruis the Sufferer##18417
  turnin The Master Planner##10001 |goto Nagrand 27.34,43.09
step
  talk Mo'mor the Breaker##18223
  accept The Twin Clefts of Nagrand##9922 |goto Nagrand 54.61,72.21
step
  talk Altruis the Sufferer##18417
  accept Patience and Understanding##10004 |goto Nagrand 27.34,43.09
step
  note Mo'mor the Breaker at Telaar in Nagrand has asked that you slay 25 Boulderfist Warriors and 25 Boulderfist Mages.
  kill Boulderfist Warrior##17136 |q 9922 |goto Nagrand 41.35,35.08
step
  talk Mo'mor the Breaker##18223
  turnin The Twin Clefts of Nagrand##9922 |goto Nagrand 54.61,72.21
step
  talk Sal'salabim##18584
  turnin Patience and Understanding##10004 |goto Shattrath City 77.26,34.85
step
  talk Mo'mor the Breaker##18223
  accept Diplomatic Measures##10108 |goto Nagrand 54.61,72.21
step
  talk Sal'salabim##18584
  accept Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  note Sal'salabim at Shattrath City wants you to recover Raliq's Debt, Coosh'coosh's Debt and Floon's Debt.
  kill Raliq the Drunk##18585 |goto Shattrath City 74.99,31.4 |elite
  collect Raliq's Debt##25767 |q 10009 |goto Shattrath City 74.99,31.4
step
  talk Lantresor of the Blade##18261
  turnin Diplomatic Measures##10108 |goto Nagrand 73.81,62.6
step
  talk Sal'salabim##18584
  turnin Crackin' Some Skulls##10009 |goto Shattrath City 77.26,34.85
step
  talk Sal'salabim##18584
  accept It's Just That Easy?##10010 |goto Shattrath City 77.26,34.85
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
]])
