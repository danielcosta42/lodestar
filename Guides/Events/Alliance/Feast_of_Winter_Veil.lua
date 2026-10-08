-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Feast of Winter Veil", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Wonderform Operator##15732
  accept Winter's Presents##8827 |goto Dun Morogh 53.16,35.62
step
  talk Greatfather Winter##13444
  turnin Winter's Presents##8827 |goto Ironforge 33.2,65.41
step
  only not Priest not Shaman not Mage not Warlock not Druid not completed(8788) not haveq(8788)
  click Gently Shaken Gift##180746
  accept A Gently Shaken Gift##8767 |goto Ironforge 33.46,65.57
step
  only not Priest not Shaman not Mage not Warlock not Druid not completed(8788) not haveq(8788)
  turnin A Gently Shaken Gift##8767 |goto Ironforge 33.46,65.57
step
  only not Warrior not Paladin not Hunter not Rogue not completed(8767) not haveq(8767)
  click Gently Shaken Gift##180746
  accept A Gently Shaken Gift##8788 |goto Ironforge 33.46,65.57
step
  only not Warrior not Paladin not Hunter not Rogue not completed(8767) not haveq(8767)
  turnin A Gently Shaken Gift##8788 |goto Ironforge 33.46,65.57
step
  click Carefully Wrapped Present##180743
  accept A Carefully Wrapped Present##8744 |goto Ironforge 33.86,65.69
step
  turnin A Carefully Wrapped Present##8744 |goto Ironforge 33.86,65.69
step
  click Festive Gift##180793
  accept A Festive Gift##8803 |goto Ironforge 33.96,65.86
step
  turnin A Festive Gift##8803 |goto Ironforge 33.96,65.86
step
  click Gaily Wrapped Present##180747
  accept A Gaily Wrapped Present##8768 |goto Ironforge 33.78,66.4
step
  turnin A Gaily Wrapped Present##8768 |goto Ironforge 33.78,66.4
step
  click Ticking Present##180748
  accept A Ticking Present##8769 |goto Ironforge 33.9,66.68
step
  turnin A Ticking Present##8769 |goto Ironforge 33.9,66.68
step
  talk Innkeeper Saelienne##6735
  accept Dancing for Marzipan##8357 |goto Darnassus 67.42,15.65
step
  note Do a dance emote at Innkeeper Saelienne, and in exchange you'll receive Darnassus Marzipan!
  talk Innkeeper Saelienne##6735 |q 8357 |goto Darnassus 67.42,15.65
step
  talk Innkeeper Saelienne##6735
  turnin Dancing for Marzipan##8357 |goto Darnassus 67.42,15.65
step
  talk Wonderform Operator##15732
  accept New Year Celebrations!##8860 |goto Dun Morogh 53.16,35.62
step
  talk Innkeeper Allison##6740
  turnin New Year Celebrations!##8860 |goto Stormwind City 60.39,75.27
step
  talk Sergeant Hartman##15199
  accept The Power of Pine##8373 |goto Hillsbrad Foothills 50,57.35
step
  note Use a Stink Bomb Cleaner to remove any Forsaken Stink Bomb that's been dropped on Southshore. Return to Sergeant Hartman in Southshore when you're done.
  collect Forsaken Stink Bomb##180449 |q 8373 |goto Hillsbrad Foothills 49.91,57.45
step
  talk Sergeant Hartman##15199
  turnin The Power of Pine##8373 |goto Hillsbrad Foothills 50,57.35
step
  talk Talvash del Kissel##6826
  accept Incoming Gumdrop##8355 |goto Ironforge 36.38,3.61
step
  note Do a train emote at Talvash del Kissel, and in exchange you'll receive a Gnomeregan Gumdrop!
  talk Talvash del Kissel##6826 |q 8355 |goto Ironforge 36.38,3.61
step
  talk Talvash del Kissel##6826
  turnin Incoming Gumdrop##8355 |goto Ironforge 36.38,3.61
step
  talk Innkeeper Firebrew##5111
  accept Chicken Clucking for a Mint##8353 |goto Ironforge 18.15,51.45
step
  note Do a chicken emote at Innkeeper Firebrew, and in exchange you'll receive an Ironforge Mint!
  talk Innkeeper Firebrew##5111 |q 8353 |goto Ironforge 18.15,51.45
step
  talk Innkeeper Firebrew##5111
  turnin Chicken Clucking for a Mint##8353 |goto Ironforge 18.15,51.45
step
  talk Goli Krumn##1365
  accept The Reason for the Season##7062 |goto Ironforge 30.26,59.38
step
  talk Historian Karnik##2916
  turnin The Reason for the Season##7062 |goto Ironforge 77.54,11.82
step
  talk Historian Karnik##2916
  accept The Feast of Winter Veil##7063 |goto Ironforge 77.54,11.82
step
  talk King Magni Bronzebeard##2784
  turnin The Feast of Winter Veil##7063 |goto Ironforge 39.09,56.2
step
  talk Greatfather Winter##13444
  accept Treats for Greatfather Winter##7025 |goto Ironforge 33.2,65.41
step
  note Bring 5 Gingerbread Cookies and an Ice Cold Milk to Greatfather Winter in Ironforge.
  collect 5 Gingerbread Cookie##17197 |q 7025 |goto Ironforge 33.2,65.41
step
  talk Greatfather Winter##13444
  turnin Treats for Greatfather Winter##7025 |goto Ironforge 33.2,65.41
step
  only not completed(7023) not haveq(7023)
  talk Wulmort Jinglepocket##13433
  accept Greatfather Winter is Here!##7022 |goto Ironforge 33.7,67.23
step
  only not completed(7023) not haveq(7023)
  talk Greatfather Winter##13444
  turnin Greatfather Winter is Here!##7022 |goto Ironforge 33.2,65.41
step
  talk Wulmort Jinglepocket##13433
  accept Stolen Winter Veil Treats##7042 |goto Ironforge 33.7,67.23
step
  talk Strange Snowman##13636
  turnin Stolen Winter Veil Treats##7042 |goto Alterac Mountains 35.44,72.46
step
  talk Strange Snowman##13636
  accept You're a Mean One...##7043 |goto Alterac Mountains 35.44,72.46
step
  note Locate and return the Stolen Treats to Wulmort Jinglepocket in Ironforge. It was last thought to be in the possession of the Abominable Greench, found somewhere in the snowy regions of the Alterac Mountains.
  kill The Abominable Greench##13602 |goto Alterac Mountains 39.61,62.91 |elite
  collect Stolen Treats##17662 |q 7043 |goto Alterac Mountains 39.61,62.91
step
  talk Wulmort Jinglepocket##13433
  turnin You're a Mean One...##7043 |goto Ironforge 33.7,67.23
step
  talk Wulmort Jinglepocket##13433
  accept A Smokywood Pastures' Thank You!##7045 |goto Ironforge 33.7,67.23
step
  talk Greatfather Winter##13444
  turnin A Smokywood Pastures' Thank You!##7045 |goto Ironforge 33.2,65.41
step
  talk Wulmort Jinglepocket##13433
  accept Metzen the Reindeer##8762 |goto Ironforge 33.7,67.23
step
  note Find Metzen the Reindeer. Use the notes provided to you for clues as to where he is being held.
  talk Metzen the Reindeer##15664 |q 8762 |goto Tanaris 73.35,48.07
step
  talk Wulmort Jinglepocket##13433
  turnin Metzen the Reindeer##8762 |goto Ironforge 33.7,67.23
step
  talk Wulmort Jinglepocket##13433
  accept The Hero of the Day##8763 |goto Ironforge 33.7,67.23
step
  note Bring 1 Deeprock Salt and 5 gold coins to any Holly Preserver machine, upon which you will receive 5 Preserved Holly.
  collect 1 Deeprock Salt##8150 |q 8763 |goto Badlands 40.51,78.29 |tip {dropsfrom}Rock Elemental, Felhunter, Stone Fury
step
  turnin The Hero of the Day##8763 |goto Undercity 67.33,38
step
  talk Jesper##15310
  accept Hallow's End Treats for Jesper!##8311 |goto Stormwind City 56.53,51.76
step
  note Speak with the innkeepers of Stormwind, Ironforge, and Darnassus, as well as Talvash del Kissel in Ironforge. Perform the tricks they ask of you in exchange for the treats they offer.
  collect Stormwind Nougat##20492 |q 8311 |goto Stormwind City 60.39,75.27 |tip {dropsfrom}Innkeeper Allison
step
  talk Jesper##15310
  turnin Hallow's End Treats for Jesper!##8311 |goto Stormwind City 56.53,51.76
step
  talk Innkeeper Allison##6740
  accept Flexing for Nougat##8356 |goto Stormwind City 60.39,75.27
step
  note Do a flex emote at Innkeeper Allison, and in exchange you'll receive Stormwind Nougat!
  talk Innkeeper Allison##6740 |q 8356 |goto Stormwind City 60.39,75.27
step
  talk Innkeeper Allison##6740
  turnin Flexing for Nougat##8356 |goto Stormwind City 60.39,75.27
step
  talk Kwee Q. Peddlefeet##16075
  accept Gift Giving##8993 |goto Undercity 55.2,89.95
step
  collect Alliance Gift Collection##22262 |q 8993 |goto Undercity 55.2,89.95
step
  talk Kwee Q. Peddlefeet##16075
  turnin Gift Giving##8993 |goto Undercity 55.2,89.95
]])
