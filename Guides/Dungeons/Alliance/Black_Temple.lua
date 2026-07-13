-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Black Temple", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Anchorite Ceyla##21402
  accept Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to collect 12 Baa'ri Tablets from the ground and from Ashtongue Workers at the Ruins of Baa'ri.
  get Tablets of Baa'ri |q 10568 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  turnin Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  accept Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  note Anchorite Ceyla at the Altar of Sha'tar wants you to obtain the Orders from Akama from Oronu the Elder at the Ruins of Baa'ri.
  get Oronu the Elder |q 10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  turnin Oronu the Elder##10571 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  accept The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  note Obtain the four medallion fragments from Haalum, Eykenen, Lakaan and Uylaru and return to Anchorite Ceyla at the Altar of Sha'tar in Shadowmoon Valley.
  get The Ashtongue Corruptors |q 10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  turnin The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.58,28.38
step
  talk Anchorite Ceyla##21402
  accept The Warden's Cage##10575 |goto Shadowmoon Valley 62.58,28.38
step
  talk Sanoru##21826
  turnin The Warden's Cage##10575 |goto Shadowmoon Valley 57.33,49.58
step
  talk Sanoru##21826
  accept Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  note Slay Zandras at the Warden's Cage in Shadowmoon Valley and return to Sanoru.
  kill Zandras##21827 |q 10622 |goto Shadowmoon Valley 58.03,49.13
step
  talk Sanoru##21826
  turnin Proof of Allegiance##10622 |goto Shadowmoon Valley 57.33,49.58
step
  talk Sanoru##21826
  accept Akama##10628 |goto Shadowmoon Valley 57.33,49.58
step
  talk Akama##21700
  turnin Akama##10628 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept Seer Udalo##10705 |goto Shadowmoon Valley 58.11,48.18
step
  talk Udalo##21962
  turnin Seer Udalo##10705
step
  talk Udalo##21962
  accept A Mysterious Portent##10706
step
  talk Akama##21700
  turnin A Mysterious Portent##10706 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  note Go to the top of the Atam'al Terrace in Shadowmoon Valley and obtain the Heart of Fury. Return to Akama at the Warden's Cage in Shadowmoon Valley when you've completed this task.
  get The Ata'mal Terrace |q 10707 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  turnin The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept Akama's Promise##10708 |goto Shadowmoon Valley 58.11,48.18
step
  talk A'dal##18481
  turnin Akama's Promise##10708 |goto Shattrath City 53.99,44.75
step
  talk Seer Olum##22820
  accept The Secret Compromised##10944 |goto Serpentshrine Cavern - Raid -1,-1
step
  talk Akama##21700
  turnin The Secret Compromised##10944 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept Ruse of the Ashtongue##10946 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  turnin Ruse of the Ashtongue##10946 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept An Artifact From the Past##10947 |goto Shadowmoon Valley 58.11,48.18
step
  note Go to the Caverns of Time in Tanaris and gain access to the Battle of Mount Hyjal. Once inside, defeat Rage Winterchill and bring the Time-Phased Phylactery to Akama in Shadowmoon Valley.
  get An Artifact From the Past |q 10947 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  turnin An Artifact From the Past##10947 |goto Shadowmoon Valley 58.11,48.18
step
  talk Akama##21700
  accept The Hostage Soul##10948 |goto Shadowmoon Valley 58.11,48.18
step
  talk A'dal##18481
  turnin The Hostage Soul##10948 |goto Shattrath City 53.99,44.75
step
  talk A'dal##18481
  accept Entry Into the Black Temple##10949 |goto Shattrath City 53.99,44.75
step
  talk Xi'ri##18528
  turnin Entry Into the Black Temple##10949 |goto Shadowmoon Valley 65.22,43.96
step
  talk Xi'ri##18528
  accept A Distraction for Akama##10985 |goto Shadowmoon Valley 65.22,43.96
step
  talk Xi'ri##18528
  turnin A Distraction for Akama##10985 |goto Shadowmoon Valley 65.22,43.96
step
  talk Xi'ri##18528
  accept Seek Out the Ashtongue##10958 |goto Shadowmoon Valley 65.22,43.96
step
  talk Seer Kanai##23158
  turnin Seek Out the Ashtongue##10958 |goto Black Temple - Raid -1,-1
step
  talk Seer Kanai##23158
  accept Redemption of the Ashtongue##10957 |goto Black Temple - Raid -1,-1
step
  note Help Akama wrest control back of his soul by defeating the Shade of Akama inside the Black Temple. Return to Seer Kanai when you've completed this task.
  kill Shade of Akama##22841 |q 10957 |goto Black Temple - Raid -1,-1
step
  talk Seer Kanai##23158
  turnin Redemption of the Ashtongue##10957 |goto Black Temple - Raid -1,-1
step
  talk Seer Kanai##23158
  accept The Fall of the Betrayer##10959 |goto Black Temple - Raid -1,-1
step
  note Seer Kanai wants you to defeat Illidan inside the Black Temple.
  kill Illidan Stormrage##22917 |q 10959 |goto Black Temple - Raid -1,-1
step
  talk Seer Kanai##23158
  turnin The Fall of the Betrayer##10959 |goto Black Temple - Raid -1,-1
]])
