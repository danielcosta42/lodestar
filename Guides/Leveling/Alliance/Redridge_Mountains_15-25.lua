-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Redridge Mountains (15-25)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Stonetalon Mountains (21-27)",
}, [[
step
  note {fp}Ariena Stormfeather
  goto Redridge Mountains 30.59,59.41 |tip {vendor}
step
  talk Marshal Marris##382
  accept Blackrock Menace##20 |goto Redridge Mountains 33.5,48.97
step
  talk Martie Jainrose##342
  accept An Unwelcome Guest##34 |goto Redridge Mountains 21.86,46.33
step
  talk Bailiff Conacher##900
  accept Solomon's Law##91 |goto Redridge Mountains 29.72,44.26
step
  talk Chef Breanna##343
  accept Redridge Goulash##92 |goto Redridge Mountains 22.68,43.84
step
  talk Barkeep Daniels##346
  accept Dry Times##116 |goto Redridge Mountains 26.48,43.96
step
  talk Verner Osgood##415
  accept The Price of Shoes##118 |goto Redridge Mountains 30.97,47.27
step
  talk Magistrate Solomon##344
  accept Messenger to Stormwind##120 |goto Redridge Mountains 29.99,44.45
step
  talk Verner Osgood##415
  accept Underbelly Scales##122 |goto Redridge Mountains 30.97,47.27
step
  talk Verner Osgood##415
  accept A Baying of Gnolls##124 |goto Redridge Mountains 30.97,47.27
step
  talk Foreman Oslow##341
  accept The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
step
  talk Dockmaster Baren##381
  accept Selling Fish##127 |goto Redridge Mountains 27.72,47.38
step
  talk Guard Howe##903
  accept Blackrock Bounty##128 |goto Redridge Mountains 31.54,57.85
step
  talk Darcy##379
  accept A Free Lunch##129 |goto Redridge Mountains 26.62,44.3
step
  talk Wiley the Black##266
  accept The Defias Brotherhood##132 |goto Redridge Mountains 26.48,45.35
step
  talk Magistrate Solomon##344
  accept Messenger to Westfall##143 |goto Redridge Mountains 29.99,44.45
step
  talk Magistrate Solomon##344
  accept Messenger to Darkshire##145 |goto Redridge Mountains 29.99,44.45
step
  talk Dockmaster Baren##381
  accept Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
step
  talk Foreman Oslow##341
  accept Rethban Ore##347 |goto Redridge Mountains 32.14,48.64
step
  talk Guard Berton##859
  accept What Comes Around...##386 |goto Redridge Mountains 26.26,46.58
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Rethban Gauntlet##1699 |goto Redridge Mountains 26.58,44.72
step
  only Rogue
  talk Lucius##6966
  accept Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
step
  talk Shawn##8965
  accept Hilary's Necklace##3741 |goto Redridge Mountains 29.32,53.64
step
  talk Magistrate Solomon##344
  accept The True Masters##4184 |goto Redridge Mountains 29.99,44.45
step
  talk Magistrate Solomon##344
  accept The True Masters##4223 |goto Redridge Mountains 29.99,44.45
step
  note Kill 15 Blackrock Champions and Guard Howe in Lakeshire will reward you.
  kill Blackrock Champion##435 |q 128 |goto Redridge Mountains 29.6,11.69
step
  note Kill 10 Redridge Brutes and 8 Redridge Mystics, then return to Verner Osgood.
  kill Redridge Brute##426 |q 124 |goto Redridge Mountains 24.12,35.01
step
  talk Guard Parker##464
  turnin A Free Lunch##129 |goto Redridge Mountains 15.27,71.46
step
  talk Guard Parker##464
  accept Visit the Herbalist##130 |goto Redridge Mountains 15.27,71.46
step
  talk Guard Parker##464
  accept Encroaching Gnolls##244 |goto Redridge Mountains 15.27,71.46
step
  talk Guard Howe##903
  turnin Blackrock Bounty##128 |goto Redridge Mountains 31.54,57.85
step
  talk Guard Berton##859
  turnin What Comes Around...##386 |goto Redridge Mountains 26.26,46.58
step
  talk Marshal Maxwell##9560
  turnin The True Masters##4223 |goto Burning Steppes 84.74,69.02 |tip {turninat}Burning Steppes
step
  talk Gryan Stoutmantle##234
  turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Martie Jainrose##342
  turnin Visit the Herbalist##130 |goto Redridge Mountains 21.86,46.33
step
  talk Gryan Stoutmantle##234
  turnin Messenger to Westfall##143 |goto Westfall 56.33,47.52 |tip {turninat}Westfall
step
  talk Lord Ello Ebonlocke##263
  turnin Messenger to Darkshire##145 |goto Duskwood 71.93,46.42 |tip {turninat}Duskwood
step
  talk Marshal Marris##382
  turnin Blackrock Menace##20 |goto Redridge Mountains 33.5,48.97
step
  talk Dockmaster Baren##381
  turnin Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
step
  talk Hilary##8962
  turnin Hilary's Necklace##3741 |goto Redridge Mountains 29.24,53.63
step
  talk Martie Jainrose##342
  turnin An Unwelcome Guest##34 |goto Redridge Mountains 21.86,46.33
step
  only Warrior
  talk Yorus Barleybrew##6166
  turnin The Rethban Gauntlet##1699 |goto Redridge Mountains 26.58,44.72
step
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4184 |goto Stormwind City 78.22,17.98 |tip {turninat}Stormwind City
step
  talk Brother Paxton##951
  turnin Rethban Ore##347 |goto Elwynn Forest 49.61,40.41 |tip {turninat}Elwynn Forest
step
  talk Bailiff Conacher##900
  turnin Solomon's Law##91 |goto Redridge Mountains 29.72,44.26
step
  talk Chef Breanna##343
  turnin Redridge Goulash##92 |goto Redridge Mountains 22.68,43.84
step
  only Rogue
  talk Lucius##6966
  turnin Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
step
  talk Barkeep Daniels##346
  turnin Dry Times##116 |goto Redridge Mountains 26.48,43.96
step
  talk Deputy Feldon##1070
  turnin Encroaching Gnolls##244 |goto Redridge Mountains 30.73,60.0
step
  talk Smith Argus##514
  turnin The Price of Shoes##118 |goto Elwynn Forest 41.71,65.54 |tip {turninat}Elwynn Forest
step
  talk General Marcus Jonathan##466
  turnin Messenger to Stormwind##120 |goto Stormwind City 63.97,75.32 |tip {turninat}Stormwind City
step
  talk Verner Osgood##415
  turnin Underbelly Scales##122 |goto Redridge Mountains 30.97,47.27
step
  talk Verner Osgood##415
  turnin A Baying of Gnolls##124 |goto Redridge Mountains 30.97,47.27
step
  talk Foreman Oslow##341
  turnin The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
step
  talk Dockmaster Baren##381
  turnin Selling Fish##127 |goto Redridge Mountains 27.72,47.38
step
  talk Marshal Marris##382
  accept Tharil'zun##19 |goto Redridge Mountains 33.5,48.97
step
  talk Foreman Oslow##341
  accept The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
  talk Marshal Marris##382
  accept Shadow Magic##115 |goto Redridge Mountains 33.5,48.97
step
  talk Verner Osgood##415
  accept Howling in the Hills##126 |goto Redridge Mountains 30.97,47.27
step
  talk Martie Jainrose##342
  accept Delivering Daffodils##131 |goto Redridge Mountains 21.86,46.33
step
  talk Deputy Feldon##1070
  accept Assessing the Threat##246 |goto Redridge Mountains 30.73,60.0
step
  only Warrior
  talk Yorus Barleybrew##6166
  accept The Shieldsmith##1702 |goto Redridge Mountains 26.58,44.72
step
  note Kill 10 Redridge Mongrels and 6 Redridge Poachers, then report back to Deputy Feldon in Lakeshire.
  kill Redridge Mongrel##423 |q 246 |goto Redridge Mountains 29.86,72.3
step
  talk Darcy##379
  turnin Delivering Daffodils##131 |goto Redridge Mountains 26.62,44.3
step
  talk Marshal Marris##382
  turnin Tharil'zun##19 |goto Redridge Mountains 33.5,48.97
step
  only Warrior
  talk Furen Longbeard##5413
  turnin The Shieldsmith##1702 |goto Stormwind City 58.09,16.54 |tip {turninat}Stormwind City
step
  talk Foreman Oslow##341
  turnin The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
  talk Marshal Marris##382
  turnin Shadow Magic##115 |goto Redridge Mountains 33.5,48.97
step
  talk Deputy Feldon##1070
  turnin Assessing the Threat##246 |goto Redridge Mountains 30.73,60.0
step
  talk Verner Osgood##415
  turnin Howling in the Hills##126 |goto Redridge Mountains 30.97,47.27
step
  note {travel}Stonetalon Mountains
  goto Stonetalon Mountains 59.52,67.15
]])
