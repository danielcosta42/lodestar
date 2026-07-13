-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Heroic Dungeons - Trial of the Naaru", {
	author = "Lodestar Generator",
}, [[
step
  talk Earthmender Sophurus##21937
  accept The Hand of Gul'dan##10680 |goto Shadowmoon Valley 36.37,56.95
step
  talk Earthmender Splinthoof##21938
  accept The Hand of Gul'dan##10681 |goto Shadowmoon Valley 28.49,26.57
step
  talk Earthmender Torlok##21024
  turnin The Hand of Gul'dan##10680 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  turnin The Hand of Gul'dan##10681 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 8 Earthen Souls and 8 Fiery Souls.
  get Enraged Spirits of Fire and Earth |q 10458 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 5 Watery Souls.
  get Enraged Spirits of Water |q 10480 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Water##10480 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  note Earthmender Torlok at the Altar of Damnation in Shadowmoon Valley wants you to use the Totem of Spirits to capture 10 Airy Souls.
  get Enraged Spirits of Air |q 10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  turnin Enraged Spirits of Air##10481 |goto Shadowmoon Valley 42.19,45.06
step
  talk Earthmender Torlok##21024
  accept Oronok Torn-heart##10513 |goto Shadowmoon Valley 42.19,45.06
step
  talk Oronok Torn-heart##21183
  turnin Oronok Torn-heart##10513 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to recover 10 Shadowmoon Tubers from the Shattered Plains.
  get I Was A Lot Of Things... |q 10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  turnin I Was A Lot Of Things...##10514 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  note Oronok Torn-heart at Oronok's Farm in Shadowmoon Valley wants you to destroy 10 Ravenous Flayer Eggs on the Shattered Plains.
  collect Ravenous Flayer Egg##184684 |q 10515 |goto Shadowmoon Valley 56.78,16.14
step
  talk Oronok Torn-heart##21183
  turnin A Lesson Learned##10515 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept Borak, Son of Oronok##10546 |goto Shadowmoon Valley 53.95,23.52
step
  talk Grom'tor, Son of Oronok##21291
  turnin Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley 44.62,23.66
step
  talk Ar'tor, Son of Oronok##21292
  turnin Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley 29.63,50.4
step
  talk Borak, Son of Oronok##21293
  turnin Borak, Son of Oronok##10546 |goto Shadowmoon Valley 47.56,57.18
step
  talk Grom'tor, Son of Oronok##21291
  accept The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley 44.62,23.66
step
  talk Ar'tor, Son of Oronok##21292
  accept Demonic Crystal Prisons##10528 |goto Shadowmoon Valley 29.63,50.4
step
  talk Borak, Son of Oronok##21293
  accept Of Thistleheads and Eggs...##10547 |goto Shadowmoon Valley 47.56,57.18
step
  note Grom'tor, Son of Oronok at Coilskar Point in Shadowmoon Valley wants you to recover the First Fragment of the Cipher of Damnation.
  get The Cipher of Damnation - Grom'tor's Charge |q 10522 |goto Shadowmoon Valley 44.62,23.66
step
  note Seek out and slay Painmistress Gabrissa at Illidari Point and return to the corpse of Ar'tor, Son of Oronok with the Crystalline Key.
  get Demonic Crystal Prisons |q 10528 |goto Shadowmoon Valley 29.63,50.4
step
  note Borak, Son of Oronok at the bridge north of Eclipse Point wants you to find a Rotten Arakkoa Egg and deliver it to Tobias the Filth Gorger in Shattrath City, located in northwest Terokkar Forest.
  get Of Thistleheads and Eggs... |q 10547 |goto Shadowmoon Valley 47.56,57.18
step
  talk Grom'tor, Son of Oronok##21291
  turnin The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley 44.62,23.66
step
  talk Ar'tor, Son of Oronok##21292
  turnin Demonic Crystal Prisons##10528 |goto Shadowmoon Valley 29.63,50.4
step
  talk Tobias the Filth Gorger##21411
  turnin Of Thistleheads and Eggs...##10547 |goto Shattrath City 63.95,70.03
step
  talk Grom'tor, Son of Oronok##21291
  accept The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley 44.62,23.66
step
  talk Spirit of Ar'tor##21318
  accept Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley 29.53,50.52
step
  talk Tobias the Filth Gorger##21411
  accept The Bundle of Bloodthistle##10550 |goto Shattrath City 63.95,70.03
step
  note The Spirit of Ar'tor at Illidari Point in Shadowmoon Valley wants you to recover Lohn'goron, Bow of the Torn-heart from the demons of the area.
  get Lohn'goron, Bow of the Torn-heart |q 10537 |goto Shadowmoon Valley 29.53,50.52
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley 53.95,23.52
step
  talk Spirit of Ar'tor##21318
  turnin Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  turnin The Bundle of Bloodthistle##10550 |goto Shadowmoon Valley 47.56,57.18
step
  talk Spirit of Ar'tor##21318
  accept The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  accept To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  note The Spirit of Ar'tor at Illidari Point in Shadowmoon Valley wants you to recover the Second Fragment of the Cipher of Damnation from Veneratus the Many.
  get The Cipher of Damnation - Ar'tor's Charge |q 10540 |goto Shadowmoon Valley 29.53,50.52
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover the Stormrage Missive.
  get To Catch A Thistlehead |q 10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk Spirit of Ar'tor##21318
  turnin The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  turnin To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.56,57.18
step
  talk Spirit of Ar'tor##21318
  accept The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley 29.53,50.52
step
  talk Borak, Son of Oronok##21293
  accept The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover 6 pieces of Eclipsion Armor.
  get The Shadowmoon Shuffle |q 10576 |goto Shadowmoon Valley 47.56,57.18
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley 53.95,23.52
step
  talk Borak, Son of Oronok##21293
  turnin The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  turnin What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.56,57.18
step
  note Borak, Son of Oronok at the bridge near Eclipse Point in Shadowmoon Valley wants you to recover the Third Part of the Cipher of Damnation from Ruul the Darkener.
  get The Cipher of Damnation - Borak's Charge |q 10578 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  turnin The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.56,57.18
step
  talk Borak, Son of Oronok##21293
  accept The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 47.56,57.18
step
  talk Oronok Torn-heart##21183
  turnin The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 53.95,23.52
step
  talk Oronok Torn-heart##21183
  accept The Cipher of Damnation##10588 |goto Shadowmoon Valley 53.95,23.52
step
  note Use the Cipher of Damnation at the Altar of Damnation to summon Cyrukh the Firelord.
  kill Cyrukh the Firelord##21181 |q 10588
step
  talk Earthmender Torlok##21024
  turnin The Cipher of Damnation##10588 |goto Shadowmoon Valley 42.19,45.06
step
  talk Khadgar##18166
  accept The Tempest Key##10883 |goto Shattrath City 54.75,44.32
step
  talk A'dal##18481
  turnin The Tempest Key##10883 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Mercy##10884 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Strength##10885 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Tenacity##10886 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to recover the Unused Axe of the Executioner from the Shattered Halls of Hellfire Citadel.
  get Trial of the Naaru: Mercy |q 10884 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to recover Kalithresh's Trident and Murmur's Essence.
  get Trial of the Naaru: Strength |q 10885 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  turnin Trial of the Naaru: Mercy##10884 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  turnin Trial of the Naaru: Strength##10885 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  turnin Trial of the Naaru: Tenacity##10886 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Trial of the Naaru: Magtheridon##10888 |goto Shattrath City 53.99,44.75
step
  note A'dal in Shattrath City wants you to slay Magtheridon.
  kill Magtheridon##17257 |q 10888 |goto Magtheridon's Lair - Raid -1,-1
step
  talk A'dal##18481
  turnin Trial of the Naaru: Magtheridon##10888 |goto Shattrath City 53.99,44.75
]])
