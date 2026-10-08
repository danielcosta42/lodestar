-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Feast of Winter Veil", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Wonderform Operator##15732
  accept Winter's Presents##8828 |goto Dun Morogh 53.16,35.62
step
  talk Great-father Winter##13445
  turnin Winter's Presents##8828 |goto Orgrimmar 52.49,69.18
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
  talk Wonderform Operator##15732
  accept New Year Celebrations!##8861 |goto Dun Morogh 53.16,35.62
step
  talk Innkeeper Pala##6746
  turnin New Year Celebrations!##8861 |goto Thunder Bluff 45.81,64.71
step
  talk Kali Remik##11814
  accept Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  note Do a train emote at Kali Remik, and in exchange you'll receive a Darkspear Gumdrop!
  talk Kali Remik##11814 |q 8358 |goto Durotar 56.13,74.24
step
  talk Kali Remik##11814
  turnin Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  talk Spoops##15309
  accept Hallow's End Treats for Spoops!##8312 |goto Orgrimmar 71.44,22.81
step
  note Speak with the innkeepers of Orgrimmar, Undercity, and Thunder Bluff, as well as Kali Remik in Sen'jin Village. Perform the tricks they ask of you in exchange for the treats they offer.
  collect Orgrimmar Nougat##20493 |q 8312 |goto Orgrimmar 54.1,68.41 |tip {dropsfrom}Innkeeper Gryshka
step
  talk Spoops##15309
  turnin Hallow's End Treats for Spoops!##8312 |goto Orgrimmar 71.44,22.81
step
  talk Furmund##9550
  accept The Reason for the Season##6964 |goto Orgrimmar 50.85,65.26
step
  talk Sagorne Creststrider##13417
  turnin The Reason for the Season##6964 |goto Orgrimmar 38.66,35.92
step
  talk Sagorne Creststrider##13417
  accept The Feast of Winter Veil##7061 |goto Orgrimmar 38.66,35.92
step
  talk Cairne Bloodhoof##3057
  turnin The Feast of Winter Veil##7061 |goto Thunder Bluff 60.3,51.68
step
  only not completed(7021) not completed(7024) not haveq(7021) not haveq(7024)
  talk Kaymard Copperpinch##13418
  accept Great-father Winter is Here!##6961 |goto Orgrimmar 53.33,66.49
step
  only not completed(7021) not completed(7024) not haveq(7021) not haveq(7024)
  talk Great-father Winter##13445
  turnin Great-father Winter is Here!##6961 |goto Orgrimmar 52.49,69.18
step
  talk Great-father Winter##13445
  accept Treats for Great-father Winter##6962 |goto Orgrimmar 52.49,69.18
step
  note Bring 5 Gingerbread Cookies and an Ice Cold Milk to Greatfather Winter in Orgrimmar.
  collect 5 Gingerbread Cookie##17197 |q 6962 |goto Orgrimmar 52.49,69.18
step
  talk Great-father Winter##13445
  turnin Treats for Great-father Winter##6962 |goto Orgrimmar 52.49,69.18
step
  talk Kaymard Copperpinch##13418
  accept Stolen Winter Veil Treats##6963 |goto Orgrimmar 53.33,66.49
step
  talk Strange Snowman##13636
  turnin Stolen Winter Veil Treats##6963 |goto Alterac Mountains 35.44,72.46
step
  talk Strange Snowman##13636
  accept You're a Mean One...##6983 |goto Alterac Mountains 35.44,72.46
step
  note Locate and return the Stolen Treats to Kaymard Copperpinch in Orgrimmar. It was last thought to be in the possession of the Abominable Greench, found somewhere in the snowy regions of the Alterac Mountains.
  kill The Abominable Greench##13602 |goto Alterac Mountains 39.61,62.91 |elite
  collect Stolen Treats##17662 |q 6983 |goto Alterac Mountains 39.61,62.91
step
  talk Kaymard Copperpinch##13418
  turnin You're a Mean One...##6983 |goto Orgrimmar 53.33,66.49
step
  talk Kaymard Copperpinch##13418
  accept A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar 53.33,66.49
step
  talk Great-father Winter##13445
  turnin A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar 52.49,69.18
step
  talk Kaymard Copperpinch##13418
  accept Metzen the Reindeer##8746 |goto Orgrimmar 53.33,66.49
step
  note Find Metzen the Reindeer. Use the notes provided to you for clues as to where he is being held.
  talk Metzen the Reindeer##15664 |q 8746 |goto Tanaris 73.35,48.07
step
  talk Kaymard Copperpinch##13418
  turnin Metzen the Reindeer##8746 |goto Orgrimmar 53.33,66.49
step
  talk Kaymard Copperpinch##13418
  accept The Hero of the Day##8799 |goto Orgrimmar 53.33,66.49
step
  note Bring 1 Deeprock Salt and 5 gold coins to the Holly Preserver machine, upon which you will receive 5 Preserved Holly.
  collect 1 Deeprock Salt##8150 |q 8799 |goto Badlands 40.51,78.29 |tip {dropsfrom}Rock Elemental, Felhunter, Stone Fury
step
  turnin The Hero of the Day##8799 |goto Undercity 67.33,38
step
  talk Innkeeper Gryshka##6929
  accept Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  note Do a flex emote at Innkeeper Gryshka, and in exchange you'll receive Orgrimmar Nougat!
  talk Innkeeper Gryshka##6929 |q 8359 |goto Orgrimmar 54.1,68.41
step
  talk Innkeeper Gryshka##6929
  turnin Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  talk Innkeeper Pala##6746
  accept Dancing for Marzipan##8360 |goto Thunder Bluff 45.81,64.71
step
  note Do a dance emote at Innkeeper Pala, and in exchange you'll receive Thunder Bluff Marzipan!
  talk Innkeeper Pala##6746 |q 8360 |goto Thunder Bluff 45.81,64.71
step
  talk Innkeeper Pala##6746
  turnin Dancing for Marzipan##8360 |goto Thunder Bluff 45.81,64.71
step
  talk Innkeeper Norman##6741
  accept Chicken Clucking for a Mint##8354 |goto Undercity 67.74,37.89
step
  note Do a chicken emote at Innkeeper Norman, and in exchange you'll receive an Undercity Mint!
  talk Innkeeper Norman##6741 |q 8354 |goto Undercity 67.74,37.89
step
  talk Innkeeper Norman##6741
  turnin Chicken Clucking for a Mint##8354 |goto Undercity 67.74,37.89
step
  talk Kwee Q. Peddlefeet##16075
  accept Gift Giving##8981 |goto Undercity 55.2,89.95
step
  collect Horde Gift Collection##22263 |q 8981 |goto Undercity 55.2,89.95
step
  talk Kwee Q. Peddlefeet##16075
  turnin Gift Giving##8981 |goto Undercity 55.2,89.95
]])
