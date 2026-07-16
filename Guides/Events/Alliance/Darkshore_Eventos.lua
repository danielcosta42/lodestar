-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Darkshore (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Thundris Windweaver##3649
  accept Bashal'Aran##954 |goto Darkshore 37.4,40.13
step
  talk Terenthis##3693
  accept How Big a Threat?##984 |goto Darkshore 39.37,43.48
step
  talk Sentinel Glynda Nal'Shea##2930
  accept The Red Crystal##4811 |goto Darkshore 37.7,43.41
step
  talk Sentinel Aynasha##11711
  accept One Shot.  One Kill.##5713 |goto Darkshore 45.94,90.29
step
  talk Barithras Moonshade##3583
  accept Cave Mushrooms##947 |goto Darkshore 37.32,43.64
step
  talk Therylune##3584
  accept Therylune's Escape##945 |goto Darkshore 38.64,87.33
step
  talk Archaeologist Hollee##2913
  accept The Absent Minded Prospector##729 |goto Darkshore 37.44,41.84
step
  talk Kerlonian Evershade##11218
  accept The Sleeper Has Awakened##5321 |goto Darkshore 44.4,76.43
step
  note Bring 5 Scaber Stalks and 1 Death Cap to Barithras Moonshade in Auberdine.
  collect 5 Scaber Stalk##5271 |q 947 |goto Darkshore 55.51,34.59 |tip {dropsfrom}Scaber Stalk
step
  note Escort Kerlonian Evershade to Liladris Moonriver at Maestra's Post in Ashenvale.
  collect Horn of Awakening##13536 |q 5321 |goto Darkshore 44.39,76.31 |tip {dropsfrom}Kerlonian's Chest
step
  talk Asterion##3650
  turnin Bashal'Aran##954 |goto Darkshore 44.17,36.29
step
  talk Terenthis##3693
  turnin How Big a Threat?##984 |goto Darkshore 39.37,43.48
step
  talk Sentinel Glynda Nal'Shea##2930
  turnin The Red Crystal##4811 |goto Darkshore 37.7,43.41
step
  talk Sentinel Onaeya##11806
  turnin One Shot.  One Kill.##5713 |goto Ashenvale 26.6,36.73
step
  talk Barithras Moonshade##3583
  turnin Cave Mushrooms##947 |goto Darkshore 37.32,43.64
step
  talk Therysil##3585
  turnin Therylune's Escape##945 |goto Ashenvale 22.64,51.92
step
  talk Prospector Remtravel##2917
  turnin The Absent Minded Prospector##729 |goto Darkshore 35.73,83.7
step
  talk Liladris Moonriver##11219
  turnin The Sleeper Has Awakened##5321 |goto Ashenvale 27.26,35.58
step
  talk Terenthis##3693
  accept How Big a Threat?##985 |goto Darkshore 39.37,43.48
step
  talk Barithras Moonshade##3583
  accept Onu##948 |goto Darkshore 37.32,43.64
step
  talk Prospector Remtravel##2917
  accept The Absent Minded Prospector##731 |goto Darkshore 35.73,83.7
step
  note Kill 8 Blackwood Pathfinders and 5 Windtalkers and return to Terenthis in Auberdine.
  kill Blackwood Pathfinder##2167 |q 985 |goto Darkshore 39.63,53.94
step
  talk Terenthis##3693
  turnin How Big a Threat?##985 |goto Darkshore 39.37,43.48
step
  talk Onu##3616
  turnin Onu##948 |goto Darkshore 43.55,76.29
step
  talk Archaeologist Hollee##2913
  turnin The Absent Minded Prospector##731 |goto Darkshore 37.44,41.84
step
  talk Onu##3616
  accept The Master's Glaive##944 |goto Darkshore 43.55,76.29
step
  talk Terenthis##3693
  accept A Lost Master##986 |goto Darkshore 39.37,43.48
step
  note Find 5 Fine Moonstalker Pelts and return them to Terenthis in Auberdine.
  collect 5 Fine Moonstalker Pelt##5386 |q 986 |goto Darkshore 43.03,89.68 |tip {dropsfrom}Moonstalker Matriarch, Moonstalker Sire
step
  turnin The Master's Glaive##944 |goto Darkshore 43.55,76.29
step
  talk Terenthis##3693
  turnin A Lost Master##986 |goto Darkshore 39.37,43.48
step
  talk Terenthis##3693
  accept A Lost Master##993 |goto Darkshore 39.37,43.48
step
  talk Volcor##3692
  turnin A Lost Master##993 |goto Darkshore 45.01,85.3
step
  talk Volcor##3692
  accept Escape Through Stealth##995 |goto Darkshore 45.01,85.3
step
  talk Volcor##3692
  accept Escape Through Force##994 |goto Darkshore 45.01,85.3
step
  talk Terenthis##3693
  turnin Escape Through Stealth##995 |goto Darkshore 39.37,43.48
step
  talk Terenthis##3693
  turnin Escape Through Force##994 |goto Darkshore 39.37,43.48
]])
