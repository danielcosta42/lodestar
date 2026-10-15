-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Hillsbrad Foothills (22-28)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Thousand Needles (27-33)",
	rev = "f2f1b423",
}, [[
step
  ding 21
step
  note {fp}Zarise
  goto Hillsbrad Foothills 60.14,18.62 |tip {vendor}
step
  only haveq(493)
  note Deliver Apothecary Renferrel's findings to Apothecary Lydon in the town of Tarren Mill in the Hillsbrad Foothills.
  talk Apothecary Lydon##2216
  turnin Journey to Hillsbrad Foothills##493 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##496 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Krusk##2229
  accept The Rescue##498 |goto Hillsbrad Foothills 63.24,20.66
step
  click WANTED##1763
  accept WANTED: Syndicate Personnel##549 |goto Hillsbrad Foothills 62.63,20.75
step
  only Rogue completed(2479)
  talk Serge Hinott##2391
  accept Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  only completed(1065)
  talk Apothecary Lydon##2216
  accept Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  only Rogue completed(2479)
  note Wait for Serge Hinott to complete the cure.
  talk Serge Hinott##2391
  turnin Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
step
  note Apothecary Lydon of Tarren Mill wants 10 Gray Bear Tongues and some Creeper Ichor.
  collect 10 Gray Bear Tongue##3476 |q 496/1 |goto Hillsbrad Foothills 59.07,32.75 |tip {dropsfrom}Gray Bear, Vicious Gray Bear, Elder Gray Bear
  collect Creeper Ichor##3477 |q 496 |goto Hillsbrad Foothills 59.56,35.19 |tip {dropsfrom}Forest Moss Creeper, Giant Moss Creeper, Elder Moss Creeper
step
  talk Apothecary Lydon##2216
  turnin Elixir of Suffering##496 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Elixir of Suffering##499 |goto Hillsbrad Foothills 61.44,19.06
step
  only level>=21
  talk Apothecary Lydon##2216
  accept Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  note Give Umpi the Elixir of Suffering.
  talk Umpi##2230
  turnin Elixir of Suffering##499 |goto Hillsbrad Foothills 61.55,19.14
step
  only haveq(501)
  note Bring 10 vials of Mountain Lion Blood to Apothecary Lydon in Tarren Mill.
  collect 10 Mountain Lion Blood##3496 |q 501 |goto Hillsbrad Foothills 53.42,39.28 |tip {dropsfrom}Starving Mountain Lion, Feral Mountain Lion, Mountain Lion
step
  note Kill 6 Hillsbrad Farmhands, 6 Hillsbrad Farmers, Farmer Ray and Farmer Getz and report back to Darthalia in Tarren Mill.
  kill Farmer Getz##2403 |q 527/4 |goto Hillsbrad Foothills 36.4,39.4
  kill Hillsbrad Farmer##2266 |q 527/1 |goto Hillsbrad Foothills 34.79,38.52
  kill Hillsbrad Farmhand##2360 |q 527/2 |goto Hillsbrad Foothills 33.83,40.09
  kill Farmer Ray##232 |q 527 |goto Hillsbrad Foothills 33.22,34.76
step
  talk Deathstalker Lesh##2214
  accept Time To Strike##494 |goto Hillsbrad Foothills 20.79,47.4
step
  note Travel to Tarren Mill to deliver Deathstalker Lesh's message to High Executor Darthalia.
  talk High Executor Darthalia##2215
  turnin Time To Strike##494 |goto Hillsbrad Foothills 62.33,20.45
step
  only haveq(501)
  talk Apothecary Lydon##2216
  turnin Elixir of Pain##501 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##527 |goto Hillsbrad Foothills 62.33,20.45
step
  only completed(501)
  talk Apothecary Lydon##2216
  accept Elixir of Pain##502 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Samsa##2418
  accept Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  talk High Executor Darthalia##2215
  accept Scout Support##98094 |goto Hillsbrad Foothills 62.33,20.45
step
  note Krusk in Tarren Mill needs you to free Drull and Tog'thar from Durnholde Keep.
  click Locked ball and chain##1721 |q 498/1 |goto Hillsbrad Foothills 75.33,41.5
  click Locked ball and chain##1722 |q 498 |goto Hillsbrad Foothills 79.79,39.65
step
  note Kill 10 Syndicate Rogues and 10 Syndicate Watchmen. Return to High Executor Darthalia in Tarren Mill for your reward.
  kill Syndicate Watchman##2261 |q 549/2 |goto Hillsbrad Foothills 78.18,43.19
  kill Syndicate Rogue##2260 |q 549 |goto Hillsbrad Foothills 79.28,46.37
step
  only completed(1065)
  note Bring 5 Vials of Innocent Blood to Apothecary Lydon in Tarren Mill.
  collect 5 Vial of Innocent Blood##5620 |q 1066 |goto Hillsbrad Foothills 78.73,43.51 |tip {dropsfrom}Syndicate Shadow Mage
step
  note High Executor Darthalia wants you to deliver updated orders to Deathstalker Masoj, south of Tarren Mill, outside of Dun Garok.
  talk Deathstalker Masoj##270438
  turnin Scout Support##98094 |goto Hillsbrad Foothills 64.05,53.84
step
  talk Deathstalker Masoj##270438
  accept Valuable Vantages##98095 |goto Hillsbrad Foothills 64.05,53.84
step
  note Deathstalker Masoj needs you to place the three Apothecary Vials on peaks around Hillsbrad Foothills and return to him.
  talk Deathstalker Masoj##270438
  turnin Valuable Vantages##98095 |goto Hillsbrad Foothills 64.05,53.84
step
  note Kill 15 Hillsbrad Peasants and report back to Darthalia in Tarren Mill.
  kill Hillsbrad Peasant##2267 |q 528 |goto Hillsbrad Foothills 34.06,45.69
step
  only haveq(502)
  note Feed the Elixir of Pain to Stanley.
  talk Stanley##2274
  turnin Elixir of Pain##502 |goto Hillsbrad Foothills 32.66,35.32
step
  note Deathguard Samsa of Tarren Mill wants 30 Hillsbrad Human Skulls.
  collect 30 Hillsbrad Human Skull##3692 |q 546 |goto Hillsbrad Foothills 33.22,34.76 |tip {dropsfrom}Farmer Ray, Syndicate Shadow Mage, Syndicate Rogue
step
  talk Krusk##2229
  turnin The Rescue##498 |goto Hillsbrad Foothills 63.24,20.66
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##528 |goto Hillsbrad Foothills 62.33,20.45
step
  talk Deathguard Samsa##2418
  turnin Souvenirs of Death##546 |goto Hillsbrad Foothills 62.11,19.7
step
  talk High Executor Darthalia##2215
  turnin WANTED: Syndicate Personnel##549 |goto Hillsbrad Foothills 62.33,20.45
step
  only completed(1065)
  talk Apothecary Lydon##2216
  turnin Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(1065)
  talk Apothecary Lydon##2216
  accept Return to Thunder Bluff##1067 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  only Undead Paladin
  talk Ott##3539
  accept Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  talk Ott##3539
  accept The Moonsilver Blade##95126 |goto Hillsbrad Foothills 60.43,26.18
step
  only Undead Paladin
  note Watch as Ott forges your blade.
  talk Ott##3539
  turnin Ott's Masterwork##95125 |goto Hillsbrad Foothills 60.43,26.18
step
  note Kill Blacksmith Verringtan and 4 Hillsbrad Apprentice Blacksmiths.
  kill Blacksmith Verringtan##2404 |q 529 |goto Hillsbrad Foothills 32.11,44.42
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##529 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  only level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  click Dangerous!##2008
  accept Dangerous!##567 |goto Hillsbrad Foothills 62.56,19.66
step
  note Kill Magistrate Burnside and 5 Hillsbrad Councilmen. Destroy the Hillsbrad Proclamation. Steal the Hillsbrad Town Registry. Report back to Darthalia in Tarren Mill afterwards.
  kill Magistrate Burnside##2335 |q 532 |goto Hillsbrad Foothills 29.67,41.64
step
  note High Executor Darthalia of Tarren Mill is offering a bounty on Clerk Horrace Whitesteed, Citizen Wilkes, Miner Hackett and Farmer Kalaba.
  kill Clerk Horrace Whitesteed##2448 |q 567/1 |goto Hillsbrad Foothills 29.51,42.41
  kill Citizen Wilkes##2449 |q 567/2 |goto Hillsbrad Foothills 32.62,39.79
  kill Farmer Kalaba##2451 |q 567/4 |goto Hillsbrad Foothills 35.88,46.57
  kill Miner Hackett##2450 |q 567 |goto Hillsbrad Foothills 31.8,52.7
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##532 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  turnin Dangerous!##567 |goto Hillsbrad Foothills 62.33,20.45
step
  talk High Executor Darthalia##2215
  accept Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  only haveq(509)
  note Bring 6 Mudsnout Blossoms to Apothecary Lydon in Tarren Mill.
  collect 6 Mudsnout Blossoms##3502 |q 509 |goto Hillsbrad Foothills 64.56,61.25 |tip {dropsfrom}Mudsnout Blossom
step
  note Kill Foreman Bonds and 10 Hillsbrad Miners and report back to Darthalia in Tarren Mill.
  kill Foreman Bonds##2305 |q 539/1 |goto Hillsbrad Foothills 31.21,56.01
  kill Hillsbrad Miner##2269 |q 539 |goto Hillsbrad Foothills 30.44,55.62
step
  only haveq(509)
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##509 |goto Hillsbrad Foothills 61.44,19.06
step
  talk High Executor Darthalia##2215
  turnin Battle of Hillsbrad##539 |goto Hillsbrad Foothills 62.33,20.45
step
  only completed(509) level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##513 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) haveq(517)
  note Bring a keg of Shindigger Stout to Apothecary Lydon in Tarren Mill.
  collect Keg of Shindigger Stout##3517 |q 517 |goto Hillsbrad Foothills 72.02,81.16
step
  only completed(515) haveq(517)
  talk Apothecary Lydon##2216
  turnin Elixir of Agony##517 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) completed(517) level>=24
  talk Apothecary Lydon##2216
  accept Elixir of Agony##524 |goto Hillsbrad Foothills 61.44,19.06
step
  only completed(515) haveq(524)
  note Place the Tainted Keg on the rug for the captured farmers.
  turnin Elixir of Agony##524 |goto Hillsbrad Foothills 62.81,18.73
step
  only Undead Paladin
  note Bring Ott's Masterwork to Trevan Rol in Silverpine Forest.
  talk Trevan Rol##248840
  turnin The Moonsilver Blade##95126 |goto Silverpine Forest 43.34,41.12 |tip {turninat}Silverpine Forest
step
  only haveq(513)
  note Take the Mudsnout Composite to Master Apothecary Faranell in the Undercity.
  talk Master Apothecary Faranell##2055
  turnin Elixir of Agony##513 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  note {travel}Thousand Needles
  goto Thousand Needles 53.95,41.49
]])
