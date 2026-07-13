-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Feast of Winter Veil", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Kaymard Copperpinch##13418
  accept Stolen Winter Veil Treats##6963 |goto Orgrimmar 53.33,66.49
step
  talk Wulmort Jinglepocket##13433
  accept Greatfather Winter is Here!##7022 |goto Ironforge 33.7,67.23
step
  talk Khole Jinglepocket##13435
  accept Greatfather Winter is Here!##7023 |goto Stormwind City 55.01,59.26
step
  talk Greatfather Winter##13444
  accept Treats for Greatfather Winter##7025 |goto Ironforge 33.2,65.41
step
  talk Wulmort Jinglepocket##13433
  accept Stolen Winter Veil Treats##7042 |goto Ironforge 33.7,67.23
step
  talk Goli Krumn##1365
  accept The Reason for the Season##7062 |goto Ironforge 30.26,59.38
step
  talk Spoops##15309
  accept Hallow's End Treats for Spoops!##8312 |goto Orgrimmar 71.44,22.81
step
  talk Innkeeper Firebrew##5111
  accept Chicken Clucking for a Mint##8353 |goto Ironforge 18.15,51.45
step
  talk Innkeeper Norman##6741
  accept Chicken Clucking for a Mint##8354 |goto Undercity 67.74,37.89
step
  talk Talvash del Kissel##6826
  accept Incoming Gumdrop##8355 |goto Ironforge 36.38,3.61
step
  talk Innkeeper Allison##6740
  accept Flexing for Nougat##8356 |goto Stormwind City 52.62,65.7
step
  talk Kali Remik##11814
  accept Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  talk Innkeeper Gryshka##6929
  accept Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  talk Sergeant Hartman##15199
  accept The Power of Pine##8373 |goto Hillsbrad Foothills 50.43,56.89
step
  talk Kaymard Copperpinch##13418
  accept Metzen the Reindeer##8746 |goto Orgrimmar 53.33,66.49
step
  talk Wulmort Jinglepocket##13433
  accept Metzen the Reindeer##8762 |goto Ironforge 33.7,67.23
step
  talk Wonderform Operator##15732
  accept New Year Celebrations!##8860 |goto Stormwind City 62.28,60.73
step
  talk Wonderform Operator##15732
  accept Winter's Presents##8827 |goto Stormwind City 62.28,60.73
step
  talk Innkeeper Saelienne##6735
  accept Dancing for Marzipan##8357 |goto Darnassus 67.42,15.65
step
  talk Kwee Q. Peddlefeet##16075
  accept Gift Giving##8993 |goto Undercity 55.2,89.95
step
  talk Jesper##15310
  accept Hallow's End Treats for Jesper!##8311 |goto Stormwind City 47.63,35.32
step
  note Bring 5 Gingerbread Cookies and an Ice Cold Milk to Greatfather Winter in Ironforge.
  get Treats for Greatfather Winter |q 7025 |goto Ironforge 33.2,65.41
step
  note Speak with the innkeepers of Orgrimmar, Undercity, and Thunder Bluff, as well as Kali Remik in Sen'jin Village. Perform the tricks they ask of you in exchange for the treats they offer.
  get Hallow's End Treats for Spoops! |q 8312 |goto Orgrimmar 71.44,22.81
step
  note Find Metzen the Reindeer. Use the notes provided to you for clues as to where he is being held.
  kill Metzen the Reindeer##15664 |q 8746 |goto Searing Gorge 68.75,34.23
step
  note Find Metzen the Reindeer. Use the notes provided to you for clues as to where he is being held.
  kill Metzen the Reindeer##15664 |q 8762 |goto Searing Gorge 68.75,34.23
step
  get Gift Giving |q 8993 |goto Undercity 55.2,89.95
step
  note Speak with the innkeepers of Stormwind, Ironforge, and Darnassus, as well as Talvash del Kissel in Ironforge. Perform the tricks they ask of you in exchange for the treats they offer.
  get Hallow's End Treats for Jesper! |q 8311 |goto Stormwind City 47.63,35.32
step
  talk Strange Snowman##13636
  turnin Stolen Winter Veil Treats##6963 |goto Alterac Mountains 35.44,72.46
step
  talk Greatfather Winter##13444
  turnin Greatfather Winter is Here!##7022 |goto Ironforge 33.2,65.41
step
  talk Greatfather Winter##13444
  turnin Greatfather Winter is Here!##7023 |goto Ironforge 33.2,65.41
step
  talk Greatfather Winter##13444
  turnin Treats for Greatfather Winter##7025 |goto Ironforge 33.2,65.41
step
  talk The Abominable Greench##13602
  turnin Stolen Winter Veil Treats##7042 |goto Alterac Mountains 37.26,63.57
step
  talk Historian Karnik##2916
  turnin The Reason for the Season##7062 |goto Ironforge 77.54,11.82
step
  talk Spoops##15309
  turnin Hallow's End Treats for Spoops!##8312 |goto Orgrimmar 71.44,22.81
step
  talk Innkeeper Firebrew##5111
  turnin Chicken Clucking for a Mint##8353 |goto Ironforge 18.15,51.45
step
  talk Innkeeper Norman##6741
  turnin Chicken Clucking for a Mint##8354 |goto Undercity 67.74,37.89
step
  talk Talvash del Kissel##6826
  turnin Incoming Gumdrop##8355 |goto Ironforge 36.38,3.61
step
  talk Innkeeper Allison##6740
  turnin Flexing for Nougat##8356 |goto Stormwind City 52.62,65.7
step
  talk Kali Remik##11814
  turnin Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  talk Innkeeper Gryshka##6929
  turnin Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  talk Sergeant Hartman##15199
  turnin The Power of Pine##8373 |goto Hillsbrad Foothills 50.43,56.89
step
  talk Kaymard Copperpinch##13418
  turnin Metzen the Reindeer##8746 |goto Orgrimmar 53.33,66.49
step
  talk Wulmort Jinglepocket##13433
  turnin Metzen the Reindeer##8762 |goto Ironforge 33.7,67.23
step
  talk Innkeeper Allison##6740
  turnin New Year Celebrations!##8860 |goto Stormwind City 52.62,65.7
step
  turnin A Winter Veil Gift##11528 |goto Ironforge 33.71,65.85
step
  turnin A Carefully Wrapped Present##8744 |goto Ironforge 33.46,65.6
step
  turnin A Gently Shaken Gift##8767 |goto Ironforge 34.45,65.79
step
  turnin A Gently Shaken Gift##8788 |goto Ironforge 34.45,65.79
step
  talk Greatfather Winter##13444
  turnin Winter's Presents##8827 |goto Ironforge 33.2,65.41
step
  turnin A Festive Gift##8803 |goto Ironforge 34.37,66.1
step
  turnin A Gaily Wrapped Present##8768 |goto Ironforge 33.86,65.79
step
  turnin A Ticking Present##8769 |goto Ironforge 33.81,66.18
step
  talk Innkeeper Saelienne##6735
  turnin Dancing for Marzipan##8357 |goto Darnassus 67.42,15.65
step
  talk Kwee Q. Peddlefeet##16075
  turnin Gift Giving##8993 |goto Undercity 55.2,89.95
step
  talk Jesper##15310
  turnin Hallow's End Treats for Jesper!##8311 |goto Stormwind City 47.63,35.32
step
  talk Strange Snowman##13636
  accept You're a Mean One...##6983 |goto Alterac Mountains 35.44,72.46
step
  talk Strange Snowman##13636
  accept You're a Mean One...##7043 |goto Alterac Mountains 35.44,72.46
step
  talk Historian Karnik##2916
  accept The Feast of Winter Veil##7063 |goto Ironforge 77.54,11.82
step
  talk Wulmort Jinglepocket##13433
  accept The Hero of the Day##8763 |goto Ironforge 33.7,67.23
step
  note Locate and return the Stolen Treats to Kaymard Copperpinch in Orgrimmar. It was last thought to be in the possession of the Abominable Greench, found somewhere in the snowy regions of the Alterac Mountains.
  kill The Abominable Greench##13602 |q 6983 |goto Alterac Mountains 37.26,63.57
step
  note Locate and return the Stolen Treats to Wulmort Jinglepocket in Ironforge. It was last thought to be in the possession of the Abominable Greench, found somewhere in the snowy regions of the Alterac Mountains.
  kill The Abominable Greench##13602 |q 7043 |goto Alterac Mountains 37.26,63.57
step
  note Bring 1 Deeprock Salt and 5 gold coins to any Holly Preserver machine, upon which you will receive 5 Preserved Holly.
  kill Rock Elemental##92 |q 8763 |goto Badlands 40.97,77.75
step
  talk Kaymard Copperpinch##13418
  turnin You're a Mean One...##6983 |goto Orgrimmar 53.33,66.49
step
  talk Wulmort Jinglepocket##13433
  turnin You're a Mean One...##7043 |goto Ironforge 33.7,67.23
step
  talk King Magni Bronzebeard##2784
  turnin The Feast of Winter Veil##7063 |goto Ironforge 39.09,56.2
step
  turnin The Hero of the Day##8763 |goto Stormwind City 54.87,58.26
step
  talk Wulmort Jinglepocket##13433
  accept A Smokywood Pastures' Thank You!##7045 |goto Ironforge 33.7,67.23
step
  talk Greatfather Winter##13444
  turnin A Smokywood Pastures' Thank You!##7045 |goto Ironforge 33.2,65.41
]])
