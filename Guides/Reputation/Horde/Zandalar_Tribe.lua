-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Zandalar Tribe", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Zanza the Restless##15042
  accept Presence of Might##8184 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Syncretist's Sigil##8185 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Death's Embrace##8186 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Falcon's Call##8187 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Vodouisant's Vigilant Embrace##8188 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Presence of Sight##8189 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Hoodoo Hex##8190 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Prophetic Aura##8191 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept Animist's Caress##8192 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Vinchaxa##15070
  accept Zulian, Razzashi, and Hakkari Coins##8195 |goto Stranglethorn Vale 14.5,15.83
step
  talk Exzhal##14910
  accept A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  talk Vinchaxa##15070
  accept Gurubashi, Vilebranch, and Witherbark Coins##8238 |goto Stranglethorn Vale 14.5,15.83
step
  talk Vinchaxa##15070
  accept Sandfury, Skullsplitter, and Bloodscalp Coins##8239 |goto Stranglethorn Vale 14.5,15.83
step
  talk Vinchaxa##15070
  accept A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  talk Zanza the Restless##15042
  accept The Savage Guard - Arcanum of Protection##9208 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept The Savage Guard - Arcanum of Rapidity##9209 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  accept The Savage Guard - Arcanum of Focus##9210 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8184 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8185 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8186 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8187 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8188 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8189 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8190 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8191 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Bring me thise things and I will create a powerful enchantment for you!
  collect Primal Hakkari Idol##22637 |q 8192 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  collect Zulian Coin##19698 |q 8195 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Hakkari Shadowcaster, Hakkari Shadow Hunter, Hakkari Blood Priest
step
  note String 5 Channeler's Heads, then return the Collection of Troll Heads to Exzhal on Yojamba Isle.
  collect Gurubashi Head Collection##19880 |q 8201 |goto Stranglethorn Vale 15.26,15.5
step
  collect Gurubashi Coin##19701 |q 8238 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Hakkari Shadowcaster, Hakkari Shadow Hunter, Hakkari Blood Priest
step
  collect Sandfury Coin##19704 |q 8239 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1 |tip {dropsfrom}Hakkari Shadowcaster, Hakkari Shadow Hunter, Hakkari Blood Priest
step
  note Zanza the Restless in Zul'Gurub wants an Arcanum of Protection.
  collect Arcanum of Protection##18331 |q 9208 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  note Zanza the Restless in Zul'Gurub wants an Arcanum of Rapidity.
  collect Arcanum of Rapidity##18329 |q 9209 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  note Zanza the Restless in Zul'Gurub wants an Arcanum of Focus.
  collect Arcanum of Focus##18330 |q 9210 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8041 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8045 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8049 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8101 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8106 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8110 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8116 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8141 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8145 |goto Stranglethorn Vale 14.08,13.72
step
  talk Molthor##14875
  turnin The Heart of Hakkar##8183 |goto Stranglethorn Vale 15.04,15.13
step
  talk Zanza the Restless##15042
  turnin Presence of Might##8184 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Syncretist's Sigil##8185 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Death's Embrace##8186 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Falcon's Call##8187 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Vodouisant's Vigilant Embrace##8188 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Presence of Sight##8189 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Hoodoo Hex##8190 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Prophetic Aura##8191 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin Animist's Caress##8192 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Vinchaxa##15070
  turnin Zulian, Razzashi, and Hakkari Coins##8195 |goto Stranglethorn Vale 14.5,15.83
step
  talk Exzhal##14910
  turnin A Collection of Heads##8201 |goto Stranglethorn Vale 15.26,15.5
step
  talk Vinchaxa##15070
  turnin Gurubashi, Vilebranch, and Witherbark Coins##8238 |goto Stranglethorn Vale 14.5,15.83
step
  talk Vinchaxa##15070
  turnin Sandfury, Skullsplitter, and Bloodscalp Coins##8239 |goto Stranglethorn Vale 14.5,15.83
step
  talk Vinchaxa##15070
  turnin A Bijou for Zanza##8240 |goto Stranglethorn Vale 14.5,15.83
step
  talk Zanza the Restless##15042
  turnin The Savage Guard - Arcanum of Protection##9208 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin The Savage Guard - Arcanum of Rapidity##9209 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  talk Zanza the Restless##15042
  turnin The Savage Guard - Arcanum of Focus##9210 |goto Zul'Gurub - Dungeon pre-cata ZG -1,-1
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  collect Strength of Mugamba##19574 |q 8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  collect Heathen's Brand##19579 |q 8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  collect The Eye of Zuldazar##19591 |q 8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  collect Pebble of Kajaro##19598 |q 8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  collect Kezan's Taint##19602 |q 8107 |goto Stranglethorn Vale 15.34,16.12
step
  collect Enchanted South Seas Kelp##19610 |q 8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  collect Vision of Voodress##19606 |q 8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  collect Zandalarian Shadow Talisman##19614 |q 8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  collect Maelstrom's Tendril##19618 |q 8146 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8042 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8046 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8050 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8102 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8107 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8111 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8117 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8142 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8146 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  collect Strength of Mugamba##19575 |q 8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  collect Heathen's Brand##19585 |q 8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  collect The Eye of Zuldazar##19592 |q 8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  collect Pebble of Kajaro##19599 |q 8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  collect Kezan's Taint##19603 |q 8108 |goto Stranglethorn Vale 15.34,16.12
step
  collect Enchanted South Seas Kelp##19611 |q 8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  collect Vision of Voodress##19607 |q 8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  collect Zandalarian Shadow Talisman##19615 |q 8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  collect Maelstrom's Tendril##19619 |q 8147 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin Strength of Mount Mugamba##8043 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Heathen's Brand##8047 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The Eye of Zuldazar##8051 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Pebble of Kajaro##8103 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Taint##8108 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Enchanted South Seas Kelp##8112 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin Vision of Voodress##8118 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Talisman##8143 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin The Maelstrom's Tendril##8147 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  accept The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  accept The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  accept The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  accept The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  accept Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  accept Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  accept The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  accept Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  accept Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  collect Strength of Mugamba##19576 |q 8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  collect Heathen's Brand##19586 |q 8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  collect The Eye of Zuldazar##19593 |q 8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  collect Pebble of Kajaro##19600 |q 8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  collect Kezan's Taint##19604 |q 8109 |goto Stranglethorn Vale 15.34,16.12
step
  collect Enchanted South Seas Kelp##19612 |q 8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  collect Vision of Voodress##19608 |q 8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  collect Zandalarian Shadow Talisman##19616 |q 8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  collect Maelstrom's Tendril##19620 |q 8148 |goto Stranglethorn Vale 14.08,13.72
step
  only Warrior
  talk Jin'rokh the Breaker##14902
  turnin The Rage of Mugamba##8044 |goto Stranglethorn Vale 15.31,14.43
step
  only Paladin
  talk Jin'rokh the Breaker##14902
  turnin The Hero's Brand##8048 |goto Stranglethorn Vale 15.31,14.43
step
  only Priest
  talk Al'tabim the All-Seeing##14903
  turnin The All-Seeing Eye of Zuldazar##8052 |goto Stranglethorn Vale 15.34,16.12
step
  only Warlock
  talk Al'tabim the All-Seeing##14903
  turnin The Jewel of Kajaro##8104 |goto Stranglethorn Vale 15.34,16.12
step
  only Druid
  talk Al'tabim the All-Seeing##14903
  turnin Kezan's Unstoppable Taint##8109 |goto Stranglethorn Vale 15.34,16.12
step
  talk Maywiki of Zuldazar##14904
  turnin Pristine Enchanted South Seas Kelp##8113 |goto Stranglethorn Vale 15.3,16.02
step
  only Mage
  talk Maywiki of Zuldazar##14904
  turnin The Unmarred Vision of Voodress##8119 |goto Stranglethorn Vale 15.3,16.02
step
  only Rogue
  talk Falthir the Sightless##14905
  turnin Zandalarian Shadow Mastery Talisman##8144 |goto Stranglethorn Vale 14.08,13.72
step
  only Hunter
  talk Falthir the Sightless##14905
  turnin Maelstrom's Wrath##8148 |goto Stranglethorn Vale 14.08,13.72
]])
